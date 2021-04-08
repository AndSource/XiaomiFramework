.class Lcom/miui/internal/widget/ActionBarContextView$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarContextView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/internal/widget/ActionBarContextView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/internal/widget/ActionBarContextView$SavedState;
    .locals 0

    new-instance p0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/internal/widget/ActionBarContextView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/miui/internal/widget/ActionBarContextView$SavedState;
    .locals 0

    new-array p0, p1, [Lcom/miui/internal/widget/ActionBarContextView$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView$SavedState$1;->newArray(I)[Lcom/miui/internal/widget/ActionBarContextView$SavedState;

    move-result-object p0

    return-object p0
.end method
