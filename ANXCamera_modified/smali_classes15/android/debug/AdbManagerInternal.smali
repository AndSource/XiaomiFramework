.class public abstract Landroid/debug/AdbManagerInternal;
.super Ljava/lang/Object;
.source "AdbManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAdbKeysFile()Ljava/io/File;
.end method

.method public abstract getAdbTempKeysFile()Ljava/io/File;
.end method

.method public abstract isAdbEnabled()Z
.end method

.method public abstract registerTransport(Landroid/debug/IAdbTransport;)V
.end method

.method public abstract unregisterTransport(Landroid/debug/IAdbTransport;)V
.end method
