// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package miui.maml.animation.interpolater;

import android.view.animation.Interpolator;

public class ExpoEaseInInterpolater
    implements Interpolator
{

    public ExpoEaseInInterpolater()
    {
    }

    public float getInterpolation(float f)
    {
        float f1 = 0.0F;
        if(f == 0.0F)
            f = f1;
        else
            f = (float)Math.pow(2D, (f - 1.0F) * 10F);
        return f;
    }
}
