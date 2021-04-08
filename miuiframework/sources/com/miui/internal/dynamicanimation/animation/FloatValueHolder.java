package com.miui.internal.dynamicanimation.animation;

public final class FloatValueHolder {
    private float mValue = 0.0f;

    public FloatValueHolder(float value) {
        setValue(value);
    }

    public void setValue(float value) {
        this.mValue = value;
    }

    public float getValue() {
        return this.mValue;
    }
}