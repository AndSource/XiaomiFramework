.class public abstract Landroid/app/AppOpsManagerInternal;
.super Ljava/lang/Object;
.source "AppOpsManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkOperationUnchecked(IILjava/lang/String;)I
.end method

.method public abstract setAllPkgModesToDefault(II)V
.end method

.method public abstract setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
.end method

.method public abstract setUidMode(III)V
.end method
