package com.android.server.wm;

import android.os.Process;
import android.os.SystemClock;
import android.util.Slog;
import com.android.internal.annotations.VisibleForTesting;
import com.android.server.wm.PersisterQueue;
import java.util.ArrayList;
import java.util.Objects;
import java.util.function.Predicate;

class PersisterQueue {
    private static final boolean DEBUG = false;
    static final WriteQueueItem EMPTY_ITEM = $$Lambda$PersisterQueue$HOTPBvinkMOqT3zxV3gRm6Y9Wi4.INSTANCE;
    private static final long FLUSH_QUEUE = -1;
    private static final long INTER_WRITE_DELAY_MS = 500;
    private static final int MAX_WRITE_QUEUE_LENGTH = 6;
    private static final long PRE_TASK_DELAY_MS = 3000;
    private static final String TAG = "PersisterQueue";
    private final long mInterWriteDelayMs;
    private final LazyTaskWriterThread mLazyTaskWriterThread;
    /* access modifiers changed from: private */
    public final ArrayList<Listener> mListeners;
    private long mNextWriteTime;
    private final long mPreTaskDelayMs;
    /* access modifiers changed from: private */
    public final ArrayList<WriteQueueItem> mWriteQueue;

    interface Listener {
        void onPreProcessItem(boolean z);
    }

    static /* synthetic */ void lambda$static$0() {
    }

    PersisterQueue() {
        this(500, 3000);
    }

    @VisibleForTesting
    PersisterQueue(long interWriteDelayMs, long preTaskDelayMs) {
        this.mWriteQueue = new ArrayList<>();
        this.mListeners = new ArrayList<>();
        this.mNextWriteTime = 0;
        if (interWriteDelayMs < 0 || preTaskDelayMs < 0) {
            throw new IllegalArgumentException("Both inter-write delay and pre-task delay need tobe non-negative. inter-write delay: " + interWriteDelayMs + "ms pre-task delay: " + preTaskDelayMs);
        }
        this.mInterWriteDelayMs = interWriteDelayMs;
        this.mPreTaskDelayMs = preTaskDelayMs;
        this.mLazyTaskWriterThread = new LazyTaskWriterThread("LazyTaskWriterThread");
    }

    /* access modifiers changed from: package-private */
    public synchronized void startPersisting() {
        if (!this.mLazyTaskWriterThread.isAlive()) {
            this.mLazyTaskWriterThread.start();
        }
    }

    /* access modifiers changed from: package-private */
    @VisibleForTesting
    public void stopPersisting() throws InterruptedException {
        if (this.mLazyTaskWriterThread.isAlive()) {
            synchronized (this) {
                this.mLazyTaskWriterThread.interrupt();
            }
            this.mLazyTaskWriterThread.join();
        }
    }

    /* access modifiers changed from: package-private */
    public synchronized void addItem(WriteQueueItem item, boolean flush) {
        this.mWriteQueue.add(item);
        if (!flush) {
            if (this.mWriteQueue.size() <= 6) {
                if (this.mNextWriteTime == 0) {
                    this.mNextWriteTime = SystemClock.uptimeMillis() + this.mPreTaskDelayMs;
                }
                notify();
            }
        }
        this.mNextWriteTime = -1;
        notify();
    }

    /* access modifiers changed from: package-private */
    public synchronized <T extends WriteQueueItem> T findLastItem(Predicate<T> predicate, Class<T> clazz) {
        for (int i = this.mWriteQueue.size() - 1; i >= 0; i--) {
            WriteQueueItem writeQueueItem = this.mWriteQueue.get(i);
            if (clazz.isInstance(writeQueueItem)) {
                T item = (WriteQueueItem) clazz.cast(writeQueueItem);
                if (predicate.test(item)) {
                    return item;
                }
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public synchronized <T extends WriteQueueItem> void updateLastOrAddItem(T item, boolean flush) {
        Objects.requireNonNull(item);
        T itemToUpdate = findLastItem(new Predicate() {
            public final boolean test(Object obj) {
                return PersisterQueue.WriteQueueItem.this.matches((PersisterQueue.WriteQueueItem) obj);
            }
        }, item.getClass());
        if (itemToUpdate == null) {
            addItem(item, flush);
        } else {
            itemToUpdate.updateFrom(item);
        }
        yieldIfQueueTooDeep();
    }

    /* access modifiers changed from: package-private */
    public synchronized <T extends WriteQueueItem> void removeItems(Predicate<T> predicate, Class<T> clazz) {
        for (int i = this.mWriteQueue.size() - 1; i >= 0; i--) {
            WriteQueueItem writeQueueItem = this.mWriteQueue.get(i);
            if (clazz.isInstance(writeQueueItem) && predicate.test((WriteQueueItem) clazz.cast(writeQueueItem))) {
                this.mWriteQueue.remove(i);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public synchronized void flush() {
        this.mNextWriteTime = -1;
        notifyAll();
        do {
            try {
                wait();
            } catch (InterruptedException e) {
            }
        } while (this.mNextWriteTime == -1);
    }

    /* access modifiers changed from: package-private */
    public void yieldIfQueueTooDeep() {
        boolean stall = false;
        synchronized (this) {
            if (this.mNextWriteTime == -1) {
                stall = true;
            }
        }
        if (stall) {
            Thread.yield();
        }
    }

    /* access modifiers changed from: package-private */
    public void addListener(Listener listener) {
        this.mListeners.add(listener);
    }

    /* access modifiers changed from: package-private */
    @VisibleForTesting
    public boolean removeListener(Listener listener) {
        return this.mListeners.remove(listener);
    }

    /* Debug info: failed to restart local var, previous not found, register: 5 */
    /* access modifiers changed from: private */
    public void processNextItem() throws InterruptedException {
        WriteQueueItem item;
        synchronized (this) {
            if (this.mNextWriteTime != -1) {
                this.mNextWriteTime = SystemClock.uptimeMillis() + this.mInterWriteDelayMs;
            }
            while (this.mWriteQueue.isEmpty()) {
                if (this.mNextWriteTime != 0) {
                    this.mNextWriteTime = 0;
                    notify();
                }
                if (!Thread.currentThread().isInterrupted()) {
                    wait();
                } else {
                    throw new InterruptedException();
                }
            }
            item = this.mWriteQueue.remove(0);
            for (long now = SystemClock.uptimeMillis(); now < this.mNextWriteTime; now = SystemClock.uptimeMillis()) {
                wait(this.mNextWriteTime - now);
            }
        }
        item.process();
    }

    interface WriteQueueItem<T extends WriteQueueItem<T>> {
        void process();

        void updateFrom(T t) {
        }

        boolean matches(T t) {
            return false;
        }
    }

    private class LazyTaskWriterThread extends Thread {
        private LazyTaskWriterThread(String name) {
            super(name);
        }

        /* Debug info: failed to restart local var, previous not found, register: 3 */
        public void run() {
            boolean probablyDone;
            Process.setThreadPriority(10);
            while (true) {
                try {
                    synchronized (PersisterQueue.this) {
                        probablyDone = PersisterQueue.this.mWriteQueue.isEmpty();
                    }
                    for (int i = PersisterQueue.this.mListeners.size() - 1; i >= 0; i--) {
                        ((Listener) PersisterQueue.this.mListeners.get(i)).onPreProcessItem(probablyDone);
                    }
                    PersisterQueue.this.processNextItem();
                } catch (InterruptedException e) {
                    Slog.e(PersisterQueue.TAG, "Persister thread is exiting. Should never happen in prod, butit's OK in tests.");
                    return;
                }
            }
        }
    }
}
