package com.android.server.wm;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.ArraySet;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import android.view.DisplayCutout;
import android.view.DisplayInfo;
import android.view.IDockedStackListener;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.policy.DividerSnapAlgorithm;
import com.android.internal.policy.DockedDividerUtils;
import com.android.server.LocalServices;
import com.android.server.inputmethod.InputMethodManagerInternal;
import java.io.PrintWriter;
import java.util.function.Consumer;

public class DockedStackDividerController {
    private static final float CLIP_REVEAL_MEET_EARLIEST = 0.6f;
    private static final float CLIP_REVEAL_MEET_FRACTION_MAX = 0.8f;
    private static final float CLIP_REVEAL_MEET_FRACTION_MIN = 0.4f;
    private static final float CLIP_REVEAL_MEET_LAST = 1.0f;
    private static final int DIVIDER_WIDTH_INACTIVE_DP = 4;
    private static final long IME_ADJUST_ANIM_DURATION = 280;
    private static final long IME_ADJUST_DRAWN_TIMEOUT = 200;
    private static final Interpolator IME_ADJUST_ENTRY_INTERPOLATOR = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    private static final String TAG = "WindowManager";
    private boolean mAdjustedForDivider;
    private boolean mAdjustedForIme;
    private boolean mAnimatingForIme;
    private boolean mAnimatingForMinimizedDockedStack;
    private long mAnimationDuration;
    private float mAnimationStart;
    private boolean mAnimationStartDelayed;
    private long mAnimationStartTime;
    private boolean mAnimationStarted;
    private float mAnimationTarget;
    private WindowState mDelayedImeWin;
    private TaskStack mDimmedStack;
    private final DisplayContent mDisplayContent;
    private float mDividerAnimationStart;
    private float mDividerAnimationTarget;
    private int mDividerInsets;
    private int mDividerWindowWidth;
    private int mDividerWindowWidthInactive;
    private final RemoteCallbackList<IDockedStackListener> mDockedStackListeners = new RemoteCallbackList<>();
    private int mImeHeight;
    private boolean mImeHideRequested;
    float mLastAnimationProgress;
    private float mLastDimLayerAlpha;
    private final Rect mLastDimLayerRect = new Rect();
    float mLastDividerProgress;
    private final Rect mLastRect = new Rect();
    private boolean mLastVisibility = false;
    private float mMaximizeMeetFraction;
    private boolean mMinimizedDock;
    private final Interpolator mMinimizedDockInterpolator;
    private int mOriginalDockedSide = -1;
    private boolean mResizing;
    private final WindowManagerService mService;
    private final DividerSnapAlgorithm[] mSnapAlgorithmForRotation = new DividerSnapAlgorithm[4];
    private int mTaskHeightInMinimizedMode;
    private final Rect mTmpRect = new Rect();
    private final Rect mTmpRect2 = new Rect();
    private final Rect mTmpRect3 = new Rect();
    private final Rect mTouchRegion = new Rect();
    private WindowState mWindow;

    DockedStackDividerController(WindowManagerService service, DisplayContent displayContent) {
        this.mService = service;
        this.mDisplayContent = displayContent;
        this.mMinimizedDockInterpolator = AnimationUtils.loadInterpolator(service.mContext, 17563661);
        loadDimens();
    }

    /* access modifiers changed from: package-private */
    public int getSmallestWidthDpForBounds(Rect bounds) {
        DisplayInfo di = this.mDisplayContent.getDisplayInfo();
        int baseDisplayWidth = this.mDisplayContent.mBaseDisplayWidth;
        int baseDisplayHeight = this.mDisplayContent.mBaseDisplayHeight;
        int minWidth = Integer.MAX_VALUE;
        int rotation = 0;
        while (rotation < 4) {
            this.mTmpRect.set(bounds);
            this.mDisplayContent.rotateBounds(di.rotation, rotation, this.mTmpRect);
            int orientation = 1;
            boolean rotated = rotation == 1 || rotation == 3;
            this.mTmpRect2.set(0, 0, rotated ? baseDisplayHeight : baseDisplayWidth, rotated ? baseDisplayWidth : baseDisplayHeight);
            if (this.mTmpRect2.width() > this.mTmpRect2.height()) {
                orientation = 2;
            }
            int dockSide = getDockSide(this.mTmpRect, this.mTmpRect2, orientation, rotation);
            int position = DockedDividerUtils.calculatePositionForBounds(this.mTmpRect, dockSide, getContentWidth());
            DisplayCutout displayCutout = this.mDisplayContent.calculateDisplayCutoutForRotation(rotation).getDisplayCutout();
            int snappedPosition = this.mSnapAlgorithmForRotation[rotation].calculateNonDismissingSnapTarget(position).position;
            DockedDividerUtils.calculateBoundsForPosition(snappedPosition, dockSide, this.mTmpRect, this.mTmpRect2.width(), this.mTmpRect2.height(), getContentWidth());
            int i = snappedPosition;
            int i2 = position;
            int i3 = dockSide;
            this.mDisplayContent.getDisplayPolicy().getStableInsetsLw(rotation, this.mTmpRect2.width(), this.mTmpRect2.height(), displayCutout, this.mTmpRect3);
            this.mService.intersectDisplayInsetBounds(this.mTmpRect2, this.mTmpRect3, this.mTmpRect);
            minWidth = Math.min(this.mTmpRect.width(), minWidth);
            rotation++;
        }
        Rect rect = bounds;
        return (int) (((float) minWidth) / this.mDisplayContent.getDisplayMetrics().density);
    }

