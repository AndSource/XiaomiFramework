.class public Lmiui/upnp/typedef/device/urn/Urn;
.super Ljava/lang/Object;
.source "Urn.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/typedef/device/urn/Urn$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/device/urn/Urn;",
            ">;"
        }
    .end annotation
.end field

.field private static final URN:Ljava/lang/String; = "urn"


# instance fields
.field private domain:Ljava/lang/String;

.field private subType:Ljava/lang/String;

.field private type:Lmiui/upnp/typedef/device/urn/Urn$Type;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/upnp/typedef/device/urn/Urn$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/Urn$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/device/urn/Urn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->UNDEFINED:Lmiui/upnp/typedef/device/urn/Urn$Type;

    iput-object v0, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->UNDEFINED:Lmiui/upnp/typedef/device/urn/Urn$Type;

    iput-object v0, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/urn/Urn;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static create(Ljava/lang/String;Lmiui/upnp/typedef/device/urn/Urn$Type;Ljava/lang/String;F)Lmiui/upnp/typedef/device/urn/Urn;
    .locals 1

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lmiui/upnp/typedef/device/urn/Urn;->create(Ljava/lang/String;Lmiui/upnp/typedef/device/urn/Urn$Type;Ljava/lang/String;Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/Urn;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lmiui/upnp/typedef/device/urn/Urn$Type;Ljava/lang/String;I)Lmiui/upnp/typedef/device/urn/Urn;
    .locals 1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lmiui/upnp/typedef/device/urn/Urn;->create(Ljava/lang/String;Lmiui/upnp/typedef/device/urn/Urn$Type;Ljava/lang/String;Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/Urn;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lmiui/upnp/typedef/device/urn/Urn$Type;Ljava/lang/String;Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/Urn;
    .locals 1

    new-instance v0, Lmiui/upnp/typedef/device/urn/Urn;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/Urn;-><init>()V

    iput-object p0, v0, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    iput-object p1, v0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    iput-object p2, v0, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    iput-object p3, v0, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lmiui/upnp/typedef/device/urn/Urn;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    check-cast v1, Lmiui/upnp/typedef/device/urn/Urn;

    iget-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, v1, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    if-eqz v2, :cond_3

    return v3

    :cond_2
    iget-object v4, v1, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    :cond_3
    iget-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    iget-object v4, v1, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    if-eq v2, v4, :cond_4

    return v3

    :cond_4
    iget-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, v1, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v3

    :cond_5
    iget-object v4, v1, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v3

    :cond_6
    iget-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;

    iget-object v4, v1, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v3

    :cond_7
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lmiui/upnp/typedef/device/urn/Urn$Type;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lmiui/upnp/typedef/device/urn/Urn$Type;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_3
    add-int/2addr v1, v4

    return v1
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "urn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Lmiui/upnp/typedef/device/urn/Urn$Type;->retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/Urn$Type;

    move-result-object v2

    iput-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    const/4 v2, 0x3

    aget-object v2, v1, v2

    iput-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    const/4 v2, 0x4

    :try_start_0
    aget-object v2, v1, v2

    iput-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    nop

    :goto_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/upnp/typedef/device/urn/Urn;->parse(Ljava/lang/String;)Z

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    return-void
.end method

.method public setType(Lmiui/upnp/typedef/device/urn/Urn$Type;)V
    .locals 0

    iput-object p1, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "urn"

    aput-object v2, v0, v1

    iget-object v1, p0, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/urn/Urn$Type;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "%s:%s:%s:%s:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/urn/Urn;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
