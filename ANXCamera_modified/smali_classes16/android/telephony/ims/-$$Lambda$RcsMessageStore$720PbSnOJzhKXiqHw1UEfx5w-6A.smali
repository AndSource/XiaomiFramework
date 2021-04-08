.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsMessageStore$720PbSnOJzhKXiqHw1UEfx5w-6A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsParticipantQueryParams;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsParticipantQueryParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$720PbSnOJzhKXiqHw1UEfx5w-6A;->f$0:Landroid/telephony/ims/RcsParticipantQueryParams;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$720PbSnOJzhKXiqHw1UEfx5w-6A;->f$0:Landroid/telephony/ims/RcsParticipantQueryParams;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/RcsMessageStore;->lambda$getRcsParticipants$2(Landroid/telephony/ims/RcsParticipantQueryParams;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/telephony/ims/RcsParticipantQueryResultParcelable;

    move-result-object p1

    return-object p1
.end method
