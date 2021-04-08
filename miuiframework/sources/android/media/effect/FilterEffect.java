package android.media.effect;

import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.format.ImageFormat;

public abstract class FilterEffect extends Effect {
    protected EffectContext mEffectContext;
    private String mName;

    protected FilterEffect(EffectContext context, String name) {
        this.mEffectContext = context;
        this.mName = name;
    }

    public String getName() {
        return this.mName;
    }

    /* Access modifiers changed, original: protected */
    public void beginGLEffect() {
        this.mEffectContext.assertValidGLState();
        this.mEffectContext.saveGLState();
    }

    /* Access modifiers changed, original: protected */
    public void endGLEffect() {
        this.mEffectContext.restoreGLState();
    }

    /* Access modifiers changed, original: protected */
    public FilterContext getFilterContext() {
        return this.mEffectContext.mFilterContext;
    }

    /* Access modifiers changed, original: protected */
    public Frame frameFromTexture(int texId, int width, int height) {
        Frame frame = getFilterContext().getFrameManager().newBoundFrame(ImageFormat.create(width, height, 3, 3), 100, (long) texId);
        frame.setTimestamp(-1);
        return frame;
    }
}
