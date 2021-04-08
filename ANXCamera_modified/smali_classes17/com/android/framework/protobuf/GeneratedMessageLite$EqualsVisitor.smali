.class Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/android/framework/protobuf/GeneratedMessageLite$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EqualsVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;

.field static final NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;

    invoke-direct {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;

    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    invoke-direct {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

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

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return p2

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitBooleanList(Lcom/android/framework/protobuf/Internal$BooleanList;Lcom/android/framework/protobuf/Internal$BooleanList;)Lcom/android/framework/protobuf/Internal$BooleanList;
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitByteString(ZLcom/android/framework/protobuf/ByteString;ZLcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    .locals 1

    if-ne p1, p3, :cond_0

    invoke-virtual {p2, p4}, Lcom/android/framework/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitDouble(ZDZD)D
    .locals 1

    if-ne p1, p4, :cond_0

    cmpl-double v0, p2, p5

    if-nez v0, :cond_0

    return-wide p2

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitDoubleList(Lcom/android/framework/protobuf/Internal$DoubleList;Lcom/android/framework/protobuf/Internal$DoubleList;)Lcom/android/framework/protobuf/Internal$DoubleList;
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
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

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitFloat(ZFZF)F
    .locals 1

    if-ne p1, p3, :cond_0

    cmpl-float v0, p2, p4

    if-nez v0, :cond_0

    return p2

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitFloatList(Lcom/android/framework/protobuf/Internal$FloatList;Lcom/android/framework/protobuf/Internal$FloatList;)Lcom/android/framework/protobuf/Internal$FloatList;
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitInt(ZIZI)I
    .locals 1

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return p2

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitIntList(Lcom/android/framework/protobuf/Internal$IntList;Lcom/android/framework/protobuf/Internal$IntList;)Lcom/android/framework/protobuf/Internal$IntList;
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitLazyMessage(ZLcom/android/framework/protobuf/LazyFieldLite;ZLcom/android/framework/protobuf/LazyFieldLite;)Lcom/android/framework/protobuf/LazyFieldLite;
    .locals 1

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    return-object p2

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2, p4}, Lcom/android/framework/protobuf/LazyFieldLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitList(Lcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;
    .locals 1
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

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitLong(ZJZJ)J
    .locals 1

    if-ne p1, p4, :cond_0

    cmp-long v0, p2, p5

    if-nez v0, :cond_0

    return-wide p2

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitLongList(Lcom/android/framework/protobuf/Internal$LongList;Lcom/android/framework/protobuf/Internal$LongList;)Lcom/android/framework/protobuf/Internal$LongList;
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitMap(Lcom/android/framework/protobuf/MapFieldLite;Lcom/android/framework/protobuf/MapFieldLite;)Lcom/android/framework/protobuf/MapFieldLite;
    .locals 1
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

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/MapFieldLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
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

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->equals(Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;Lcom/android/framework/protobuf/MessageLite;)Z

    return-object p1

    :cond_1
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofBoolean(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofDouble(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofFloat(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofLazyMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofLong(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-object v1, p3

    check-cast v1, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {v0, p0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->equals(Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;Lcom/android/framework/protobuf/MessageLite;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofNotSet(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-ne p1, p3, :cond_0

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitUnknownFields(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .locals 1

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/framework/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method
