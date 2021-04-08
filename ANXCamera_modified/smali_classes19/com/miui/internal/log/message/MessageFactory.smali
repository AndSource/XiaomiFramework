.class public Lcom/miui/internal/log/message/MessageFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/log/message/MessageFactory$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageFactory"

.field private static final yz:I = 0xa

.field private static zz:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/miui/internal/log/message/MessageFactory$a<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/log/message/MessageFactory;->zz:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/miui/internal/log/message/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/miui/internal/log/message/Message;",
            ">(TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/miui/internal/log/message/MessageFactory;->zz:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/log/message/MessageFactory$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/miui/internal/log/message/MessageFactory$a;->a(Lcom/miui/internal/log/message/Message;)V

    :cond_0
    return-void
.end method

.method public static obtain(Ljava/lang/Class;)Lcom/miui/internal/log/message/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/miui/internal/log/message/Message;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/miui/internal/log/message/MessageFactory;->zz:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/log/message/MessageFactory$a;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/miui/internal/log/message/MessageFactory$a;->a(Ljava/lang/Class;I)Lcom/miui/internal/log/message/MessageFactory$a;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/log/message/MessageFactory;->zz:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/miui/internal/log/message/MessageFactory$a;->obtain()Lcom/miui/internal/log/message/Message;

    move-result-object p0

    return-object p0
.end method
