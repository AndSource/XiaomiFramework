.class final enum Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;
.super Ljava/lang/Enum;
.source "FragmentCloneProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/clone/FragmentCloneProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

.field public static final enum CAPTURING:Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

.field public static final enum SAVE:Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

.field public static final enum STOP:Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

    const/4 v1, 0x0

    const-string v2, "CAPTURING"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;->CAPTURING:Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

    new-instance v0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

    const/4 v2, 0x1

    const-string v3, "STOP"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;->STOP:Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

    new-instance v0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

    const/4 v3, 0x2

    const-string v4, "SAVE"

    invoke-direct {v0, v4, v3}, Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;->SAVE:Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

    sget-object v4, Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;->CAPTURING:Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;->STOP:Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;->SAVE:Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;->$VALUES:[Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;
    .locals 1

    const-class v0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;->$VALUES:[Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

    invoke-virtual {v0}, [Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/fragment/clone/FragmentCloneProcess$STATUS;

    return-object v0
.end method
