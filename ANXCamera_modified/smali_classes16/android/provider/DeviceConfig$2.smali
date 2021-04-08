.class Landroid/provider/DeviceConfig$2;
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
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/provider/DeviceConfig$2;->val$name:Ljava/lang/String;

    iput-object p2, p0, Landroid/provider/DeviceConfig$2;->val$value:Ljava/lang/String;

    iput p3, p0, Landroid/provider/DeviceConfig$2;->val$j:I

    iput-object p4, p0, Landroid/provider/DeviceConfig$2;->val$namespace:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Landroid/provider/DeviceConfig$2;->val$name:Ljava/lang/String;

    iget-object v2, p0, Landroid/provider/DeviceConfig$2;->val$value:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/provider/DeviceConfig;->access$100()Landroid/util/ArrayMap;

    move-result-object v1

    iget v2, p0, Landroid/provider/DeviceConfig$2;->val$j:I

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    new-instance v2, Landroid/provider/DeviceConfig$Properties;

    iget-object v3, p0, Landroid/provider/DeviceConfig$2;->val$namespace:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/provider/DeviceConfig$Properties;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
