.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyManager$qjhLNTc5_Bq4btM7q4y_F5cdAK0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$qjhLNTc5_Bq4btM7q4y_F5cdAK0;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/telephony/-$$Lambda$TelephonyManager$qjhLNTc5_Bq4btM7q4y_F5cdAK0;->f$0:Ljava/util/function/Consumer;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->lambda$updateAvailableNetworks$1(Ljava/util/function/Consumer;)V

    return-void
.end method
