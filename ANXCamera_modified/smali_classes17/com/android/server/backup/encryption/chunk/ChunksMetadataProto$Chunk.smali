.class public final Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto$Chunk;
.super Ljava/lang/Object;
.source "ChunksMetadataProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Chunk"
.end annotation


# static fields
.field public static final HASH:J = 0x10c00000001L

.field public static final LENGTH:J = 0x10500000002L


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto$Chunk;->this$0:Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
