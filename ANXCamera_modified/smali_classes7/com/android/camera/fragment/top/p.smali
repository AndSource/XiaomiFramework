.class public final synthetic Lcom/android/camera/fragment/top/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic kg:Lcom/android/camera/fragment/top/LabelItemView;

.field private final synthetic lg:Ljava/lang/String;

.field private final synthetic mg:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/top/LabelItemView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/top/p;->kg:Lcom/android/camera/fragment/top/LabelItemView;

    iput-object p2, p0, Lcom/android/camera/fragment/top/p;->lg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/fragment/top/p;->mg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/top/p;->kg:Lcom/android/camera/fragment/top/LabelItemView;

    iget-object v1, p0, Lcom/android/camera/fragment/top/p;->lg:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/fragment/top/p;->mg:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/camera/fragment/top/TopExpandAdapter;->a(Lcom/android/camera/fragment/top/LabelItemView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
