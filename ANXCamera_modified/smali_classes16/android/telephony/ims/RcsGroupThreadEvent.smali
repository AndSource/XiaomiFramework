.class public abstract Landroid/telephony/ims/RcsGroupThreadEvent;
.super Landroid/telephony/ims/RcsEvent;
.source "RcsGroupThreadEvent.java"


# instance fields
.field private final mOriginatingParticipant:Landroid/telephony/ims/RcsParticipant;

.field private final mRcsGroupThread:Landroid/telephony/ims/RcsGroupThread;


# direct methods
.method constructor <init>(JLandroid/telephony/ims/RcsGroupThread;Landroid/telephony/ims/RcsParticipant;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RcsEvent;-><init>(J)V

    iput-object p3, p0, Landroid/telephony/ims/RcsGroupThreadEvent;->mRcsGroupThread:Landroid/telephony/ims/RcsGroupThread;

    iput-object p4, p0, Landroid/telephony/ims/RcsGroupThreadEvent;->mOriginatingParticipant:Landroid/telephony/ims/RcsParticipant;

    return-void
.end method


# virtual methods
.method public getOriginatingParticipant()Landroid/telephony/ims/RcsParticipant;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsGroupThreadEvent;->mOriginatingParticipant:Landroid/telephony/ims/RcsParticipant;

    return-object v0
.end method

.method public getRcsGroupThread()Landroid/telephony/ims/RcsGroupThread;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsGroupThreadEvent;->mRcsGroupThread:Landroid/telephony/ims/RcsGroupThread;

    return-object v0
.end method
