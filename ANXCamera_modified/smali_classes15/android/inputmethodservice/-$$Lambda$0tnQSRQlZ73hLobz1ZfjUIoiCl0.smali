.class public final synthetic Landroid/inputmethodservice/-$$Lambda$0tnQSRQlZ73hLobz1ZfjUIoiCl0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/inputmethodservice/-$$Lambda$0tnQSRQlZ73hLobz1ZfjUIoiCl0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/inputmethodservice/-$$Lambda$0tnQSRQlZ73hLobz1ZfjUIoiCl0;

    invoke-direct {v0}, Landroid/inputmethodservice/-$$Lambda$0tnQSRQlZ73hLobz1ZfjUIoiCl0;-><init>()V

    sput-object v0, Landroid/inputmethodservice/-$$Lambda$0tnQSRQlZ73hLobz1ZfjUIoiCl0;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$0tnQSRQlZ73hLobz1ZfjUIoiCl0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/os/ResultReceiver;

    invoke-virtual {p1, p2, p3}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    return-void
.end method
