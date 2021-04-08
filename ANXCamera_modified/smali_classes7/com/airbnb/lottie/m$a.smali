.class public Lcom/airbnb/lottie/m$a;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/m$a$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static E(Ljava/lang/String;)Lcom/airbnb/lottie/m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/y;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/X;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/X;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/m;

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILcom/airbnb/lottie/aa;)Lcom/airbnb/lottie/b;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/airbnb/lottie/m$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/airbnb/lottie/m$a$a;-><init>(Lcom/airbnb/lottie/aa;Lcom/airbnb/lottie/l;)V

    invoke-static {p0, p1}, Lcom/airbnb/lottie/y;->a(Landroid/content/Context;I)Lcom/airbnb/lottie/Z;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/Z;->c(Lcom/airbnb/lottie/T;)Lcom/airbnb/lottie/Z;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/aa;)Lcom/airbnb/lottie/b;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/airbnb/lottie/m$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/airbnb/lottie/m$a$a;-><init>(Lcom/airbnb/lottie/aa;Lcom/airbnb/lottie/l;)V

    invoke-static {p0, p1}, Lcom/airbnb/lottie/y;->h(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/Z;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/Z;->c(Lcom/airbnb/lottie/T;)Lcom/airbnb/lottie/Z;

    return-object v0
.end method

.method public static a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/aa;)Lcom/airbnb/lottie/b;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/airbnb/lottie/m$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/airbnb/lottie/m$a$a;-><init>(Lcom/airbnb/lottie/aa;Lcom/airbnb/lottie/l;)V

    invoke-static {p0, v1}, Lcom/airbnb/lottie/y;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/Z;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/Z;->c(Lcom/airbnb/lottie/T;)Lcom/airbnb/lottie/Z;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/airbnb/lottie/aa;)Lcom/airbnb/lottie/b;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/airbnb/lottie/m$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/airbnb/lottie/m$a$a;-><init>(Lcom/airbnb/lottie/aa;Lcom/airbnb/lottie/l;)V

    invoke-static {p0, v1}, Lcom/airbnb/lottie/y;->b(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/Z;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/Z;->c(Lcom/airbnb/lottie/T;)Lcom/airbnb/lottie/Z;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/airbnb/lottie/aa;)Lcom/airbnb/lottie/b;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/airbnb/lottie/m$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/airbnb/lottie/m$a$a;-><init>(Lcom/airbnb/lottie/aa;Lcom/airbnb/lottie/l;)V

    invoke-static {p0, v1}, Lcom/airbnb/lottie/y;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/Z;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/Z;->c(Lcom/airbnb/lottie/T;)Lcom/airbnb/lottie/Z;

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/m;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/airbnb/lottie/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/X;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/X;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/m;

    return-object p0
.end method

.method public static a(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/y;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/X;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/X;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/m;

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;Z)Lcom/airbnb/lottie/m;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "Lottie now auto-closes input stream!"

    invoke-static {p1}, Lcom/airbnb/lottie/d/d;->warning(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/airbnb/lottie/y;->c(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/X;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/X;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/m;

    return-object p0
.end method

.method public static c(Ljava/io/InputStream;)Lcom/airbnb/lottie/m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/y;->c(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/X;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/X;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/m;

    return-object p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/m;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/airbnb/lottie/y;->i(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/X;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/X;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/m;

    return-object p0
.end method
