.class public final Landroid/telephony/ims/RcsOutgoingMessageCreationParams;
.super Landroid/telephony/ims/RcsMessageCreationParams;
.source "RcsOutgoingMessageCreationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsOutgoingMessageCreationParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsOutgoingMessageCreationParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsOutgoingMessageCreationParams$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsOutgoingMessageCreationParams$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsOutgoingMessageCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsMessageCreationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsOutgoingMessageCreationParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsOutgoingMessageCreationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/ims/RcsOutgoingMessageCreationParams$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsMessageCreationParams;-><init>(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/ims/RcsOutgoingMessageCreationParams$Builder;Landroid/telephony/ims/RcsOutgoingMessageCreationParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsOutgoingMessageCreationParams;-><init>(Landroid/telephony/ims/RcsOutgoingMessageCreationParams$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/telephony/ims/RcsMessageCreationParams;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method
