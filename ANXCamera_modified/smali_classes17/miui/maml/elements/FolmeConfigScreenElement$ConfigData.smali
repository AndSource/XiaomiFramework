.class Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;
.super Ljava/lang/Object;
.source "FolmeConfigScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/FolmeConfigScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigData"
.end annotation


# instance fields
.field public delayExp:Lmiui/maml/data/Expression;

.field public easeExps:[Lmiui/maml/data/Expression;

.field public fromSpeedExp:Lmiui/maml/data/Expression;

.field public onBeginCallbackExps:[Lmiui/maml/data/Expression;

.field public onCompleteCallbackExps:[Lmiui/maml/data/Expression;

.field public onUpdateCallbackExps:[Lmiui/maml/data/Expression;

.field public propertyExps:[Lmiui/maml/data/Expression;

.field final synthetic this$0:Lmiui/maml/elements/FolmeConfigScreenElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/FolmeConfigScreenElement;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->this$0:Lmiui/maml/elements/FolmeConfigScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/FolmeConfigScreenElement;Lmiui/maml/elements/FolmeConfigScreenElement$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;-><init>(Lmiui/maml/elements/FolmeConfigScreenElement;)V

    return-void
.end method
