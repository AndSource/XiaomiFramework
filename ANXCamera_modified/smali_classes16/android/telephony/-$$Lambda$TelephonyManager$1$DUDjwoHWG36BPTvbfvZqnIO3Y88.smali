.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyManager$1$DUDjwoHWG36BPTvbfvZqnIO3Y88;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/TelephonyManager$CellInfoCallback;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/os/ParcelableException;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyManager$CellInfoCallback;ILandroid/os/ParcelableException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$DUDjwoHWG36BPTvbfvZqnIO3Y88;->f$0:Landroid/telephony/TelephonyManager$CellInfoCallback;

    iput p2, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$DUDjwoHWG36BPTvbfvZqnIO3Y88;->f$1:I

    iput-object p3, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$DUDjwoHWG36BPTvbfvZqnIO3Y88;->f$2:Landroid/os/ParcelableException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$DUDjwoHWG36BPTvbfvZqnIO3Y88;->f$0:Landroid/telephony/TelephonyManager$CellInfoCallback;

    iget v1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$DUDjwoHWG36BPTvbfvZqnIO3Y88;->f$1:I

    iget-object v2, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$DUDjwoHWG36BPTvbfvZqnIO3Y88;->f$2:Landroid/os/ParcelableException;

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager$1;->lambda$onError$2(Landroid/telephony/TelephonyManager$CellInfoCallback;ILandroid/os/ParcelableException;)V

    return-void
.end method
