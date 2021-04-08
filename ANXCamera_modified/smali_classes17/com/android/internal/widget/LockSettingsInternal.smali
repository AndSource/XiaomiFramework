.class public abstract Lcom/android/internal/widget/LockSettingsInternal;
.super Ljava/lang/Object;
.source "LockSettingsInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
.end method

.method public abstract isEscrowTokenActive(JI)Z
.end method

.method public abstract removeEscrowToken(JI)Z
.end method

.method public abstract setLockCredentialWithToken([BIJ[BII)Z
.end method

.method public abstract unlockUserWithToken(J[BI)Z
.end method
