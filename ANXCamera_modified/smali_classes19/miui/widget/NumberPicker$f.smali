.class Lmiui/widget/NumberPicker$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic j:Lmiui/widget/NumberPicker;

.field private yY:I

.field private zY:I


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/NumberPicker$f;->j:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lmiui/widget/NumberPicker$f;I)I
    .locals 0

    iput p1, p0, Lmiui/widget/NumberPicker$f;->yY:I

    return p1
.end method

.method static synthetic b(Lmiui/widget/NumberPicker$f;I)I
    .locals 0

    iput p1, p0, Lmiui/widget/NumberPicker$f;->zY:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lmiui/widget/NumberPicker$f;->zY:I

    iget-object v1, p0, Lmiui/widget/NumberPicker$f;->j:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->j:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lmiui/widget/NumberPicker$f;->yY:I

    iget p0, p0, Lmiui/widget/NumberPicker$f;->zY:I

    invoke-virtual {v0, v1, p0}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    return-void
.end method
