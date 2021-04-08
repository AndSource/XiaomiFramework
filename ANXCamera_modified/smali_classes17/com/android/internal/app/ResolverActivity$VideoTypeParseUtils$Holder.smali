.class Lcom/android/internal/app/ResolverActivity$VideoTypeParseUtils$Holder;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity$VideoTypeParseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/android/internal/app/ResolverActivity$VideoTypeParseUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/app/ResolverActivity$VideoTypeParseUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$VideoTypeParseUtils;-><init>(Lcom/android/internal/app/ResolverActivity$1;)V

    sput-object v0, Lcom/android/internal/app/ResolverActivity$VideoTypeParseUtils$Holder;->INSTANCE:Lcom/android/internal/app/ResolverActivity$VideoTypeParseUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3100()Lcom/android/internal/app/ResolverActivity$VideoTypeParseUtils;
    .locals 1

    sget-object v0, Lcom/android/internal/app/ResolverActivity$VideoTypeParseUtils$Holder;->INSTANCE:Lcom/android/internal/app/ResolverActivity$VideoTypeParseUtils;

    return-object v0
.end method
