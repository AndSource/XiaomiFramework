.class public Landroid/net/SocketKeepalive$InvalidPacketException;
.super Landroid/net/SocketKeepalive$ErrorCodeException;
.source "SocketKeepalive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/SocketKeepalive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidPacketException"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/SocketKeepalive$ErrorCodeException;-><init>(I)V

    return-void
.end method
