.class public final synthetic Lcom/android/camera/features/mimoji2/fragment/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic kg:Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;

.field private final synthetic lg:I

.field private final synthetic mg:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/c;->kg:Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;

    iput p2, p0, Lcom/android/camera/features/mimoji2/fragment/c;->lg:I

    iput-object p3, p0, Lcom/android/camera/features/mimoji2/fragment/c;->mg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/c;->kg:Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;

    iget v1, p0, Lcom/android/camera/features/mimoji2/fragment/c;->lg:I

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/c;->mg:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->b(ILjava/lang/String;)V

    return-void
.end method
