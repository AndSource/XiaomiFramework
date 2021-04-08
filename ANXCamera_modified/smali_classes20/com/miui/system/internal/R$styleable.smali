.class public final Lcom/miui/system/internal/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/system/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CTAActivitiesConfig:[I

.field public static CTAActivitiesConfig_enabled:I

.field public static CTAActivitiesConfig_message:I

.field public static CTAActivitiesConfig_optional:I

.field public static CTAActivitiesConfig_permission:I

.field public static final CTAActivityConfig:[I

.field public static CTAActivityConfig_enabled:I

.field public static CTAActivityConfig_message:I

.field public static CTAActivityConfig_name:I

.field public static CTAActivityConfig_optional:I

.field public static CTAActivityConfig_permission:I

.field public static final CloudPush:[I

.field public static CloudPush_capability:I

.field public static CloudPush_contentAuthority:I

.field public static CloudPush_pushName:I

.field public static CloudPush_pushType:I

.field public static final MiCloudStateView:[I

.field public static MiCloudStateView_cloudArrowRight:I

.field public static MiCloudStateView_cloudCountNormalTextAppearance:I

.field public static MiCloudStateView_cloudStatusBackground:I

.field public static MiCloudStateView_cloudStatusDisabledTextAppearance:I

.field public static MiCloudStateView_cloudStatusHighlightTextAppearance:I

.field public static MiCloudStateView_cloudStatusNormalTextAppearance:I

.field public static final VipPortraitView:[I

.field public static VipPortraitView_vipShowModel:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/system/internal/R$styleable;->CTAActivitiesConfig:[I

    const/4 v1, 0x3

    sput v1, Lcom/miui/system/internal/R$styleable;->CTAActivitiesConfig_enabled:I

    const/4 v2, 0x1

    sput v2, Lcom/miui/system/internal/R$styleable;->CTAActivitiesConfig_message:I

    const/4 v3, 0x0

    sput v3, Lcom/miui/system/internal/R$styleable;->CTAActivitiesConfig_optional:I

    const/4 v4, 0x2

    sput v4, Lcom/miui/system/internal/R$styleable;->CTAActivitiesConfig_permission:I

    const/4 v5, 0x5

    new-array v6, v5, [I

    fill-array-data v6, :array_1

    sput-object v6, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig:[I

    sput v0, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_enabled:I

    sput v4, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_message:I

    sput v3, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_name:I

    sput v2, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_optional:I

    sput v1, Lcom/miui/system/internal/R$styleable;->CTAActivityConfig_permission:I

    new-array v6, v0, [I

    fill-array-data v6, :array_2

    sput-object v6, Lcom/miui/system/internal/R$styleable;->CloudPush:[I

    sput v3, Lcom/miui/system/internal/R$styleable;->CloudPush_capability:I

    sput v2, Lcom/miui/system/internal/R$styleable;->CloudPush_contentAuthority:I

    sput v4, Lcom/miui/system/internal/R$styleable;->CloudPush_pushName:I

    sput v1, Lcom/miui/system/internal/R$styleable;->CloudPush_pushType:I

    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_3

    sput-object v6, Lcom/miui/system/internal/R$styleable;->MiCloudStateView:[I

    sput v5, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudArrowRight:I

    sput v3, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudCountNormalTextAppearance:I

    sput v0, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudStatusBackground:I

    sput v1, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudStatusDisabledTextAppearance:I

    sput v4, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudStatusHighlightTextAppearance:I

    sput v2, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudStatusNormalTextAppearance:I

    new-array v0, v2, [I

    const v1, 0x12010005

    aput v1, v0, v3

    sput-object v0, Lcom/miui/system/internal/R$styleable;->VipPortraitView:[I

    sput v3, Lcom/miui/system/internal/R$styleable;->VipPortraitView_vipShowModel:I

    return-void

    nop

    :array_0
    .array-data 4
        0x12010007
        0x12010008
        0x12010009
        0x1201000a
    .end array-data

    :array_1
    .array-data 4
        0x12010006
        0x12010007
        0x12010008
        0x12010009
        0x1201000a
    .end array-data

    :array_2
    .array-data 4
        0x12010000
        0x12010001
        0x12010002
        0x12010003
    .end array-data

    :array_3
    .array-data 4
        0x1201000b
        0x1201000c
        0x1201000d
        0x1201000e
        0x1201000f
        0x12010010
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
