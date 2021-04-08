.class public Landroid/telephony/ims/RcsManager;
.super Ljava/lang/Object;
.source "RcsManager.java"


# instance fields
.field private final mRcsMessageStore:Landroid/telephony/ims/RcsMessageStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/RcsMessageStore;

    invoke-direct {v0, p1}, Landroid/telephony/ims/RcsMessageStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/telephony/ims/RcsManager;->mRcsMessageStore:Landroid/telephony/ims/RcsMessageStore;

    return-void
.end method


# virtual methods
.method public getRcsMessageStore()Landroid/telephony/ims/RcsMessageStore;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsManager;->mRcsMessageStore:Landroid/telephony/ims/RcsMessageStore;

    return-object v0
.end method
