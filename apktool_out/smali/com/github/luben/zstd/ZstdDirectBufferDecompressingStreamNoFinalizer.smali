.class public Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;
.super Ljava/lang/Object;
.source "ZstdDirectBufferDecompressingStreamNoFinalizer.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private closed:Z

.field private consumed:I

.field private finishedFrame:Z

.field private produced:I

.field private source:Ljava/nio/ByteBuffer;

.field private final stream:J

.field private streamEnd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 12
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->load()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "source"    # Ljava/nio/ByteBuffer;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->finishedFrame:Z

    .line 27
    iput-boolean v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->closed:Z

    .line 28
    iput-boolean v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->streamEnd:Z

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iput-object p1, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->source:Ljava/nio/ByteBuffer;

    .line 41
    invoke-static {}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->createDStream()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->stream:J

    .line 42
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->stream:J

    invoke-direct {p0, v0, v1}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->initDStream(J)J

    .line 43
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source buffer should be a direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native createDStream()J
.end method

.method private native decompressStream(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)J
.end method

.method private static native freeDStream(J)J
.end method

.method private native initDStream(J)J
.end method

.method private static native recommendedDOutSize()J
.end method

.method public static recommendedTargetBufferSize()I
    .locals 2

    .line 50
    invoke-static {}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->recommendedDOutSize()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->closed:Z

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-wide v2, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->stream:J

    invoke-static {v2, v3}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->freeDStream(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iput-boolean v1, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->closed:Z

    .line 120
    iput-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->source:Ljava/nio/ByteBuffer;

    .line 121
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v2

    iput-boolean v1, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->closed:Z

    .line 120
    iput-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->source:Ljava/nio/ByteBuffer;

    .line 121
    throw v2

    .line 123
    :cond_0
    :goto_0
    return-void
.end method

.method public hasRemaining()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->streamEnd:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->finishedFrame:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 11
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->closed:Z

    if-nez v0, :cond_6

    .line 83
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->streamEnd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 84
    return v1

    .line 87
    :cond_0
    iget-wide v3, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->stream:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    iget-object v8, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->source:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v10}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->decompressStream(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)J

    move-result-wide v2

    .line 88
    .local v2, "remaining":J
    invoke-static {v2, v3}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v0

    if-nez v0, :cond_5

    .line 92
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->source:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget v5, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->consumed:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v4, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->produced:I

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->refill(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->source:Ljava/nio/ByteBuffer;

    .line 97
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source buffer should be a direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v4, 0x1

    if-nez v0, :cond_3

    move v1, v4

    :cond_3
    iput-boolean v1, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->finishedFrame:Z

    .line 103
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->finishedFrame:Z

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->streamEnd:Z

    .line 108
    :cond_4
    iget v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->produced:I

    return v0

    .line 89
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-static {v2, v3}, Lcom/github/luben/zstd/Zstd;->getErrorName(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    .end local v2    # "remaining":J
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target buffer should be a direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected refill(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0
    .param p1, "toRefill"    # Ljava/nio/ByteBuffer;

    .line 21
    return-object p1
.end method

.method public setDict(Lcom/github/luben/zstd/ZstdDictDecompress;)Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;
    .locals 5
    .param p1, "dict"    # Lcom/github/luben/zstd/ZstdDictDecompress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Lcom/github/luben/zstd/ZstdDictDecompress;->acquireSharedLock()V

    .line 64
    :try_start_0
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->stream:J

    invoke-static {v0, v1, p1}, Lcom/github/luben/zstd/Zstd;->loadFastDictDecompress(JLcom/github/luben/zstd/ZstdDictDecompress;)I

    move-result v0

    int-to-long v0, v0

    .line 65
    .local v0, "size":J
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 69
    .end local v0    # "size":J
    invoke-virtual {p1}, Lcom/github/luben/zstd/ZstdDictDecompress;->releaseSharedLock()V

    .line 70
    nop

    .line 71
    return-object p0

    .line 66
    .restart local v0    # "size":J
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decompression error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->getErrorName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "dict":Lcom/github/luben/zstd/ZstdDictDecompress;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .end local v0    # "size":J
    .restart local p1    # "dict":Lcom/github/luben/zstd/ZstdDictDecompress;
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/github/luben/zstd/ZstdDictDecompress;->releaseSharedLock()V

    .line 70
    throw v0
.end method

.method public setDict([B)Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;
    .locals 5
    .param p1, "dict"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->stream:J

    array-length v2, p1

    invoke-static {v0, v1, p1, v2}, Lcom/github/luben/zstd/Zstd;->loadDictDecompress(J[BI)I

    move-result v0

    int-to-long v0, v0

    .line 55
    .local v0, "size":J
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    return-object p0

    .line 56
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decompression error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->getErrorName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
