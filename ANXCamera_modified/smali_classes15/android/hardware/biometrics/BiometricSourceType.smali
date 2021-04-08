.class public final enum Landroid/hardware/biometrics/BiometricSourceType;
.super Ljava/lang/Enum;
.source "BiometricSourceType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/biometrics/BiometricSourceType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/biometrics/BiometricSourceType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/BiometricSourceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FACE:Landroid/hardware/biometrics/BiometricSourceType;

.field public static final enum FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

.field public static final enum IRIS:Landroid/hardware/biometrics/BiometricSourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v1, 0x0

    const-string v2, "FINGERPRINT"

    invoke-direct {v0, v2, v1}, Landroid/hardware/biometrics/BiometricSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    new-instance v0, Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v2, 0x1

    const-string v3, "FACE"

    invoke-direct {v0, v3, v2}, Landroid/hardware/biometrics/BiometricSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    new-instance v0, Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v3, 0x2

    const-string v4, "IRIS"

    invoke-direct {v0, v4, v3}, Landroid/hardware/biometrics/BiometricSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v4, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    aput-object v4, v0, v1

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/hardware/biometrics/BiometricSourceType;->$VALUES:[Landroid/hardware/biometrics/BiometricSourceType;

    new-instance v0, Landroid/hardware/biometrics/BiometricSourceType$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/BiometricSourceType$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/biometrics/BiometricSourceType;
    .locals 1

    const-class v0, Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricSourceType;

    return-object v0
.end method

.method public static values()[Landroid/hardware/biometrics/BiometricSourceType;
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->$VALUES:[Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0}, [Landroid/hardware/biometrics/BiometricSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/biometrics/BiometricSourceType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricSourceType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
