.class public final synthetic Landroid/view/textclassifier/-$$Lambda$TextClassifierImpl$ftq-sQqJYwUdrdbbr9jz3p4AWos;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Landroid/view/textclassifier/TextClassifierImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassifierImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/-$$Lambda$TextClassifierImpl$ftq-sQqJYwUdrdbbr9jz3p4AWos;->f$0:Landroid/view/textclassifier/TextClassifierImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/-$$Lambda$TextClassifierImpl$ftq-sQqJYwUdrdbbr9jz3p4AWos;->f$0:Landroid/view/textclassifier/TextClassifierImpl;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/view/textclassifier/TextClassifierImpl;->lambda$ftq-sQqJYwUdrdbbr9jz3p4AWos(Landroid/view/textclassifier/TextClassifierImpl;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
