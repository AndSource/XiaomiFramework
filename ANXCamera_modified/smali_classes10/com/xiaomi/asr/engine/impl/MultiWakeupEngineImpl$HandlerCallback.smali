.class Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;
.super Ljava/lang/Object;
.source "MultiWakeupEngineImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;


# direct methods
.method constructor <init>(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    const-string v1, "WakeupEngineImpl"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start msg.what:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_10

    const/4 v5, 0x2

    if-eq v0, v5, :cond_f

    const/4 v6, 0x3

    if-eq v0, v6, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->stopRecord()V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0, v4}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$402(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->stopRecord()V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0, v4}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$402(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;->wakeupDestroy()I

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0, v4}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$202(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onRelease()V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "data"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iget v6, p1, Landroid/os/Message;->arg1:I

    div-int/lit8 v7, v6, 0x2

    new-array v8, v7, [B

    move v9, v4

    move v10, v9

    :goto_0
    if-ge v9, v6, :cond_6

    aget-byte v11, v0, v9

    aput-byte v11, v8, v10

    add-int/lit8 v11, v10, 0x1

    add-int/lit8 v12, v9, 0x1

    aget-byte v12, v0, v12

    aput-byte v12, v8, v11

    add-int/lit8 v9, v9, 0x4

    add-int/2addr v10, v5

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->writeBuffer([B)V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->writeFile([B)V

    :cond_7
    new-instance v0, Lcom/xiaomi/asr/engine/jni/WakeupInfo;

    invoke-direct {v0}, Lcom/xiaomi/asr/engine/jni/WakeupInfo;-><init>()V

    iget-object v6, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;

    move-result-object v6

    invoke-virtual {v6, v8, v7, v4, v0}, Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;->wakeupFeedData([BIILcom/xiaomi/asr/engine/jni/WakeupInfo;)Lcom/xiaomi/asr/engine/jni/WakeupInfo;

    iget v6, v0, Lcom/xiaomi/asr/engine/jni/WakeupInfo;->wakeup:I

    iget-object v7, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v7}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wakeup feed return:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-ne v6, v3, :cond_9

    const-string v7, "Voice wakeup: r == FEED_RESULT_DETECTED_LEVEL_ONE"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v7, v4}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$902(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    iget-object v7, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v7}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->readBuffer()[B

    move-result-object v9

    invoke-static {v7, v9}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1002(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;[B)[B

    iget-object v7, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v7}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->reset()V

    iget-object v7, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v7, v3}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1102(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    :cond_9
    if-ne v6, v5, :cond_a

    const-string v5, "Voice wakeup: r == FEED_RESULT_DETECTED_END"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v5, v3}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$902(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    iget-object v5, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v5

    if-eqz v5, :cond_a

    new-instance v5, Lcom/xiaomi/asr/engine/PhraseWakeupResult;

    invoke-direct {v5}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;-><init>()V

    invoke-virtual {v5, v3}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setWakeup(Z)V

    iget-object v0, v0, Lcom/xiaomi/asr/engine/jni/WakeupInfo;->text:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setWakeupWord(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setScore(F)V

    invoke-virtual {v5, v4}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setAec(Z)V

    const-string v0, "Voice wakeup has been successful"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/xiaomi/asr/engine/WVPListener;->onPhraseSpotted(Lcom/xiaomi/asr/engine/PhraseWakeupResult;)V

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1100(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1200(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->writeBuffer([B)V

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1200(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;

    invoke-direct {v0}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;-><init>()V

    invoke-virtual {v0, v4}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setWakeup(Z)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setWakeupWord(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/xiaomi/asr/engine/WVPListener;->onPhraseSpotted(Lcom/xiaomi/asr/engine/PhraseWakeupResult;)V

    :cond_c
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;->wakeupReset()I

    :cond_d
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1200(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->readBuffer()[B

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)[B

    move-result-object v2

    array-length v2, v2

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    iget-object v3, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)[B

    move-result-object v3

    iget-object v5, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)[B

    move-result-object v3

    array-length v3, v3

    array-length v5, v0

    invoke-static {v0, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/xiaomi/asr/engine/WVPListener;->onAudioData([B)V

    :cond_e
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1200(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->reset()V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1002(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;[B)[B

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0, v4}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1102(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    goto :goto_1

    :cond_f
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->startRecord()V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0, v3}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$402(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;->wakeupReset()I

    goto :goto_1

    :cond_10
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/asr/engine/jni/MultiWakeupEngineInterface;->wakeupInit(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0, v3}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$202(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    :cond_11
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "init failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/xiaomi/asr/engine/WVPListener;->onInit(Z)V

    :cond_13
    :goto_1
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result p0

    if-eqz p0, :cond_14

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end msg.what:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return v4
.end method
