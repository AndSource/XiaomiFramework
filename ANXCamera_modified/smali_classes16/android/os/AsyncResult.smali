.class public Landroid/os/AsyncResult;
.super Ljava/lang/Object;
.source "AsyncResult.java"


# instance fields
.field public exception:Ljava/lang/Throwable;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public result:Ljava/lang/Object;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public userObj:Ljava/lang/Object;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iput-object p2, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object p3, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public static forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method
