.class public interface abstract Lcom/android/framework/protobuf/GeneratedMessageLite$Visitor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Visitor"
.end annotation


# virtual methods
.method public abstract visitBoolean(ZZZZ)Z
.end method

.method public abstract visitBooleanList(Lcom/android/framework/protobuf/Internal$BooleanList;Lcom/android/framework/protobuf/Internal$BooleanList;)Lcom/android/framework/protobuf/Internal$BooleanList;
.end method

.method public abstract visitByteString(ZLcom/android/framework/protobuf/ByteString;ZLcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
.end method

.method public abstract visitDouble(ZDZD)D
.end method

.method public abstract visitDoubleList(Lcom/android/framework/protobuf/Internal$DoubleList;Lcom/android/framework/protobuf/Internal$DoubleList;)Lcom/android/framework/protobuf/Internal$DoubleList;
.end method

.method public abstract visitExtensions(Lcom/android/framework/protobuf/FieldSet;Lcom/android/framework/protobuf/FieldSet;)Lcom/android/framework/protobuf/FieldSet;
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
.end method

.method public abstract visitFloat(ZFZF)F
.end method

.method public abstract visitFloatList(Lcom/android/framework/protobuf/Internal$FloatList;Lcom/android/framework/protobuf/Internal$FloatList;)Lcom/android/framework/protobuf/Internal$FloatList;
.end method

.method public abstract visitInt(ZIZI)I
.end method

.method public abstract visitIntList(Lcom/android/framework/protobuf/Internal$IntList;Lcom/android/framework/protobuf/Internal$IntList;)Lcom/android/framework/protobuf/Internal$IntList;
.end method

.method public abstract visitLazyMessage(ZLcom/android/framework/protobuf/LazyFieldLite;ZLcom/android/framework/protobuf/LazyFieldLite;)Lcom/android/framework/protobuf/LazyFieldLite;
.end method

.method public abstract visitList(Lcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;
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
.end method

.method public abstract visitLong(ZJZJ)J
.end method

.method public abstract visitLongList(Lcom/android/framework/protobuf/Internal$LongList;Lcom/android/framework/protobuf/Internal$LongList;)Lcom/android/framework/protobuf/Internal$LongList;
.end method

.method public abstract visitMap(Lcom/android/framework/protobuf/MapFieldLite;Lcom/android/framework/protobuf/MapFieldLite;)Lcom/android/framework/protobuf/MapFieldLite;
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
.end method

.method public abstract visitMessage(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(TT;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract visitOneofBoolean(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofDouble(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofFloat(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofLazyMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofLong(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofNotSet(Z)V
.end method

.method public abstract visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract visitUnknownFields(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
.end method
