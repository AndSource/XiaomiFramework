.class public final Landroid/view/textclassifier/intent/LabeledIntent;
.super Ljava/lang/Object;
.source "LabeledIntent.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/intent/LabeledIntent$TitleChooser;,
        Landroid/view/textclassifier/intent/LabeledIntent$Result;
    }
.end annotation


# static fields
.field public static final DEFAULT_REQUEST_CODE:I = 0x0

.field private static final DEFAULT_TITLE_CHOOSER:Landroid/view/textclassifier/intent/LabeledIntent$TitleChooser;

.field private static final TAG:Ljava/lang/String; = "LabeledIntent"


# instance fields
.field public final description:Ljava/lang/String;

.field public final descriptionWithAppName:Ljava/lang/String;

.field public final intent:Landroid/content/Intent;

.field public final requestCode:I

.field public final titleWithEntity:Ljava/lang/String;

.field public final titleWithoutEntity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/view/textclassifier/intent/-$$Lambda$LabeledIntent$LaL7EfxShgNu4lrdo3mv85g49Jg;->INSTANCE:Landroid/view/textclassifier/intent/-$$Lambda$LabeledIntent$LaL7EfxShgNu4lrdo3mv85g49Jg;

    sput-object v0, Landroid/view/textclassifier/intent/LabeledIntent;->DEFAULT_TITLE_CHOOSER:Landroid/view/textclassifier/intent/LabeledIntent$TitleChooser;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "titleWithEntity and titleWithoutEntity should not be both null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/view/textclassifier/intent/LabeledIntent;->titleWithoutEntity:Ljava/lang/String;

    iput-object p2, p0, Landroid/view/textclassifier/intent/LabeledIntent;->titleWithEntity:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/intent/LabeledIntent;->description:Ljava/lang/String;

    iput-object p4, p0, Landroid/view/textclassifier/intent/LabeledIntent;->descriptionWithAppName:Ljava/lang/String;

    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/view/textclassifier/intent/LabeledIntent;->intent:Landroid/content/Intent;

    iput p6, p0, Landroid/view/textclassifier/intent/LabeledIntent;->requestCode:I

    return-void
.end method

.method private getApplicationName(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 3

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getFromTextClassifierExtra(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, p1}, Landroid/view/textclassifier/ExtrasUtils;->putTextLanguagesExtra(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic lambda$static$0(Landroid/view/textclassifier/intent/LabeledIntent;Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/intent/LabeledIntent;->titleWithEntity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/intent/LabeledIntent;->titleWithEntity:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/intent/LabeledIntent;->titleWithoutEntity:Ljava/lang/String;

    return-object v0
.end method

.method private resolveDescription(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/view/textclassifier/intent/LabeledIntent;->descriptionWithAppName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/view/textclassifier/intent/LabeledIntent;->getApplicationName(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/textclassifier/intent/LabeledIntent;->descriptionWithAppName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/intent/LabeledIntent;->description:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public resolve(Landroid/content/Context;Landroid/view/textclassifier/intent/LabeledIntent$TitleChooser;Landroid/os/Bundle;)Landroid/view/textclassifier/intent/LabeledIntent$Result;
    .locals 11

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/intent/LabeledIntent;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "LabeledIntent"

    if-eqz v1, :cond_7

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_6

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Landroid/view/textclassifier/intent/LabeledIntent;->intent:Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    nop

    invoke-direct {p0, p3}, Landroid/view/textclassifier/intent/LabeledIntent;->getFromTextClassifierExtra(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.view.textclassifier.extra.FROM_TEXT_CLASSIFIER"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "android"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v9

    invoke-static {v4, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    const/4 v6, 0x1

    :cond_2
    if-nez v7, :cond_3

    const v9, 0x10804dc

    invoke-static {v8, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    :cond_3
    iget v8, p0, Landroid/view/textclassifier/intent/LabeledIntent;->requestCode:I

    invoke-static {p1, v2, v8}, Landroid/view/textclassifier/TextClassification;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    if-nez p2, :cond_4

    sget-object v9, Landroid/view/textclassifier/intent/LabeledIntent;->DEFAULT_TITLE_CHOOSER:Landroid/view/textclassifier/intent/LabeledIntent$TitleChooser;

    goto :goto_0

    :cond_4
    move-object v9, p2

    :goto_0
    move-object p2, v9

    invoke-interface {p2, p0, v1}, Landroid/view/textclassifier/intent/LabeledIntent$TitleChooser;->chooseTitle(Landroid/view/textclassifier/intent/LabeledIntent;Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "Custom titleChooser return null, fallback to the default titleChooser"

    invoke-static {v3, v10}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/view/textclassifier/intent/LabeledIntent;->DEFAULT_TITLE_CHOOSER:Landroid/view/textclassifier/intent/LabeledIntent$TitleChooser;

    invoke-interface {v3, p0, v1}, Landroid/view/textclassifier/intent/LabeledIntent$TitleChooser;->chooseTitle(Landroid/view/textclassifier/intent/LabeledIntent;Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    :cond_5
    new-instance v3, Landroid/app/RemoteAction;

    invoke-direct {p0, v1, v0}, Landroid/view/textclassifier/intent/LabeledIntent;->resolveDescription(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v7, v9, v10, v8}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3, v6}, Landroid/app/RemoteAction;->setShouldShowIcon(Z)V

    new-instance v10, Landroid/view/textclassifier/intent/LabeledIntent$Result;

    invoke-direct {v10, v2, v3}, Landroid/view/textclassifier/intent/LabeledIntent$Result;-><init>(Landroid/content/Intent;Landroid/app/RemoteAction;)V

    return-object v10

    :cond_6
    :goto_1
    const-string/jumbo v6, "packageName or className is null"

    invoke-static {v3, v6}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_7
    :goto_2
    const-string/jumbo v4, "resolveInfo or activityInfo is null"

    invoke-static {v3, v4}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
