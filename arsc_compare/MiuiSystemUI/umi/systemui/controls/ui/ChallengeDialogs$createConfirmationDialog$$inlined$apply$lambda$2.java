package com.android.systemui.controls.ui;

import android.content.DialogInterface;
import android.service.controls.actions.ControlAction;
import kotlin.jvm.functions.Function0;

/* access modifiers changed from: package-private */
/* compiled from: ChallengeDialogs.kt */
public final class ChallengeDialogs$createConfirmationDialog$$inlined$apply$lambda$2 implements DialogInterface.OnClickListener {
    final /* synthetic */ Function0 $onCancel$inlined;

    ChallengeDialogs$createConfirmationDialog$$inlined$apply$lambda$2(ControlViewHolder controlViewHolder, ControlAction controlAction, Function0 function0) {
        this.$onCancel$inlined = function0;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.$onCancel$inlined.invoke();
        dialogInterface.cancel();
    }
}