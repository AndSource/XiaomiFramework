.class public final enum Lmiui/yellowpage/ServicesDataEntry$Type;
.super Ljava/lang/Enum;
.source "ServicesDataEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/ServicesDataEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/yellowpage/ServicesDataEntry$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/yellowpage/ServicesDataEntry$Type;

.field public static final enum BOTTOM_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

.field public static final enum CONVENIENT_SERVICE:Lmiui/yellowpage/ServicesDataEntry$Type;

.field public static final enum DOUBLE_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

.field public static final enum NONE:Lmiui/yellowpage/ServicesDataEntry$Type;

.field public static final enum SINGLE_LINE_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

.field public static final enum TOP_SERVICE:Lmiui/yellowpage/ServicesDataEntry$Type;

.field public static final enum USEFUL_NUMBERS:Lmiui/yellowpage/ServicesDataEntry$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lmiui/yellowpage/ServicesDataEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->NONE:Lmiui/yellowpage/ServicesDataEntry$Type;

    new-instance v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    const/4 v2, 0x1

    const-string v3, "TOP_SERVICE"

    invoke-direct {v0, v3, v2}, Lmiui/yellowpage/ServicesDataEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->TOP_SERVICE:Lmiui/yellowpage/ServicesDataEntry$Type;

    new-instance v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    const/4 v3, 0x2

    const-string v4, "SINGLE_LINE_BANNER"

    invoke-direct {v0, v4, v3}, Lmiui/yellowpage/ServicesDataEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->SINGLE_LINE_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

    new-instance v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    const/4 v4, 0x3

    const-string v5, "CONVENIENT_SERVICE"

    invoke-direct {v0, v5, v4}, Lmiui/yellowpage/ServicesDataEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->CONVENIENT_SERVICE:Lmiui/yellowpage/ServicesDataEntry$Type;

    new-instance v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    const/4 v5, 0x4

    const-string v6, "DOUBLE_BANNER"

    invoke-direct {v0, v6, v5}, Lmiui/yellowpage/ServicesDataEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->DOUBLE_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

    new-instance v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    const/4 v6, 0x5

    const-string v7, "USEFUL_NUMBERS"

    invoke-direct {v0, v7, v6}, Lmiui/yellowpage/ServicesDataEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->USEFUL_NUMBERS:Lmiui/yellowpage/ServicesDataEntry$Type;

    new-instance v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    const/4 v7, 0x6

    const-string v8, "BOTTOM_BANNER"

    invoke-direct {v0, v8, v7}, Lmiui/yellowpage/ServicesDataEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->BOTTOM_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

    const/4 v0, 0x7

    new-array v0, v0, [Lmiui/yellowpage/ServicesDataEntry$Type;

    sget-object v8, Lmiui/yellowpage/ServicesDataEntry$Type;->NONE:Lmiui/yellowpage/ServicesDataEntry$Type;

    aput-object v8, v0, v1

    sget-object v1, Lmiui/yellowpage/ServicesDataEntry$Type;->TOP_SERVICE:Lmiui/yellowpage/ServicesDataEntry$Type;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/yellowpage/ServicesDataEntry$Type;->SINGLE_LINE_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/yellowpage/ServicesDataEntry$Type;->CONVENIENT_SERVICE:Lmiui/yellowpage/ServicesDataEntry$Type;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/yellowpage/ServicesDataEntry$Type;->DOUBLE_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/yellowpage/ServicesDataEntry$Type;->USEFUL_NUMBERS:Lmiui/yellowpage/ServicesDataEntry$Type;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/yellowpage/ServicesDataEntry$Type;->BOTTOM_BANNER:Lmiui/yellowpage/ServicesDataEntry$Type;

    aput-object v1, v0, v7

    sput-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->$VALUES:[Lmiui/yellowpage/ServicesDataEntry$Type;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/yellowpage/ServicesDataEntry$Type;
    .locals 1

    const-class v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/yellowpage/ServicesDataEntry$Type;

    return-object v0
.end method

.method public static values()[Lmiui/yellowpage/ServicesDataEntry$Type;
    .locals 1

    sget-object v0, Lmiui/yellowpage/ServicesDataEntry$Type;->$VALUES:[Lmiui/yellowpage/ServicesDataEntry$Type;

    invoke-virtual {v0}, [Lmiui/yellowpage/ServicesDataEntry$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/yellowpage/ServicesDataEntry$Type;

    return-object v0
.end method