    /* access modifiers changed from: package-private */
    public int getDockSide(Rect bounds, Rect displayRect, int orientation, int rotation) {
        if (orientation == 1) {
            int diff = (displayRect.bottom - bounds.bottom) - (bounds.top - displayRect.top);
            if (diff > 0) {
                return 2;
            }
            if (diff < 0) {
                return 4;
            }
            if (canPrimaryStackDockTo(2, displayRect, rotation)) {
                return 2;
            }
            return 4;
        } else if (orientation != 2) {
            return -1;
        } else {
            int diff2 = (displayRect.right - bounds.right) - (bounds.left - displayRect.left);
            if (diff2 > 0) {
                return 1;
            }
            if (diff2 < 0) {
                return 3;
            }
            if (canPrimaryStackDockTo(1, displayRect, rotation)) {
                return 1;
            }
            return 3;
        }
    }

    /* access modifiers changed from: package-private */
    public void getHomeStackBoundsInDockedMode(Configuration parentConfig, int dockSide, Rect outBounds) {
        DisplayCutout displayCutout = this.mDisplayContent.getDisplayInfo().displayCutout;
        int displayWidth = parentConfig.windowConfiguration.getBounds().width();
        int displayHeight = parentConfig.windowConfiguration.getBounds().height();
        this.mDisplayContent.getDisplayPolicy().getStableInsetsLw(parentConfig.windowConfiguration.getRotation(), displayWidth, displayHeight, displayCutout, this.mTmpRect);
        int dividerSize = this.mDividerWindowWidth - (this.mDividerInsets * 2);
        if (parentConfig.orientation == 1) {
            outBounds.set(0, this.mTaskHeightInMinimizedMode + dividerSize + this.mTmpRect.top, displayWidth, displayHeight);
            return;
        }
        int primaryTaskWidth = this.mTaskHeightInMinimizedMode + dividerSize + this.mTmpRect.top;
        int left = this.mTmpRect.left;
        int right = displayWidth - this.mTmpRect.right;
        if (dockSide == 1) {
            left += primaryTaskWidth;
        } else if (dockSide == 3) {
            right -= primaryTaskWidth;
        }
        outBounds.set(left, 0, right, displayHeight);
    }

    /* access modifiers changed from: package-private */
    public boolean isHomeStackResizable() {
        Task homeTask;
        TaskStack homeStack = this.mDisplayContent.getHomeStack();
        if (homeStack == null || (homeTask = homeStack.findHomeTask()) == null || !homeTask.isResizeable()) {
            return false;
        }
        return true;
    }

