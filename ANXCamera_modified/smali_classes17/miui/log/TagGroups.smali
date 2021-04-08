.class public final Lmiui/log/TagGroups;
.super Ljava/lang/Object;
.source "TagGroups.java"


# static fields
.field public static final TAGGROUP_BROADCAST:Ljava/lang/String; = "Broadcast"

.field public static final TagGroupBroadcast:Lmiui/log/TagGroup;

.field private static final allTagGroups:[Lmiui/log/TagGroup;

.field private static final tagGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/TagGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lmiui/log/TagGroup;

    const-string v1, "SendBroadcast"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "Broadcast"

    invoke-direct {v0, v2, v1}, Lmiui/log/TagGroup;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lmiui/log/TagGroups;->TagGroupBroadcast:Lmiui/log/TagGroup;

    const/4 v0, 0x1

    new-array v0, v0, [Lmiui/log/TagGroup;

    sget-object v1, Lmiui/log/TagGroups;->TagGroupBroadcast:Lmiui/log/TagGroup;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lmiui/log/TagGroups;->allTagGroups:[Lmiui/log/TagGroup;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    sget-object v0, Lmiui/log/TagGroups;->allTagGroups:[Lmiui/log/TagGroup;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    iget-object v5, v3, Lmiui/log/TagGroup;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lmiui/log/TagGroup;
    .locals 1

    sget-object v0, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    return-object v0
.end method

.method public static isOn(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmiui/log/TagGroup;->isOn()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public static switchOff(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/log/TagGroup;->switchOff()V

    :cond_0
    return-void
.end method

.method public static switchOn(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/log/TagGroup;->switchOn()V

    :cond_0
    return-void
.end method
