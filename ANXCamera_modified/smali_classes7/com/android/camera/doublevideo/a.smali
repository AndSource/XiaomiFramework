.class public final synthetic Lcom/android/camera/doublevideo/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/doublevideo/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/doublevideo/a;

    invoke-direct {v0}, Lcom/android/camera/doublevideo/a;-><init>()V

    sput-object v0, Lcom/android/camera/doublevideo/a;->INSTANCE:Lcom/android/camera/doublevideo/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/camera/doublevideo/render/IRenderable;

    invoke-static {p1}, Lcom/android/camera/doublevideo/DualVideoControler;->a(Lcom/android/camera/doublevideo/render/IRenderable;)Z

    move-result p0

    return p0
.end method
