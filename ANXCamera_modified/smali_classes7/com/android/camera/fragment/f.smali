.class public final synthetic Lcom/android/camera/fragment/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;


# instance fields
.field private final synthetic kg:Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeItemHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeItemHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/f;->kg:Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeItemHolder;

    return-void
.end method


# virtual methods
.method public final getShareContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/f;->kg:Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeItemHolder;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeItemHolder;->Xa()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method
