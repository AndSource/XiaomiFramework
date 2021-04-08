.class Landroid/telephony/mbms/InternalGroupCallSessionCallback$4;
.super Ljava/lang/Object;
.source "InternalGroupCallSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onMiddlewareReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalGroupCallSessionCallback;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalGroupCallSessionCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback$4;->this$0:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback$4;->this$0:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->access$000(Landroid/telephony/mbms/InternalGroupCallSessionCallback;)Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/mbms/MbmsGroupCallSessionCallback;->onMiddlewareReady()V

    return-void
.end method
