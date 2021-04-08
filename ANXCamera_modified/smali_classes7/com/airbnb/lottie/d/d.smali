.class public Lcom/airbnb/lottie/d/d;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static INSTANCE:Lcom/airbnb/lottie/U;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/d/c;

    invoke-direct {v0}, Lcom/airbnb/lottie/d/c;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/d/d;->INSTANCE:Lcom/airbnb/lottie/U;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/airbnb/lottie/U;)V
    .locals 0

    sput-object p0, Lcom/airbnb/lottie/d/d;->INSTANCE:Lcom/airbnb/lottie/U;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/d/d;->INSTANCE:Lcom/airbnb/lottie/U;

    invoke-interface {v0, p0, p1}, Lcom/airbnb/lottie/U;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/d/d;->INSTANCE:Lcom/airbnb/lottie/U;

    invoke-interface {v0, p0, p1}, Lcom/airbnb/lottie/U;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/d/d;->INSTANCE:Lcom/airbnb/lottie/U;

    invoke-interface {v0, p0}, Lcom/airbnb/lottie/U;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/d/d;->INSTANCE:Lcom/airbnb/lottie/U;

    invoke-interface {v0, p0, p1}, Lcom/airbnb/lottie/U;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/d/d;->INSTANCE:Lcom/airbnb/lottie/U;

    invoke-interface {v0, p0}, Lcom/airbnb/lottie/U;->warning(Ljava/lang/String;)V

    return-void
.end method
