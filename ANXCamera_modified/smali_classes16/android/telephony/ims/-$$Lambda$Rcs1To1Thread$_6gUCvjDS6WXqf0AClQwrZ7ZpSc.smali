.class public final synthetic Landroid/telephony/ims/-$$Lambda$Rcs1To1Thread$_6gUCvjDS6WXqf0AClQwrZ7ZpSc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/Rcs1To1Thread;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/Rcs1To1Thread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$Rcs1To1Thread$_6gUCvjDS6WXqf0AClQwrZ7ZpSc;->f$0:Landroid/telephony/ims/Rcs1To1Thread;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$Rcs1To1Thread$_6gUCvjDS6WXqf0AClQwrZ7ZpSc;->f$0:Landroid/telephony/ims/Rcs1To1Thread;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/Rcs1To1Thread;->lambda$getFallbackThreadId$0$Rcs1To1Thread(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
