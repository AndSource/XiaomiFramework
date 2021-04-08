.class public final synthetic Lcom/android/camera/fragment/clone/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/fragment/clone/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/clone/a;

    invoke-direct {v0}, Lcom/android/camera/fragment/clone/a;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/clone/a;->INSTANCE:Lcom/android/camera/fragment/clone/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 0

    invoke-static {p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->i(F)F

    move-result p0

    return p0
.end method
