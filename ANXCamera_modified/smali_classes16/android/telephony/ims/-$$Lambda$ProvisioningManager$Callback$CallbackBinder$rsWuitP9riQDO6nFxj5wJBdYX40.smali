.class public final synthetic Landroid/telephony/ims/-$$Lambda$ProvisioningManager$Callback$CallbackBinder$rsWuitP9riQDO6nFxj5wJBdYX40;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$ProvisioningManager$Callback$CallbackBinder$rsWuitP9riQDO6nFxj5wJBdYX40;->f$0:Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;

    iput p2, p0, Landroid/telephony/ims/-$$Lambda$ProvisioningManager$Callback$CallbackBinder$rsWuitP9riQDO6nFxj5wJBdYX40;->f$1:I

    iput-object p3, p0, Landroid/telephony/ims/-$$Lambda$ProvisioningManager$Callback$CallbackBinder$rsWuitP9riQDO6nFxj5wJBdYX40;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$ProvisioningManager$Callback$CallbackBinder$rsWuitP9riQDO6nFxj5wJBdYX40;->f$0:Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;

    iget v1, p0, Landroid/telephony/ims/-$$Lambda$ProvisioningManager$Callback$CallbackBinder$rsWuitP9riQDO6nFxj5wJBdYX40;->f$1:I

    iget-object v2, p0, Landroid/telephony/ims/-$$Lambda$ProvisioningManager$Callback$CallbackBinder$rsWuitP9riQDO6nFxj5wJBdYX40;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->lambda$onStringConfigChanged$2$ProvisioningManager$Callback$CallbackBinder(ILjava/lang/String;)V

    return-void
.end method
