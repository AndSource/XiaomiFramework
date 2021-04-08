// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package android.renderscript;

import dalvik.system.CloseGuard;

// Referenced classes of package android.renderscript:
//            BaseObj, RenderScript

public class Sampler extends BaseObj
{
    public static class Builder
    {

        public Sampler create()
        {
            mRS.validate();
            Sampler sampler = new Sampler(mRS.nSamplerCreate(mMag.mID, mMin.mID, mWrapS.mID, mWrapT.mID, mWrapR.mID, mAniso), mRS);
            sampler.mMin = mMin;
            sampler.mMag = mMag;
            sampler.mWrapS = mWrapS;
            sampler.mWrapT = mWrapT;
            sampler.mWrapR = mWrapR;
            sampler.mAniso = mAniso;
            return sampler;
        }

        public void setAnisotropy(float f)
        {
            if(f >= 0.0F)
            {
                mAniso = f;
                return;
            } else
            {
                throw new IllegalArgumentException("Invalid value");
            }
        }

        public void setMagnification(Value value)
        {
            if(value == Value.NEAREST || value == Value.LINEAR)
            {
                mMag = value;
                return;
            } else
            {
                throw new IllegalArgumentException("Invalid value");
            }
        }

        public void setMinification(Value value)
        {
            while(value == Value.NEAREST || value == Value.LINEAR || value == Value.LINEAR_MIP_LINEAR || value == Value.LINEAR_MIP_NEAREST) 
            {
                mMin = value;
                return;
            }
            throw new IllegalArgumentException("Invalid value");
        }

        public void setWrapS(Value value)
        {
            while(value == Value.WRAP || value == Value.CLAMP || value == Value.MIRRORED_REPEAT) 
            {
                mWrapS = value;
                return;
            }
            throw new IllegalArgumentException("Invalid value");
        }

        public void setWrapT(Value value)
        {
            while(value == Value.WRAP || value == Value.CLAMP || value == Value.MIRRORED_REPEAT) 
            {
                mWrapT = value;
                return;
            }
            throw new IllegalArgumentException("Invalid value");
        }

        float mAniso;
        Value mMag;
        Value mMin;
        RenderScript mRS;
        Value mWrapR;
        Value mWrapS;
        Value mWrapT;

        public Builder(RenderScript renderscript)
        {
            mRS = renderscript;
            mMin = Value.NEAREST;
            mMag = Value.NEAREST;
            mWrapS = Value.WRAP;
            mWrapT = Value.WRAP;
            mWrapR = Value.WRAP;
            mAniso = 1.0F;
        }
    }

    public static final class Value extends Enum
    {

        public static Value valueOf(String s)
        {
            return (Value)Enum.valueOf(android/renderscript/Sampler$Value, s);
        }

        public static Value[] values()
        {
            return $VALUES;
        }

        private static final Value $VALUES[];
        public static final Value CLAMP;
        public static final Value LINEAR;
        public static final Value LINEAR_MIP_LINEAR;
        public static final Value LINEAR_MIP_NEAREST;
        public static final Value MIRRORED_REPEAT;
        public static final Value NEAREST;
        public static final Value WRAP;
        int mID;

        static 
        {
            NEAREST = new Value("NEAREST", 0, 0);
            LINEAR = new Value("LINEAR", 1, 1);
            LINEAR_MIP_LINEAR = new Value("LINEAR_MIP_LINEAR", 2, 2);
            LINEAR_MIP_NEAREST = new Value("LINEAR_MIP_NEAREST", 3, 5);
            WRAP = new Value("WRAP", 4, 3);
            CLAMP = new Value("CLAMP", 5, 4);
            MIRRORED_REPEAT = new Value("MIRRORED_REPEAT", 6, 6);
            $VALUES = (new Value[] {
                NEAREST, LINEAR, LINEAR_MIP_LINEAR, LINEAR_MIP_NEAREST, WRAP, CLAMP, MIRRORED_REPEAT
            });
        }

        private Value(String s, int i, int j)
        {
            super(s, i);
            mID = j;
        }
    }


    Sampler(long l, RenderScript renderscript)
    {
        super(l, renderscript);
        guard.open("destroy");
    }

