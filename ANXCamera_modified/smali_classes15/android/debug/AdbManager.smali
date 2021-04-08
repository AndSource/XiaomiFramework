.class public Landroid/debug/AdbManager;
.super Ljava/lang/Object;
.source "AdbManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdbManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/debug/IAdbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/debug/IAdbManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/debug/AdbManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/debug/AdbManager;->mService:Landroid/debug/IAdbManager;

    return-void
.end method
