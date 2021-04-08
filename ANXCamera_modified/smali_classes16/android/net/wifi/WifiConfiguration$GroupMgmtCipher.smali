.class public Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupMgmtCipher"
.end annotation


# static fields
.field public static final BIP_CMAC_256:I = 0x0

.field public static final BIP_GMAC_128:I = 0x1

.field public static final BIP_GMAC_256:I = 0x2

.field private static final strings:[Ljava/lang/String;

.field private static final varName:Ljava/lang/String; = "groupMgmt"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "BIP_CMAC_256"

    const-string v1, "BIP_GMAC_128"

    const-string v2, "BIP_GMAC_256"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;->strings:[Ljava/lang/String;

    return-object v0
.end method
