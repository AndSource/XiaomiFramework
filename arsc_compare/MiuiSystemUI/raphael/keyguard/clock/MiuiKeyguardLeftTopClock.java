package com.android.keyguard.clock;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import miui.system.R;

public class MiuiKeyguardLeftTopClock extends MiuiKeyguardSingleClock {
    public MiuiKeyguardLeftTopClock(Context context) {
        this(context, null);
    }

    public MiuiKeyguardLeftTopClock(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        try {
            this.mMiuiBaseClock = this.mLayoutInflater.inflate(R.layout.miui_left_top_clock, (ViewGroup) null, false);
            updateLunarCalendarInfo();
        } catch (Exception e) {
            Log.e("MiuiKeyguardLeftTopClock", "init clock exception", e);
        }
        this.mClockContainer.addView(this.mMiuiBaseClock);
        this.mMagazineClockView.updateViewsForClockPosition(true);
    }

    @Override // com.android.keyguard.clock.MiuiKeyguardSingleClock, com.android.keyguard.clock.MiuiKeyguardBaseClock
    public void setDarkStyle(boolean z) {
        if (z != this.mDarkStyle) {
            super.setDarkStyle(z);
            this.mMiuiBaseClock.setTextColorDark(z);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.android.keyguard.clock.MiuiKeyguardSingleClock
    public boolean shouldShowSwitchAnim() {
        return this.mShowLunarCalendar || this.mShowOwnerInfo;
    }

    /* access modifiers changed from: protected */
    @Override // com.android.keyguard.clock.MiuiKeyguardSingleClock
    public void toNotificationStateAnimOutEnd() {
        this.mMiuiBaseClock.getLunarCalendarView().setVisibility(8);
    }

    /* access modifiers changed from: protected */
    @Override // com.android.keyguard.clock.MiuiKeyguardSingleClock
    public void toNotificationStateAnimOutUpdate(float f) {
        this.mMiuiBaseClock.getLunarCalendarView().setAlpha(f);
    }

    /* access modifiers changed from: protected */
    @Override // com.android.keyguard.clock.MiuiKeyguardSingleClock
    public void toNormalStateAnimOutEnd() {
        this.mMiuiBaseClock.getLunarCalendarView().setAlpha(0.0f);
        updateLunarCalendarInfo();
    }

    /* access modifiers changed from: protected */
    @Override // com.android.keyguard.clock.MiuiKeyguardSingleClock
    public void toNormalStateAnimInUpdate(float f) {
        this.mMiuiBaseClock.getLunarCalendarView().setAlpha(f);
    }
}
