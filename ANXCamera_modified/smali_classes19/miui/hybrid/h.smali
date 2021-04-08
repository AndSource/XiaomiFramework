.class Lmiui/hybrid/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/HybridView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lmiui/hybrid/HybridView;


# direct methods
.method constructor <init>(Lmiui/hybrid/HybridView;)V
    .locals 0

    iput-object p1, p0, Lmiui/hybrid/h;->j:Lmiui/hybrid/HybridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lmiui/hybrid/h;->j:Lmiui/hybrid/HybridView;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->reload()V

    iget-object p0, p0, Lmiui/hybrid/h;->j:Lmiui/hybrid/HybridView;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lmiui/hybrid/HybridView;->a(Lmiui/hybrid/HybridView;I)V

    return-void
.end method
