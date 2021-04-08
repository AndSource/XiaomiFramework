.class public interface abstract Landroid/view/textclassifier/intent/ClassificationIntentFactory;
.super Ljava/lang/Object;
.source "ClassificationIntentFactory.java"


# direct methods
.method public static insertTranslateAction(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/intent/LabeledIntent;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v7, Landroid/view/textclassifier/intent/LabeledIntent;

    const v0, 0x1040761

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x1040762

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.TRANSLATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/intent/LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public abstract create(Landroid/content/Context;Ljava/lang/String;ZLjava/time/Instant;Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/time/Instant;",
            "Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/intent/LabeledIntent;",
            ">;"
        }
    .end annotation
.end method
