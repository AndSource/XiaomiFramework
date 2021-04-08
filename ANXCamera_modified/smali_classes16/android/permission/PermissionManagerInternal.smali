.class public abstract Landroid/permission/PermissionManagerInternal;
.super Ljava/lang/Object;
.source "PermissionManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
.end method

.method public abstract backupRuntimePermissions(Landroid/os/UserHandle;)[B
.end method

.method public abstract removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
.end method

.method public abstract restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract restoreRuntimePermissions([BLandroid/os/UserHandle;)V
.end method
