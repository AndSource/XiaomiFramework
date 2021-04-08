.class public abstract Landroid/net/wifi/EasyConnectStatusCallback;
.super Ljava/lang/Object;
.source "EasyConnectStatusCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/EasyConnectStatusCallback$EasyConnectFailureStatusCode;,
        Landroid/net/wifi/EasyConnectStatusCallback$EasyConnectProgressStatusCode;,
        Landroid/net/wifi/EasyConnectStatusCallback$EasyConnectSuccessStatusCode;
    }
.end annotation


# static fields
.field public static final EASY_CONNECT_EVENT_FAILURE_AUTHENTICATION:I = -0x2

.field public static final EASY_CONNECT_EVENT_FAILURE_BUSY:I = -0x5

.field public static final EASY_CONNECT_EVENT_FAILURE_CONFIGURATION:I = -0x4

.field public static final EASY_CONNECT_EVENT_FAILURE_GENERIC:I = -0x7

.field public static final EASY_CONNECT_EVENT_FAILURE_INVALID_NETWORK:I = -0x9

.field public static final EASY_CONNECT_EVENT_FAILURE_INVALID_URI:I = -0x1

.field public static final EASY_CONNECT_EVENT_FAILURE_NOT_COMPATIBLE:I = -0x3

.field public static final EASY_CONNECT_EVENT_FAILURE_NOT_SUPPORTED:I = -0x8

.field public static final EASY_CONNECT_EVENT_FAILURE_TIMEOUT:I = -0x6

.field public static final EASY_CONNECT_EVENT_PROGRESS_AUTHENTICATION_SUCCESS:I = 0x0

.field public static final EASY_CONNECT_EVENT_PROGRESS_RESPONSE_PENDING:I = 0x1

.field public static final EASY_CONNECT_EVENT_SUCCESS_CONFIGURATION_SENT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onConfiguratorSuccess(I)V
.end method

.method public abstract onEnrolleeSuccess(I)V
.end method

.method public abstract onFailure(I)V
.end method

.method public abstract onProgress(I)V
.end method
