.class public final Landroid/view/textclassifier/intent/LabeledIntent$Result;
.super Ljava/lang/Object;
.source "LabeledIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/intent/LabeledIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final remoteAction:Landroid/app/RemoteAction;

.field public final resolvedIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/app/RemoteAction;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/view/textclassifier/intent/LabeledIntent$Result;->resolvedIntent:Landroid/content/Intent;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    iput-object v0, p0, Landroid/view/textclassifier/intent/LabeledIntent$Result;->remoteAction:Landroid/app/RemoteAction;

    return-void
.end method
