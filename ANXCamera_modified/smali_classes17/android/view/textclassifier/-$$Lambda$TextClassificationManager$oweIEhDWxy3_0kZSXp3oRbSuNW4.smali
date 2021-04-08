.class public final synthetic Landroid/view/textclassifier/-$$Lambda$TextClassificationManager$oweIEhDWxy3_0kZSXp3oRbSuNW4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Landroid/view/textclassifier/TextClassificationManager;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassificationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/-$$Lambda$TextClassificationManager$oweIEhDWxy3_0kZSXp3oRbSuNW4;->f$0:Landroid/view/textclassifier/TextClassificationManager;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/-$$Lambda$TextClassificationManager$oweIEhDWxy3_0kZSXp3oRbSuNW4;->f$0:Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationManager;->lambda$getSettings$2$TextClassificationManager()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