    public static Sampler CLAMP_LINEAR(RenderScript renderscript)
    {
        if(renderscript.mSampler_CLAMP_LINEAR != null) goto _L2; else goto _L1
_L1:
        renderscript;
        JVM INSTR monitorenter ;
        if(renderscript.mSampler_CLAMP_LINEAR == null)
        {
            Builder builder = JVM INSTR new #6   <Class Sampler$Builder>;
            builder.Builder(renderscript);
            builder.setMinification(Value.LINEAR);
            builder.setMagnification(Value.LINEAR);
            builder.setWrapS(Value.CLAMP);
            builder.setWrapT(Value.CLAMP);
            renderscript.mSampler_CLAMP_LINEAR = builder.create();
        }
        renderscript;
        JVM INSTR monitorexit ;
_L2:
        return renderscript.mSampler_CLAMP_LINEAR;
        Exception exception;
        exception;
        throw exception;
    }

    public static Sampler CLAMP_LINEAR_MIP_LINEAR(RenderScript renderscript)
    {
        if(renderscript.mSampler_CLAMP_LINEAR_MIP_LINEAR != null) goto _L2; else goto _L1
_L1:
        renderscript;
        JVM INSTR monitorenter ;
        if(renderscript.mSampler_CLAMP_LINEAR_MIP_LINEAR == null)
        {
            Builder builder = JVM INSTR new #6   <Class Sampler$Builder>;
            builder.Builder(renderscript);
            builder.setMinification(Value.LINEAR_MIP_LINEAR);
            builder.setMagnification(Value.LINEAR);
            builder.setWrapS(Value.CLAMP);
            builder.setWrapT(Value.CLAMP);
            renderscript.mSampler_CLAMP_LINEAR_MIP_LINEAR = builder.create();
        }
        renderscript;
        JVM INSTR monitorexit ;
_L2:
        return renderscript.mSampler_CLAMP_LINEAR_MIP_LINEAR;
        Exception exception;
        exception;
        throw exception;
    }

    public static Sampler CLAMP_NEAREST(RenderScript renderscript)
    {
        if(renderscript.mSampler_CLAMP_NEAREST != null) goto _L2; else goto _L1
_L1:
        renderscript;
        JVM INSTR monitorenter ;
        if(renderscript.mSampler_CLAMP_NEAREST == null)
        {
            Builder builder = JVM INSTR new #6   <Class Sampler$Builder>;
            builder.Builder(renderscript);
            builder.setMinification(Value.NEAREST);
            builder.setMagnification(Value.NEAREST);
            builder.setWrapS(Value.CLAMP);
            builder.setWrapT(Value.CLAMP);
            renderscript.mSampler_CLAMP_NEAREST = builder.create();
        }
        renderscript;
        JVM INSTR monitorexit ;
_L2:
        return renderscript.mSampler_CLAMP_NEAREST;
        Exception exception;
        exception;
        throw exception;
    }

    public static Sampler MIRRORED_REPEAT_LINEAR(RenderScript renderscript)
    {
        if(renderscript.mSampler_MIRRORED_REPEAT_LINEAR != null) goto _L2; else goto _L1
_L1:
        renderscript;
        JVM INSTR monitorenter ;
        if(renderscript.mSampler_MIRRORED_REPEAT_LINEAR == null)
        {
            Builder builder = JVM INSTR new #6   <Class Sampler$Builder>;
            builder.Builder(renderscript);
            builder.setMinification(Value.LINEAR);
            builder.setMagnification(Value.LINEAR);
            builder.setWrapS(Value.MIRRORED_REPEAT);
            builder.setWrapT(Value.MIRRORED_REPEAT);
            renderscript.mSampler_MIRRORED_REPEAT_LINEAR = builder.create();
        }
        renderscript;
        JVM INSTR monitorexit ;
_L2:
        return renderscript.mSampler_MIRRORED_REPEAT_LINEAR;
        Exception exception;
        exception;
        throw exception;
    }

    public static Sampler MIRRORED_REPEAT_LINEAR_MIP_LINEAR(RenderScript renderscript)
    {
        if(renderscript.mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR != null) goto _L2; else goto _L1
_L1:
        renderscript;
        JVM INSTR monitorenter ;
        if(renderscript.mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR == null)
        {
            Builder builder = JVM INSTR new #6   <Class Sampler$Builder>;
            builder.Builder(renderscript);
            builder.setMinification(Value.LINEAR_MIP_LINEAR);
            builder.setMagnification(Value.LINEAR);
            builder.setWrapS(Value.MIRRORED_REPEAT);
            builder.setWrapT(Value.MIRRORED_REPEAT);
            renderscript.mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR = builder.create();
        }
        renderscript;
        JVM INSTR monitorexit ;
_L2:
        return renderscript.mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR;
        Exception exception;
        exception;
        throw exception;
    }

