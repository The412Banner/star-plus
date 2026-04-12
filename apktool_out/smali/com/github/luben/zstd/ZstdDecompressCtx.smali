.class public Lcom/github/luben/zstd/ZstdDecompressCtx;
.super Lcom/github/luben/zstd/AutoCloseBase;
.source "ZstdDecompressCtx.java"


# instance fields
.field private decompression_dict:Lcom/github/luben/zstd/ZstdDictDecompress;

.field private nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 12
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->load()V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 26
    invoke-direct {p0}, Lcom/github/luben/zstd/AutoCloseBase;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    .line 16
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompression_dict:Lcom/github/luben/zstd/ZstdDictDecompress;

    .line 27
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->init()V

    .line 28
    iget-wide v2, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->storeFence()V

    .line 32
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ZSTD_createDeCompressCtx failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native decompressByteArray0([BII[BII)J
.end method

.method private native decompressDirectByteBuffer0(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)J
.end method

.method private native decompressDirectByteBufferStream0(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)J
.end method

.method private ensureOpen()V
    .locals 4

    .line 101
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 104
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decompression context is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native free()V
.end method

.method private native init()V
.end method

.method private native loadDDict0([B)J
.end method

.method private native loadDDictFast0(Lcom/github/luben/zstd/ZstdDictDecompress;)J
.end method

.method private native reset0()V
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .line 9
    invoke-super {p0}, Lcom/github/luben/zstd/AutoCloseBase;->close()V

    return-void
.end method

.method public decompress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "dstBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "srcBuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    .line 238
    nop

    .line 239
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 240
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v3, v0, v1

    .line 242
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 243
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v6, v0, v1

    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressDirectByteBuffer(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 244
    .local v0, "size":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 245
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 246
    return v0
.end method

.method public decompress([B[B)I
    .locals 7
    .param p1, "dst"    # [B
    .param p2, "src"    # [B

    .line 259
    array-length v3, p1

    const/4 v5, 0x0

    array-length v6, p2

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressByteArray([BII[BII)I

    move-result v0

    return v0
.end method

.method public decompress(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "srcBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "originalSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    .line 250
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 251
    .local v7, "dstBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v7

    move v3, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressDirectByteBuffer(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 252
    .local v0, "size":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    return-object v7
.end method

.method public decompress([BI)[B
    .locals 3
    .param p1, "src"    # [B
    .param p2, "originalSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    .line 263
    new-array v0, p2, [B

    .line 264
    .local v0, "dst":[B
    invoke-virtual {p0, v0, p1}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompress([B[B)I

    move-result v1

    .line 265
    .local v1, "size":I
    if-eq v1, p2, :cond_0

    .line 266
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    return-object v2

    .line 268
    :cond_0
    return-object v0
.end method

.method public decompressByteArray([BII[BII)I
    .locals 6
    .param p1, "dstBuff"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "dstSize"    # I
    .param p4, "srcBuff"    # [B
    .param p5, "srcOffset"    # I
    .param p6, "srcSize"    # I

    .line 193
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->acquireSharedLock()V

    .line 200
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressByteArray0([BII[BII)J

    move-result-wide v0

    .line 201
    .local v0, "size":J
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 204
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 207
    long-to-int v2, v0

    .line 209
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->releaseSharedLock()V

    .line 207
    return v2

    .line 205
    :cond_0
    :try_start_1
    new-instance v2, Lcom/github/luben/zstd/ZstdException;

    invoke-static {}, Lcom/github/luben/zstd/Zstd;->errGeneric()J

    move-result-wide v3

    const-string v5, "Output size is greater than MAX_INT"

    invoke-direct {v2, v3, v4, v5}, Lcom/github/luben/zstd/ZstdException;-><init>(JLjava/lang/String;)V

    .end local p1    # "dstBuff":[B
    .end local p2    # "dstOffset":I
    .end local p3    # "dstSize":I
    .end local p4    # "srcBuff":[B
    .end local p5    # "srcOffset":I
    .end local p6    # "srcSize":I
    throw v2

    .line 202
    .restart local p1    # "dstBuff":[B
    .restart local p2    # "dstOffset":I
    .restart local p3    # "dstSize":I
    .restart local p4    # "srcBuff":[B
    .restart local p5    # "srcOffset":I
    .restart local p6    # "srcSize":I
    :cond_1
    new-instance v2, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {v2, v0, v1}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    .end local p1    # "dstBuff":[B
    .end local p2    # "dstOffset":I
    .end local p3    # "dstSize":I
    .end local p4    # "srcBuff":[B
    .end local p5    # "srcOffset":I
    .end local p6    # "srcSize":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    .end local v0    # "size":J
    .restart local p1    # "dstBuff":[B
    .restart local p2    # "dstOffset":I
    .restart local p3    # "dstSize":I
    .restart local p4    # "srcBuff":[B
    .restart local p5    # "srcOffset":I
    .restart local p6    # "srcSize":I
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->releaseSharedLock()V

    .line 210
    throw v0

    .line 194
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decompression context is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decompressDirectByteBuffer(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .locals 6
    .param p1, "dstBuff"    # Ljava/nio/ByteBuffer;
    .param p2, "dstOffset"    # I
    .param p3, "dstSize"    # I
    .param p4, "srcBuff"    # Ljava/nio/ByteBuffer;
    .param p5, "srcOffset"    # I
    .param p6, "srcSize"    # I

    .line 151
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 154
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->acquireSharedLock()V

    .line 164
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressDirectByteBuffer0(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)J

    move-result-wide v0

    .line 165
    .local v0, "size":J
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 168
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 171
    long-to-int v2, v0

    .line 173
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->releaseSharedLock()V

    .line 171
    return v2

    .line 169
    :cond_0
    :try_start_1
    new-instance v2, Lcom/github/luben/zstd/ZstdException;

    invoke-static {}, Lcom/github/luben/zstd/Zstd;->errGeneric()J

    move-result-wide v3

    const-string v5, "Output size is greater than MAX_INT"

    invoke-direct {v2, v3, v4, v5}, Lcom/github/luben/zstd/ZstdException;-><init>(JLjava/lang/String;)V

    .end local p1    # "dstBuff":Ljava/nio/ByteBuffer;
    .end local p2    # "dstOffset":I
    .end local p3    # "dstSize":I
    .end local p4    # "srcBuff":Ljava/nio/ByteBuffer;
    .end local p5    # "srcOffset":I
    .end local p6    # "srcSize":I
    throw v2

    .line 166
    .restart local p1    # "dstBuff":Ljava/nio/ByteBuffer;
    .restart local p2    # "dstOffset":I
    .restart local p3    # "dstSize":I
    .restart local p4    # "srcBuff":Ljava/nio/ByteBuffer;
    .restart local p5    # "srcOffset":I
    .restart local p6    # "srcSize":I
    :cond_1
    new-instance v2, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {v2, v0, v1}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    .end local p1    # "dstBuff":Ljava/nio/ByteBuffer;
    .end local p2    # "dstOffset":I
    .end local p3    # "dstSize":I
    .end local p4    # "srcBuff":Ljava/nio/ByteBuffer;
    .end local p5    # "srcOffset":I
    .end local p6    # "srcSize":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .end local v0    # "size":J
    .restart local p1    # "dstBuff":Ljava/nio/ByteBuffer;
    .restart local p2    # "dstOffset":I
    .restart local p3    # "dstSize":I
    .restart local p4    # "srcBuff":Ljava/nio/ByteBuffer;
    .restart local p5    # "srcOffset":I
    .restart local p6    # "srcSize":I
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->releaseSharedLock()V

    .line 174
    throw v0

    .line 158
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dstBuff must be a direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "srcBuff must be a direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decompression context is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decompressDirectByteBufferStream(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 7
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .line 115
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->ensureOpen()V

    .line 116
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompressDirectByteBufferStream0(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)J

    move-result-wide v0

    .line 117
    .local v0, "result":J
    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 121
    const-wide/32 v2, 0x7fffffff

    and-long/2addr v2, v0

    long-to-int v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 123
    const/16 v2, 0x3f

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 118
    :cond_1
    const-wide/16 v2, 0xff

    and-long/2addr v2, v0

    .line 119
    .local v2, "code":J
    new-instance v4, Lcom/github/luben/zstd/ZstdException;

    invoke-static {v2, v3}, Lcom/github/luben/zstd/Zstd;->getErrorName(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Lcom/github/luben/zstd/ZstdException;-><init>(JLjava/lang/String;)V

    throw v4
.end method

.method doClose()V
    .locals 4

    .line 35
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->free()V

    .line 37
    iput-wide v2, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    .line 39
    :cond_0
    return-void
.end method

.method public loadDict(Lcom/github/luben/zstd/ZstdDictDecompress;)Lcom/github/luben/zstd/ZstdDecompressCtx;
    .locals 4
    .param p1, "dict"    # Lcom/github/luben/zstd/ZstdDictDecompress;

    .line 47
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->acquireSharedLock()V

    .line 51
    invoke-virtual {p1}, Lcom/github/luben/zstd/ZstdDictDecompress;->acquireSharedLock()V

    .line 53
    :try_start_0
    invoke-direct {p0, p1}, Lcom/github/luben/zstd/ZstdDecompressCtx;->loadDDictFast0(Lcom/github/luben/zstd/ZstdDictDecompress;)J

    move-result-wide v0

    .line 54
    .local v0, "result":J
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    iput-object p1, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompression_dict:Lcom/github/luben/zstd/ZstdDictDecompress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v0    # "result":J
    invoke-virtual {p1}, Lcom/github/luben/zstd/ZstdDictDecompress;->releaseSharedLock()V

    .line 61
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->releaseSharedLock()V

    .line 62
    nop

    .line 63
    return-object p0

    .line 55
    .restart local v0    # "result":J
    :cond_0
    :try_start_1
    new-instance v2, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {v2, v0, v1}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    .end local p1    # "dict":Lcom/github/luben/zstd/ZstdDictDecompress;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .end local v0    # "result":J
    .restart local p1    # "dict":Lcom/github/luben/zstd/ZstdDictDecompress;
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/github/luben/zstd/ZstdDictDecompress;->releaseSharedLock()V

    .line 61
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->releaseSharedLock()V

    .line 62
    throw v0

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decompression context is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadDict([B)Lcom/github/luben/zstd/ZstdDecompressCtx;
    .locals 4
    .param p1, "dict"    # [B

    .line 73
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->acquireSharedLock()V

    .line 78
    :try_start_0
    invoke-direct {p0, p1}, Lcom/github/luben/zstd/ZstdDecompressCtx;->loadDDict0([B)J

    move-result-wide v0

    .line 79
    .local v0, "result":J
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/github/luben/zstd/ZstdDecompressCtx;->decompression_dict:Lcom/github/luben/zstd/ZstdDictDecompress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v0    # "result":J
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->releaseSharedLock()V

    .line 85
    nop

    .line 86
    return-object p0

    .line 80
    .restart local v0    # "result":J
    :cond_0
    :try_start_1
    new-instance v2, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {v2, v0, v1}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    .end local p1    # "dict":[B
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .end local v0    # "result":J
    .restart local p1    # "dict":[B
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->releaseSharedLock()V

    .line 85
    throw v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression context is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->ensureOpen()V

    .line 96
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdDecompressCtx;->reset0()V

    .line 97
    return-void
.end method
