.class public final Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto$ChunkListing;
.super Ljava/lang/Object;
.source "ChunksMetadataProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChunkListing"
.end annotation


# static fields
.field public static final CHUNKS:J = 0x20b00000001L

.field public static final CHUNK_ORDERING_TYPE:J = 0x10e00000005L

.field public static final CIPHER_TYPE:J = 0x10e00000002L

.field public static final DOCUMENT_ID:J = 0x10900000003L

.field public static final FINGERPRINT_MIXER_SALT:J = 0x10c00000004L


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto$ChunkListing;->this$0:Lcom/android/server/backup/encryption/chunk/ChunksMetadataProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
