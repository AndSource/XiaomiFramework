.class public final synthetic Landroid/app/role/-$$Lambda$RoleControllerManager$IsApplicationQualifiedForRoleRequest$9YPce2vGDOZP97XHsgR7kBf64jQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/role/RoleControllerManager$IsApplicationQualifiedForRoleRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/app/role/RoleControllerManager$IsApplicationQualifiedForRoleRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$IsApplicationQualifiedForRoleRequest$9YPce2vGDOZP97XHsgR7kBf64jQ;->f$0:Landroid/app/role/RoleControllerManager$IsApplicationQualifiedForRoleRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$IsApplicationQualifiedForRoleRequest$9YPce2vGDOZP97XHsgR7kBf64jQ;->f$0:Landroid/app/role/RoleControllerManager$IsApplicationQualifiedForRoleRequest;

    invoke-virtual {v0}, Landroid/app/role/RoleControllerManager$IsApplicationQualifiedForRoleRequest;->lambda$onTimeout$2$RoleControllerManager$IsApplicationQualifiedForRoleRequest()V

    return-void
.end method
