.class Lcom/ss/android/ugc/effectmanager/EffectManager$3$1;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/effectmanager/EffectManager$3;->onSuccess(Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/ugc/effectmanager/EffectManager$3;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$response:Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/effectmanager/EffectManager$3;Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3$1;->this$1:Lcom/ss/android/ugc/effectmanager/EffectManager$3;

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3$1;->val$response:Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;

    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3$1;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3$1;->this$1:Lcom/ss/android/ugc/effectmanager/EffectManager$3;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3;->val$iFetchEffectChannelListener:Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;->onFail(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3$1;->this$1:Lcom/ss/android/ugc/effectmanager/EffectManager$3;

    iget-object v0, v0, Lcom/ss/android/ugc/effectmanager/EffectManager$3;->this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3$1;->val$response:Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;

    invoke-static {v0, v1, p1}, Lcom/ss/android/ugc/effectmanager/EffectManager;->access$100(Lcom/ss/android/ugc/effectmanager/EffectManager;Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;Ljava/util/List;)Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;

    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3$1;->this$1:Lcom/ss/android/ugc/effectmanager/EffectManager$3;

    iget-object p1, p1, Lcom/ss/android/ugc/effectmanager/EffectManager$3;->val$iFetchEffectChannelListener:Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;->onSuccess(Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;)V

    :cond_0
    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3$1;->this$1:Lcom/ss/android/ugc/effectmanager/EffectManager$3;

    iget-object p1, p1, Lcom/ss/android/ugc/effectmanager/EffectManager$3;->this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

    iget-object p1, p1, Lcom/ss/android/ugc/effectmanager/EffectManager;->mCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3$1;->val$key:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3$1;->val$content:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/ss/android/ugc/effectmanager/common/listener/ICache;->save(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
