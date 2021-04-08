.class public final enum Landroid/sysprop/CryptoProperties$state_values;
.super Ljava/lang/Enum;
.source "CryptoProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sysprop/CryptoProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "state_values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/sysprop/CryptoProperties$state_values;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/sysprop/CryptoProperties$state_values;

.field public static final enum ENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

.field public static final enum UNENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

.field public static final enum UNSUPPORTED:Landroid/sysprop/CryptoProperties$state_values;


# instance fields
.field private final propValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/sysprop/CryptoProperties$state_values;

    const/4 v1, 0x0

    const-string v2, "ENCRYPTED"

    const-string v3, "encrypted"

    invoke-direct {v0, v2, v1, v3}, Landroid/sysprop/CryptoProperties$state_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/CryptoProperties$state_values;->ENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

    new-instance v0, Landroid/sysprop/CryptoProperties$state_values;

    const/4 v2, 0x1

    const-string v3, "UNENCRYPTED"

    const-string/jumbo v4, "unencrypted"

    invoke-direct {v0, v3, v2, v4}, Landroid/sysprop/CryptoProperties$state_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/CryptoProperties$state_values;->UNENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

    new-instance v0, Landroid/sysprop/CryptoProperties$state_values;

    const/4 v3, 0x2

    const-string v4, "UNSUPPORTED"

    const-string/jumbo v5, "unsupported"

    invoke-direct {v0, v4, v3, v5}, Landroid/sysprop/CryptoProperties$state_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/CryptoProperties$state_values;->UNSUPPORTED:Landroid/sysprop/CryptoProperties$state_values;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/sysprop/CryptoProperties$state_values;

    sget-object v4, Landroid/sysprop/CryptoProperties$state_values;->ENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

    aput-object v4, v0, v1

    sget-object v1, Landroid/sysprop/CryptoProperties$state_values;->UNENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

    aput-object v1, v0, v2

    sget-object v1, Landroid/sysprop/CryptoProperties$state_values;->UNSUPPORTED:Landroid/sysprop/CryptoProperties$state_values;

    aput-object v1, v0, v3

    sput-object v0, Landroid/sysprop/CryptoProperties$state_values;->$VALUES:[Landroid/sysprop/CryptoProperties$state_values;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/sysprop/CryptoProperties$state_values;->propValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/sysprop/CryptoProperties$state_values;
    .locals 1

    const-class v0, Landroid/sysprop/CryptoProperties$state_values;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/sysprop/CryptoProperties$state_values;

    return-object v0
.end method

.method public static values()[Landroid/sysprop/CryptoProperties$state_values;
    .locals 1

    sget-object v0, Landroid/sysprop/CryptoProperties$state_values;->$VALUES:[Landroid/sysprop/CryptoProperties$state_values;

    invoke-virtual {v0}, [Landroid/sysprop/CryptoProperties$state_values;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/sysprop/CryptoProperties$state_values;

    return-object v0
.end method


# virtual methods
.method public getPropValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/sysprop/CryptoProperties$state_values;->propValue:Ljava/lang/String;

    return-object v0
.end method
