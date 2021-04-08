.class public abstract Lmiui/animation/property/ViewProperty;
.super Lmiui/animation/property/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/property/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALPHA:Lmiui/animation/property/ViewProperty;

.field public static final AUTO_ALPHA:Lmiui/animation/property/ViewProperty;

.field public static final BACKGROUND:Lmiui/animation/property/ViewProperty;

.field public static final FOREGROUND:Lmiui/animation/property/ViewProperty;

.field public static final HEIGHT:Lmiui/animation/property/ViewProperty;

.field public static final ROTATION:Lmiui/animation/property/ViewProperty;

.field public static final ROTATION_X:Lmiui/animation/property/ViewProperty;

.field public static final ROTATION_Y:Lmiui/animation/property/ViewProperty;

.field public static final SCALE_X:Lmiui/animation/property/ViewProperty;

.field public static final SCALE_Y:Lmiui/animation/property/ViewProperty;

.field public static final SCROLL_X:Lmiui/animation/property/ViewProperty;

.field public static final SCROLL_Y:Lmiui/animation/property/ViewProperty;

.field public static final TRANSLATION_X:Lmiui/animation/property/ViewProperty;

.field public static final TRANSLATION_Y:Lmiui/animation/property/ViewProperty;

.field public static final TRANSLATION_Z:Lmiui/animation/property/ViewProperty;

.field public static final VISIBILITY:Lmiui/animation/property/ViewProperty;

.field public static final WIDTH:Lmiui/animation/property/ViewProperty;

.field public static final X:Lmiui/animation/property/ViewProperty;

.field public static final Y:Lmiui/animation/property/ViewProperty;

.field public static final Z:Lmiui/animation/property/ViewProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmiui/animation/property/l;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Lmiui/animation/property/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->TRANSLATION_X:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/n;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Lmiui/animation/property/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->TRANSLATION_Y:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/o;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Lmiui/animation/property/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->TRANSLATION_Z:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/p;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lmiui/animation/property/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->SCALE_X:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/q;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lmiui/animation/property/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->SCALE_Y:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/r;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lmiui/animation/property/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->ROTATION:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/s;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Lmiui/animation/property/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->ROTATION_X:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/t;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Lmiui/animation/property/t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->ROTATION_Y:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/u;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lmiui/animation/property/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->X:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/b;

    const-string v1, "y"

    invoke-direct {v0, v1}, Lmiui/animation/property/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->Y:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/c;

    const-string v1, "z"

    invoke-direct {v0, v1}, Lmiui/animation/property/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->Z:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/d;

    const-string v1, "height"

    invoke-direct {v0, v1}, Lmiui/animation/property/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->HEIGHT:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/e;

    const-string v1, "width"

    invoke-direct {v0, v1}, Lmiui/animation/property/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->WIDTH:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/f;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lmiui/animation/property/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/g;

    const-string v1, "autoAlpha"

    invoke-direct {v0, v1}, Lmiui/animation/property/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->AUTO_ALPHA:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/h;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Lmiui/animation/property/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->SCROLL_X:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/i;

    const-string v1, "visibility"

    invoke-direct {v0, v1}, Lmiui/animation/property/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->VISIBILITY:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/j;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Lmiui/animation/property/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->SCROLL_Y:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/k;

    const-string v1, "deprecated_foreground"

    invoke-direct {v0, v1}, Lmiui/animation/property/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->FOREGROUND:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/m;

    const-string v1, "deprecated_background"

    invoke-direct {v0, v1}, Lmiui/animation/property/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->BACKGROUND:Lmiui/animation/property/ViewProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lmiui/animation/property/ViewProperty;->e(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static e(Landroid/view/View;)Z
    .locals 1

    const v0, 0x100b0004

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewProperty{mPropertyName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
