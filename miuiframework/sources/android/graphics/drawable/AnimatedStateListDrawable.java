package android.graphics.drawable;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.UnsupportedAppUsage;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.DrawableContainer.DrawableContainerState;
import android.util.AttributeSet;
import android.util.Log;
import android.util.LongSparseLongArray;
import android.util.SparseIntArray;
import android.util.StateSet;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class AnimatedStateListDrawable extends StateListDrawable {
    private static final String ELEMENT_ITEM = "item";
    private static final String ELEMENT_TRANSITION = "transition";
    private static final String LOGTAG = AnimatedStateListDrawable.class.getSimpleName();
    private boolean mMutated;
    @UnsupportedAppUsage(maxTargetSdk = 28, trackingBug = 115609023)
    private AnimatedStateListState mState;
    private Transition mTransition;
    private int mTransitionFromIndex;
    private int mTransitionToIndex;

    private static abstract class Transition {
        public abstract void start();

        public abstract void stop();

        private Transition() {
        }

        public void reverse() {
        }

        public boolean canReverse() {
            return false;
        }
    }

    private static class AnimatableTransition extends Transition {
        private final Animatable mA;

        public AnimatableTransition(Animatable a) {
            super();
            this.mA = a;
        }

        public void start() {
            this.mA.start();
        }

        public void stop() {
            this.mA.stop();
        }
    }

    static class AnimatedStateListState extends StateListState {
        private static final long REVERSED_BIT = 4294967296L;
        private static final long REVERSIBLE_FLAG_BIT = 8589934592L;
        int[] mAnimThemeAttrs;
        @UnsupportedAppUsage
        SparseIntArray mStateIds;
        @UnsupportedAppUsage
        LongSparseLongArray mTransitions;

        AnimatedStateListState(AnimatedStateListState orig, AnimatedStateListDrawable owner, Resources res) {
            super(orig, owner, res);
            if (orig != null) {
                this.mAnimThemeAttrs = orig.mAnimThemeAttrs;
                this.mTransitions = orig.mTransitions;
                this.mStateIds = orig.mStateIds;
                return;
            }
            this.mTransitions = new LongSparseLongArray();
            this.mStateIds = new SparseIntArray();
        }

        /* Access modifiers changed, original: 0000 */
        public void mutate() {
            this.mTransitions = this.mTransitions.clone();
            this.mStateIds = this.mStateIds.clone();
        }

        /* Access modifiers changed, original: 0000 */
        public int addTransition(int fromId, int toId, Drawable anim, boolean reversible) {
            int pos = super.addChild(anim);
            long keyFromTo = generateTransitionKey(fromId, toId);
            long reversibleBit = 0;
            if (reversible) {
                reversibleBit = 8589934592L;
            }
            this.mTransitions.append(keyFromTo, ((long) pos) | reversibleBit);
            if (reversible) {
                this.mTransitions.append(generateTransitionKey(toId, fromId), (((long) pos) | 4294967296L) | reversibleBit);
            } else {
                int i = fromId;
                int i2 = toId;
            }
            return pos;
        }

        /* Access modifiers changed, original: 0000 */
        public int addStateSet(int[] stateSet, Drawable drawable, int id) {
            int index = super.addStateSet(stateSet, drawable);
            this.mStateIds.put(index, id);
            return index;
        }

        /* Access modifiers changed, original: 0000 */
        public int indexOfKeyframe(int[] stateSet) {
            int index = super.indexOfStateSet(stateSet);
            if (index >= 0) {
                return index;
            }
            return super.indexOfStateSet(StateSet.WILD_CARD);
        }

        /* Access modifiers changed, original: 0000 */
        public int getKeyframeIdAt(int index) {
            return index < 0 ? 0 : this.mStateIds.get(index, 0);
        }

        /* Access modifiers changed, original: 0000 */
        public int indexOfTransition(int fromId, int toId) {
            return (int) this.mTransitions.get(generateTransitionKey(fromId, toId), -1);
        }

        /* Access modifiers changed, original: 0000 */
        public boolean isTransitionReversed(int fromId, int toId) {
            return (this.mTransitions.get(generateTransitionKey(fromId, toId), -1) & 4294967296L) != 0;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean transitionHasReversibleFlag(int fromId, int toId) {
            return (this.mTransitions.get(generateTransitionKey(fromId, toId), -1) & 8589934592L) != 0;
        }

        public boolean canApplyTheme() {
            return this.mAnimThemeAttrs != null || super.canApplyTheme();
        }

        public Drawable newDrawable() {
            return new AnimatedStateListDrawable(this, null);
        }

        public Drawable newDrawable(Resources res) {
            return new AnimatedStateListDrawable(this, res);
        }

        private static long generateTransitionKey(int fromId, int toId) {
            return (((long) fromId) << 32) | ((long) toId);
        }
    }

    private static class AnimatedVectorDrawableTransition extends Transition {
        private final AnimatedVectorDrawable mAvd;
        private final boolean mHasReversibleFlag;
        private final boolean mReversed;

        public AnimatedVectorDrawableTransition(AnimatedVectorDrawable avd, boolean reversed, boolean hasReversibleFlag) {
            super();
            this.mAvd = avd;
            this.mReversed = reversed;
            this.mHasReversibleFlag = hasReversibleFlag;
        }

        public boolean canReverse() {
            return this.mAvd.canReverse() && this.mHasReversibleFlag;
        }

        public void start() {
            if (this.mReversed) {
                reverse();
            } else {
                this.mAvd.start();
            }
        }

        public void reverse() {
            if (canReverse()) {
                this.mAvd.reverse();
            } else {
                Log.w(AnimatedStateListDrawable.LOGTAG, "Can't reverse, either the reversible is set to false, or the AnimatedVectorDrawable can't reverse");
            }
        }

        public void stop() {
            this.mAvd.stop();
        }
    }

    private static class AnimationDrawableTransition extends Transition {
        private final ObjectAnimator mAnim;
        private final boolean mHasReversibleFlag;

        public AnimationDrawableTransition(AnimationDrawable ad, boolean reversed, boolean hasReversibleFlag) {
            super();
            int frameCount = ad.getNumberOfFrames();
            int fromFrame = reversed ? frameCount - 1 : 0;
            int toFrame = reversed ? 0 : frameCount - 1;
            FrameInterpolator interp = new FrameInterpolator(ad, reversed);
            ObjectAnimator anim = ObjectAnimator.ofInt((Object) ad, "currentIndex", fromFrame, toFrame);
            anim.setAutoCancel(true);
            anim.setDuration((long) interp.getTotalDuration());
            anim.setInterpolator(interp);
            this.mHasReversibleFlag = hasReversibleFlag;
            this.mAnim = anim;
        }

        public boolean canReverse() {
            return this.mHasReversibleFlag;
        }

        public void start() {
            this.mAnim.start();
        }

        public void reverse() {
            this.mAnim.reverse();
        }

        public void stop() {
            this.mAnim.cancel();
        }
    }

    private static class FrameInterpolator implements TimeInterpolator {
        private int[] mFrameTimes;
        private int mFrames;
        private int mTotalDuration;

        public FrameInterpolator(AnimationDrawable d, boolean reversed) {
            updateFrames(d, reversed);
        }

        public int updateFrames(AnimationDrawable d, boolean reversed) {
            int N = d.getNumberOfFrames();
            this.mFrames = N;
            int[] iArr = this.mFrameTimes;
            if (iArr == null || iArr.length < N) {
                this.mFrameTimes = new int[N];
            }
            iArr = this.mFrameTimes;
            int totalDuration = 0;
            for (int i = 0; i < N; i++) {
                int duration = d.getDuration(reversed ? (N - i) - 1 : i);
                iArr[i] = duration;
                totalDuration += duration;
            }
            this.mTotalDuration = totalDuration;
            return totalDuration;
        }

        public int getTotalDuration() {
            return this.mTotalDuration;
        }

        public float getInterpolation(float input) {
            float frameElapsed;
            int elapsed = (int) ((((float) this.mTotalDuration) * input) + 1056964608);
            int N = this.mFrames;
            int[] frameTimes = this.mFrameTimes;
            int remaining = elapsed;
            int i = 0;
            while (i < N && remaining >= frameTimes[i]) {
                remaining -= frameTimes[i];
                i++;
            }
            if (i < N) {
                frameElapsed = ((float) remaining) / ((float) this.mTotalDuration);
            } else {
                frameElapsed = 0.0f;
            }
            return (((float) i) / ((float) N)) + frameElapsed;
        }
    }

    public AnimatedStateListDrawable() {
        this(null, null);
    }

    public boolean setVisible(boolean visible, boolean restart) {
        boolean changed = super.setVisible(visible, restart);
        if (this.mTransition != null && (changed || restart)) {
            if (visible) {
                this.mTransition.start();
            } else {
                jumpToCurrentState();
            }
        }
        return changed;
    }

    public void addState(int[] stateSet, Drawable drawable, int id) {
        if (drawable != null) {
            this.mState.addStateSet(stateSet, drawable, id);
            onStateChange(getState());
            return;
        }
        throw new IllegalArgumentException("Drawable must not be null");
    }

    public <T extends Drawable & Animatable> void addTransition(int fromId, int toId, T transition, boolean reversible) {
        if (transition != null) {
            this.mState.addTransition(fromId, toId, transition, reversible);
            return;
        }
        throw new IllegalArgumentException("Transition drawable must not be null");
    }

    public boolean isStateful() {
        return true;
    }

    /* Access modifiers changed, original: protected */
    public boolean onStateChange(int[] stateSet) {
        int targetIndex = this.mState.indexOfKeyframe(stateSet);
        boolean changed = targetIndex != getCurrentIndex() && (selectTransition(targetIndex) || selectDrawable(targetIndex));
        Drawable current = getCurrent();
        if (current != null) {
            return changed | current.setState(stateSet);
        }
        return changed;
    }

    private boolean selectTransition(int toIndex) {
        int fromIndex;
        Transition currentTransition = this.mTransition;
        if (currentTransition == null) {
            fromIndex = getCurrentIndex();
        } else if (toIndex == this.mTransitionToIndex) {
            return true;
        } else {
            if (toIndex == this.mTransitionFromIndex && currentTransition.canReverse()) {
                currentTransition.reverse();
                this.mTransitionToIndex = this.mTransitionFromIndex;
                this.mTransitionFromIndex = toIndex;
                return true;
            }
            fromIndex = this.mTransitionToIndex;
            currentTransition.stop();
        }
        this.mTransition = null;
        this.mTransitionFromIndex = -1;
        this.mTransitionToIndex = -1;
        AnimatedStateListState state = this.mState;
        int fromId = state.getKeyframeIdAt(fromIndex);
        int toId = state.getKeyframeIdAt(toIndex);
        if (toId == 0 || fromId == 0) {
            return false;
        }
        int transitionIndex = state.indexOfTransition(fromId, toId);
        if (transitionIndex < 0) {
            return false;
        }
        Transition transition;
        boolean hasReversibleFlag = state.transitionHasReversibleFlag(fromId, toId);
        selectDrawable(transitionIndex);
        Drawable d = getCurrent();
        if (d instanceof AnimationDrawable) {
            transition = new AnimationDrawableTransition((AnimationDrawable) d, state.isTransitionReversed(fromId, toId), hasReversibleFlag);
        } else if (d instanceof AnimatedVectorDrawable) {
            transition = new AnimatedVectorDrawableTransition((AnimatedVectorDrawable) d, state.isTransitionReversed(fromId, toId), hasReversibleFlag);
        } else if (!(d instanceof Animatable)) {
            return false;
        } else {
            transition = new AnimatableTransition((Animatable) d);
        }
        transition.start();
        this.mTransition = transition;
        this.mTransitionFromIndex = fromIndex;
        this.mTransitionToIndex = toIndex;
        return true;
    }

    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        Transition transition = this.mTransition;
        if (transition != null) {
            transition.stop();
            this.mTransition = null;
            selectDrawable(this.mTransitionToIndex);
            this.mTransitionToIndex = -1;
            this.mTransitionFromIndex = -1;
        }
    }

    public void inflate(Resources r, XmlPullParser parser, AttributeSet attrs, Theme theme) throws XmlPullParserException, IOException {
        TypedArray a = Drawable.obtainAttributes(r, theme, attrs, R.styleable.AnimatedStateListDrawable);
        super.inflateWithAttributes(r, parser, a, 1);
        updateStateFromTypedArray(a);
        updateDensity(r);
        a.recycle();
        inflateChildElements(r, parser, attrs, theme);
        init();
    }

    public void applyTheme(Theme theme) {
        super.applyTheme(theme);
        AnimatedStateListState state = this.mState;
        if (state != null && state.mAnimThemeAttrs != null) {
            TypedArray a = theme.resolveAttributes(state.mAnimThemeAttrs, R.styleable.AnimatedRotateDrawable);
            updateStateFromTypedArray(a);
            a.recycle();
            init();
        }
    }

    private void updateStateFromTypedArray(TypedArray a) {
        AnimatedStateListState state = this.mState;
        state.mChangingConfigurations |= a.getChangingConfigurations();
        state.mAnimThemeAttrs = a.extractThemeAttrs();
        state.setVariablePadding(a.getBoolean(2, state.mVariablePadding));
        state.setConstantSize(a.getBoolean(3, state.mConstantSize));
        state.setEnterFadeDuration(a.getInt(4, state.mEnterFadeDuration));
        state.setExitFadeDuration(a.getInt(5, state.mExitFadeDuration));
        setDither(a.getBoolean(0, state.mDither));
        setAutoMirrored(a.getBoolean(6, state.mAutoMirrored));
    }

    private void init() {
        onStateChange(getState());
    }

    private void inflateChildElements(Resources r, XmlPullParser parser, AttributeSet attrs, Theme theme) throws XmlPullParserException, IOException {
        int innerDepth = parser.getDepth() + 1;
        while (true) {
            int next = parser.next();
            int type = next;
            if (next != 1) {
                next = parser.getDepth();
                int depth = next;
                if (next < innerDepth && type == 3) {
                    return;
                }
                if (type == 2) {
                    if (depth <= innerDepth) {
                        if (parser.getName().equals("item")) {
                            parseItem(r, parser, attrs, theme);
                        } else if (parser.getName().equals(ELEMENT_TRANSITION)) {
                            parseTransition(r, parser, attrs, theme);
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    private int parseTransition(Resources r, XmlPullParser parser, AttributeSet attrs, Theme theme) throws XmlPullParserException, IOException {
        TypedArray a = Drawable.obtainAttributes(r, theme, attrs, R.styleable.AnimatedStateListDrawableTransition);
        int fromId = a.getResourceId(2, 0);
        int toId = a.getResourceId(1, 0);
        boolean reversible = a.getBoolean(true, false);
        Drawable dr = a.getDrawable(0);
        a.recycle();
        if (dr == null) {
            int type;
            while (true) {
                int next = parser.next();
                type = next;
                if (next != 4) {
                    break;
                }
            }
            if (type == 2) {
                dr = Drawable.createFromXmlInner(r, parser, attrs, theme);
            } else {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(parser.getPositionDescription());
                stringBuilder.append(": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
                throw new XmlPullParserException(stringBuilder.toString());
            }
        }
        return this.mState.addTransition(fromId, toId, dr, reversible);
    }

    private int parseItem(Resources r, XmlPullParser parser, AttributeSet attrs, Theme theme) throws XmlPullParserException, IOException {
        TypedArray a = Drawable.obtainAttributes(r, theme, attrs, R.styleable.AnimatedStateListDrawableItem);
        int keyframeId = a.getResourceId(0, 0);
        Drawable dr = a.getDrawable(1);
        a.recycle();
        int[] states = extractStateSet(attrs);
        if (dr == null) {
            int type;
            while (true) {
                int next = parser.next();
                type = next;
                if (next != 4) {
                    break;
                }
            }
            if (type == 2) {
                dr = Drawable.createFromXmlInner(r, parser, attrs, theme);
            } else {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(parser.getPositionDescription());
                stringBuilder.append(": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                throw new XmlPullParserException(stringBuilder.toString());
            }
        }
        return this.mState.addStateSet(states, dr, keyframeId);
    }

    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mState.mutate();
            this.mMutated = true;
        }
        return this;
    }

    /* Access modifiers changed, original: 0000 */
    public AnimatedStateListState cloneConstantState() {
        return new AnimatedStateListState(this.mState, this, null);
    }

    public void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    /* Access modifiers changed, original: protected */
    public void setConstantState(DrawableContainerState state) {
        super.setConstantState(state);
        if (state instanceof AnimatedStateListState) {
            this.mState = (AnimatedStateListState) state;
        }
    }

    private AnimatedStateListDrawable(AnimatedStateListState state, Resources res) {
        super(null);
        this.mTransitionToIndex = -1;
        this.mTransitionFromIndex = -1;
        setConstantState(new AnimatedStateListState(state, this, res));
        onStateChange(getState());
        jumpToCurrentState();
    }
}
