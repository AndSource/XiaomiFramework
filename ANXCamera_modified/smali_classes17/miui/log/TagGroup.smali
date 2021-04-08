.class public final Lmiui/log/TagGroup;
.super Ljava/lang/Object;
.source "TagGroup.java"

# interfaces
.implements Lmiui/log/ILogTag;


# instance fields
.field private final androidTags:[Ljava/lang/String;

.field private isGroupOn:Z

.field private final miuiTags:[Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field private onNumber:I


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/log/TagGroup;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/log/TagGroup;->name:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array v1, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    if-nez p3, :cond_1

    new-array v1, v0, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    iput-object v1, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    iput-boolean v0, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    iput v0, p0, Lmiui/log/TagGroup;->onNumber:I

    return-void
.end method


# virtual methods
.method public isOn()Z
    .locals 1

    iget-boolean v0, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    return v0
.end method

.method public declared-synchronized switchOff()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/log/TagGroup;->onNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/log/TagGroup;->onNumber:I

    const/4 v0, 0x0

    iget v1, p0, Lmiui/log/TagGroup;->onNumber:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lmiui/log/TagGroup;->onNumber:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    iput-boolean v2, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    invoke-static {v5}, Lmiui/log/MiuiTags;->switchOff(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    invoke-static {v4}, Lmiui/log/AndroidTags;->switchOff(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized switchOn()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/log/TagGroup;->onNumber:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/log/TagGroup;->onNumber:I

    const/4 v0, 0x0

    iget v2, p0, Lmiui/log/TagGroup;->onNumber:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lmiui/log/TagGroup;->onNumber:I

    if-ne v2, v1, :cond_1

    iput-boolean v1, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-static {v5}, Lmiui/log/AndroidTags;->switchOn(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-static {v4}, Lmiui/log/MiuiTags;->switchOn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
