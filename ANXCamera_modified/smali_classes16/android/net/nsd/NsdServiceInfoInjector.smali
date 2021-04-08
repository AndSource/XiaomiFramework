.class public Landroid/net/nsd/NsdServiceInfoInjector;
.super Ljava/lang/Object;
.source "NsdServiceInfoInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NsdServiceInfo"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTxtRecord(I[BLandroid/net/nsd/NsdServiceInfo;)V
    .locals 11

    const/4 v0, 0x2

    const-string v1, "NsdServiceInfo"

    if-ge p0, v0, :cond_0

    const-string/jumbo v0, "txtRecord < 2"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v0, "txtRecord is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    array-length v2, p1

    if-eq v2, p0, :cond_2

    const-string/jumbo v2, "txtRecord.length != txtLen"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_5

    aget-byte v3, p1, v2

    add-int/lit8 v4, v2, 0x1

    sub-int v5, p0, v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v3, v5, :cond_3

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v0, v6

    const-string/jumbo v5, "invalid length: %d"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-array v5, v3, [B

    :try_start_0
    invoke-static {p1, v4, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([B)V

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    if-ne v10, v0, :cond_4

    aget-object v6, v9, v6

    aget-object v7, v9, v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p2, v6, v10}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;[B)V

    :cond_4
    add-int v2, v4, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method
