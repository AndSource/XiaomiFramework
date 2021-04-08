.class Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;
.super Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;
.source "ImsMmTelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegistrationBinder"
.end annotation


# static fields
.field private static final IMS_REG_TO_ACCESS_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->IMS_REG_TO_ACCESS_TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static getAccessType(I)I
    .locals 2

    sget-object v0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->IMS_REG_TO_ACCESS_TYPE_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegistrationBinder - invalid regType returned: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsMmTelManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    sget-object v0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->IMS_REG_TO_ACCESS_TYPE_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDeregistered$4$ImsMmTelManager$RegistrationCallback$RegistrationBinder(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public synthetic lambda$onDeregistered$5$ImsMmTelManager$RegistrationCallback$RegistrationBinder(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$q0Uz23ATIYan5EBJYUigIVvwE3g;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$q0Uz23ATIYan5EBJYUigIVvwE3g;-><init>(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onRegistered$0$ImsMmTelManager$RegistrationCallback$RegistrationBinder(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-static {p1}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->getAccessType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->onRegistered(I)V

    return-void
.end method

.method public synthetic lambda$onRegistered$1$ImsMmTelManager$RegistrationCallback$RegistrationBinder(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$oDp7ilyKfflFThUCP4Du9EYoDoQ;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$oDp7ilyKfflFThUCP4Du9EYoDoQ;-><init>(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onRegistering$2$ImsMmTelManager$RegistrationCallback$RegistrationBinder(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-static {p1}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->getAccessType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->onRegistering(I)V

    return-void
.end method

.method public synthetic lambda$onRegistering$3$ImsMmTelManager$RegistrationCallback$RegistrationBinder(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$J4VhgcUtd6SivHcdkzpurbTuyLc;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$J4VhgcUtd6SivHcdkzpurbTuyLc;-><init>(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onSubscriberAssociatedUriChanged$8$ImsMmTelManager$RegistrationCallback$RegistrationBinder([Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic lambda$onSubscriberAssociatedUriChanged$9$ImsMmTelManager$RegistrationCallback$RegistrationBinder([Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$jAP4lCkBQEdyrlgt5jaNPTlFXlY;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$jAP4lCkBQEdyrlgt5jaNPTlFXlY;-><init>(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;[Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onTechnologyChangeFailed$6$ImsMmTelManager$RegistrationCallback$RegistrationBinder(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-static {p1}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->getAccessType(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public synthetic lambda$onTechnologyChangeFailed$7$ImsMmTelManager$RegistrationCallback$RegistrationBinder(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$IeNlpXTAPM2z2VxFA81E0v9udZw;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$IeNlpXTAPM2z2VxFA81E0v9udZw;-><init>(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;ILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$F58PRHsH__07pmyvC0NTRprfEPU;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$F58PRHsH__07pmyvC0NTRprfEPU;-><init>(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onRegistered(I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$8xq93ap6i0L56Aegaj-ZEUt9ISc;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$8xq93ap6i0L56Aegaj-ZEUt9ISc;-><init>(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onRegistering(I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$iuI3HyNU5eUABA_QRyzQ8Jw2-8g;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$iuI3HyNU5eUABA_QRyzQ8Jw2-8g;-><init>(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$AhnK6VJjwgpDNC1GXRrwfgtYvkM;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$AhnK6VJjwgpDNC1GXRrwfgtYvkM;-><init>(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;[Landroid/net/Uri;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$Nztp9t3A8T2T3SbLvxLZoInLgWY;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/-$$Lambda$ImsMmTelManager$RegistrationCallback$RegistrationBinder$Nztp9t3A8T2T3SbLvxLZoInLgWY;-><init>(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback$RegistrationBinder;ILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
