.class Lmiui/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/DateTimePickerDialog;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lmiui/app/DateTimePickerDialog;


# direct methods
.method constructor <init>(Lmiui/app/DateTimePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/app/e;->j:Lmiui/app/DateTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lmiui/app/e;->j:Lmiui/app/DateTimePickerDialog;

    invoke-static {p1}, Lmiui/app/DateTimePickerDialog;->a(Lmiui/app/DateTimePickerDialog;)Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/app/e;->j:Lmiui/app/DateTimePickerDialog;

    invoke-static {p1}, Lmiui/app/DateTimePickerDialog;->a(Lmiui/app/DateTimePickerDialog;)Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    move-result-object p1

    iget-object p0, p0, Lmiui/app/e;->j:Lmiui/app/DateTimePickerDialog;

    invoke-static {p0}, Lmiui/app/DateTimePickerDialog;->b(Lmiui/app/DateTimePickerDialog;)Lmiui/widget/DateTimePicker;

    move-result-object p2

    invoke-virtual {p2}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lmiui/app/DateTimePickerDialog$OnTimeSetListener;->onTimeSet(Lmiui/app/DateTimePickerDialog;J)V

    :cond_0
    return-void
.end method
