.class public final synthetic Landroid/app/role/-$$Lambda$RoleControllerManager$IsRoleVisibleRequest$mPvdI6Jc9sQbLKyjDLv3TR6mmlM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/role/RoleControllerManager$IsRoleVisibleRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/app/role/RoleControllerManager$IsRoleVisibleRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$IsRoleVisibleRequest$mPvdI6Jc9sQbLKyjDLv3TR6mmlM;->f$0:Landroid/app/role/RoleControllerManager$IsRoleVisibleRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$IsRoleVisibleRequest$mPvdI6Jc9sQbLKyjDLv3TR6mmlM;->f$0:Landroid/app/role/RoleControllerManager$IsRoleVisibleRequest;

    invoke-virtual {v0}, Landroid/app/role/RoleControllerManager$IsRoleVisibleRequest;->lambda$onTimeout$2$RoleControllerManager$IsRoleVisibleRequest()V

    return-void
.end method
