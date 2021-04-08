.class public Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
.super Ljava/lang/Object;
.source "ImsMmTelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsMmTelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegistrationCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;-><init>(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->mBinder:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;

    return-void
.end method


# virtual methods
.method public final getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->mBinder:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;

    return-object v0
.end method

.method public onRegistered(I)V
    .locals 0

    return-void
.end method

.method public onRegistering(I)V
    .locals 0

    return-void
.end method

.method public onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    return-void
.end method

.method public onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->mBinder:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;

    invoke-static {v0, p1}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->access$000(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;Ljava/util/concurrent/Executor;)V

    return-void
.end method
