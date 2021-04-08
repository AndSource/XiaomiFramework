.class public final Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto$ChunkOrdering;
.super Ljava/lang/Object;
.source "ChunksMetadataProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChunkOrdering"
.end annotation


# static fields
.field public static final CHECKSUM:J = 0x10c00000002L

.field public static final STARTS:J = 0x50500000001L


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto$ChunkOrdering;->this$0:Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
