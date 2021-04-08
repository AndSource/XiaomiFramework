.class public final enum Lcom/android/internal/telephony/DctConstants$State;
.super Ljava/lang/Enum;
.source "DctConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DctConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/DctConstants$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum FAILED:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum IDLE:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum RETRYING:Lcom/android/internal/telephony/DctConstants$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    const/4 v2, 0x1

    const-string v3, "CONNECTING"

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    const/4 v3, 0x2

    const-string v4, "RETRYING"

    invoke-direct {v0, v4, v3}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    const/4 v4, 0x3

    const-string v5, "CONNECTED"

    invoke-direct {v0, v5, v4}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    const/4 v5, 0x4

    const-string v6, "DISCONNECTING"

    invoke-direct {v0, v6, v5}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    const/4 v6, 0x5

    const-string v7, "FAILED"

    invoke-direct {v0, v7, v6}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/DctConstants$State;

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->$VALUES:[Lcom/android/internal/telephony/DctConstants$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/DctConstants$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DctConstants$State;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/DctConstants$State;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->$VALUES:[Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DctConstants$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DctConstants$State;

    return-object v0
.end method
