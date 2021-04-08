.class public final synthetic Landroid/app/-$$Lambda$Activity$1$pR5b3qDyhldlD2RtkXoHHxgyGPU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/Activity$1;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$Activity$1$pR5b3qDyhldlD2RtkXoHHxgyGPU;->f$0:Landroid/app/Activity$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/app/-$$Lambda$Activity$1$pR5b3qDyhldlD2RtkXoHHxgyGPU;->f$0:Landroid/app/Activity$1;

    invoke-virtual {v0}, Landroid/app/Activity$1;->lambda$requestFinish$0$Activity$1()V

    return-void
.end method
