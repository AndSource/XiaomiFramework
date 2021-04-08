.class public Lmiui/yellowpage/AntispamCustomCategory;
.super Lmiui/yellowpage/AntispamCategory;
.source "AntispamCustomCategory.java"


# instance fields
.field private mIsUserCustom:Z

.field private mMarkedCount:I

.field private mNumber:Ljava/lang/String;

.field private mNumberType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmiui/yellowpage/AntispamCategory;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    iput-object p6, p0, Lmiui/yellowpage/AntispamCustomCategory;->mNumber:Ljava/lang/String;

    iput p7, p0, Lmiui/yellowpage/AntispamCustomCategory;->mMarkedCount:I

    iput-boolean p8, p0, Lmiui/yellowpage/AntispamCustomCategory;->mIsUserCustom:Z

    return-void
.end method


# virtual methods
.method public getMarkedCount()I
    .locals 1

    iget v0, p0, Lmiui/yellowpage/AntispamCustomCategory;->mMarkedCount:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/AntispamCustomCategory;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberType()I
    .locals 1

    iget v0, p0, Lmiui/yellowpage/AntispamCustomCategory;->mNumberType:I

    return v0
.end method

.method public isNumberCategoryCustom()Z
    .locals 1

    iget-boolean v0, p0, Lmiui/yellowpage/AntispamCustomCategory;->mIsUserCustom:Z

    return v0
.end method

.method public setNumberType(I)V
    .locals 0

    iput p1, p0, Lmiui/yellowpage/AntispamCustomCategory;->mNumberType:I

    return-void
.end method
