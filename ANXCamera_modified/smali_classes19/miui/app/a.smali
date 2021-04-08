.class public final synthetic Lmiui/app/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic UN:Lmiui/app/DatePickerDialog;


# direct methods
.method public synthetic constructor <init>(Lmiui/app/DatePickerDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/app/a;->UN:Lmiui/app/DatePickerDialog;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lmiui/app/a;->UN:Lmiui/app/DatePickerDialog;

    invoke-virtual {p0, p1, p2}, Lmiui/app/DatePickerDialog;->a(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