    private void initSnapAlgorithmForRotations() {
        int i;
        int i2;
        Configuration baseConfig = this.mDisplayContent.getConfiguration();
        Configuration config = new Configuration();
        int rotation = 0;
        while (rotation < 4) {
            boolean rotated = rotation == 1 || rotation == 3;
            if (rotated) {
                i = this.mDisplayContent.mBaseDisplayHeight;
            } else {
                i = this.mDisplayContent.mBaseDisplayWidth;
            }
            int dw = i;
            if (rotated) {
                i2 = this.mDisplayContent.mBaseDisplayWidth;
            } else {
                i2 = this.mDisplayContent.mBaseDisplayHeight;
            }
            int dh = i2;
            DisplayCutout displayCutout = this.mDisplayContent.calculateDisplayCutoutForRotation(rotation).getDisplayCutout();
            DisplayPolicy displayPolicy = this.mDisplayContent.getDisplayPolicy();
            displayPolicy.getStableInsetsLw(rotation, dw, dh, displayCutout, this.mTmpRect);
            config.unset();
            config.orientation = dw <= dh ? 1 : 2;
            DisplayPolicy displayPolicy2 = displayPolicy;
            int i3 = dw;
            int i4 = dh;
            int i5 = rotation;
            DisplayCutout displayCutout2 = displayCutout;
            int appWidth = displayPolicy2.getNonDecorDisplayWidth(i3, i4, i5, baseConfig.uiMode, displayCutout2);
            int appHeight = displayPolicy2.getNonDecorDisplayHeight(i3, i4, i5, baseConfig.uiMode, displayCutout2);
            displayPolicy2.getNonDecorInsetsLw(rotation, dw, dh, displayCutout, this.mTmpRect);
            int leftInset = this.mTmpRect.left;
            int topInset = this.mTmpRect.top;
            config.windowConfiguration.setAppBounds(leftInset, topInset, leftInset + appWidth, topInset + appHeight);
            int i6 = dw;
            int i7 = dh;
            int i8 = rotation;
            float density = this.mDisplayContent.getDisplayMetrics().density;
            int i9 = topInset;
            DisplayCutout displayCutout3 = displayCutout;
            config.screenWidthDp = (int) (((float) displayPolicy.getConfigDisplayWidth(i6, i7, i8, baseConfig.uiMode, displayCutout3)) / density);
            config.screenHeightDp = (int) (((float) displayPolicy.getConfigDisplayHeight(i6, i7, i8, baseConfig.uiMode, displayCutout3)) / density);
            Context rotationContext = this.mService.mContext.createConfigurationContext(config);
            DividerSnapAlgorithm[] dividerSnapAlgorithmArr = this.mSnapAlgorithmForRotation;
            int i10 = leftInset;
            int dh2 = dh;
            Resources resources = rotationContext.getResources();
            int i11 = dw;
            dividerSnapAlgorithmArr[rotation] = new DividerSnapAlgorithm(resources, dw, dh2, getContentWidth(), config.orientation == 1, this.mTmpRect);
            rotation++;
        }
    }

    private void loadDimens() {
        Context context = this.mService.mContext;
        this.mDividerWindowWidth = context.getResources().getDimensionPixelSize(17105143);
        this.mDividerInsets = context.getResources().getDimensionPixelSize(17105142);
        this.mDividerWindowWidthInactive = WindowManagerService.dipToPixel(4, this.mDisplayContent.getDisplayMetrics());
        this.mTaskHeightInMinimizedMode = context.getResources().getDimensionPixelSize(17105478);
        initSnapAlgorithmForRotations();
    }

    /* access modifiers changed from: package-private */
    public void onConfigurationChanged() {
        loadDimens();
    }

    /* access modifiers changed from: package-private */
    public boolean isResizing() {
        return this.mResizing;
    }

    /* access modifiers changed from: package-private */
    public int getContentWidth() {
        return this.mDividerWindowWidth - (this.mDividerInsets * 2);
    }

    /* access modifiers changed from: package-private */
    public int getContentInsets() {
        return this.mDividerInsets;
    }

    /* access modifiers changed from: package-private */
    public int getContentWidthInactive() {
        return this.mDividerWindowWidthInactive;
    }

    /* access modifiers changed from: package-private */
    public void setResizing(boolean resizing) {
        if (this.mResizing != resizing) {
            this.mResizing = resizing;
            resetDragResizingChangeReported();
        }
    }

    /* access modifiers changed from: package-private */
    public void setTouchRegion(Rect touchRegion) {
        this.mTouchRegion.set(touchRegion);
    }

    /* access modifiers changed from: package-private */
    public void getTouchRegion(Rect outRegion) {
        outRegion.set(this.mTouchRegion);
        outRegion.offset(this.mWindow.getFrameLw().left, this.mWindow.getFrameLw().top);
    }

    private void resetDragResizingChangeReported() {
        this.mDisplayContent.forAllWindows((Consumer<WindowState>) $$Lambda$vhwCXwzYksBgFM46tASKUCeQRc.INSTANCE, true);
    }

    /* access modifiers changed from: package-private */
    public void setWindow(WindowState window) {
        this.mWindow = window;
        reevaluateVisibility(false);
    }

    /* access modifiers changed from: package-private */
    public void reevaluateVisibility(boolean force) {
        if (this.mWindow != null) {
            boolean visible = this.mDisplayContent.getSplitScreenPrimaryStackIgnoringVisibility() != null;
            if (this.mLastVisibility != visible || force) {
                this.mLastVisibility = visible;
                notifyDockedDividerVisibilityChanged(visible);
                if (!visible) {
                    setResizeDimLayer(false, 0, 0.0f);
                }
            }
        }
    }

    private boolean wasVisible() {
        return this.mLastVisibility;
    }

