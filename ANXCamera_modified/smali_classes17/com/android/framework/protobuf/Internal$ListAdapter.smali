.class public Lcom/android/framework/protobuf/Internal$ListAdapter;
.super Ljava/util/AbstractList;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/Internal$ListAdapter$Converter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final converter:Lcom/android/framework/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Internal$ListAdapter$Converter<",
            "TF;TT;>;"
        }
    .end annotation
.end field

.field private final fromList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TF;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/framework/protobuf/Internal$ListAdapter$Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TF;>;",
            "Lcom/android/framework/protobuf/Internal$ListAdapter$Converter<",
            "TF;TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/Internal$ListAdapter;->fromList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/framework/protobuf/Internal$ListAdapter;->converter:Lcom/android/framework/protobuf/Internal$ListAdapter$Converter;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/Internal$ListAdapter;->converter:Lcom/android/framework/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/android/framework/protobuf/Internal$ListAdapter;->fromList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/Internal$ListAdapter;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method