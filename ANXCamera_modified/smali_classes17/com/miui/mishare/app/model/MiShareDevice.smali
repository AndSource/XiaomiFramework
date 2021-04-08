.class public Lcom/miui/mishare/app/model/MiShareDevice;
.super Ljava/lang/Object;
.source "MiShareDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/app/model/MiShareDevice$TokenGenerator;
    }
.end annotation


# instance fields
.field public deviceId:Ljava/lang/String;

.field public deviceModelName:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public deviceStatus:I

.field public deviceType:I

.field public files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public remoteDevice:Lcom/miui/mishare/RemoteDevice;

.field public taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/miui/mishare/app/model/MiShareDevice;->generatePCTaskId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/mishare/app/model/MiShareDevice$TokenGenerator;->access$000()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static generatePCTaskId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/mishare/app/model/MiShareDevice$TokenGenerator;->access$100()Ljava/util/Random;

    move-result-object v0

    const v1, 0xfffc

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isPC()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/mishare/RemoteDevice;->isPC()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
