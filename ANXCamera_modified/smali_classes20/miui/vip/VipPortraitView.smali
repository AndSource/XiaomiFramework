.class public Lmiui/vip/VipPortraitView;
.super Landroid/widget/RelativeLayout;
.source "VipPortraitView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/vip/VipPortraitView$ClickListenerWrapper;
    }
.end annotation


# static fields
.field static final ACHIEVEMENT_COUNT:I = 0x4

.field static final BANNER:Ljava/lang/String; = "banner"

.field static final BadgeIconSize:[I

.field static final LayoutId:[I

.field static final MAX_BANNER_COUNT:I = 0x2

.field static final MODEL_COMPACT:I = 0x0

.field static final MODEL_EXPAND:I = 0x1

.field static final PREF_KEY_BANNER:Ljava/lang/String; = "banner"

.field static final PREF_NAME:Ljava/lang/String; = "portrait_view"

.field static final STATISTIC_AVATAR:Ljava/lang/String; = "portrait_avatar"

.field static final STATISTIC_BACKGROUND:Ljava/lang/String; = "portrait_background"

.field static final STATISTIC_BANNER:Ljava/lang/String; = "portrait_banner_"

.field static final STATISTIC_CUSTOM_BUTTON:Ljava/lang/String; = "portrait_custom_button"

.field static final STATISTIC_SIGN:Ljava/lang/String; = "portrait_sign"

.field static final WRAP_CONTENT:I = -0x1


# instance fields
.field public ARROW_STYLE_CARD:I

.field public ARROW_STYLE_LIST:I

.field mAccountWelcomeClick:Landroid/view/View$OnClickListener;

.field mAchievementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;"
        }
    .end annotation
.end field

.field mAchievements:Landroid/widget/LinearLayout;

.field mAction:Landroid/widget/ImageView;

.field mActionClick:Landroid/view/View$OnClickListener;

.field mActionIcon:Landroid/graphics/drawable/Drawable;

.field mArrow:Landroid/view/View;

.field mArrowCardMargin:I

.field mArrowListMargin:I

.field mArrowStyle:I

.field mAvatar:Landroid/widget/ImageView;

.field mAvatarClick:Landroid/view/View$OnClickListener;

.field mBackgroundClick:Landroid/view/View$OnClickListener;

.field mBadge:Landroid/widget/ImageView;

.field mBanner:Landroid/widget/LinearLayout;

.field mBannerGroup:Landroid/view/View;

.field mBannerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/vip/VipBanner;",
            ">;"
        }
    .end annotation
.end field

.field mCmpVipAchievement:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmiui/vip/VipAchievement;",
            ">;"
        }
    .end annotation
.end field

.field mCmpVipBanner:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmiui/vip/VipBanner;",
            ">;"
        }
    .end annotation
.end field

.field mExtAccount:Landroid/accounts/Account;

.field mFrame:Landroid/view/View;

.field mIdView:Landroid/widget/TextView;

.field private final mListener:Lcom/miui/internal/vip/VipInternalCallback;

.field mLockIcon:Landroid/graphics/drawable/Drawable;

.field mName:Landroid/widget/TextView;

.field mPref:Lcom/miui/internal/vip/utils/VipDataPref;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mServiceAvailable:Z

.field mShowBanner:Z

.field mShowModel:I

.field mSign:Landroid/widget/TextView;

.field mSignClick:Landroid/view/View$OnClickListener;

.field mSignGroup:Landroid/view/View;

.field mTitle:Landroid/widget/TextView;

.field mUserDetailClick:Landroid/view/View$OnClickListener;

.field mUserId:J

.field mUserInfo:Lmiui/vip/VipUserInfo;

.field mUserSign:Ljava/lang/String;

