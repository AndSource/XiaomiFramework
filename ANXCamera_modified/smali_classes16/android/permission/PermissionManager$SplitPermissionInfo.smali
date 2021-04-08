.class public final Landroid/permission/PermissionManager$SplitPermissionInfo;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SplitPermissionInfo"
.end annotation


# instance fields
.field private final mNewPerms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSplitPerm:Ljava/lang/String;

.field private final mTargetSdk:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPerm:Ljava/lang/String;

    iput-object p2, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mNewPerms:Ljava/util/List;

    iput p3, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mTargetSdk:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/permission/PermissionManager$SplitPermissionInfo;

    iget v3, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mTargetSdk:I

    iget v4, v2, Landroid/permission/PermissionManager$SplitPermissionInfo;->mTargetSdk:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPerm:Ljava/lang/String;

    iget-object v4, v2, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPerm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mNewPerms:Ljava/util/List;

    iget-object v4, v2, Landroid/permission/PermissionManager$SplitPermissionInfo;->mNewPerms:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getNewPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mNewPerms:Ljava/util/List;

    return-object v0
.end method

.method public getSplitPermission()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPerm:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSdk()I
    .locals 1

    iget v0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mTargetSdk:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPerm:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mNewPerms:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mTargetSdk:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
