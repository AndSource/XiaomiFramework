.class public final synthetic Landroid/view/textclassifier/-$$Lambda$NxwbyZSxofZ4Z5SQhfXmtLQ1nxk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/textclassifier/-$$Lambda$NxwbyZSxofZ4Z5SQhfXmtLQ1nxk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/-$$Lambda$NxwbyZSxofZ4Z5SQhfXmtLQ1nxk;

    invoke-direct {v0}, Landroid/view/textclassifier/-$$Lambda$NxwbyZSxofZ4Z5SQhfXmtLQ1nxk;-><init>()V

    sput-object v0, Landroid/view/textclassifier/-$$Lambda$NxwbyZSxofZ4Z5SQhfXmtLQ1nxk;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$NxwbyZSxofZ4Z5SQhfXmtLQ1nxk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/textclassifier/AnnotatorModel;->getLocales(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