.field mVipLevelListClick:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/miui/system/internal/R$layout;->vip_portrait_view:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/miui/system/internal/R$layout;->vip_portrait_expand_view:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sput-object v1, Lmiui/vip/VipPortraitView;->LayoutId:[I

    new-array v0, v0, [I

    sget v1, Lcom/miui/system/internal/R$dimen;->vip_achievement_icon_size:I

    aput v1, v0, v3

    sget v1, Lcom/miui/system/internal/R$dimen;->vip_achievement_icon_size_1:I

    aput v1, v0, v4

    sput-object v0, Lmiui/vip/VipPortraitView;->BadgeIconSize:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/vip/VipPortraitView;->ARROW_STYLE_LIST:I

    const/4 v1, 0x1

    iput v1, p0, Lmiui/vip/VipPortraitView;->ARROW_STYLE_CARD:I

    iget v2, p0, Lmiui/vip/VipPortraitView;->ARROW_STYLE_LIST:I

    iput v2, p0, Lmiui/vip/VipPortraitView;->mArrowStyle:I

    iput v0, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    iput-boolean v1, p0, Lmiui/vip/VipPortraitView;->mShowBanner:Z

    new-instance v0, Lmiui/vip/VipPortraitView$1;

    invoke-direct {v0, p0}, Lmiui/vip/VipPortraitView$1;-><init>(Lmiui/vip/VipPortraitView;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mCmpVipAchievement:Ljava/util/Comparator;

    new-instance v0, Lmiui/vip/VipPortraitView$2;

    invoke-direct {v0, p0}, Lmiui/vip/VipPortraitView$2;-><init>(Lmiui/vip/VipPortraitView;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mCmpVipBanner:Ljava/util/Comparator;

    new-instance v0, Lmiui/vip/VipPortraitView$3;

    invoke-direct {v0, p0}, Lmiui/vip/VipPortraitView$3;-><init>(Lmiui/vip/VipPortraitView;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mAccountWelcomeClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    new-instance v1, Lmiui/vip/VipPortraitView$4;

    invoke-direct {v1, p0}, Lmiui/vip/VipPortraitView$4;-><init>(Lmiui/vip/VipPortraitView;)V

    const-string v2, "portrait_avatar"

    invoke-direct {v0, v2, v1}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mUserDetailClick:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mUserDetailClick:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mAvatarClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    new-instance v1, Lmiui/vip/VipPortraitView$5;

    invoke-direct {v1, p0}, Lmiui/vip/VipPortraitView$5;-><init>(Lmiui/vip/VipPortraitView;)V

    const-string v2, "portrait_background"

    invoke-direct {v0, v2, v1}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mVipLevelListClick:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mVipLevelListClick:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mBackgroundClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lmiui/vip/VipPortraitView$6;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, p0, v1}, Lmiui/vip/VipPortraitView$6;-><init>(Lmiui/vip/VipPortraitView;[I)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mListener:Lcom/miui/internal/vip/VipInternalCallback;

    new-instance v0, Lmiui/vip/VipPortraitView$7;

    invoke-direct {v0, p0}, Lmiui/vip/VipPortraitView$7;-><init>(Lmiui/vip/VipPortraitView;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/vip/VipPortraitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/vip/VipPortraitView;->ARROW_STYLE_LIST:I

    const/4 v1, 0x1

    iput v1, p0, Lmiui/vip/VipPortraitView;->ARROW_STYLE_CARD:I

    iget v2, p0, Lmiui/vip/VipPortraitView;->ARROW_STYLE_LIST:I

    iput v2, p0, Lmiui/vip/VipPortraitView;->mArrowStyle:I

    iput v0, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    iput-boolean v1, p0, Lmiui/vip/VipPortraitView;->mShowBanner:Z

    new-instance v1, Lmiui/vip/VipPortraitView$1;

    invoke-direct {v1, p0}, Lmiui/vip/VipPortraitView$1;-><init>(Lmiui/vip/VipPortraitView;)V

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mCmpVipAchievement:Ljava/util/Comparator;

    new-instance v1, Lmiui/vip/VipPortraitView$2;

    invoke-direct {v1, p0}, Lmiui/vip/VipPortraitView$2;-><init>(Lmiui/vip/VipPortraitView;)V

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mCmpVipBanner:Ljava/util/Comparator;

    new-instance v1, Lmiui/vip/VipPortraitView$3;

    invoke-direct {v1, p0}, Lmiui/vip/VipPortraitView$3;-><init>(Lmiui/vip/VipPortraitView;)V

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mAccountWelcomeClick:Landroid/view/View$OnClickListener;

    new-instance v1, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    new-instance v2, Lmiui/vip/VipPortraitView$4;

    invoke-direct {v2, p0}, Lmiui/vip/VipPortraitView$4;-><init>(Lmiui/vip/VipPortraitView;)V

    const-string v3, "portrait_avatar"

    invoke-direct {v1, v3, v2}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mUserDetailClick:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mUserDetailClick:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mAvatarClick:Landroid/view/View$OnClickListener;

    new-instance v1, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    new-instance v2, Lmiui/vip/VipPortraitView$5;

    invoke-direct {v2, p0}, Lmiui/vip/VipPortraitView$5;-><init>(Lmiui/vip/VipPortraitView;)V

    const-string v3, "portrait_background"

    invoke-direct {v1, v3, v2}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mVipLevelListClick:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mVipLevelListClick:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mBackgroundClick:Landroid/view/View$OnClickListener;

    new-instance v1, Lmiui/vip/VipPortraitView$6;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v1, p0, v2}, Lmiui/vip/VipPortraitView$6;-><init>(Lmiui/vip/VipPortraitView;[I)V

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mListener:Lcom/miui/internal/vip/VipInternalCallback;

    new-instance v1, Lmiui/vip/VipPortraitView$7;

    invoke-direct {v1, p0}, Lmiui/vip/VipPortraitView$7;-><init>(Lmiui/vip/VipPortraitView;)V

    iput-object v1, p0, Lmiui/vip/VipPortraitView;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/miui/system/internal/R$styleable;->VipPortraitView:[I

    sget v2, Lcom/miui/system/internal/R$attr;->vipShowModel:I

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$styleable;->VipPortraitView_vipShowModel:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :array_0
    .array-data 4
        0x10
        0x40
    .end array-data
.end method

.method static synthetic access$000(Lmiui/vip/VipPortraitView;Lmiui/vip/VipUserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/vip/VipPortraitView;->setVipLevel(Lmiui/vip/VipUserInfo;)V

    return-void
.end method

.method static synthetic access$100(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lmiui/vip/VipPortraitView;->isSameList(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lmiui/vip/VipPortraitView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/vip/VipPortraitView;->setAchievements(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/vip/VipPortraitView;)V
    .locals 0

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->clearVipInfo()V

    return-void
.end method

.method static synthetic access$400(Lmiui/vip/VipPortraitView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/vip/VipPortraitView;->saveBannerData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lmiui/vip/VipPortraitView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/vip/VipPortraitView;->setBanners(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lmiui/vip/VipPortraitView;)V
    .locals 0

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->setAccountData()V

    return-void
.end method

.method private static addAchievementIcon(Landroid/widget/LinearLayout;Lmiui/vip/VipAchievement;III)V
    .locals 8

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p1, Lmiui/vip/VipAchievement;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p1, Lmiui/vip/VipAchievement;->name:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p1, Lmiui/vip/VipAchievement;->url:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "addAchievementIcon, info.badgeId = %d, info.name = %s, info.url = %s"

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$layout;->vip_achievement_icon:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lmiui/vip/VipPortraitView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v3, Lcom/miui/system/internal/R$id;->vip_id_achieve_icon:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iput p3, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p3, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v5, p1, Lmiui/vip/VipAchievement;->url:Ljava/lang/String;

    iget-wide v6, p1, Lmiui/vip/VipAchievement;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6, v3}, Lcom/miui/internal/vip/utils/ImageDownloader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    sget v5, Lcom/miui/system/internal/R$id;->vip_id_achieve_name:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez p2, :cond_0

    const/16 v2, 0x8

    :cond_0
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p1, Lmiui/vip/VipAchievement;->name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    invoke-static {p0, v1, v2, p4}, Lmiui/vip/VipPortraitView;->addViewToAchievements(Landroid/widget/LinearLayout;Landroid/view/View;II)V

    return-void
.end method

.method private addAchievementIconToLinearLayout(Landroid/widget/LinearLayout;Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;I)V"
        }
    .end annotation

    iget-object v2, p0, Lmiui/vip/VipPortraitView;->mLockIcon:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getWidth()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lmiui/vip/VipPortraitView;->addAchievementIconToLinearLayout(Landroid/widget/LinearLayout;Ljava/util/List;Landroid/graphics/drawable/Drawable;III)V

    return-void
.end method

.method private static addAchievementIconToLinearLayout(Landroid/widget/LinearLayout;Ljava/util/List;Landroid/graphics/drawable/Drawable;III)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "III)V"
        }
    .end annotation

    invoke-static {p1}, Lmiui/vip/VipPortraitView;->getAchievementCount(Ljava/util/List;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez p3, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/system/internal/R$dimen;->vip_margin_4:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/system/internal/R$dimen;->vip_margin_8:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    sub-int v4, p5, v4

    mul-int v5, p4, v0

    sub-int/2addr v4, v5

    div-int v3, v4, v1

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/vip/VipAchievement;

    if-ne v4, v1, :cond_1

    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    invoke-static {p0, v5, p3, p4, v6}, Lmiui/vip/VipPortraitView;->addAchievementIcon(Landroid/widget/LinearLayout;Lmiui/vip/VipAchievement;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0, p2, p4}, Lmiui/vip/VipPortraitView;->drawAchievementLock(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private static addIconCover(Landroid/view/View;ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    sget v0, Lcom/miui/system/internal/R$id;->vip_id_achieve_cover:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private static addViewToAchievements(Landroid/widget/LinearLayout;Landroid/view/View;II)V
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private changeModel(I)V
    .locals 1

    iget v0, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->removeAllViews()V

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->initView()V

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->loadData()V

    :cond_0
    return-void
.end method

.method private clearVipInfo()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "clearVipInfo"

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/vip/VipPortraitView;->setVipLevel(Lmiui/vip/VipUserInfo;)V

    invoke-direct {p0, v0}, Lmiui/vip/VipPortraitView;->setAchievements(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lmiui/vip/VipPortraitView;->setBanners(Ljava/util/List;)V

    return-void
.end method

.method private static drawAchievementLock(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lmiui/vip/VipAchievement;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lmiui/vip/VipAchievement;

    iget-boolean v4, v4, Lmiui/vip/VipAchievement;->isOwned:Z

    if-nez v4, :cond_0

    invoke-static {v2, p2, p1}, Lmiui/vip/VipPortraitView;->addIconCover(Landroid/view/View;ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getAchievementCount(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getAchievementIconSize()I
    .locals 2

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    invoke-static {v0, v1}, Lmiui/vip/VipPortraitView;->getAchievementIconSize(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method private static getAchievementIconSize(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lmiui/vip/VipPortraitView;->BadgeIconSize:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getAchievementView(Landroid/content/Context;Ljava/util/List;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private getBannerTypeName(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getPref()Lcom/miui/internal/vip/utils/VipDataPref;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mPref:Lcom/miui/internal/vip/utils/VipDataPref;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/internal/vip/utils/VipDataPref;

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "portrait_view"

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/vip/utils/VipDataPref;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mPref:Lcom/miui/internal/vip/utils/VipDataPref;

    :cond_0
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mPref:Lcom/miui/internal/vip/utils/VipDataPref;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initBanner()V
    .locals 1

    sget v0, Lcom/miui/system/internal/R$id;->vip_id_banner_group:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mBannerGroup:Landroid/view/View;

    sget v0, Lcom/miui/system/internal/R$id;->vip_id_banner:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mBanner:Landroid/widget/LinearLayout;

    return-void
.end method

.method private initView()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "initView"

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiui/vip/VipPortraitView;->LayoutId:[I

    iget v2, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    aget v1, v1, v2

    invoke-static {v0, v1, p0}, Lmiui/vip/VipPortraitView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/miui/system/internal/R$id;->vip_id_frame:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mFrame:Landroid/view/View;

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mFrame:Landroid/view/View;

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mAvatarClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/system/internal/R$id;->vip_id_avatar:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mAvatar:Landroid/widget/ImageView;

    sget v0, Lcom/miui/system/internal/R$id;->vip_id_title:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/miui/system/internal/R$id;->vip_id_name:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mName:Landroid/widget/TextView;

    sget v0, Lcom/miui/system/internal/R$id;->vip_id_user_id:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mIdView:Landroid/widget/TextView;

    sget v0, Lcom/miui/system/internal/R$id;->vip_id_badge:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mBadge:Landroid/widget/ImageView;

    sget v0, Lcom/miui/system/internal/R$id;->vip_id_sign_group:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mSignGroup:Landroid/view/View;

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mSignGroup:Landroid/view/View;

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mSignClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/system/internal/R$id;->vip_id_sign:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mSign:Landroid/widget/TextView;

    sget v0, Lcom/miui/system/internal/R$id;->vip_id_achievements:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mAchievements:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/system/internal/R$id;->vip_id_custom_action:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mAction:Landroid/widget/ImageView;

    sget v0, Lcom/miui/system/internal/R$id;->vip_id_arrow:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mArrow:Landroid/view/View;

    iget v0, p0, Lmiui/vip/VipPortraitView;->mArrowStyle:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->setArrowStyle(I)V

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$drawable;->vip_icon_default_achievement:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mLockIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->initBanner()V

    return-void
.end method

.method private initViewAndSetData()V
    .locals 2

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mFrame:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$dimen;->vip_margin_arrow_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiui/vip/VipPortraitView;->mArrowListMargin:I

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$dimen;->vip_margin_frame_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiui/vip/VipPortraitView;->mArrowCardMargin:I

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->initView()V

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->setAccountData()V

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->loadBannerData()V

    :cond_0
    return-void
.end method

.method private static isSameList(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    return v1
.end method

.method private loadAvatarFile(Landroid/accounts/Account;Landroid/accounts/AccountManager;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "loadAvatarFile, account = %s"

    invoke-static {v3, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mAvatar:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    sget v0, Lcom/miui/system/internal/R$drawable;->vip_default_avatar:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const-string v1, "acc_avatar_url"

    invoke-virtual {p2, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "acc_avatar_file_name"

    invoke-virtual {p2, p1, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v3, v4, v0

    const-string v2, "loadAvatarFile, avatarUrl = %s, fileName = %s"

    invoke-static {v2, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/internal/vip/utils/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmiui/vip/VipPortraitView;->mAvatar:Landroid/widget/ImageView;

    invoke-static {v4, v1, v2, v5, v0}, Lcom/miui/internal/vip/utils/ImageDownloader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAvatar:Landroid/widget/ImageView;

    sget v2, Lcom/miui/system/internal/R$drawable;->vip_default_avatar:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private loadBannerData()V
    .locals 5

    iget-wide v0, p0, Lmiui/vip/VipPortraitView;->mUserId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->getPref()Lcom/miui/internal/vip/utils/VipDataPref;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiui/vip/VipPortraitView;->mUserId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/vip/utils/VipDataPref;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lmiui/vip/VipBanner;

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonArrayAsList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "VipPortraitView.loadBannerData, list = %s"

    invoke-static {v3, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/miui/internal/vip/utils/Utils;->hasData(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lmiui/vip/VipPortraitView;->setBanners(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private loadData()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "loadData"

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->setAccountData()V

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->loadBannerData()V

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mUserInfo:Lmiui/vip/VipUserInfo;

    invoke-direct {p0, v0}, Lmiui/vip/VipPortraitView;->setVipLevel(Lmiui/vip/VipUserInfo;)V

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mUserSign:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->setSignature(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mActionIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mActionClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lmiui/vip/VipPortraitView;->setCustomButton(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAchievementList:Ljava/util/List;

    invoke-direct {p0, v0}, Lmiui/vip/VipPortraitView;->setAchievements(Ljava/util/List;)V

    return-void
.end method

.method private saveBannerData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/vip/VipBanner;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/internal/vip/utils/JsonParser;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "VipPortraitView.saveBannerData, bannerList = %s, bannerJson = %s"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->getPref()Lcom/miui/internal/vip/utils/VipDataPref;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "banner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lmiui/vip/VipPortraitView;->mUserId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/vip/utils/VipDataPref;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAccountData()V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/vip/VipPortraitView;->mExtAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    :goto_0
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v6, "setAccountData, account = %s"

    invoke-static {v6, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lmiui/vip/VipPortraitView;->mName:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lmiui/vip/VipPortraitView;->mIdView:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    if-eqz v2, :cond_7

    iget-object v6, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x0

    :goto_1
    iput-wide v6, p0, Lmiui/vip/VipPortraitView;->mUserId:J

    iget-object v6, p0, Lmiui/vip/VipPortraitView;->mFrame:Landroid/view/View;

    iget-object v7, p0, Lmiui/vip/VipPortraitView;->mAvatarClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lmiui/vip/VipPortraitView;->mBackgroundClick:Landroid/view/View$OnClickListener;

    invoke-super {p0, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lmiui/vip/VipPortraitView;->mIdView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "setAccountData, data is changed"

    invoke-static {v8, v7}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lmiui/vip/VipPortraitView;->mIdView:Landroid/widget/TextView;

    iget-object v8, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v7, p0, Lmiui/vip/VipPortraitView;->mName:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "acc_user_name"

    invoke-virtual {v4, v2, v8}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v5

    const-string v10, "setAccountData, userName = %s"

    invoke-static {v10, v9}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_4
    iget-object v9, p0, Lmiui/vip/VipPortraitView;->mName:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v10, v8

    :goto_2
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    goto :goto_3

    :cond_7
    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "setAccountData, user isn\'t signed in"

    invoke-static {v7, v6}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lmiui/vip/VipPortraitView;->mName:Landroid/widget/TextView;

    sget v7, Lcom/miui/system/internal/R$string;->vip_not_login:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lmiui/vip/VipPortraitView;->mIdView:Landroid/widget/TextView;

    sget v7, Lcom/miui/system/internal/R$string;->vip_login:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lmiui/vip/VipPortraitView;->mFrame:Landroid/view/View;

    iget-object v7, p0, Lmiui/vip/VipPortraitView;->mAccountWelcomeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lmiui/vip/VipPortraitView;->mAccountWelcomeClick:Landroid/view/View$OnClickListener;

    invoke-super {p0, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->clearVipInfo()V

    :goto_3
    invoke-direct {p0, v2, v4}, Lmiui/vip/VipPortraitView;->loadAvatarFile(Landroid/accounts/Account;Landroid/accounts/AccountManager;)V

    :cond_8
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "setAccountData end, elapsed %d"

    invoke-static {v4, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setAchievements(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "setAchievements"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mAchievements:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-static {p1}, Lcom/miui/internal/vip/utils/Utils;->hasData(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    if-lez v1, :cond_0

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "setAchievements, no achievement, remove all views"

    invoke-static {v3, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lmiui/vip/VipPortraitView;->mAchievements:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    invoke-direct {p0, v0}, Lmiui/vip/VipPortraitView;->showAchievement(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmiui/vip/VipPortraitView;->mAchievementList:Ljava/util/List;

    iget-object v3, p0, Lmiui/vip/VipPortraitView;->mCmpVipAchievement:Ljava/util/Comparator;

    invoke-static {v2, p1, v3}, Lmiui/vip/VipPortraitView;->isSameList(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-nez v2, :cond_2

    if-nez v1, :cond_3

    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "setAchievements, set achievement list"

    invoke-static {v4, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAchievements:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0, v3}, Lmiui/vip/VipPortraitView;->showAchievement(Z)V

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAchievements:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->getAchievementIconSize()I

    move-result v3

    invoke-direct {p0, v0, p1, v3}, Lmiui/vip/VipPortraitView;->addAchievementIconToLinearLayout(Landroid/widget/LinearLayout;Ljava/util/List;I)V

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAchievements:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_3
    :goto_0
    iput-object p1, p0, Lmiui/vip/VipPortraitView;->mAchievementList:Ljava/util/List;

    return-void
.end method

.method private setBannerView(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/vip/VipBanner;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-le v0, p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    sub-int v2, v0, p2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/system/internal/R$layout;->vip_banner:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmiui/vip/VipPortraitView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Lmiui/vip/VipPortraitView;->mBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    if-le p2, v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    sub-int v2, p2, v0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lmiui/vip/VipPortraitView;->mBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lmiui/vip/VipPortraitView;->mBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/vip/VipBanner;

    invoke-direct {p0, v2, v3}, Lmiui/vip/VipPortraitView;->setBannerViewData(Landroid/view/View;Lmiui/vip/VipBanner;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private setBannerViewData(Landroid/view/View;Lmiui/vip/VipBanner;)V
    .locals 8

    sget v0, Lcom/miui/system/internal/R$id;->vip_id_banner_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p2, Lmiui/vip/VipBanner;->icon:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lmiui/vip/VipBanner;->icon:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/internal/vip/utils/Utils;->isStringUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lmiui/vip/VipBanner;->icon:Ljava/lang/String;

    iget-wide v3, p2, Lmiui/vip/VipBanner;->id:J

    invoke-direct {p0, v3, v4}, Lmiui/vip/VipPortraitView;->getBannerTypeName(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/miui/internal/vip/utils/ImageDownloader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/miui/system/internal/R$drawable;->vip_icon_chalice:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    sget v1, Lcom/miui/system/internal/R$id;->vip_id_banner_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p2, Lmiui/vip/VipBanner;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lcom/miui/system/internal/R$id;->vip_id_banner_info:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p2, Lmiui/vip/VipBanner;->info:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p2, Lmiui/vip/VipBanner;->info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const-string v4, "setBannerViewData, banner = %s"

    invoke-static {v4, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p2, Lmiui/vip/VipBanner;->action:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lmiui/vip/VipPortraitView$8;

    invoke-direct {v3, p0, p2}, Lmiui/vip/VipPortraitView$8;-><init>(Lmiui/vip/VipPortraitView;Lmiui/vip/VipBanner;)V

    new-instance v4, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "portrait_banner_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p2, Lmiui/vip/VipBanner;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private setBanners(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/vip/VipBanner;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mBanner:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmiui/vip/VipPortraitView;->mShowBanner:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/miui/internal/vip/utils/Utils;->hasData(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mBannerGroup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mBannerList:Ljava/util/List;

    iget-object v2, p0, Lmiui/vip/VipPortraitView;->mCmpVipBanner:Ljava/util/Comparator;

    invoke-static {v1, p1, v2}, Lmiui/vip/VipPortraitView;->isSameList(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0, p1, v0}, Lmiui/vip/VipPortraitView;->setBannerView(Ljava/util/List;I)V

    :cond_2
    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mBannerGroup:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    iput-object p1, p0, Lmiui/vip/VipPortraitView;->mBannerList:Ljava/util/List;

    return-void
.end method

.method private setVipLevel(Lmiui/vip/VipUserInfo;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "setVipLevel"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mBackgroundClick:Landroid/view/View$OnClickListener;

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mFrame:Landroid/view/View;

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mUserInfo:Lmiui/vip/VipUserInfo;

    if-eqz v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "setVipLevel, hide views of vip frame and level"

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mBadge:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget v1, p1, Lmiui/vip/VipUserInfo;->level:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mUserInfo:Lmiui/vip/VipUserInfo;

    if-eqz v1, :cond_1

    iget v1, v1, Lmiui/vip/VipUserInfo;->level:I

    iget v2, p1, Lmiui/vip/VipUserInfo;->level:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p1, Lmiui/vip/VipUserInfo;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "setVipLevel, level = %d"

    invoke-static {v3, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p1, Lmiui/vip/VipUserInfo;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "https://rs.vip.miui.com/h5/level_icons/icon_level_%d.webp"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mBadge:Landroid/widget/ImageView;

    const-string v3, "level_icon"

    invoke-static {v2, v0, v3, v1}, Lcom/miui/internal/vip/utils/ImageDownloader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_2
    :goto_0
    iput-object p1, p0, Lmiui/vip/VipPortraitView;->mUserInfo:Lmiui/vip/VipUserInfo;

    return-void
.end method

.method private showAchievement(Z)V
    .locals 2

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAchievements:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mListener:Lcom/miui/internal/vip/VipInternalCallback;

    invoke-virtual {v0, v1}, Lmiui/vip/VipService;->connect(Lmiui/vip/QueryCallback;)V

    return-void
.end method

.method public disconnect()V
    .locals 2

    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mListener:Lcom/miui/internal/vip/VipInternalCallback;

    invoke-virtual {v0, v1}, Lmiui/vip/VipService;->disconnect(Lmiui/vip/QueryCallback;)V

    return-void
.end method

.method public isShowCompactModel()Z
    .locals 1

    iget v0, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VipPortraitView.onAttachedToWindow"

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/miui/internal/vip/utils/Utils;->ACCOUNT_CHANGE_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->connect()V

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->initViewAndSetData()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VipPortraitView.onDetachedToWindow"

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mExtAccount:Landroid/accounts/Account;

    invoke-static {}, Lcom/miui/internal/vip/utils/ImageDownloader;->stop()V

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lmiui/vip/VipPortraitView;->disconnect()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->initViewAndSetData()V

    return-void
.end method

.method public setArrowStyle(I)V
    .locals 3

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mArrow:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v1, p0, Lmiui/vip/VipPortraitView;->mShowModel:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lmiui/vip/VipPortraitView;->ARROW_STYLE_CARD:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lmiui/vip/VipPortraitView;->mArrowCardMargin:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lmiui/vip/VipPortraitView;->mArrowListMargin:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    :cond_1
    iput p1, p0, Lmiui/vip/VipPortraitView;->mArrowStyle:I

    return-void
.end method

.method public setAvatarViewClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    const-string v1, "portrait_avatar"

    invoke-direct {v0, v1, p1}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mUserDetailClick:Landroid/view/View$OnClickListener;

    :goto_0
    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mAvatarClick:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mFrame:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mAvatarClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setCustomButton(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 2

    iput-object p1, p0, Lmiui/vip/VipPortraitView;->mActionIcon:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    const-string v1, "portrait_custom_button"

    invoke-direct {v0, v1, p2}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mActionClick:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAction:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mAction:Landroid/widget/ImageView;

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mActionClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    const-string v1, "portrait_background"

    invoke-direct {v0, v1, p1}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lmiui/vip/VipPortraitView;->mServiceAvailable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mVipLevelListClick:Landroid/view/View$OnClickListener;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mBackgroundClick:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mBackgroundClick:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mSignGroup:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mSign:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mSignGroup:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mSign:Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/vip/VipPortraitView;->mUserSign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mSignGroup:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lmiui/vip/VipPortraitView;->mUserSign:Ljava/lang/String;

    return-void
.end method

.method public setSignatureViewClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    new-instance v0, Lmiui/vip/VipPortraitView$ClickListenerWrapper;

    const-string v1, "portrait_sign"

    invoke-direct {v0, v1, p1}, Lmiui/vip/VipPortraitView$ClickListenerWrapper;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lmiui/vip/VipPortraitView;->mSignClick:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mSignGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/vip/VipPortraitView;->mSignClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setXiaomiAccount(Landroid/accounts/Account;)V
    .locals 0

    iput-object p1, p0, Lmiui/vip/VipPortraitView;->mExtAccount:Landroid/accounts/Account;

    invoke-direct {p0}, Lmiui/vip/VipPortraitView;->setAccountData()V

    return-void
.end method

.method public showBanner(Z)V
    .locals 1

    iput-boolean p1, p0, Lmiui/vip/VipPortraitView;->mShowBanner:Z

    iget-object v0, p0, Lmiui/vip/VipPortraitView;->mBannerList:Ljava/util/List;

    invoke-direct {p0, v0}, Lmiui/vip/VipPortraitView;->setBanners(Ljava/util/List;)V

    return-void
.end method

.method public showBottomDivider(Z)V
    .locals 2

    sget v0, Lcom/miui/system/internal/R$id;->vip_bottom_divider:I

    invoke-virtual {p0, v0}, Lmiui/vip/VipPortraitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
