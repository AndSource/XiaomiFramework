.class public final synthetic Landroid/app/role/-$$Lambda$RoleControllerManager$GrantDefaultRolesRequest$0iOorSSTMKMxorImfJcxQ8hscBs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$GrantDefaultRolesRequest$0iOorSSTMKMxorImfJcxQ8hscBs;->f$0:Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$GrantDefaultRolesRequest$0iOorSSTMKMxorImfJcxQ8hscBs;->f$0:Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;

    invoke-virtual {v0}, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;->lambda$onTimeout$2$RoleControllerManager$GrantDefaultRolesRequest()V

    return-void
.end method
