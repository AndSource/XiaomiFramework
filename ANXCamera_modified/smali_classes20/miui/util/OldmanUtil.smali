.class public Lmiui/util/OldmanUtil;
.super Ljava/lang/Object;
.source "OldmanUtil.java"


# static fields
.field public static final IS_ELDER_MODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "persist.sys.user_mode"

    invoke-static {v1, v0}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    sput-boolean v0, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
