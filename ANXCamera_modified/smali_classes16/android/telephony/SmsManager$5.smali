.class Landroid/telephony/SmsManager$5;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SmsManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:[B

.field final synthetic val$deliveryIntent:Landroid/app/PendingIntent;

.field final synthetic val$destinationAddress:Ljava/lang/String;

.field final synthetic val$destinationPort:S

.field final synthetic val$scAddress:Ljava/lang/String;

.field final synthetic val$sentIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SmsManager$5;->this$0:Landroid/telephony/SmsManager;

    iput-object p2, p0, Landroid/telephony/SmsManager$5;->val$destinationAddress:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/SmsManager$5;->val$scAddress:Ljava/lang/String;

    iput-short p4, p0, Landroid/telephony/SmsManager$5;->val$destinationPort:S

    iput-object p5, p0, Landroid/telephony/SmsManager$5;->val$data:[B

    iput-object p6, p0, Landroid/telephony/SmsManager$5;->val$sentIntent:Landroid/app/PendingIntent;

    iput-object p7, p0, Landroid/telephony/SmsManager$5;->val$deliveryIntent:Landroid/app/PendingIntent;

    iput-object p8, p0, Landroid/telephony/SmsManager$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/SmsManager$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroid/telephony/SmsManager$5;->val$sentIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->access$200(Landroid/content/Context;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 9

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->access$000()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SmsManager$5;->val$destinationAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/SmsManager$5;->val$scAddress:Ljava/lang/String;

    iget-short v1, p0, Landroid/telephony/SmsManager$5;->val$destinationPort:S

    const v5, 0xffff

    and-int/2addr v5, v1

    iget-object v6, p0, Landroid/telephony/SmsManager$5;->val$data:[B

    iget-object v7, p0, Landroid/telephony/SmsManager$5;->val$sentIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/telephony/SmsManager$5;->val$deliveryIntent:Landroid/app/PendingIntent;

    move v1, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDataMessage: Couldn\'t send SMS - Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/telephony/SmsManager$5;->val$sentIntent:Landroid/app/PendingIntent;

    invoke-static {v1}, Landroid/telephony/SmsManager;->access$100(Landroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method
