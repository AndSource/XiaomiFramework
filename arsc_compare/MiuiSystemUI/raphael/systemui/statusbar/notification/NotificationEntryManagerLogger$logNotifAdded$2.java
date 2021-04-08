package com.android.systemui.statusbar.notification;

import com.android.systemui.log.LogMessage;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
/* compiled from: NotificationEntryManagerLogger.kt */
public final class NotificationEntryManagerLogger$logNotifAdded$2 extends Lambda implements Function1<LogMessage, String> {
    public static final NotificationEntryManagerLogger$logNotifAdded$2 INSTANCE = new NotificationEntryManagerLogger$logNotifAdded$2();

    NotificationEntryManagerLogger$logNotifAdded$2() {
        super(1);
    }

    @NotNull
    public final String invoke(@NotNull LogMessage logMessage) {
        Intrinsics.checkParameterIsNotNull(logMessage, "$receiver");
        return "NOTIF ADDED " + logMessage.getStr1();
    }
}
