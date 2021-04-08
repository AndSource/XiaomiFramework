.class public final synthetic Landroid/view/textclassifier/-$$Lambda$9N8WImc0VBjy2oxI_Gk5_Pbye_A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/textclassifier/-$$Lambda$9N8WImc0VBjy2oxI_Gk5_Pbye_A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/-$$Lambda$9N8WImc0VBjy2oxI_Gk5_Pbye_A;

    invoke-direct {v0}, Landroid/view/textclassifier/-$$Lambda$9N8WImc0VBjy2oxI_Gk5_Pbye_A;-><init>()V

    sput-object v0, Landroid/view/textclassifier/-$$Lambda$9N8WImc0VBjy2oxI_Gk5_Pbye_A;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$9N8WImc0VBjy2oxI_Gk5_Pbye_A;

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

    invoke-static {p1}, Lcom/google/android/textclassifier/ActionsSuggestionsModel;->getVersion(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
