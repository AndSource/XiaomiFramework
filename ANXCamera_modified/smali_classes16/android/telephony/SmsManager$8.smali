.class Landroid/telephony/SmsManager$8;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->sendStoredMultipartTextMessage(Landroid/net/Uri;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SmsManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$deliveryIntents:Ljava/util/ArrayList;

.field final synthetic val$messageUri:Landroid/net/Uri;

.field final synthetic val$scAddress:Ljava/lang/String;

.field final synthetic val$sentIntents:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/telephony/SmsManager;Landroid/net/Uri;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SmsManager$8;->this$0:Landroid/telephony/SmsManager;

    iput-object p2, p0, Landroid/telephony/SmsManager$8;->val$messageUri:Landroid/net/Uri;

    iput-object p3, p0, Landroid/telephony/SmsManager$8;->val$scAddress:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/SmsManager$8;->val$sentIntents:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/telephony/SmsManager$8;->val$deliveryIntents:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/telephony/SmsManager$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/SmsManager$8;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroid/telephony/SmsManager$8;->val$sentIntents:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->access$400(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->access$000()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SmsManager$8;->val$messageUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/telephony/SmsManager$8;->val$scAddress:Ljava/lang/String;

    iget-object v5, p0, Landroid/telephony/SmsManager$8;->val$sentIntents:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/telephony/SmsManager$8;->val$deliveryIntents:Ljava/util/ArrayList;

    move v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendStoredMultipartText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendStoredTextMessage: Couldn\'t send SMS - Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/telephony/SmsManager$8;->val$sentIntents:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/telephony/SmsManager;->access$300(Ljava/util/List;)V

    :goto_0
    return-void
.end method
