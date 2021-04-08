.class Landroid/os/spc/PSIEventSocketReader$1;
.super Ljava/lang/Thread;
.source "PSIEventSocketReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/spc/PSIEventSocketReader;->startMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/spc/PSIEventSocketReader;

.field final synthetic val$fd:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(Landroid/os/spc/PSIEventSocketReader;Ljava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Landroid/os/spc/PSIEventSocketReader$1;->this$0:Landroid/os/spc/PSIEventSocketReader;

    iput-object p2, p0, Landroid/os/spc/PSIEventSocketReader$1;->val$fd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroid/os/spc/PSIEventSocketReader$1;->val$fd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :goto_0
    iget-object v1, p0, Landroid/os/spc/PSIEventSocketReader$1;->this$0:Landroid/os/spc/PSIEventSocketReader;

    invoke-static {v1, v0}, Landroid/os/spc/PSIEventSocketReader;->access$000(Landroid/os/spc/PSIEventSocketReader;Ljava/io/InputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    nop

    return-void

    :cond_0
    goto :goto_0
.end method
