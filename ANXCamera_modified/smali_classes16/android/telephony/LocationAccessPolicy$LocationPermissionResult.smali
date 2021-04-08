.class public final enum Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
.super Ljava/lang/Enum;
.source "LocationAccessPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/LocationAccessPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationPermissionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

.field public static final enum ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

.field public static final enum DENIED_HARD:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

.field public static final enum DENIED_SOFT:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    const/4 v1, 0x0

    const-string v2, "ALLOWED"

    invoke-direct {v0, v2, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    const/4 v2, 0x1

    const-string v3, "DENIED_SOFT"

    invoke-direct {v0, v3, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_SOFT:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    const/4 v3, 0x2

    const-string v4, "DENIED_HARD"

    invoke-direct {v0, v4, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_HARD:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    sget-object v4, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    aput-object v4, v0, v1

    sget-object v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_SOFT:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    aput-object v1, v0, v2

    sget-object v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_HARD:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    aput-object v1, v0, v3

    sput-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->$VALUES:[Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    .locals 1

    const-class v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0
.end method

.method public static values()[Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    .locals 1

    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->$VALUES:[Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    invoke-virtual {v0}, [Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0
.end method
