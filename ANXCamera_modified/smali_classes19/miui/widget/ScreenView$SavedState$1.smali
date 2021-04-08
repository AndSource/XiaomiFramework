.class Lmiui/widget/ScreenView$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/widget/ScreenView$SavedState;",
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
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/widget/ScreenView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/widget/ScreenView$SavedState;
    .locals 1

    new-instance p0, Lmiui/widget/ScreenView$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcel;Lmiui/widget/ga;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView$SavedState$1;->newArray(I)[Lmiui/widget/ScreenView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lmiui/widget/ScreenView$SavedState;
    .locals 0

    new-array p0, p1, [Lmiui/widget/ScreenView$SavedState;

    return-object p0
.end method
