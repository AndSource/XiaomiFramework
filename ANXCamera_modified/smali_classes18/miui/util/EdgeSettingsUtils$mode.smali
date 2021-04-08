.class final enum Lmiui/util/EdgeSettingsUtils$mode;
.super Ljava/lang/Enum;
.source "EdgeSettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/EdgeSettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/util/EdgeSettingsUtils$mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/util/EdgeSettingsUtils$mode;

.field public static final enum ABSOLUTE:Lmiui/util/EdgeSettingsUtils$mode;

.field public static final enum CONDITION:Lmiui/util/EdgeSettingsUtils$mode;

.field public static final enum CORNER:Lmiui/util/EdgeSettingsUtils$mode;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lmiui/util/EdgeSettingsUtils$mode;

    const/4 v1, 0x0

    const-string v2, "CORNER"

    invoke-direct {v0, v2, v1, v1}, Lmiui/util/EdgeSettingsUtils$mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/util/EdgeSettingsUtils$mode;->CORNER:Lmiui/util/EdgeSettingsUtils$mode;

    new-instance v0, Lmiui/util/EdgeSettingsUtils$mode;

    const/4 v2, 0x1

    const-string v3, "CONDITION"

    invoke-direct {v0, v3, v2, v2}, Lmiui/util/EdgeSettingsUtils$mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/util/EdgeSettingsUtils$mode;->CONDITION:Lmiui/util/EdgeSettingsUtils$mode;

    new-instance v0, Lmiui/util/EdgeSettingsUtils$mode;

    const/4 v3, 0x2

    const-string v4, "ABSOLUTE"

    invoke-direct {v0, v4, v3, v3}, Lmiui/util/EdgeSettingsUtils$mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmiui/util/EdgeSettingsUtils$mode;->ABSOLUTE:Lmiui/util/EdgeSettingsUtils$mode;

    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/util/EdgeSettingsUtils$mode;

    sget-object v4, Lmiui/util/EdgeSettingsUtils$mode;->CORNER:Lmiui/util/EdgeSettingsUtils$mode;

    aput-object v4, v0, v1

    sget-object v1, Lmiui/util/EdgeSettingsUtils$mode;->CONDITION:Lmiui/util/EdgeSettingsUtils$mode;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/util/EdgeSettingsUtils$mode;->ABSOLUTE:Lmiui/util/EdgeSettingsUtils$mode;

    aput-object v1, v0, v3

    sput-object v0, Lmiui/util/EdgeSettingsUtils$mode;->$VALUES:[Lmiui/util/EdgeSettingsUtils$mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lmiui/util/EdgeSettingsUtils$mode;->index:I

    return-void
.end method

.method static synthetic access$000(Lmiui/util/EdgeSettingsUtils$mode;)I
    .locals 1

    iget v0, p0, Lmiui/util/EdgeSettingsUtils$mode;->index:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/util/EdgeSettingsUtils$mode;
    .locals 1

    const-class v0, Lmiui/util/EdgeSettingsUtils$mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/util/EdgeSettingsUtils$mode;

    return-object v0
.end method

.method public static values()[Lmiui/util/EdgeSettingsUtils$mode;
    .locals 1

    sget-object v0, Lmiui/util/EdgeSettingsUtils$mode;->$VALUES:[Lmiui/util/EdgeSettingsUtils$mode;

    invoke-virtual {v0}, [Lmiui/util/EdgeSettingsUtils$mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/util/EdgeSettingsUtils$mode;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lmiui/util/EdgeSettingsUtils$mode;->index:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lmiui/util/EdgeSettingsUtils$mode;->index:I

    return-void
.end method
