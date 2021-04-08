.class public final Landroid/provider/Telephony$ServiceStateTable;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceStateTable"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "service-state"

.field public static final CDMA_DEFAULT_ROAMING_INDICATOR:Ljava/lang/String; = "cdma_default_roaming_indicator"

.field public static final CDMA_ERI_ICON_INDEX:Ljava/lang/String; = "cdma_eri_icon_index"

.field public static final CDMA_ERI_ICON_MODE:Ljava/lang/String; = "cdma_eri_icon_mode"

.field public static final CDMA_ROAMING_INDICATOR:Ljava/lang/String; = "cdma_roaming_indicator"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CSS_INDICATOR:Ljava/lang/String; = "css_indicator"

.field public static final DATA_OPERATOR_ALPHA_LONG:Ljava/lang/String; = "data_operator_alpha_long"

.field public static final DATA_OPERATOR_ALPHA_SHORT:Ljava/lang/String; = "data_operator_alpha_short"

.field public static final DATA_OPERATOR_NUMERIC:Ljava/lang/String; = "data_operator_numeric"

.field public static final DATA_REG_STATE:Ljava/lang/String; = "data_reg_state"

.field public static final DATA_ROAMING_TYPE:Ljava/lang/String; = "data_roaming_type"

.field public static final IS_DATA_ROAMING_FROM_REGISTRATION:Ljava/lang/String; = "is_data_roaming_from_registration"

.field public static final IS_EMERGENCY_ONLY:Ljava/lang/String; = "is_emergency_only"

.field public static final IS_MANUAL_NETWORK_SELECTION:Ljava/lang/String; = "is_manual_network_selection"

.field public static final IS_USING_CARRIER_AGGREGATION:Ljava/lang/String; = "is_using_carrier_aggregation"

.field public static final NETWORK_ID:Ljava/lang/String; = "network_id"

.field public static final OPERATOR_ALPHA_LONG_RAW:Ljava/lang/String; = "operator_alpha_long_raw"

.field public static final OPERATOR_ALPHA_SHORT_RAW:Ljava/lang/String; = "operator_alpha_short_raw"

.field public static final RIL_DATA_RADIO_TECHNOLOGY:Ljava/lang/String; = "ril_data_radio_technology"

.field public static final RIL_VOICE_RADIO_TECHNOLOGY:Ljava/lang/String; = "ril_voice_radio_technology"

.field public static final SERVICE_STATE:Ljava/lang/String; = "service_state"

.field public static final SYSTEM_ID:Ljava/lang/String; = "system_id"

.field public static final VOICE_OPERATOR_ALPHA_LONG:Ljava/lang/String; = "voice_operator_alpha_long"

.field public static final VOICE_OPERATOR_ALPHA_SHORT:Ljava/lang/String; = "voice_operator_alpha_short"

.field public static final VOICE_OPERATOR_NUMERIC:Ljava/lang/String; = "voice_operator_numeric"

.field public static final VOICE_REG_STATE:Ljava/lang/String; = "voice_reg_state"

.field public static final VOICE_ROAMING_TYPE:Ljava/lang/String; = "voice_roaming_type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://service-state/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$ServiceStateTable;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentValuesForServiceState(Landroid/telephony/ServiceState;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    const-string/jumbo v3, "service_state"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static getUriForSubscriptionId(I)Landroid/net/Uri;
    .locals 2

    sget-object v0, Landroid/provider/Telephony$ServiceStateTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getUriForSubscriptionIdAndField(ILjava/lang/String;)Landroid/net/Uri;
    .locals 2

    sget-object v0, Landroid/provider/Telephony$ServiceStateTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
