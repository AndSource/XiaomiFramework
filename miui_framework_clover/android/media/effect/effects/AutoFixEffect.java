// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package android.media.effect.effects;

import android.filterpacks.imageproc.AutoFixFilter;
import android.media.effect.EffectContext;
import android.media.effect.SingleFilterEffect;

public class AutoFixEffect extends SingleFilterEffect
{

    public AutoFixEffect(EffectContext effectcontext, String s)
    {
        super(effectcontext, s, android/filterpacks/imageproc/AutoFixFilter, "image", "image", new Object[0]);
    }
}