.class public Landroid/app/assist/AssistContent;
.super Ljava/lang/Object;
.source "AssistContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/assist/AssistContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClipData:Landroid/content/ClipData;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation
.end field

.field private final mExtras:Landroid/os/Bundle;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation
.end field

.field private mIsAppProvidedIntent:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation
.end field

.field private mIsAppProvidedWebUri:Z

.field private mStructuredData:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/assist/AssistContent$1;

    invoke-direct {v0}, Landroid/app/assist/AssistContent$1;-><init>()V

    sput-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_5

    move v0, v2

    :cond_5
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getStructuredData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    return-object v0
.end method

.method public getWebUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isAppProvidedIntent()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    return v0
.end method

.method public isAppProvidedWebUri()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    return v0
.end method

.method public setClipData(Landroid/content/ClipData;)V
    .locals 0

    iput-object p1, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    return-void
.end method

.method public setDefaultIntent(Landroid/content/Intent;)V
    .locals 3

    iput-object p1, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    :cond_1
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    iput-object p1, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setStructuredData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    return-void
.end method

.method public setWebUri(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    iput-object p1, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/assist/AssistContent;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation

    iget-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method