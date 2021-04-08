package android.se.omapi;

import android.os.RemoteException;
import android.os.ServiceSpecificException;
import android.util.Log;
import java.io.IOException;

public final class Channel implements java.nio.channels.Channel {
    private static final String TAG = "OMAPI.Channel";
    private final ISecureElementChannel mChannel;
    private final Object mLock = new Object();
    private final SEService mService;
    private Session mSession;

    Channel(SEService service, Session session, ISecureElementChannel channel) {
        if (service == null || session == null || channel == null) {
            throw new IllegalArgumentException("Parameters cannot be null");
        }
        this.mService = service;
        this.mSession = session;
        this.mChannel = channel;
    }

    public void close() {
        if (isOpen()) {
            synchronized (this.mLock) {
                try {
                    this.mChannel.close();
                } catch (Exception e) {
                    Log.e(TAG, "Error closing channel", e);
                }
            }
        }
    }

    public boolean isOpen() {
        boolean isConnected = this.mService.isConnected();
        String str = TAG;
        if (isConnected) {
            try {
                return this.mChannel.isClosed() ^ 1;
            } catch (RemoteException e) {
                Log.e(str, "Exception in isClosed()");
                return false;
            }
        }
        Log.e(str, "service not connected to system");
        return false;
    }

    public boolean isBasicChannel() {
        if (this.mService.isConnected()) {
            try {
                return this.mChannel.isBasicChannel();
            } catch (RemoteException e) {
                throw new IllegalStateException(e.getMessage());
            }
        }
        throw new IllegalStateException("service not connected to system");
    }

    public byte[] transmit(byte[] command) throws IOException {
        if (this.mService.isConnected()) {
            byte[] response;
            synchronized (this.mLock) {
                try {
                    response = this.mChannel.transmit(command);
                    if (response != null) {
                    } else {
                        throw new IOException("Error in communicating with Secure Element");
                    }
                } catch (ServiceSpecificException e) {
                    throw new IOException(e.getMessage());
                } catch (RemoteException e2) {
                    throw new IllegalStateException(e2.getMessage());
                }
            }
            return response;
        }
        throw new IllegalStateException("service not connected to system");
    }

    public Session getSession() {
        return this.mSession;
    }

    public byte[] getSelectResponse() {
        if (this.mService.isConnected()) {
            try {
                byte[] response = this.mChannel.getSelectResponse();
                if (response == null || response.length != 0) {
                    return response;
                }
                return null;
            } catch (RemoteException e) {
                throw new IllegalStateException(e.getMessage());
            }
        }
        throw new IllegalStateException("service not connected to system");
    }

    public boolean selectNext() throws IOException {
        if (this.mService.isConnected()) {
            try {
                boolean selectNext;
                synchronized (this.mLock) {
                    selectNext = this.mChannel.selectNext();
                }
                return selectNext;
            } catch (ServiceSpecificException e) {
                throw new IOException(e.getMessage());
            } catch (RemoteException e2) {
                throw new IllegalStateException(e2.getMessage());
            }
        }
        throw new IllegalStateException("service not connected to system");
    }
}
