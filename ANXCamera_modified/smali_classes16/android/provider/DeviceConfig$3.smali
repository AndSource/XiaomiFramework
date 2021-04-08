.class Landroid/provider/DeviceConfig$3;
.super Ljava/lang/Object;
.source "DeviceConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/provider/DeviceConfig;->handleChange(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$j:I

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$namespace:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Landroid/provider/DeviceConfig$3;->val$j:I

    iput-object p2, p0, Landroid/provider/DeviceConfig$3;->val$namespace:Ljava/lang/String;

    iput-object p3, p0, Landroid/provider/DeviceConfig$3;->val$name:Ljava/lang/String;

    iput-object p4, p0, Landroid/provider/DeviceConfig$3;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/provider/DeviceConfig;->access$200()Landroid/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Landroid/provider/DeviceConfig$3;->val$j:I

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/DeviceConfig$OnPropertyChangedListener;

    iget-object v1, p0, Landroid/provider/DeviceConfig$3;->val$namespace:Ljava/lang/String;

    iget-object v2, p0, Landroid/provider/DeviceConfig$3;->val$name:Ljava/lang/String;

    iget-object v3, p0, Landroid/provider/DeviceConfig$3;->val$value:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$OnPropertyChangedListener;->onPropertyChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
