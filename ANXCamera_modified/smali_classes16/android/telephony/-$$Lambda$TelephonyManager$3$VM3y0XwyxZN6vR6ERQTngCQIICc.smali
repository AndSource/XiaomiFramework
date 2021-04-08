.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyManager$3$VM3y0XwyxZN6vR6ERQTngCQIICc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/NumberVerificationCallback;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/NumberVerificationCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$3$VM3y0XwyxZN6vR6ERQTngCQIICc;->f$0:Landroid/telephony/NumberVerificationCallback;

    iput p2, p0, Landroid/telephony/-$$Lambda$TelephonyManager$3$VM3y0XwyxZN6vR6ERQTngCQIICc;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$TelephonyManager$3$VM3y0XwyxZN6vR6ERQTngCQIICc;->f$0:Landroid/telephony/NumberVerificationCallback;

    iget v1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$3$VM3y0XwyxZN6vR6ERQTngCQIICc;->f$1:I

    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager$3;->lambda$onVerificationFailed$2(Landroid/telephony/NumberVerificationCallback;I)V

    return-void
.end method
