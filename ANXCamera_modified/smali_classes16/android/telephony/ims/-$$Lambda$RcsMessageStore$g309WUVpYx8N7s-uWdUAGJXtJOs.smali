.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsMessageStore$g309WUVpYx8N7s-uWdUAGJXtJOs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:[I

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>([ILjava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$g309WUVpYx8N7s-uWdUAGJXtJOs;->f$0:[I

    iput-object p2, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$g309WUVpYx8N7s-uWdUAGJXtJOs;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$g309WUVpYx8N7s-uWdUAGJXtJOs;->f$2:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$g309WUVpYx8N7s-uWdUAGJXtJOs;->f$0:[I

    iget-object v1, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$g309WUVpYx8N7s-uWdUAGJXtJOs;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$g309WUVpYx8N7s-uWdUAGJXtJOs;->f$2:Landroid/net/Uri;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/telephony/ims/RcsMessageStore;->lambda$createGroupThread$9([ILjava/lang/String;Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
