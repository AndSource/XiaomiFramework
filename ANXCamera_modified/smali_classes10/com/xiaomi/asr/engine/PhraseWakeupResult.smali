.class public Lcom/xiaomi/asr/engine/PhraseWakeupResult;
.super Ljava/lang/Object;
.source "PhraseWakeupResult.java"


# instance fields
.field private isAec:Z

.field private isWakeup:Z

.field private mScore:F

.field private mWakeupEndTime:J

.field private mWakeupStartTime:J

.field private mWakeupWord:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScore()F
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mScore:F

    return p0
.end method

.method public getWakeupEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mWakeupEndTime:J

    return-wide v0
.end method

.method public getWakeupStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mWakeupStartTime:J

    return-wide v0
.end method

.method public getWakeupWord()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mWakeupWord:Ljava/lang/String;

    return-object p0
.end method

.method public isAec()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->isAec:Z

    return p0
.end method

.method public isWakeup()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->isWakeup:Z

    return p0
.end method

.method public setAec(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->isAec:Z

    return-void
.end method

.method public setScore(F)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mScore:F

    return-void
.end method

.method public setWakeup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->isWakeup:Z

    return-void
.end method

.method public setWakeupEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mWakeupEndTime:J

    return-void
.end method

.method public setWakeupStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mWakeupStartTime:J

    return-void
.end method

.method public setWakeupWord(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->mWakeupWord:Ljava/lang/String;

    return-void
.end method
