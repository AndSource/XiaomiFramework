.class public final Landroid/gamedriver/GameDriverProto$Blacklist;
.super Lcom/android/framework/protobuf/GeneratedMessageLite;
.source "GameDriverProto.java"

# interfaces
.implements Landroid/gamedriver/GameDriverProto$BlacklistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gamedriver/GameDriverProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Blacklist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gamedriver/GameDriverProto$Blacklist$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite<",
        "Landroid/gamedriver/GameDriverProto$Blacklist;",
        "Landroid/gamedriver/GameDriverProto$Blacklist$Builder;",
        ">;",
        "Landroid/gamedriver/GameDriverProto$BlacklistOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

.field public static final PACKAGE_NAMES_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/framework/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Parser<",
            "Landroid/gamedriver/GameDriverProto$Blacklist;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_CODE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private versionCode_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-direct {v0}, Landroid/gamedriver/GameDriverProto$Blacklist;-><init>()V

    sput-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklist;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->versionCode_:J

    invoke-static {}, Lcom/android/framework/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Landroid/gamedriver/GameDriverProto$Blacklist;
    .locals 1

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method static synthetic access$100(Landroid/gamedriver/GameDriverProto$Blacklist;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklist;->setVersionCode(J)V

    return-void
.end method

.method static synthetic access$200(Landroid/gamedriver/GameDriverProto$Blacklist;)V
    .locals 0

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->clearVersionCode()V

    return-void
.end method

.method static synthetic access$300(Landroid/gamedriver/GameDriverProto$Blacklist;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklist;->setPackageNames(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/gamedriver/GameDriverProto$Blacklist;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklist;->addPackageNames(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/gamedriver/GameDriverProto$Blacklist;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklist;->addAllPackageNames(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$600(Landroid/gamedriver/GameDriverProto$Blacklist;)V
    .locals 0

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->clearPackageNames()V

    return-void
.end method

.method static synthetic access$700(Landroid/gamedriver/GameDriverProto$Blacklist;Lcom/android/framework/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklist;->addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)V

    return-void
.end method

.method private addAllPackageNames(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->ensurePackageNamesIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addPackageNames(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->ensurePackageNamesIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->ensurePackageNamesIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearPackageNames()V
    .locals 1

    invoke-static {}, Lcom/android/framework/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearVersionCode()V
    .locals 2

    iget v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->versionCode_:J

    return-void
.end method

.method private ensurePackageNamesIsMutable()V
    .locals 1

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/gamedriver/GameDriverProto$Blacklist;
    .locals 1

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static newBuilder()Landroid/gamedriver/GameDriverProto$Blacklist$Builder;
    .locals 1

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklist;->toBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/gamedriver/GameDriverProto$Blacklist;)Landroid/gamedriver/GameDriverProto$Blacklist$Builder;
    .locals 1

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklist;->toBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;

    invoke-virtual {v0, p0}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->mergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0, p1}, Landroid/gamedriver/GameDriverProto$Blacklist;->parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/ByteString;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/CodedInputStream;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom([B)Landroid/gamedriver/GameDriverProto$Blacklist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[B)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parseFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/gamedriver/GameDriverProto$Blacklist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0
.end method

.method public static parser()Lcom/android/framework/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/Parser<",
            "Landroid/gamedriver/GameDriverProto$Blacklist;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklist;->getParserForType()Lcom/android/framework/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPackageNames(ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->ensurePackageNamesIsMutable()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setVersionCode(J)V
    .locals 1

    iget v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    iput-wide p1, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->versionCode_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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
    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->PARSER:Lcom/android/framework/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/gamedriver/GameDriverProto$Blacklist;->PARSER:Lcom/android/framework/protobuf/Parser;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-direct {v1, v2}, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    sput-object v1, Landroid/gamedriver/GameDriverProto$Blacklist;->PARSER:Lcom/android/framework/protobuf/Parser;

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
    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->PARSER:Lcom/android/framework/protobuf/Parser;

    return-object v0

    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/CodedInputStream;

    move-object v1, p3

    check-cast v1, Lcom/android/framework/protobuf/ExtensionRegistryLite;

    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_7

    :try_start_1
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_5

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    const/16 v4, 0x12

    if-eq v3, v4, :cond_2

    invoke-virtual {p0, v3, v0}, Landroid/gamedriver/GameDriverProto$Blacklist;->parseUnknownField(ILcom/android/framework/protobuf/CodedInputStream;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v5}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-static {v5}, Lcom/android/framework/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v5

    iput-object v5, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    :cond_3
    iget-object v5, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v5, v4}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget v4, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->versionCode_:J
    :try_end_1
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    nop

    :cond_6
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

    :cond_7
    nop

    :pswitch_2
    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0

    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$Visitor;

    move-object v8, p3

    check-cast v8, Landroid/gamedriver/GameDriverProto$Blacklist;

    nop

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->hasVersionCode()Z

    move-result v2

    iget-wide v3, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->versionCode_:J

    invoke-virtual {v8}, Landroid/gamedriver/GameDriverProto$Blacklist;->hasVersionCode()Z

    move-result v5

    iget-wide v6, v8, Landroid/gamedriver/GameDriverProto$Blacklist;->versionCode_:J

    move-object v1, v0

    invoke-interface/range {v1 .. v7}, Lcom/android/framework/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->versionCode_:J

    iget-object v1, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    iget-object v2, v8, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, v1, v2}, Lcom/android/framework/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    sget-object v1, Lcom/android/framework/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v1, :cond_8

    iget v1, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    iget v2, v8, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    :cond_8
    return-object p0

    :pswitch_4
    new-instance v0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;

    invoke-direct {v0, v1}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;-><init>(Landroid/gamedriver/GameDriverProto$1;)V

    return-object v0

    :pswitch_5
    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v1

    :pswitch_6
    sget-object v0, Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;

    return-object v0

    :pswitch_7
    new-instance v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-direct {v0}, Landroid/gamedriver/GameDriverProto$Blacklist;-><init>()V

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

.method public getPackageNames(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNamesBytes(I)Lcom/android/framework/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNamesCount()I
    .locals 1

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getPackageNamesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-wide v3, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->versionCode_:J

    invoke-static {v2, v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v4}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v4, v3}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklist;->getPackageNamesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    iget-object v1, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->memoizedSerializedSize:I

    return v0
.end method

.method public getVersionCode()J
    .locals 2

    iget-wide v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->versionCode_:J

    return-wide v0
.end method

.method public hasVersionCode()Z
    .locals 2

    iget v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-wide v2, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->versionCode_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    return-void
.end method
