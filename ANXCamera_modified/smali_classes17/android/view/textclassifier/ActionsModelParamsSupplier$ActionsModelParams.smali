.class public final Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;
.super Ljava/lang/Object;
.source "ActionsModelParamsSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/ActionsModelParamsSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionsModelParams"
.end annotation


# static fields
.field public static final INVALID:Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;


# instance fields
.field private final mRequiredModelLocales:Ljava/lang/String;

.field private final mRequiredModelVersion:I

.field private final mSerializedPreconditions:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, -0x1

    const-string v3, ""

    invoke-direct {v0, v2, v3, v1}, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;-><init>(ILjava/lang/String;[B)V

    sput-object v0, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;->INVALID:Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;->mRequiredModelVersion:I

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;->mRequiredModelLocales:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;->mSerializedPreconditions:[B

    return-void
.end method


# virtual methods
.method public getSerializedPreconditions(Landroid/view/textclassifier/ModelFileManager$ModelFile;)[B
    .locals 7

    sget-object v0, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;->INVALID:Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getVersion()I

    move-result v0

    iget v2, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;->mRequiredModelVersion:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "androidtc"

    if-eq v0, v2, :cond_1

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {p1}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "Not applying mSerializedPreconditions, required version=%d, actual=%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getSupportedLocalesStr()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;->mRequiredModelLocales:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;->mRequiredModelLocales:Ljava/lang/String;

    aput-object v2, v0, v4

    invoke-virtual {p1}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getSupportedLocalesStr()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "Not applying mSerializedPreconditions, required locales=%s, actual=%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    iget-object v0, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;->mSerializedPreconditions:[B

    return-object v0
.end method
