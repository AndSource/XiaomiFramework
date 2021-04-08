.class public final Landroid/service/autofill/augmented/FillResponse;
.super Ljava/lang/Object;
.source "FillResponse.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/FillResponse$Builder;
    }
.end annotation


# instance fields
.field private final mFillWindow:Landroid/service/autofill/augmented/FillWindow;


# direct methods
.method private constructor <init>(Landroid/service/autofill/augmented/FillResponse$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/service/autofill/augmented/FillResponse$Builder;->access$000(Landroid/service/autofill/augmented/FillResponse$Builder;)Landroid/service/autofill/augmented/FillWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/augmented/FillResponse;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/autofill/augmented/FillResponse$Builder;Landroid/service/autofill/augmented/FillResponse$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/augmented/FillResponse;-><init>(Landroid/service/autofill/augmented/FillResponse$Builder;)V

    return-void
.end method


# virtual methods
.method getFillWindow()Landroid/service/autofill/augmented/FillWindow;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/augmented/FillResponse;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    return-object v0
.end method
