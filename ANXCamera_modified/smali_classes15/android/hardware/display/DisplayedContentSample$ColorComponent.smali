.class public final enum Landroid/hardware/display/DisplayedContentSample$ColorComponent;
.super Ljava/lang/Enum;
.source "DisplayedContentSample.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayedContentSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorComponent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/display/DisplayedContentSample$ColorComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/display/DisplayedContentSample$ColorComponent;

.field public static final enum CHANNEL0:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

.field public static final enum CHANNEL1:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

.field public static final enum CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

.field public static final enum CHANNEL3:Landroid/hardware/display/DisplayedContentSample$ColorComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    const/4 v1, 0x0

    const-string v2, "CHANNEL0"

    invoke-direct {v0, v2, v1}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL0:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    new-instance v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    const/4 v2, 0x1

    const-string v3, "CHANNEL1"

    invoke-direct {v0, v3, v2}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL1:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    new-instance v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    const/4 v3, 0x2

    const-string v4, "CHANNEL2"

    invoke-direct {v0, v4, v3}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    new-instance v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    const/4 v4, 0x3

    const-string v5, "CHANNEL3"

    invoke-direct {v0, v5, v4}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL3:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    sget-object v5, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL0:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    aput-object v5, v0, v1

    sget-object v1, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL1:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL3:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    aput-object v1, v0, v4

    sput-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->$VALUES:[Landroid/hardware/display/DisplayedContentSample$ColorComponent;

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

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/display/DisplayedContentSample$ColorComponent;
    .locals 1

    const-class v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    return-object v0
.end method

.method public static values()[Landroid/hardware/display/DisplayedContentSample$ColorComponent;
    .locals 1

    sget-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->$VALUES:[Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    invoke-virtual {v0}, [Landroid/hardware/display/DisplayedContentSample$ColorComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    return-object v0
.end method