    public static Sampler MIRRORED_REPEAT_NEAREST(RenderScript renderscript)
    {
        if(renderscript.mSampler_MIRRORED_REPEAT_NEAREST != null) goto _L2; else goto _L1
_L1:
        renderscript;
        JVM INSTR monitorenter ;
        if(renderscript.mSampler_MIRRORED_REPEAT_NEAREST == null)
        {
            Builder builder = JVM INSTR new #6   <Class Sampler$Builder>;
            builder.Builder(renderscript);
            builder.setMinification(Value.NEAREST);
            builder.setMagnification(Value.NEAREST);
            builder.setWrapS(Value.MIRRORED_REPEAT);
            builder.setWrapT(Value.MIRRORED_REPEAT);
            renderscript.mSampler_MIRRORED_REPEAT_NEAREST = builder.create();
        }
        renderscript;
        JVM INSTR monitorexit ;
_L2:
        return renderscript.mSampler_MIRRORED_REPEAT_NEAREST;
        Exception exception;
        exception;
        throw exception;
    }

    public static Sampler WRAP_LINEAR(RenderScript renderscript)
    {
        if(renderscript.mSampler_WRAP_LINEAR != null) goto _L2; else goto _L1
_L1:
        renderscript;
        JVM INSTR monitorenter ;
        if(renderscript.mSampler_WRAP_LINEAR == null)
        {
            Builder builder = JVM INSTR new #6   <Class Sampler$Builder>;
            builder.Builder(renderscript);
            builder.setMinification(Value.LINEAR);
            builder.setMagnification(Value.LINEAR);
            builder.setWrapS(Value.WRAP);
            builder.setWrapT(Value.WRAP);
            renderscript.mSampler_WRAP_LINEAR = builder.create();
        }
        renderscript;
        JVM INSTR monitorexit ;
_L2:
        return renderscript.mSampler_WRAP_LINEAR;
        Exception exception;
        exception;
        throw exception;
    }

    public static Sampler WRAP_LINEAR_MIP_LINEAR(RenderScript renderscript)
    {
        if(renderscript.mSampler_WRAP_LINEAR_MIP_LINEAR != null) goto _L2; else goto _L1
_L1:
        renderscript;
        JVM INSTR monitorenter ;
        if(renderscript.mSampler_WRAP_LINEAR_MIP_LINEAR == null)
        {
            Builder builder = JVM INSTR new #6   <Class Sampler$Builder>;
            builder.Builder(renderscript);
            builder.setMinification(Value.LINEAR_MIP_LINEAR);
            builder.setMagnification(Value.LINEAR);
            builder.setWrapS(Value.WRAP);
            builder.setWrapT(Value.WRAP);
            renderscript.mSampler_WRAP_LINEAR_MIP_LINEAR = builder.create();
        }
        renderscript;
        JVM INSTR monitorexit ;
_L2:
        return renderscript.mSampler_WRAP_LINEAR_MIP_LINEAR;
        Exception exception;
        exception;
        throw exception;
    }

    public static Sampler WRAP_NEAREST(RenderScript renderscript)
    {
        if(renderscript.mSampler_WRAP_NEAREST != null) goto _L2; else goto _L1
_L1:
        renderscript;
        JVM INSTR monitorenter ;
        if(renderscript.mSampler_WRAP_NEAREST == null)
        {
            Builder builder = JVM INSTR new #6   <Class Sampler$Builder>;
            builder.Builder(renderscript);
            builder.setMinification(Value.NEAREST);
            builder.setMagnification(Value.NEAREST);
            builder.setWrapS(Value.WRAP);
            builder.setWrapT(Value.WRAP);
            renderscript.mSampler_WRAP_NEAREST = builder.create();
        }
        renderscript;
        JVM INSTR monitorexit ;
_L2:
        return renderscript.mSampler_WRAP_NEAREST;
        Exception exception;
        exception;
        throw exception;
    }

    public float getAnisotropy()
    {
        return mAniso;
    }

    public Value getMagnification()
    {
        return mMag;
    }

    public Value getMinification()
    {
        return mMin;
    }

    public Value getWrapS()
    {
        return mWrapS;
    }

    public Value getWrapT()
    {
        return mWrapT;
    }

    float mAniso;
    Value mMag;
    Value mMin;
    Value mWrapR;
    Value mWrapS;
    Value mWrapT;
}