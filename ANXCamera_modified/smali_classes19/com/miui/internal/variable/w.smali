.class Lcom/miui/internal/variable/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/variable/Android_Preference_Preference_class;->a(Landroid/preference/CheckBoxPreference;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic JC:Landroid/view/View;

.field final synthetic KC:Landroid/preference/CheckBoxPreference;

.field final synthetic OC:Lmiui/widget/SlidingButton;

.field final synthetic j:Lcom/miui/internal/variable/Android_Preference_Preference_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/view/View;Landroid/preference/CheckBoxPreference;Lmiui/widget/SlidingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/w;->j:Lcom/miui/internal/variable/Android_Preference_Preference_class;

    iput-object p2, p0, Lcom/miui/internal/variable/w;->JC:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/internal/variable/w;->KC:Landroid/preference/CheckBoxPreference;

    iput-object p4, p0, Lcom/miui/internal/variable/w;->OC:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object p1, p0, Lcom/miui/internal/variable/w;->JC:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/variable/w;->j:Lcom/miui/internal/variable/Android_Preference_Preference_class;

    iget-object v0, p0, Lcom/miui/internal/variable/w;->KC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->getPreferenceScreen(Landroid/preference/Preference;)Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/variable/w;->j:Lcom/miui/internal/variable/Android_Preference_Preference_class;

    iget-object v1, p0, Lcom/miui/internal/variable/w;->KC:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/miui/internal/variable/w;->JC:Landroid/view/View;

    invoke-static {v0, p1, v1, v2}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->a(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z

    iget-object p1, p0, Lcom/miui/internal/variable/w;->KC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p1

    if-eq p2, p1, :cond_1

    iget-object p0, p0, Lcom/miui/internal/variable/w;->OC:Lmiui/widget/SlidingButton;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    :cond_1
    return-void
.end method
