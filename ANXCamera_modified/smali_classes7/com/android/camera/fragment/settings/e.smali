.class public final synthetic Lcom/android/camera/fragment/settings/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic kg:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/settings/e;->kg:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/settings/e;->kg:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->d(Landroid/content/DialogInterface;I)V

    return-void
.end method