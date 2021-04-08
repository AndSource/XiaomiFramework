.class public final synthetic Lmiui/app/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic UN:Lmiui/app/DateTimePickerDialog;


# direct methods
.method public synthetic constructor <init>(Lmiui/app/DateTimePickerDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/app/b;->UN:Lmiui/app/DateTimePickerDialog;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lmiui/app/b;->UN:Lmiui/app/DateTimePickerDialog;

    invoke-virtual {p0, p1, p2}, Lmiui/app/DateTimePickerDialog;->b(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
