.class Lcom/miui/internal/widget/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lcom/miui/internal/widget/ViewDragHelper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ViewDragHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/W;->j:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/W;->j:Lcom/miui/internal/widget/ViewDragHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ViewDragHelper;->e(I)V

    return-void
.end method
