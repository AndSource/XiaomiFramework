.class public Lcom/android/framework/protobuf/GeneratedMessageLite$MergeFromVisitor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/android/framework/protobuf/GeneratedMessageLite$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MergeFromVisitor"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MergeFromVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MergeFromVisitor;

    invoke-direct {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$MergeFromVisitor;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBoolean(ZZZZ)Z
    .locals 1

    if-eqz p3, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method public visitBooleanList(Lcom/android/framework/protobuf/Internal$BooleanList;Lcom/android/framework/protobuf/Internal$BooleanList;)Lcom/android/framework/protobuf/Internal$BooleanList;
    .locals 3

    invoke-interface {p1}, Lcom/android/framework/protobuf/Internal$BooleanList;->size()I

    move-result v0

    invoke-interface {p2}, Lcom/android/framework/protobuf/Internal$BooleanList;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-interface {p1}, Lcom/android/framework/protobuf/Internal$BooleanList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/android/framework/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$BooleanList;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Lcom/android/framework/protobuf/Internal$BooleanList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public visitByteString(ZLcom/android/framework/protobuf/ByteString;ZLcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    .locals 1

    if-eqz p3, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public visitDouble(ZDZD)D
    .locals 2

    if-eqz p4, :cond_0

    move-wide v0, p5

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    return-wide v0
.end method

.method public visitDoubleList(Lcom/android/framework/protobuf/Internal$DoubleList;Lcom/android/framework/protobuf/Internal$DoubleList;)Lcom/android/framework/protobuf/Internal$DoubleList;
    .locals 3

    invoke-interface {p1}, Lcom/android/framework/protobuf/Internal$DoubleList;->size()I

    move-result v0

    invoke-interface {p2}, Lcom/android/framework/protobuf/Internal$DoubleList;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-interface {p1}, Lcom/android/framework/protobuf/Internal$DoubleList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/android/framework/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$DoubleList;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Lcom/android/framework/protobuf/Internal$DoubleList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public visitExtensions(Lcom/android/framework/protobuf/FieldSet;Lcom/android/framework/protobuf/FieldSet;)Lcom/android/framework/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/framework/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/FieldSet;->clone()Lcom/android/framework/protobuf/FieldSet;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/FieldSet;->mergeFrom(Lcom/android/framework/protobuf/FieldSet;)V

    return-object p1
.end method

.method public visitFloat(ZFZF)F
    .locals 1

    if-eqz p3, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method public visitFloatList(Lcom/android/framework/protobuf/Internal$FloatList;Lcom/android/framework/protobuf/Internal$FloatList;)Lcom/android/framework/protobuf/Internal$FloatList;
    .locals 3

    invoke-interface {p1}, Lcom/android/framework/protobuf/Internal$FloatList;->size()I

    move-result v0

    invoke-interface {p2}, Lcom/android/framework/protobuf/Internal$FloatList;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-interface {p1}, Lcom/android/framework/protobuf/Internal$FloatList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/android/framework/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$FloatList;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Lcom/android/framework/protobuf/Internal$FloatList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public visitInt(ZIZI)I
    .locals 1

    if-eqz p3, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method public visitIntList(Lcom/android/framework/protobuf/Internal$IntList;Lcom/android/framework/protobuf/Internal$IntList;)Lcom/android/framework/protobuf/Internal$IntList;
    .locals 3

    invoke-interface {p1}, Lcom/android/framework/protobuf/Internal$IntList;->size()I

    move-result v0

    invoke-interface {p2}, Lcom/android/framework/protobuf/Internal$IntList;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-interface {p1}, Lcom/android/framework/protobuf/Internal$IntList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/android/framework/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$IntList;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Lcom/android/framework/protobuf/Internal$IntList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public visitLazyMessage(ZLcom/android/framework/protobuf/LazyFieldLite;ZLcom/android/framework/protobuf/LazyFieldLite;)Lcom/android/framework/protobuf/LazyFieldLite;
    .locals 0

    invoke-virtual {p2, p4}, Lcom/android/framework/protobuf/LazyFieldLite;->merge(Lcom/android/framework/protobuf/LazyFieldLite;)V

    return-object p2
.end method

.method public visitList(Lcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TT;>;",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TT;>;)",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    invoke-interface {p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-interface {p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public visitLong(ZJZJ)J
    .locals 2

    if-eqz p4, :cond_0

    move-wide v0, p5

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    return-wide v0
.end method

.method public visitLongList(Lcom/android/framework/protobuf/Internal$LongList;Lcom/android/framework/protobuf/Internal$LongList;)Lcom/android/framework/protobuf/Internal$LongList;
    .locals 3

    invoke-interface {p1}, Lcom/android/framework/protobuf/Internal$LongList;->size()I

    move-result v0

    invoke-interface {p2}, Lcom/android/framework/protobuf/Internal$LongList;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-interface {p1}, Lcom/android/framework/protobuf/Internal$LongList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/android/framework/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$LongList;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Lcom/android/framework/protobuf/Internal$LongList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public visitMap(Lcom/android/framework/protobuf/MapFieldLite;Lcom/android/framework/protobuf/MapFieldLite;)Lcom/android/framework/protobuf/MapFieldLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/MapFieldLite<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/MapFieldLite<",
            "TK;TV;>;)",
            "Lcom/android/framework/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/MapFieldLite;->mergeFrom(Lcom/android/framework/protobuf/MapFieldLite;)V

    return-object p1
.end method

.method public visitMessage(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public visitOneofBoolean(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public visitOneofDouble(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public visitOneofFloat(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public visitOneofLazyMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/LazyFieldLite;

    move-object v1, p3

    check-cast v1, Lcom/android/framework/protobuf/LazyFieldLite;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/LazyFieldLite;->merge(Lcom/android/framework/protobuf/LazyFieldLite;)V

    return-object v0

    :cond_0
    return-object p3
.end method

.method public visitOneofLong(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    move-object v1, p3

    check-cast v1, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite$MergeFromVisitor;->visitMessage(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p3
.end method

.method public visitOneofNotSet(Z)V
    .locals 0

    return-void
.end method

.method public visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p3, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public visitUnknownFields(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .locals 1

    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    if-ne p2, v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    :goto_0
    return-object v0
.end method
