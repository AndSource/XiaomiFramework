.class Lmiui/widget/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/widget/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Be:I

.field private final Ce:I

.field private final De:I

.field private final Ee:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/widget/DatePicker$SavedState$1;

    invoke-direct {v0}, Lmiui/widget/DatePicker$SavedState$1;-><init>()V

    sput-object v0, Lmiui/widget/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/widget/DatePicker$SavedState;->Be:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/widget/DatePicker$SavedState;->Ce:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/widget/DatePicker$SavedState;->De:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmiui/widget/DatePicker$SavedState;->Ee:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/widget/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIZ)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Lmiui/widget/DatePicker$SavedState;->Be:I

    iput p3, p0, Lmiui/widget/DatePicker$SavedState;->Ce:I

    iput p4, p0, Lmiui/widget/DatePicker$SavedState;->De:I

    iput-boolean p5, p0, Lmiui/widget/DatePicker$SavedState;->Ee:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIZLmiui/widget/i;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmiui/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZ)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/DatePicker$SavedState;)I
    .locals 0

    iget p0, p0, Lmiui/widget/DatePicker$SavedState;->Be:I

    return p0
.end method

.method static synthetic b(Lmiui/widget/DatePicker$SavedState;)I
    .locals 0

    iget p0, p0, Lmiui/widget/DatePicker$SavedState;->Ce:I

    return p0
.end method

.method static synthetic c(Lmiui/widget/DatePicker$SavedState;)I
    .locals 0

    iget p0, p0, Lmiui/widget/DatePicker$SavedState;->De:I

    return p0
.end method

.method static synthetic d(Lmiui/widget/DatePicker$SavedState;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/DatePicker$SavedState;->Ee:Z

    return p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lmiui/widget/DatePicker$SavedState;->Be:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmiui/widget/DatePicker$SavedState;->Ce:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmiui/widget/DatePicker$SavedState;->De:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lmiui/widget/DatePicker$SavedState;->Ee:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
