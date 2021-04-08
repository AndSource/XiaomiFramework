.class public Lmiui/app/DateTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/DateTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# instance fields
.field private Ga:Landroid/view/View;

.field private Ha:Lmiui/widget/SlidingButton;

.field private Ja:Lmiui/widget/DateTimePicker;

.field private Ka:Lmiui/app/DateTimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/app/DateTimePickerDialog$OnTimeSetListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lmiui/app/DateTimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/DateTimePickerDialog$OnTimeSetListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/DateTimePickerDialog$OnTimeSetListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiui/app/DateTimePickerDialog;->Ka:Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    invoke-direct {p0, p3}, Lmiui/app/DateTimePickerDialog;->init(I)V

    sget p1, Lcom/miui/internal/R$string;->date_time_picker_dialog_title:I

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    return-void
.end method

.method static synthetic a(Lmiui/app/DateTimePickerDialog;)Lmiui/app/DateTimePickerDialog$OnTimeSetListener;
    .locals 0

    iget-object p0, p0, Lmiui/app/DateTimePickerDialog;->Ka:Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    return-object p0
.end method

.method static synthetic b(Lmiui/app/DateTimePickerDialog;)Lmiui/widget/DateTimePicker;
    .locals 0

    iget-object p0, p0, Lmiui/app/DateTimePickerDialog;->Ja:Lmiui/widget/DateTimePicker;

    return-object p0
.end method

.method private init(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lmiui/app/e;

    invoke-direct {v1, p0}, Lmiui/app/e;-><init>(Lmiui/app/DateTimePickerDialog;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v2, Lcom/miui/internal/R$layout;->datetime_picker_dialog:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    sget v1, Lcom/miui/internal/R$id;->dateTimePicker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/DateTimePicker;

    iput-object v1, p0, Lmiui/app/DateTimePickerDialog;->Ja:Lmiui/widget/DateTimePicker;

    iget-object v1, p0, Lmiui/app/DateTimePickerDialog;->Ja:Lmiui/widget/DateTimePicker;

    invoke-virtual {v1, p1}, Lmiui/widget/DateTimePicker;->setMinuteInterval(I)V

    sget p1, Lcom/miui/internal/R$id;->lunarModePanel:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiui/app/DateTimePickerDialog;->Ga:Landroid/view/View;

    sget p1, Lcom/miui/internal/R$id;->datePickerLunar:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiui/widget/SlidingButton;

    iput-object p1, p0, Lmiui/app/DateTimePickerDialog;->Ha:Lmiui/widget/SlidingButton;

    iget-object p1, p0, Lmiui/app/DateTimePickerDialog;->Ha:Lmiui/widget/SlidingButton;

    new-instance v0, Lmiui/app/b;

    invoke-direct {v0, p0}, Lmiui/app/b;-><init>(Lmiui/app/DateTimePickerDialog;)V

    invoke-virtual {p1, v0}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public synthetic b(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lmiui/app/DateTimePickerDialog;->Ja:Lmiui/widget/DateTimePicker;

    invoke-virtual {p0, p2}, Lmiui/widget/DateTimePicker;->setLunarMode(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setLunarMode(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/app/DateTimePickerDialog;->Ga:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setMaxDateTime(J)V
    .locals 0

    iget-object p0, p0, Lmiui/app/DateTimePickerDialog;->Ja:Lmiui/widget/DateTimePicker;

    invoke-virtual {p0, p1, p2}, Lmiui/widget/DateTimePicker;->setMaxDateTime(J)V

    return-void
.end method

.method public setMinDateTime(J)V
    .locals 0

    iget-object p0, p0, Lmiui/app/DateTimePickerDialog;->Ja:Lmiui/widget/DateTimePicker;

    invoke-virtual {p0, p1, p2}, Lmiui/widget/DateTimePicker;->setMinDateTime(J)V

    return-void
.end method

.method public switchLunarState(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/app/DateTimePickerDialog;->Ha:Lmiui/widget/SlidingButton;

    invoke-virtual {p0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method public update(J)V
    .locals 0

    iget-object p0, p0, Lmiui/app/DateTimePickerDialog;->Ja:Lmiui/widget/DateTimePicker;

    invoke-virtual {p0, p1, p2}, Lmiui/widget/DateTimePicker;->update(J)V

    return-void
.end method
