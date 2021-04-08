.class public Lmiui/yellowpage/ModuleIntent;
.super Ljava/lang/Object;
.source "ModuleIntent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2b11fbb892e95L


# instance fields
.field private mHotId:I

.field private mHotShowCount:I

.field private mIntent:Landroid/content/Intent;

.field private mModuleId:I

.field private mSubItemsFlag:Z

.field private mSubModuleIntent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/yellowpage/ModuleIntent;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lmiui/yellowpage/ModuleIntent;->mIntent:Landroid/content/Intent;

    iput p3, p0, Lmiui/yellowpage/ModuleIntent;->mModuleId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/yellowpage/ModuleIntent;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lmiui/yellowpage/ModuleIntent;->mIntent:Landroid/content/Intent;

    iput p3, p0, Lmiui/yellowpage/ModuleIntent;->mModuleId:I

    iput-boolean p4, p0, Lmiui/yellowpage/ModuleIntent;->mSubItemsFlag:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;IZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/yellowpage/ModuleIntent;-><init>(Ljava/lang/String;Landroid/content/Intent;IZ)V

    iput p5, p0, Lmiui/yellowpage/ModuleIntent;->mHotId:I

    iput p6, p0, Lmiui/yellowpage/ModuleIntent;->mHotShowCount:I

    return-void
.end method


# virtual methods
.method public getHotId()I
    .locals 1

    iget v0, p0, Lmiui/yellowpage/ModuleIntent;->mHotId:I

    return v0
.end method

.method public getHotShowCount()I
    .locals 1

    iget v0, p0, Lmiui/yellowpage/ModuleIntent;->mHotShowCount:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/ModuleIntent;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    iget v0, p0, Lmiui/yellowpage/ModuleIntent;->mModuleId:I

    return v0
.end method

.method public getSubItemsFlag()Z
    .locals 1

    iget-boolean v0, p0, Lmiui/yellowpage/ModuleIntent;->mSubItemsFlag:Z

    return v0
.end method

.method public getSubModuleIntent()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/yellowpage/ModuleIntent;->mSubModuleIntent:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/ModuleIntent;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setSubModuleIntent(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/yellowpage/ModuleIntent;->mSubModuleIntent:Ljava/util/ArrayList;

    return-void
.end method