    /* access modifiers changed from: package-private */
    public void setAdjustedForIme(boolean adjustedForIme, boolean adjustedForDivider, boolean animate, WindowState imeWin, int imeHeight) {
        if (this.mAdjustedForIme != adjustedForIme || ((adjustedForIme && this.mImeHeight != imeHeight) || this.mAdjustedForDivider != adjustedForDivider)) {
            boolean z = false;
            if (!animate || this.mAnimatingForMinimizedDockedStack) {
                if (adjustedForIme || adjustedForDivider) {
                    z = true;
                }
                notifyAdjustedForImeChanged(z, 0);
            } else {
                notifyDockedStackMinimizedChanged(this.mMinimizedDock, false, isHomeStackResizable());
                startImeAdjustAnimation(adjustedForIme, adjustedForDivider, imeWin);
            }
            this.mAdjustedForIme = adjustedForIme;
            this.mImeHeight = imeHeight;
            this.mAdjustedForDivider = adjustedForDivider;
        }
    }

    /* access modifiers changed from: package-private */
    public int getImeHeightAdjustedFor() {
        return this.mImeHeight;
    }

    /* access modifiers changed from: package-private */
    public void positionDockedStackedDivider(Rect frame) {
        TaskStack stack = this.mDisplayContent.getSplitScreenPrimaryStackIgnoringVisibility();
        if (stack == null) {
            frame.set(this.mLastRect);
            return;
        }
        stack.getDimBounds(this.mTmpRect);
        int side = stack.getDockSide();
        if (side == 1) {
            frame.set(this.mTmpRect.right - this.mDividerInsets, frame.top, (this.mTmpRect.right + frame.width()) - this.mDividerInsets, frame.bottom);
        } else if (side == 2) {
            frame.set(frame.left, this.mTmpRect.bottom - this.mDividerInsets, this.mTmpRect.right, (this.mTmpRect.bottom + frame.height()) - this.mDividerInsets);
        } else if (side == 3) {
            frame.set((this.mTmpRect.left - frame.width()) + this.mDividerInsets, frame.top, this.mTmpRect.left + this.mDividerInsets, frame.bottom);
        } else if (side == 4) {
            frame.set(frame.left, (this.mTmpRect.top - frame.height()) + this.mDividerInsets, frame.right, this.mTmpRect.top + this.mDividerInsets);
        }
        this.mLastRect.set(frame);
    }

    private void notifyDockedDividerVisibilityChanged(boolean visible) {
        int size = this.mDockedStackListeners.beginBroadcast();
        for (int i = 0; i < size; i++) {
            try {
                this.mDockedStackListeners.getBroadcastItem(i).onDividerVisibilityChanged(visible);
            } catch (RemoteException e) {
                Slog.e("WindowManager", "Error delivering divider visibility changed event.", e);
            }
        }
        this.mDockedStackListeners.finishBroadcast();
    }

    /* access modifiers changed from: package-private */
    public boolean canPrimaryStackDockTo(int dockSide, Rect parentRect, int rotation) {
        DisplayPolicy policy = this.mDisplayContent.getDisplayPolicy();
        return isDockSideAllowed(dockSide, this.mOriginalDockedSide, policy.navigationBarPosition(parentRect.width(), parentRect.height(), rotation), policy.navigationBarCanMove());
    }

