package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.DrawableContainer.DrawableContainerState;
import android.util.AttributeSet;
import com.android.ims.ImsConfig;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class LevelListDrawable extends DrawableContainer {
    private LevelListState mLevelListState;
    private boolean mMutated;

    private static final class LevelListState extends DrawableContainerState {
        private int[] mHighs;
        private int[] mLows;

        LevelListState(LevelListState orig, LevelListDrawable owner, Resources res) {
            super(orig, owner, res);
            if (orig != null) {
                this.mLows = orig.mLows;
                this.mHighs = orig.mHighs;
                return;
            }
            this.mLows = new int[getCapacity()];
            this.mHighs = new int[getCapacity()];
        }

        private void mutate() {
            this.mLows = (int[]) this.mLows.clone();
            this.mHighs = (int[]) this.mHighs.clone();
        }

        public void addLevel(int low, int high, Drawable drawable) {
            int pos = addChild(drawable);
            this.mLows[pos] = low;
            this.mHighs[pos] = high;
        }

        public int indexOfLevel(int level) {
            int[] lows = this.mLows;
            int[] highs = this.mHighs;
            int N = getChildCount();
            int i = 0;
            while (i < N) {
                if (level >= lows[i] && level <= highs[i]) {
                    return i;
                }
                i++;
            }
            return -1;
        }

        public Drawable newDrawable() {
            return new LevelListDrawable(this, null);
        }

        public Drawable newDrawable(Resources res) {
            return new LevelListDrawable(this, res);
        }

        public void growArray(int oldSize, int newSize) {
            super.growArray(oldSize, newSize);
            int[] newInts = new int[newSize];
            System.arraycopy(this.mLows, 0, newInts, 0, oldSize);
            this.mLows = newInts;
            newInts = new int[newSize];
            System.arraycopy(this.mHighs, 0, newInts, 0, oldSize);
            this.mHighs = newInts;
        }
    }

    public LevelListDrawable() {
        this(null, null);
    }

    public void addLevel(int low, int high, Drawable drawable) {
        if (drawable != null) {
            this.mLevelListState.addLevel(low, high, drawable);
            onLevelChange(getLevel());
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean onLevelChange(int level) {
        if (selectDrawable(this.mLevelListState.indexOfLevel(level))) {
            return true;
        }
        return super.onLevelChange(level);
    }

    public void inflate(Resources r, XmlPullParser parser, AttributeSet attrs, Theme theme) throws XmlPullParserException, IOException {
        super.inflate(r, parser, attrs, theme);
        updateDensity(r);
        inflateChildElements(r, parser, attrs, theme);
    }

    private void inflateChildElements(Resources r, XmlPullParser parser, AttributeSet attrs, Theme theme) throws XmlPullParserException, IOException {
        int innerDepth = parser.getDepth() + 1;
        while (true) {
            int next = parser.next();
            int type = next;
            if (next == 1) {
                break;
            }
            next = parser.getDepth();
            int depth = next;
            if (next < innerDepth && type == 3) {
                break;
            } else if (type == 2) {
                if (depth > innerDepth) {
                    continue;
                } else if (parser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                    TypedArray a = Drawable.obtainAttributes(r, theme, attrs, R.styleable.LevelListDrawableItem);
                    int low = a.getInt(1, 0);
                    int high = a.getInt(2, 0);
                    int drawableRes = a.getResourceId(0, 0);
                    a.recycle();
                    StringBuilder stringBuilder;
                    if (high >= 0) {
                        Drawable dr;
                        if (drawableRes != 0) {
                            dr = r.getDrawable(drawableRes, theme);
                        } else {
                            while (true) {
                                int next2 = parser.next();
                                type = next2;
                                if (next2 != 4) {
                                    break;
                                }
                            }
                            if (type == 2) {
                                dr = Drawable.createFromXmlInner(r, parser, attrs, theme);
                            } else {
                                stringBuilder = new StringBuilder();
                                stringBuilder.append(parser.getPositionDescription());
                                stringBuilder.append(": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                                throw new XmlPullParserException(stringBuilder.toString());
                            }
                        }
                        this.mLevelListState.addLevel(low, high, dr);
                    } else {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append(parser.getPositionDescription());
                        stringBuilder.append(": <item> tag requires a 'maxLevel' attribute");
                        throw new XmlPullParserException(stringBuilder.toString());
                    }
                }
            }
        }
        onLevelChange(getLevel());
    }

    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mLevelListState.mutate();
            this.mMutated = true;
        }
        return this;
    }

    /* Access modifiers changed, original: 0000 */
    public LevelListState cloneConstantState() {
        return new LevelListState(this.mLevelListState, this, null);
    }

    public void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    /* Access modifiers changed, original: protected */
    public void setConstantState(DrawableContainerState state) {
        super.setConstantState(state);
        if (state instanceof LevelListState) {
            this.mLevelListState = (LevelListState) state;
        }
    }

    private LevelListDrawable(LevelListState state, Resources res) {
        setConstantState(new LevelListState(state, this, res));
        onLevelChange(getLevel());
    }
}
