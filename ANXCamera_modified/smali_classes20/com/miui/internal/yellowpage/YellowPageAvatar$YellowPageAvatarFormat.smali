.class public final enum Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;
.super Ljava/lang/Enum;
.source "YellowPageAvatar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/yellowpage/YellowPageAvatar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "YellowPageAvatarFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum PHOTO_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum PHOTO_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum PHOTO_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum THUMBNAIL_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum THUMBNAIL_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

.field public static final enum THUMBNAIL_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    const/4 v1, 0x0

    const-string v2, "PHOTO_NUMBER"

    invoke-direct {v0, v2, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    const/4 v2, 0x1

    const-string v3, "THUMBNAIL_NUMBER"

    invoke-direct {v0, v3, v2}, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    const/4 v3, 0x2

    const-string v4, "PHOTO_YID"

    invoke-direct {v0, v4, v3}, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    const/4 v4, 0x3

    const-string v5, "THUMBNAIL_YID"

    invoke-direct {v0, v5, v4}, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    const/4 v5, 0x4

    const-string v6, "PHOTO_NAME"

    invoke-direct {v0, v6, v5}, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    const/4 v6, 0x5

    const-string v7, "THUMBNAIL_NAME"

    invoke-direct {v0, v7, v6}, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    sget-object v7, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v7, v0, v1

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->$VALUES:[Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;
    .locals 1

    const-class v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    return-object v0
.end method

.method public static values()[Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;
    .locals 1

    sget-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->$VALUES:[Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-virtual {v0}, [Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    return-object v0
.end method
