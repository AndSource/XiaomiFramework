.class final Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;
.super Ljava/lang/Object;
.source "ActionsSuggestionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/ActionsSuggestionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PersonEncoder"
.end annotation


# instance fields
.field private final mMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Person;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNextUserId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;->mMapping:Ljava/util/Map;

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;->mNextUserId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/textclassifier/ActionsSuggestionsHelper$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;Landroid/app/Person;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;->encode(Landroid/app/Person;)I

    move-result v0

    return v0
.end method

.method private encode(Landroid/app/Person;)I
    .locals 3

    sget-object v0, Landroid/view/textclassifier/ConversationActions$Message;->PERSON_USER_SELF:Landroid/app/Person;

    invoke-virtual {v0, p1}, Landroid/app/Person;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;->mMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;->mMapping:Ljava/util/Map;

    iget v2, p0, Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;->mNextUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;->mNextUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;->mNextUserId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;->mNextUserId:I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method
