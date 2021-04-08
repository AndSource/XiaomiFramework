.class public final enum Landroid/inputmethodservice/RecodingStateAnimatorView$State;
.super Ljava/lang/Enum;
.source "RecodingStateAnimatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/inputmethodservice/RecodingStateAnimatorView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/inputmethodservice/RecodingStateAnimatorView$State;

.field public static final enum RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

.field public static final enum RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const/4 v1, 0x0

    const-string v2, "RECORDING_NO_VOICE"

    invoke-direct {v0, v2, v1}, Landroid/inputmethodservice/RecodingStateAnimatorView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    new-instance v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const/4 v2, 0x1

    const-string v3, "RECORDING_HAS_VOICE"

    invoke-direct {v0, v3, v2}, Landroid/inputmethodservice/RecodingStateAnimatorView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    sget-object v3, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    aput-object v3, v0, v1

    sget-object v1, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    aput-object v1, v0, v2

    sput-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->$VALUES:[Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/inputmethodservice/RecodingStateAnimatorView$State;
    .locals 1

    const-class v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    return-object v0
.end method

.method public static values()[Landroid/inputmethodservice/RecodingStateAnimatorView$State;
    .locals 1

    sget-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->$VALUES:[Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-virtual {v0}, [Landroid/inputmethodservice/RecodingStateAnimatorView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    return-object v0
.end method
