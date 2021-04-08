.class public final enum Lorg/apache/miui/commons/lang3/JavaVersion;
.super Ljava/lang/Enum;
.source "JavaVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/miui/commons/lang3/JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_0_9:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_1:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_2:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_3:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_4:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_5:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_6:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_7:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_8:Lorg/apache/miui/commons/lang3/JavaVersion;


# instance fields
.field private name:Ljava/lang/String;

.field private value:F


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/4 v2, 0x0

    const-string v3, "JAVA_0_9"

    const-string v4, "0.9"

    invoke-direct {v0, v3, v2, v1, v4}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const/4 v3, 0x1

    const-string v4, "JAVA_1_1"

    const v5, 0x3f8ccccd    # 1.1f

    const-string v6, "1.1"

    invoke-direct {v0, v4, v3, v5, v6}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const/4 v4, 0x2

    const-string v5, "JAVA_1_2"

    const v6, 0x3f99999a    # 1.2f

    const-string v7, "1.2"

    invoke-direct {v0, v5, v4, v6, v7}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const/4 v5, 0x3

    const-string v6, "JAVA_1_3"

    const v7, 0x3fa66666    # 1.3f

    const-string v8, "1.3"

    invoke-direct {v0, v6, v5, v7, v8}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const/4 v6, 0x4

    const-string v7, "JAVA_1_4"

    const v8, 0x3fb33333    # 1.4f

    const-string v9, "1.4"

    invoke-direct {v0, v7, v6, v8, v9}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const/4 v7, 0x5

    const-string v8, "JAVA_1_5"

    const-string v9, "1.5"

    invoke-direct {v0, v8, v7, v1, v9}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const/4 v1, 0x6

    const-string v8, "JAVA_1_6"

    const v9, 0x3fcccccd    # 1.6f

    const-string v10, "1.6"

    invoke-direct {v0, v8, v1, v9, v10}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const/4 v8, 0x7

    const-string v9, "JAVA_1_7"

    const v10, 0x3fd9999a    # 1.7f

    const-string v11, "1.7"

    invoke-direct {v0, v9, v8, v10, v11}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const/16 v9, 0x8

    const-string v10, "JAVA_1_8"

    const v11, 0x3fe66666    # 1.8f

    const-string v12, "1.8"

    invoke-direct {v0, v10, v9, v11, v12}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/miui/commons/lang3/JavaVersion;

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/miui/commons/lang3/JavaVersion;

    sget-object v10, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v10, v0, v2

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v0, v3

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v0, v4

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v0, v5

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v0, v6

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v0, v7

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v0, v1

    sget-object v1, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v1, v0, v9

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/miui/commons/lang3/JavaVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/miui/commons/lang3/JavaVersion;->value:F

    iput-object p4, p0, Lorg/apache/miui/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-void
.end method

.method static get(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;
    .locals 1

    const-string v0, "0.9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_0
    const-string v0, "1.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_1
    const-string v0, "1.2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_2
    const-string v0, "1.3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_3
    const-string v0, "1.4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_4
    const-string v0, "1.5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_5
    const-string v0, "1.6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_6
    const-string v0, "1.7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_7
    const-string v0, "1.8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method static getJavaVersion(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;
    .locals 1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/JavaVersion;->get(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;
    .locals 1

    const-class v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0
.end method

.method public static values()[Lorg/apache/miui/commons/lang3/JavaVersion;
    .locals 1

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/miui/commons/lang3/JavaVersion;

    invoke-virtual {v0}, [Lorg/apache/miui/commons/lang3/JavaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0
.end method


# virtual methods
.method public atLeast(Lorg/apache/miui/commons/lang3/JavaVersion;)Z
    .locals 2

    iget v0, p0, Lorg/apache/miui/commons/lang3/JavaVersion;->value:F

    iget v1, p1, Lorg/apache/miui/commons/lang3/JavaVersion;->value:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-object v0
.end method
