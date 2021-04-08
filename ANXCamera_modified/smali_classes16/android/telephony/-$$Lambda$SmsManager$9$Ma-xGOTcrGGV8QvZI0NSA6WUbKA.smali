.class public final synthetic Landroid/telephony/-$$Lambda$SmsManager$9$Ma-xGOTcrGGV8QvZI0NSA6WUbKA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SmsManager$FinancialSmsCallback;

.field private final synthetic f$1:Landroid/database/CursorWindow;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SmsManager$FinancialSmsCallback;Landroid/database/CursorWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SmsManager$9$Ma-xGOTcrGGV8QvZI0NSA6WUbKA;->f$0:Landroid/telephony/SmsManager$FinancialSmsCallback;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$SmsManager$9$Ma-xGOTcrGGV8QvZI0NSA6WUbKA;->f$1:Landroid/database/CursorWindow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SmsManager$9$Ma-xGOTcrGGV8QvZI0NSA6WUbKA;->f$0:Landroid/telephony/SmsManager$FinancialSmsCallback;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$SmsManager$9$Ma-xGOTcrGGV8QvZI0NSA6WUbKA;->f$1:Landroid/database/CursorWindow;

    invoke-static {v0, v1}, Landroid/telephony/SmsManager$9;->lambda$onGetSmsMessagesForFinancialApp$0(Landroid/telephony/SmsManager$FinancialSmsCallback;Landroid/database/CursorWindow;)V

    return-void
.end method
