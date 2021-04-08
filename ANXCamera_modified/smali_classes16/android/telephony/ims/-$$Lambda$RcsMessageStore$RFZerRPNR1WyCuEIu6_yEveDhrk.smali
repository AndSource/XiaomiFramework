.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsMessageStore$RFZerRPNR1WyCuEIu6_yEveDhrk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsQueryContinuationToken;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsQueryContinuationToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$RFZerRPNR1WyCuEIu6_yEveDhrk;->f$0:Landroid/telephony/ims/RcsQueryContinuationToken;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$RFZerRPNR1WyCuEIu6_yEveDhrk;->f$0:Landroid/telephony/ims/RcsQueryContinuationToken;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/RcsMessageStore;->lambda$getRcsEvents$7(Landroid/telephony/ims/RcsQueryContinuationToken;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/telephony/ims/RcsEventQueryResultDescriptor;

    move-result-object p1

    return-object p1
.end method
