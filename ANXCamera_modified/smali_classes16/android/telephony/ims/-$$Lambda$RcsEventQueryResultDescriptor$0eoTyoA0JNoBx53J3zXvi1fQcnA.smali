.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsEventQueryResultDescriptor$0eoTyoA0JNoBx53J3zXvi1fQcnA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsControllerCall;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsControllerCall;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsEventQueryResultDescriptor$0eoTyoA0JNoBx53J3zXvi1fQcnA;->f$0:Landroid/telephony/ims/RcsControllerCall;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsEventQueryResultDescriptor$0eoTyoA0JNoBx53J3zXvi1fQcnA;->f$0:Landroid/telephony/ims/RcsControllerCall;

    check-cast p1, Landroid/telephony/ims/RcsEventDescriptor;

    invoke-static {v0, p1}, Landroid/telephony/ims/RcsEventQueryResultDescriptor;->lambda$getRcsEventQueryResult$0(Landroid/telephony/ims/RcsControllerCall;Landroid/telephony/ims/RcsEventDescriptor;)Landroid/telephony/ims/RcsEvent;

    move-result-object p1

    return-object p1
.end method
