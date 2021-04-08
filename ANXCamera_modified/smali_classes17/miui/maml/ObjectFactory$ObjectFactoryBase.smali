.class public abstract Lmiui/maml/ObjectFactory$ObjectFactoryBase;
.super Lmiui/maml/ObjectFactory;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ObjectFactoryBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lmiui/maml/ObjectFactory;",
        ">",
        "Lmiui/maml/ObjectFactory;"
    }
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field protected mOld:Lmiui/maml/ObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lmiui/maml/ObjectFactory;-><init>()V

    iput-object p1, p0, Lmiui/maml/ObjectFactory$ObjectFactoryBase;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/maml/ObjectFactory$ObjectFactoryBase;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOld()Lmiui/maml/ObjectFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/ObjectFactory$ObjectFactoryBase;->mOld:Lmiui/maml/ObjectFactory;

    return-object v0
.end method

.method public setOld(Lmiui/maml/ObjectFactory;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/ObjectFactory$ObjectFactoryBase;->mOld:Lmiui/maml/ObjectFactory;

    return-void
.end method
