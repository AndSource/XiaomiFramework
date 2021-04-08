.class public Lmiui/yellowpage/YellowPageProvider;
.super Ljava/lang/Object;
.source "YellowPageProvider.java"


# static fields
.field public static final DEFAULT_PROVIDER:Lmiui/yellowpage/YellowPageProvider;


# instance fields
.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconBig:Landroid/graphics/Bitmap;

.field private mId:I

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lmiui/yellowpage/YellowPageProvider;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "MIUI"

    invoke-direct {v0, v2, v3, v1, v1}, Lmiui/yellowpage/YellowPageProvider;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    sput-object v0, Lmiui/yellowpage/YellowPageProvider;->DEFAULT_PROVIDER:Lmiui/yellowpage/YellowPageProvider;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/yellowpage/YellowPageProvider;->mId:I

    iput-object p2, p0, Lmiui/yellowpage/YellowPageProvider;->mName:Ljava/lang/String;

    iput-object p3, p0, Lmiui/yellowpage/YellowPageProvider;->mIcon:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lmiui/yellowpage/YellowPageProvider;->mIconBig:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getBigIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/YellowPageProvider;->mIconBig:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/YellowPageProvider;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lmiui/yellowpage/YellowPageProvider;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/YellowPageProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isMiui()Z
    .locals 1

    iget v0, p0, Lmiui/yellowpage/YellowPageProvider;->mId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
