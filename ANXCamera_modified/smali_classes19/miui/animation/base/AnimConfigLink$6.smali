.class Lmiui/animation/base/AnimConfigLink$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/animation/base/AnimConfigLink$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/base/AnimConfigLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/animation/base/AnimConfigLink$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p3, p1}, Lmiui/animation/listener/ListenerBus;->addListener(Ljava/lang/Object;Lmiui/animation/base/AnimConfig;)V

    return-object p3
.end method
