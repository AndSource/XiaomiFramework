.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$RemoteService$L8N-TbqIPWKu7tyiOxbu_00YKss;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# static fields
.field public static final synthetic INSTANCE:Landroid/permission/-$$Lambda$PermissionControllerManager$RemoteService$L8N-TbqIPWKu7tyiOxbu_00YKss;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/permission/-$$Lambda$PermissionControllerManager$RemoteService$L8N-TbqIPWKu7tyiOxbu_00YKss;

    invoke-direct {v0}, Landroid/permission/-$$Lambda$PermissionControllerManager$RemoteService$L8N-TbqIPWKu7tyiOxbu_00YKss;-><init>()V

    sput-object v0, Landroid/permission/-$$Lambda$PermissionControllerManager$RemoteService$L8N-TbqIPWKu7tyiOxbu_00YKss;->INSTANCE:Landroid/permission/-$$Lambda$PermissionControllerManager$RemoteService$L8N-TbqIPWKu7tyiOxbu_00YKss;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/permission/PermissionControllerManager$RemoteService;

    invoke-static {p1}, Landroid/permission/PermissionControllerManager$RemoteService;->lambda$new$0(Landroid/permission/PermissionControllerManager$RemoteService;)V

    return-void
.end method
