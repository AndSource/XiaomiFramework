.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsThread$A9iPL3bU3iiRv1xCYNUNP76n6Vw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsMessageQueryParams;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsMessageQueryParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsThread$A9iPL3bU3iiRv1xCYNUNP76n6Vw;->f$0:Landroid/telephony/ims/RcsMessageQueryParams;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsThread$A9iPL3bU3iiRv1xCYNUNP76n6Vw;->f$0:Landroid/telephony/ims/RcsMessageQueryParams;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/RcsThread;->lambda$getMessages$4(Landroid/telephony/ims/RcsMessageQueryParams;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/telephony/ims/RcsMessageQueryResultParcelable;

    move-result-object p1

    return-object p1
.end method
