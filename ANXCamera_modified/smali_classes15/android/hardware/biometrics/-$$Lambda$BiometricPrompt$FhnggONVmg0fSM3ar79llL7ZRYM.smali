.class public final synthetic Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$FhnggONVmg0fSM3ar79llL7ZRYM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/biometrics/BiometricPrompt;

.field private final synthetic f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$FhnggONVmg0fSM3ar79llL7ZRYM;->f$0:Landroid/hardware/biometrics/BiometricPrompt;

    iput-object p2, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$FhnggONVmg0fSM3ar79llL7ZRYM;->f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$FhnggONVmg0fSM3ar79llL7ZRYM;->f$0:Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v1, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$FhnggONVmg0fSM3ar79llL7ZRYM;->f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt;->lambda$authenticateInternal$1$BiometricPrompt(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method
