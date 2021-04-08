.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsGroupThreadNameChangedEvent$_UcLy20x7aG6AEgcOgmZOeqTok0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsGroupThreadNameChangedEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsGroupThreadNameChangedEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsGroupThreadNameChangedEvent$_UcLy20x7aG6AEgcOgmZOeqTok0;->f$0:Landroid/telephony/ims/RcsGroupThreadNameChangedEvent;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsGroupThreadNameChangedEvent$_UcLy20x7aG6AEgcOgmZOeqTok0;->f$0:Landroid/telephony/ims/RcsGroupThreadNameChangedEvent;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/RcsGroupThreadNameChangedEvent;->lambda$persist$0$RcsGroupThreadNameChangedEvent(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
