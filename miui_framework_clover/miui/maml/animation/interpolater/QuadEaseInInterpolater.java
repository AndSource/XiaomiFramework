// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package miui.maml.animation.interpolater;

import android.view.animation.Interpolator;

public class QuadEaseInInterpolater
    implements Interpolator
{

    public QuadEaseInInterpolater()
    {
    }

    public float getInterpolation(float f)
    {
        return f * f;
    }
}