    @VisibleForTesting
    static boolean isDockSideAllowed(int dockSide, int originalDockSide, int navBarPosition, boolean navigationBarCanMove) {
        if (dockSide == 2) {
            return true;
        }
        if (navigationBarCanMove) {
            if (dockSide == 1 && navBarPosition == 2) {
                return true;
            }
            if (dockSide == 3 && navBarPosition == 1) {
                return true;
            }
            return false;
        } else if (dockSide == originalDockSide) {
            return true;
        } else {
            if (dockSide == 1 && originalDockSide == 2) {
                return true;
            }
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public void notifyDockedStackExistsChanged(boolean exists) {
        int size = this.mDockedStackListeners.beginBroadcast();
        for (int i = 0; i < size; i++) {
            try {
                this.mDockedStackListeners.getBroadcastItem(i).onDockedStackExistsChanged(exists);
            } catch (RemoteException e) {
                Slog.e("WindowManager", "Error delivering docked stack exists changed event.", e);
            }
        }
        this.mDockedStackListeners.finishBroadcast();
        if (exists) {
            InputMethodManagerInternal inputMethodManagerInternal = (InputMethodManagerInternal) LocalServices.getService(InputMethodManagerInternal.class);
            if (inputMethodManagerInternal != null) {
                inputMethodManagerInternal.hideCurrentInputMethod();
                this.mImeHideRequested = true;
            }
            this.mOriginalDockedSide = this.mDisplayContent.getSplitScreenPrimaryStackIgnoringVisibility().getDockSideForDisplay(this.mDisplayContent);
            return;
        }
        this.mOriginalDockedSide = -1;
        setMinimizedDockedStack(false, false);
        TaskStack taskStack = this.mDimmedStack;
        if (taskStack != null) {
            taskStack.stopDimming();
            this.mDimmedStack = null;
        }
    }

    /* access modifiers changed from: package-private */
    public void resetImeHideRequested() {
        this.mImeHideRequested = false;
    }

    /* access modifiers changed from: package-private */
    public boolean isImeHideRequested() {
        return this.mImeHideRequested;
    }

    private void notifyDockedStackMinimizedChanged(boolean minimizedDock, boolean animate, boolean isHomeStackResizable) {
        long transitionDuration;
        long animDuration = 0;
        if (animate) {
            TaskStack stack = this.mDisplayContent.getSplitScreenPrimaryStackIgnoringVisibility();
            if (isAnimationMaximizing()) {
                transitionDuration = this.mDisplayContent.mAppTransition.getLastClipRevealTransitionDuration();
            } else {
                transitionDuration = 336;
            }
            this.mAnimationDuration = (long) (((float) transitionDuration) * this.mService.getTransitionAnimationScaleLocked());
            this.mMaximizeMeetFraction = getClipRevealMeetFraction(stack);
            animDuration = (long) (((float) this.mAnimationDuration) * this.mMaximizeMeetFraction);
        }
        this.mService.mAtmInternal.notifyDockedStackMinimizedChanged(minimizedDock);
        int size = this.mDockedStackListeners.beginBroadcast();
        for (int i = 0; i < size; i++) {
            try {
                this.mDockedStackListeners.getBroadcastItem(i).onDockedStackMinimizedChanged(minimizedDock, animDuration, isHomeStackResizable);
            } catch (RemoteException e) {
                Slog.e("WindowManager", "Error delivering minimized dock changed event.", e);
            }
        }
        this.mDockedStackListeners.finishBroadcast();
    }

    /* access modifiers changed from: package-private */
    public void notifyDockSideChanged(int newDockSide) {
        int size = this.mDockedStackListeners.beginBroadcast();
        for (int i = 0; i < size; i++) {
            try {
                this.mDockedStackListeners.getBroadcastItem(i).onDockSideChanged(newDockSide);
            } catch (RemoteException e) {
                Slog.e("WindowManager", "Error delivering dock side changed event.", e);
            }
        }
        this.mDockedStackListeners.finishBroadcast();
    }

    private void notifyAdjustedForImeChanged(boolean adjustedForIme, long animDuration) {
        int size = this.mDockedStackListeners.beginBroadcast();
        for (int i = 0; i < size; i++) {
            try {
                this.mDockedStackListeners.getBroadcastItem(i).onAdjustedForImeChanged(adjustedForIme, animDuration);
            } catch (RemoteException e) {
                Slog.e("WindowManager", "Error delivering adjusted for ime changed event.", e);
            }
        }
        this.mDockedStackListeners.finishBroadcast();
    }

    /* access modifiers changed from: package-private */
    public void registerDockedStackListener(IDockedStackListener listener) {
        this.mDockedStackListeners.register(listener);
        notifyDockedDividerVisibilityChanged(wasVisible());
        notifyDockedStackExistsChanged(this.mDisplayContent.getSplitScreenPrimaryStackIgnoringVisibility() != null);
        notifyDockedStackMinimizedChanged(this.mMinimizedDock, false, isHomeStackResizable());
        notifyAdjustedForImeChanged(this.mAdjustedForIme, 0);
    }

    /* access modifiers changed from: package-private */
    public void setResizeDimLayer(boolean visible, int targetWindowingMode, float alpha) {
        TaskStack stack;
        if (targetWindowingMode != 0) {
            stack = this.mDisplayContent.getTopStackInWindowingMode(targetWindowingMode);
        } else {
            stack = null;
        }
        boolean visibleAndValid = (!visible || stack == null || this.mDisplayContent.getSplitScreenPrimaryStack() == null) ? false : true;
        TaskStack taskStack = this.mDimmedStack;
        if (!(taskStack == null || taskStack == stack)) {
            taskStack.stopDimming();
            this.mDimmedStack = null;
        }
        if (visibleAndValid) {
            this.mDimmedStack = stack;
            stack.dim(alpha);
        }
        if (!visibleAndValid && stack != null) {
            this.mDimmedStack = null;
            stack.stopDimming();
        }
    }

    private int getResizeDimLayer() {
        WindowState windowState = this.mWindow;
        if (windowState != null) {
            return windowState.mLayer - 1;
        }
        return 1;
    }

    /* access modifiers changed from: package-private */
    public void notifyAppVisibilityChanged() {
        checkMinimizeChanged(false);
    }

    /* access modifiers changed from: package-private */
    public void notifyAppTransitionStarting(ArraySet<AppWindowToken> openingApps, int appTransition) {
        boolean wasMinimized = this.mMinimizedDock;
        checkMinimizeChanged(true);
        if (wasMinimized && this.mMinimizedDock && containsAppInDockedStack(openingApps) && appTransition != 0 && !AppTransition.isKeyguardGoingAwayTransit(appTransition) && !this.mService.mAtmInternal.isRecentsComponentHomeActivity(this.mService.mCurrentUserId)) {
            this.mService.showRecentApps();
        }
    }

    private boolean containsAppInDockedStack(ArraySet<AppWindowToken> apps) {
        for (int i = apps.size() - 1; i >= 0; i--) {
            AppWindowToken token = apps.valueAt(i);
            if (token.getTask() != null && token.inSplitScreenPrimaryWindowingMode()) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public boolean isMinimizedDock() {
        return this.mMinimizedDock;
    }

    /* access modifiers changed from: package-private */
    public void checkMinimizeChanged(boolean animate) {
        TaskStack homeStack;
        Task homeTask;
        if (this.mDisplayContent.getSplitScreenPrimaryStackIgnoringVisibility() != null && (homeStack = this.mDisplayContent.getHomeStack()) != null && (homeTask = homeStack.findHomeTask()) != null && isWithinDisplay(homeTask)) {
            if (!this.mMinimizedDock || !this.mService.mKeyguardOrAodShowingOnDefaultDisplay) {
                TaskStack topSecondaryStack = this.mDisplayContent.getTopStackInWindowingMode(4);
                RecentsAnimationController recentsAnim = this.mService.getRecentsAnimationController();
                boolean z = true;
                boolean minimizedForRecentsAnimation = recentsAnim != null && recentsAnim.isSplitScreenMinimized();
                boolean homeVisible = homeTask.getTopVisibleAppToken() != null && !homeTask.getTopVisibleAppToken().mIsDummyVisible;
                if (homeVisible && topSecondaryStack != null) {
                    homeVisible = homeStack.compareTo(topSecondaryStack) >= 0;
                }
                if (!homeVisible && !minimizedForRecentsAnimation) {
                    z = false;
                }
                setMinimizedDockedStack(z, animate);
            }
        }
    }

    private boolean isWithinDisplay(Task task) {
        task.getBounds(this.mTmpRect);
        this.mDisplayContent.getBounds(this.mTmpRect2);
        return this.mTmpRect.intersect(this.mTmpRect2);
    }

    private void setMinimizedDockedStack(boolean minimizedDock, boolean animate) {
        boolean wasMinimized = this.mMinimizedDock;
        this.mMinimizedDock = minimizedDock;
        if (minimizedDock != wasMinimized) {
            boolean imeChanged = clearImeAdjustAnimation();
            boolean minimizedChange = false;
            if (isHomeStackResizable()) {
                notifyDockedStackMinimizedChanged(minimizedDock, animate, true);
                minimizedChange = true;
            } else if (minimizedDock) {
                if (animate) {
                    startAdjustAnimation(0.0f, 1.0f);
                } else {
                    minimizedChange = false | setMinimizedDockedStack(true);
                }
            } else if (animate) {
                startAdjustAnimation(1.0f, 0.0f);
            } else {
                minimizedChange = false | setMinimizedDockedStack(false);
            }
            if (imeChanged || minimizedChange) {
                if (imeChanged && !minimizedChange) {
                    Slog.d("WindowManager", "setMinimizedDockedStack: IME adjust changed due to minimizing, minimizedDock=" + minimizedDock + " minimizedChange=" + minimizedChange);
                }
                this.mService.mWindowPlacerLocked.performSurfacePlacement();
            }
        }
    }

    private boolean clearImeAdjustAnimation() {
        boolean changed = this.mDisplayContent.clearImeAdjustAnimation();
        this.mAnimatingForIme = false;
        return changed;
    }

    private void startAdjustAnimation(float from, float to) {
        this.mAnimatingForMinimizedDockedStack = true;
        this.mAnimationStarted = false;
        this.mAnimationStart = from;
        this.mAnimationTarget = to;
    }

    private void startImeAdjustAnimation(boolean adjustedForIme, boolean adjustedForDivider, WindowState imeWin) {
        float f = 1.0f;
        if (!this.mAnimatingForIme) {
            this.mAnimationStart = this.mAdjustedForIme ? 1.0f : 0.0f;
            this.mDividerAnimationStart = this.mAdjustedForDivider ? 1.0f : 0.0f;
            this.mLastAnimationProgress = this.mAnimationStart;
            this.mLastDividerProgress = this.mDividerAnimationStart;
        } else {
            this.mAnimationStart = this.mLastAnimationProgress;
            this.mDividerAnimationStart = this.mLastDividerProgress;
        }
        boolean z = true;
        this.mAnimatingForIme = true;
        this.mAnimationStarted = false;
        this.mAnimationTarget = adjustedForIme ? 1.0f : 0.0f;
        if (!adjustedForDivider) {
            f = 0.0f;
        }
        this.mDividerAnimationTarget = f;
        this.mDisplayContent.beginImeAdjustAnimation();
        if (!this.mService.mWaitingForDrawn.isEmpty()) {
            this.mService.mH.removeMessages(24);
            this.mService.mH.sendEmptyMessageDelayed(24, IME_ADJUST_DRAWN_TIMEOUT);
            this.mAnimationStartDelayed = true;
            if (imeWin != null) {
                WindowState windowState = this.mDelayedImeWin;
                if (windowState != null) {
                    windowState.endDelayingAnimationStart();
                }
                this.mDelayedImeWin = imeWin;
                imeWin.startDelayingAnimationStart();
            }
            if (this.mService.mWaitingForDrawnCallback != null) {
                this.mService.mWaitingForDrawnCallback.run();
            }
            this.mService.mWaitingForDrawnCallback = new Runnable(adjustedForIme, adjustedForDivider) {
                private final /* synthetic */ boolean f$1;
                private final /* synthetic */ boolean f$2;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                }

                public final void run() {
                    DockedStackDividerController.this.lambda$startImeAdjustAnimation$0$DockedStackDividerController(this.f$1, this.f$2);
                }
            };
            return;
        }
        if (!adjustedForIme && !adjustedForDivider) {
            z = false;
        }
        notifyAdjustedForImeChanged(z, IME_ADJUST_ANIM_DURATION);
    }

    public /* synthetic */ void lambda$startImeAdjustAnimation$0$DockedStackDividerController(boolean adjustedForIme, boolean adjustedForDivider) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                boolean z = false;
                this.mAnimationStartDelayed = false;
                if (this.mDelayedImeWin != null) {
                    this.mDelayedImeWin.endDelayingAnimationStart();
                }
                long duration = 0;
                if (this.mAdjustedForIme == adjustedForIme && this.mAdjustedForDivider == adjustedForDivider) {
                    duration = IME_ADJUST_ANIM_DURATION;
                } else {
                    Slog.w("WindowManager", "IME adjust changed while waiting for drawn: adjustedForIme=" + adjustedForIme + " adjustedForDivider=" + adjustedForDivider + " mAdjustedForIme=" + this.mAdjustedForIme + " mAdjustedForDivider=" + this.mAdjustedForDivider);
                }
                if (this.mAdjustedForIme || this.mAdjustedForDivider) {
                    z = true;
                }
                notifyAdjustedForImeChanged(z, duration);
            } catch (Throwable th) {
                while (true) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    private boolean setMinimizedDockedStack(boolean minimized) {
        TaskStack stack = this.mDisplayContent.getSplitScreenPrimaryStackIgnoringVisibility();
        notifyDockedStackMinimizedChanged(minimized, false, isHomeStackResizable());
        if (stack == null) {
            return false;
        }
        if (stack.setAdjustedForMinimizedDock(minimized ? 1.0f : 0.0f)) {
            return true;
        }
        return false;
    }

    private boolean isAnimationMaximizing() {
        return this.mAnimationTarget == 0.0f;
    }

    public boolean animate(long now) {
        if (this.mWindow == null) {
            return false;
        }
        if (this.mAnimatingForMinimizedDockedStack) {
            return animateForMinimizedDockedStack(now);
        }
        if (!this.mAnimatingForIme || this.mDisplayContent.mAppTransition.isRunning()) {
            return false;
        }
        return animateForIme(now);
    }

    private boolean animateForIme(long now) {
        if (!this.mAnimationStarted || this.mAnimationStartDelayed) {
            this.mAnimationStarted = true;
            this.mAnimationStartTime = now;
            this.mAnimationDuration = (long) (this.mService.getWindowAnimationScaleLocked() * 280.0f);
        }
        float t = (this.mAnimationTarget == 1.0f ? IME_ADJUST_ENTRY_INTERPOLATOR : AppTransition.TOUCH_RESPONSE_INTERPOLATOR).getInterpolation(Math.min(1.0f, ((float) (now - this.mAnimationStartTime)) / ((float) this.mAnimationDuration)));
        if (this.mDisplayContent.animateForIme(t, this.mAnimationTarget, this.mDividerAnimationTarget)) {
            this.mService.mWindowPlacerLocked.performSurfacePlacement();
        }
        if (t < 1.0f) {
            return true;
        }
        this.mLastAnimationProgress = this.mAnimationTarget;
        this.mLastDividerProgress = this.mDividerAnimationTarget;
        this.mAnimatingForIme = false;
        return false;
    }

    private boolean animateForMinimizedDockedStack(long now) {
        TaskStack stack = this.mDisplayContent.getSplitScreenPrimaryStackIgnoringVisibility();
        if (!this.mAnimationStarted) {
            this.mAnimationStarted = true;
            this.mAnimationStartTime = now;
            notifyDockedStackMinimizedChanged(this.mMinimizedDock, true, isHomeStackResizable());
        }
        float t = (isAnimationMaximizing() ? AppTransition.TOUCH_RESPONSE_INTERPOLATOR : this.mMinimizedDockInterpolator).getInterpolation(Math.min(1.0f, ((float) (now - this.mAnimationStartTime)) / ((float) this.mAnimationDuration)));
        if (stack != null && stack.setAdjustedForMinimizedDock(getMinimizeAmount(stack, t))) {
            this.mService.mWindowPlacerLocked.performSurfacePlacement();
        }
        if (t < 1.0f) {
            return true;
        }
        this.mAnimatingForMinimizedDockedStack = false;
        return false;
    }

    /* access modifiers changed from: package-private */
    public float getInterpolatedAnimationValue(float t) {
        return (this.mAnimationTarget * t) + ((1.0f - t) * this.mAnimationStart);
    }

    /* access modifiers changed from: package-private */
    public float getInterpolatedDividerValue(float t) {
        return (this.mDividerAnimationTarget * t) + ((1.0f - t) * this.mDividerAnimationStart);
    }

    private float getMinimizeAmount(TaskStack stack, float t) {
        float naturalAmount = getInterpolatedAnimationValue(t);
        if (isAnimationMaximizing()) {
            return adjustMaximizeAmount(stack, t, naturalAmount);
        }
        return naturalAmount;
    }

    private float adjustMaximizeAmount(TaskStack stack, float t, float naturalAmount) {
        if (this.mMaximizeMeetFraction == 1.0f) {
            return naturalAmount;
        }
        float amountPrime = (this.mAnimationTarget * t) + ((1.0f - t) * (((float) this.mDisplayContent.mAppTransition.getLastClipRevealMaxTranslation()) / ((float) stack.getMinimizeDistance())));
        float t2 = Math.min(t / this.mMaximizeMeetFraction, 1.0f);
        float tmpMaximizeAmount = (amountPrime * t2) + ((1.0f - t2) * naturalAmount);
        if (Float.isNaN(tmpMaximizeAmount)) {
            return 0.0f;
        }
        return tmpMaximizeAmount;
    }

    private float getClipRevealMeetFraction(TaskStack stack) {
        if (!isAnimationMaximizing() || stack == null || !this.mDisplayContent.mAppTransition.hadClipRevealAnimation()) {
            return 1.0f;
        }
        return ((1.0f - Math.max(0.0f, Math.min(1.0f, ((((float) Math.abs(this.mDisplayContent.mAppTransition.getLastClipRevealMaxTranslation())) / ((float) stack.getMinimizeDistance())) - CLIP_REVEAL_MEET_FRACTION_MIN) / CLIP_REVEAL_MEET_FRACTION_MIN))) * 0.39999998f) + CLIP_REVEAL_MEET_EARLIEST;
    }

    public String toShortString() {
        return "WindowManager";
    }

    /* access modifiers changed from: package-private */
    public WindowState getWindow() {
        return this.mWindow;
    }

    /* access modifiers changed from: package-private */
    public void dump(String prefix, PrintWriter pw) {
        pw.println(prefix + "DockedStackDividerController");
        pw.println(prefix + "  mLastVisibility=" + this.mLastVisibility);
        pw.println(prefix + "  mMinimizedDock=" + this.mMinimizedDock);
        pw.println(prefix + "  mAdjustedForIme=" + this.mAdjustedForIme);
        pw.println(prefix + "  mAdjustedForDivider=" + this.mAdjustedForDivider);
    }

    /* access modifiers changed from: package-private */
    public void writeToProto(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        proto.write(1133871366145L, this.mMinimizedDock);
        proto.end(token);
    }
}
