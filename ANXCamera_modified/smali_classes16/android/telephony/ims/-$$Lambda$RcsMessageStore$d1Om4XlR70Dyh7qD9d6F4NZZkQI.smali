.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsMessageStore$d1Om4XlR70Dyh7qD9d6F4NZZkQI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$d1Om4XlR70Dyh7qD9d6F4NZZkQI;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$d1Om4XlR70Dyh7qD9d6F4NZZkQI;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$d1Om4XlR70Dyh7qD9d6F4NZZkQI;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$d1Om4XlR70Dyh7qD9d6F4NZZkQI;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Landroid/telephony/ims/RcsMessageStore;->lambda$createRcsParticipant$11(Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
