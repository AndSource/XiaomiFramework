.class public final Landroid/gamedriver/GameDriverProto$Blacklists;
.super Lcom/android/framework/protobuf/GeneratedMessageLite;
.source "GameDriverProto.java"

# interfaces
.implements Landroid/gamedriver/GameDriverProto$BlacklistsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gamedriver/GameDriverProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Blacklists"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gamedriver/GameDriverProto$Blacklists$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite<",
        "Landroid/gamedriver/GameDriverProto$Blacklists;",
        "Landroid/gamedriver/GameDriverProto$Blacklists$Builder;",
        ">;",
        "Landroid/gamedriver/GameDriverProto$BlacklistsOrBuilder;"
    }
.end annotation


# static fields
.field public static final BLACKLISTS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

.field private static volatile PARSER:Lcom/android/framework/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Parser<",
            "Landroid/gamedriver/GameDriverProto$Blacklists;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "Landroid/gamedriver/GameDriverProto$Blacklist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-direct {v0}, Landroid/gamedriver/GameDriverProto$Blacklists;-><init>()V

    sput-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklists;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Landroid/gamedriver/GameDriverProto$Blacklists;->emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1000(Landroid/gamedriver/GameDriverProto$Blacklists;ILandroid/gamedriver/GameDriverProto$Blacklist;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklists;->setBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/gamedriver/GameDriverProto$Blacklists;ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklists;->setBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/gamedriver/GameDriverProto$Blacklists;Landroid/gamedriver/GameDriverProto$Blacklist;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklists;->addBlacklists(Landroid/gamedriver/GameDriverProto$Blacklist;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/gamedriver/GameDriverProto$Blacklists;ILandroid/gamedriver/GameDriverProto$Blacklist;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklists;->addBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/gamedriver/GameDriverProto$Blacklists;Landroid/gamedriver/GameDriverProto$Blacklist$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklists;->addBlacklists(Landroid/gamedriver/GameDriverProto$Blacklist$Builder;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/gamedriver/GameDriverProto$Blacklists;ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklists;->addBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/gamedriver/GameDriverProto$Blacklists;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklists;->addAllBlacklists(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/gamedriver/GameDriverProto$Blacklists;)V
    .locals 0

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->clearBlacklists()V

    return-void
.end method

.method static synthetic access$1800(Landroid/gamedriver/GameDriverProto$Blacklists;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklists;->removeBlacklists(I)V

    return-void
.end method

.method static synthetic access$900()Landroid/gamedriver/GameDriverProto$Blacklists;
    .locals 1

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method private addAllBlacklists(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/gamedriver/GameDriverProto$Blacklist;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->ensureBlacklistsIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)V
    .locals 2

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->ensureBlacklistsIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-interface {v0, p1, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->ensureBlacklistsIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addBlacklists(Landroid/gamedriver/GameDriverProto$Blacklist$Builder;)V
    .locals 2

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->ensureBlacklistsIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addBlacklists(Landroid/gamedriver/GameDriverProto$Blacklist;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->ensureBlacklistsIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearBlacklists()V
    .locals 1

    invoke-static {}, Landroid/gamedriver/GameDriverProto$Blacklists;->emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureBlacklistsIsMutable()V
    .locals 1

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/gamedriver/GameDriverProto$Blacklists;
    .locals 1

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static newBuilder()Landroid/gamedriver/GameDriverProto$Blacklists$Builder;
    .locals 1

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklists;->toBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/gamedriver/GameDriverProto$Blacklists;)Landroid/gamedriver/GameDriverProto$Blacklists$Builder;
    .locals 1

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklists;->toBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;

    invoke-virtual {v0, p0}, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->mergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklists;->parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/ByteString;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/CodedInputStream;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom([B)Landroid/gamedriver/GameDriverProto$Blacklists;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[B)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parseFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklists;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0
.end method

.method public static parser()Lcom/android/framework/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/Parser<",
            "Landroid/gamedriver/GameDriverProto$Blacklists;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklists;->getParserForType()Lcom/android/framework/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeBlacklists(I)V
    .locals 1

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->ensureBlacklistsIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)V
    .locals 2

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->ensureBlacklistsIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-interface {v0, p1, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists;->ensureBlacklistsIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Landroid/gamedriver/GameDriverProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->PARSER:Lcom/android/framework/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/gamedriver/GameDriverProto$Blacklists;->PARSER:Lcom/android/framework/protobuf/Parser;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-direct {v1, v2}, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    sput-object v1, Landroid/gamedriver/GameDriverProto$Blacklists;->PARSER:Lcom/android/framework/protobuf/Parser;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->PARSER:Lcom/android/framework/protobuf/Parser;

    return-object v0

    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/CodedInputStream;

    move-object v1, p3

    check-cast v1, Lcom/android/framework/protobuf/ExtensionRegistryLite;

    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_6

    :try_start_1
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    invoke-virtual {p0, v3, v0}, Landroid/gamedriver/GameDriverProto$Blacklists;->parseUnknownField(ILcom/android/framework/protobuf/CodedInputStream;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v4}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-static {v4}, Lcom/android/framework/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v4

    iput-object v4, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    :cond_3
    iget-object v4, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-static {}, Landroid/gamedriver/GameDriverProto$Blacklist;->parser()Lcom/android/framework/protobuf/Parser;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/android/framework/protobuf/CodedInputStream;->readMessage(Lcom/android/framework/protobuf/Parser;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-interface {v4, v5}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    nop

    :cond_5
    :goto_2
    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    throw v2

    :cond_6
    nop

    :pswitch_2
    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0

    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$Visitor;

    move-object v1, p3

    check-cast v1, Landroid/gamedriver/GameDriverProto$Blacklists;

    iget-object v2, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    iget-object v3, v1, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, v2, v3}, Lcom/android/framework/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v2

    iput-object v2, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    sget-object v2, Lcom/android/framework/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    :pswitch_4
    new-instance v0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;

    invoke-direct {v0, v1}, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;-><init>(Landroid/gamedriver/GameDriverProto$1;)V

    return-object v0

    :pswitch_5
    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v1

    :pswitch_6
    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;

    return-object v0

    :pswitch_7
    new-instance v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-direct {v0}, Landroid/gamedriver/GameDriverProto$Blacklists;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getBlacklists(I)Landroid/gamedriver/GameDriverProto$Blacklist;
    .locals 1

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public getBlacklistsCount()I
    .locals 1

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getBlacklistsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/gamedriver/GameDriverProto$Blacklist;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getBlacklistsOrBuilder(I)Landroid/gamedriver/GameDriverProto$BlacklistOrBuilder;
    .locals 1

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$BlacklistOrBuilder;

    return-object v0
.end method

.method public getBlacklistsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/gamedriver/GameDriverProto$BlacklistOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/framework/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->blacklists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeMessage(ILcom/android/framework/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    return-void
.end method
