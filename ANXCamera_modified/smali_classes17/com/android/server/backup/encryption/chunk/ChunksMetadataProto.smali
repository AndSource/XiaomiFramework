.class public final Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto;
.super Ljava/lang/Object;
.source "ChunksMetadataProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto$ChunksMetadata;,
        Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto$ChunkOrdering;,
        Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto$ChunkListing;,
        Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto$Chunk;
    }
.end annotation


# static fields
.field public static final AES_256_GCM:I = 0x1

.field public static final CHUNK_ORDERING_TYPE_UNSPECIFIED:I = 0x0

.field public static final EXPLICIT_STARTS:I = 0x1

.field public static final INLINE_LENGTHS:I = 0x2

.field public static final SHA_256:I = 0x1

.field public static final UNKNOWN_CHECKSUM_TYPE:I

.field public static final UNKNOWN_CIPHER_TYPE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
