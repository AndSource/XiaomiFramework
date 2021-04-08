.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsMessageStore$nbXWLR_ux8VCEHNEyE7JO0J05YI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsThread;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$nbXWLR_ux8VCEHNEyE7JO0J05YI;->f$0:Landroid/telephony/ims/RcsThread;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$nbXWLR_ux8VCEHNEyE7JO0J05YI;->f$0:Landroid/telephony/ims/RcsThread;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/RcsMessageStore;->lambda$deleteThread$10(Landroid/telephony/ims/RcsThread;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
