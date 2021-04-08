.class Lcom/miui/internal/app/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field Uw:Landroid/app/ActionBar$Tab;

.field Vw:Z

.field args:Landroid/os/Bundle;

.field clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field fragment:Landroid/app/Fragment;

.field final synthetic j:Lcom/miui/internal/app/q;

.field tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/q;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/ActionBar$Tab;",
            "Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/internal/app/q$a;->j:Lcom/miui/internal/app/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/app/q$a;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/internal/app/q$a;->clazz:Ljava/lang/Class;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/app/q$a;->fragment:Landroid/app/Fragment;

    iput-object p4, p0, Lcom/miui/internal/app/q$a;->args:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/miui/internal/app/q$a;->Uw:Landroid/app/ActionBar$Tab;

    iput-boolean p6, p0, Lcom/miui/internal/app/q$a;->Vw:Z

    return-void
.end method
