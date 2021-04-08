.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsMessageStore$z090Zf4wxRrBwUxXanwm4N3vb7w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsThreadQueryParams;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsThreadQueryParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$z090Zf4wxRrBwUxXanwm4N3vb7w;->f$0:Landroid/telephony/ims/RcsThreadQueryParams;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$z090Zf4wxRrBwUxXanwm4N3vb7w;->f$0:Landroid/telephony/ims/RcsThreadQueryParams;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/RcsMessageStore;->lambda$getRcsThreads$0(Landroid/telephony/ims/RcsThreadQueryParams;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/telephony/ims/RcsThreadQueryResultParcelable;

    move-result-object p1

    return-object p1
.end method
