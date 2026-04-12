.class public Lcom/github/luben/zstd/ZstdCompressCtx;
.super Lcom/github/luben/zstd/AutoCloseBase;
.source "ZstdCompressCtx.java"


# instance fields
.field private compression_dict:Lcom/github/luben/zstd/ZstdDictCompress;

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

    .line 27
    invoke-direct {p0}, Lcom/github/luben/zstd/AutoCloseBase;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->nativePtr:J

    .line 17
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->compression_dict:Lcom/github/luben/zstd/ZstdDictCompress;

    .line 28
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->init()V

    .line 29
    iget-wide v2, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->nativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->storeFence()V

    .line 33
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ZSTD_createCompressCtx failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native compressByteArray0([BII[BII)J
.end method

.method private native compressDirectByteBuffer0(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)J
.end method

.method private native compressDirectByteBufferStream0(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;III)J
.end method

.method private ensureOpen()V
    .locals 4

    .line 181
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 184
    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression context is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native free()V
.end method

.method private native init()V
.end method

.method private native loadCDict0([B)J
.end method

.method private native loadCDictFast0(Lcom/github/luben/zstd/ZstdDictCompress;)J
.end method

.method private native reset0()J
.end method

.method private native setChecksum0(Z)V
.end method

.method private native setContentSize0(Z)V
.end method

.method private native setDictID0(Z)V
.end method

.method private native setLevel0(I)V
.end method

.method private native setPledgedSrcSize0(J)J
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .line 9
    invoke-super {p0}, Lcom/github/luben/zstd/AutoCloseBase;->close()V

    return-void
.end method

.method public compress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "dstBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "srcBuf"    # Ljava/nio/ByteBuffer;

    .line 350
    nop

    .line 351
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 352
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v3, v0, v1

    .line 354
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 355
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v6, v0, v1

    .line 350
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/github/luben/zstd/ZstdCompressCtx;->compressDirectByteBuffer(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 357
    .local v0, "size":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 358
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 359
    return v0
.end method

.method public compress([B[B)I
    .locals 7
    .param p1, "dst"    # [B
    .param p2, "src"    # [B

    .line 396
    array-length v3, p1

    const/4 v5, 0x0

    array-length v6, p2

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/github/luben/zstd/ZstdCompressCtx;->compressByteArray([BII[BII)I

    move-result v0

    return v0
.end method

.method public compress(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 10
    .param p1, "srcBuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    .line 374
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->compressBound(J)J

    move-result-wide v0

    .line 375
    .local v0, "maxDstSize":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 378
    long-to-int v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 379
    .local v2, "dstBuf":Ljava/nio/ByteBuffer;
    long-to-int v6, v0

    .line 383
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 384
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int v9, v3, v4

    .line 379
    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, v2

    move-object v7, p1

    invoke-virtual/range {v3 .. v9}, Lcom/github/luben/zstd/ZstdCompressCtx;->compressDirectByteBuffer(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v3

    .line 386
    .local v3, "size":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 388
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 392
    return-object v2

    .line 376
    .end local v2    # "dstBuf":Ljava/nio/ByteBuffer;
    .end local v3    # "size":I
    :cond_0
    new-instance v2, Lcom/github/luben/zstd/ZstdException;

    invoke-static {}, Lcom/github/luben/zstd/Zstd;->errGeneric()J

    move-result-wide v3

    const-string v5, "Max output size is greater than MAX_INT"

    invoke-direct {v2, v3, v4, v5}, Lcom/github/luben/zstd/ZstdException;-><init>(JLjava/lang/String;)V

    throw v2
.end method

.method public compress([B)[B
    .locals 10
    .param p1, "src"    # [B

    .line 400
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->compressBound(J)J

    move-result-wide v0

    .line 401
    .local v0, "maxDstSize":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 404
    long-to-int v2, v0

    new-array v2, v2, [B

    .line 405
    .local v2, "dst":[B
    array-length v6, v2

    const/4 v8, 0x0

    array-length v9, p1

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, v2

    move-object v7, p1

    invoke-virtual/range {v3 .. v9}, Lcom/github/luben/zstd/ZstdCompressCtx;->compressByteArray([BII[BII)I

    move-result v3

    .line 406
    .local v3, "size":I
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    return-object v4

    .line 402
    .end local v2    # "dst":[B
    .end local v3    # "size":I
    :cond_0
    new-instance v2, Lcom/github/luben/zstd/ZstdException;

    invoke-static {}, Lcom/github/luben/zstd/Zstd;->errGeneric()J

    move-result-wide v3

    const-string v5, "Max output size is greater than MAX_INT"

    invoke-direct {v2, v3, v4, v5}, Lcom/github/luben/zstd/ZstdException;-><init>(JLjava/lang/String;)V

    throw v2
.end method

.method public compressByteArray([BII[BII)I
    .locals 6
    .param p1, "dstBuff"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "dstSize"    # I
    .param p4, "srcBuff"    # [B
    .param p5, "srcOffset"    # I
    .param p6, "srcSize"    # I

    .line 307
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 311
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->acquireSharedLock()V

    .line 314
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/github/luben/zstd/ZstdCompressCtx;->compressByteArray0([BII[BII)J

    move-result-wide v0

    .line 315
    .local v0, "size":J
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 318
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 321
    long-to-int v2, v0

    .line 323
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->releaseSharedLock()V

    .line 321
    return v2

    .line 319
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

    .line 316
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

    .line 323
    .end local v0    # "size":J
    .restart local p1    # "dstBuff":[B
    .restart local p2    # "dstOffset":I
    .restart local p3    # "dstSize":I
    .restart local p4    # "srcBuff":[B
    .restart local p5    # "srcOffset":I
    .restart local p6    # "srcSize":I
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->releaseSharedLock()V

    .line 324
    throw v0

    .line 308
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression context is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compressDirectByteBuffer(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .locals 6
    .param p1, "dstBuff"    # Ljava/nio/ByteBuffer;
    .param p2, "dstOffset"    # I
    .param p3, "dstSize"    # I
    .param p4, "srcBuff"    # Ljava/nio/ByteBuffer;
    .param p5, "srcOffset"    # I
    .param p6, "srcSize"    # I

    .line 263
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 266
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->acquireSharedLock()V

    .line 276
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/github/luben/zstd/ZstdCompressCtx;->compressDirectByteBuffer0(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)J

    move-result-wide v0

    .line 277
    .local v0, "size":J
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 280
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 283
    long-to-int v2, v0

    .line 285
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->releaseSharedLock()V

    .line 283
    return v2

    .line 281
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

    .line 278
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

    .line 285
    .end local v0    # "size":J
    .restart local p1    # "dstBuff":Ljava/nio/ByteBuffer;
    .restart local p2    # "dstOffset":I
    .restart local p3    # "dstSize":I
    .restart local p4    # "srcBuff":Ljava/nio/ByteBuffer;
    .restart local p5    # "srcOffset":I
    .restart local p6    # "srcSize":I
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->releaseSharedLock()V

    .line 286
    throw v0

    .line 270
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dstBuff must be a direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "srcBuff must be a direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression context is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compressDirectByteBufferStream(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/github/luben/zstd/EndDirective;)Z
    .locals 8
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "src"    # Ljava/nio/ByteBuffer;
    .param p3, "endOp"    # Lcom/github/luben/zstd/EndDirective;

    .line 226
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->ensureOpen()V

    .line 227
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {p3}, Lcom/github/luben/zstd/EndDirective;->value()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/github/luben/zstd/ZstdCompressCtx;->compressDirectByteBufferStream0(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;III)J

    move-result-wide v0

    .line 228
    .local v0, "result":J
    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 232
    const-wide/32 v2, 0x7fffffff

    and-long/2addr v2, v0

    long-to-int v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 233
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 234
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

    .line 229
    :cond_1
    const-wide/16 v2, 0xff

    and-long/2addr v2, v0

    .line 230
    .local v2, "code":J
    new-instance v4, Lcom/github/luben/zstd/ZstdException;

    invoke-static {v2, v3}, Lcom/github/luben/zstd/Zstd;->getErrorName(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Lcom/github/luben/zstd/ZstdException;-><init>(JLjava/lang/String;)V

    throw v4
.end method

.method doClose()V
    .locals 4

    .line 36
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->free()V

    .line 38
    iput-wide v2, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->nativePtr:J

    .line 40
    :cond_0
    return-void
.end method

.method public loadDict(Lcom/github/luben/zstd/ZstdDictCompress;)Lcom/github/luben/zstd/ZstdCompressCtx;
    .locals 4
    .param p1, "dict"    # Lcom/github/luben/zstd/ZstdDictCompress;

    .line 136
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->acquireSharedLock()V

    .line 141
    invoke-virtual {p1}, Lcom/github/luben/zstd/ZstdDictCompress;->acquireSharedLock()V

    .line 143
    :try_start_0
    invoke-direct {p0, p1}, Lcom/github/luben/zstd/ZstdCompressCtx;->loadCDictFast0(Lcom/github/luben/zstd/ZstdDictCompress;)J

    move-result-wide v0

    .line 144
    .local v0, "result":J
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    iput-object p1, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->compression_dict:Lcom/github/luben/zstd/ZstdDictCompress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v0    # "result":J
    invoke-virtual {p1}, Lcom/github/luben/zstd/ZstdDictCompress;->releaseSharedLock()V

    .line 151
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->releaseSharedLock()V

    .line 152
    nop

    .line 153
    return-object p0

    .line 145
    .restart local v0    # "result":J
    :cond_0
    :try_start_1
    new-instance v2, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {v2, v0, v1}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    .end local p1    # "dict":Lcom/github/luben/zstd/ZstdDictCompress;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .end local v0    # "result":J
    .restart local p1    # "dict":Lcom/github/luben/zstd/ZstdDictCompress;
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/github/luben/zstd/ZstdDictCompress;->releaseSharedLock()V

    .line 151
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->releaseSharedLock()V

    .line 152
    throw v0

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression context is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadDict([B)Lcom/github/luben/zstd/ZstdCompressCtx;
    .locals 4
    .param p1, "dict"    # [B

    .line 163
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->acquireSharedLock()V

    .line 168
    :try_start_0
    invoke-direct {p0, p1}, Lcom/github/luben/zstd/ZstdCompressCtx;->loadCDict0([B)J

    move-result-wide v0

    .line 169
    .local v0, "result":J
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->compression_dict:Lcom/github/luben/zstd/ZstdDictCompress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v0    # "result":J
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->releaseSharedLock()V

    .line 175
    nop

    .line 176
    return-object p0

    .line 170
    .restart local v0    # "result":J
    :cond_0
    :try_start_1
    new-instance v2, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {v2, v0, v1}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    .end local p1    # "dict":[B
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .end local v0    # "result":J
    .restart local p1    # "dict":[B
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->releaseSharedLock()V

    .line 175
    throw v0

    .line 164
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression context is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 3

    .line 191
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->ensureOpen()V

    .line 192
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->reset0()J

    move-result-wide v0

    .line 193
    .local v0, "result":J
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    return-void

    .line 194
    :cond_0
    new-instance v2, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {v2, v0, v1}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    throw v2
.end method

.method public setChecksum(Z)Lcom/github/luben/zstd/ZstdCompressCtx;
    .locals 4
    .param p1, "checksumFlag"    # Z

    .line 63
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->acquireSharedLock()V

    .line 67
    invoke-direct {p0, p1}, Lcom/github/luben/zstd/ZstdCompressCtx;->setChecksum0(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->releaseSharedLock()V

    .line 69
    return-object p0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression context is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentSize(Z)Lcom/github/luben/zstd/ZstdCompressCtx;
    .locals 4
    .param p1, "contentSizeFlag"    # Z

    .line 86
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->acquireSharedLock()V

    .line 90
    invoke-direct {p0, p1}, Lcom/github/luben/zstd/ZstdCompressCtx;->setContentSize0(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->releaseSharedLock()V

    .line 92
    return-object p0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression context is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDictID(Z)Lcom/github/luben/zstd/ZstdCompressCtx;
    .locals 4
    .param p1, "dictIDFlag"    # Z

    .line 101
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->acquireSharedLock()V

    .line 105
    invoke-direct {p0, p1}, Lcom/github/luben/zstd/ZstdCompressCtx;->setDictID0(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->releaseSharedLock()V

    .line 107
    return-object p0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression context is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLevel(I)Lcom/github/luben/zstd/ZstdCompressCtx;
    .locals 4
    .param p1, "level"    # I

    .line 47
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->acquireSharedLock()V

    .line 51
    invoke-direct {p0, p1}, Lcom/github/luben/zstd/ZstdCompressCtx;->setLevel0(I)V

    .line 52
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->releaseSharedLock()V

    .line 53
    return-object p0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression context is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLong(I)Lcom/github/luben/zstd/ZstdCompressCtx;
    .locals 4
    .param p1, "windowLog"    # I

    .line 121
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->acquireSharedLock()V

    .line 125
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->nativePtr:J

    invoke-static {v0, v1, p1}, Lcom/github/luben/zstd/Zstd;->setCompressionLong(JI)I

    .line 126
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->releaseSharedLock()V

    .line 127
    return-object p0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression context is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPledgedSrcSize(J)V
    .locals 3
    .param p1, "srcSize"    # J

    .line 208
    invoke-direct {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->ensureOpen()V

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/github/luben/zstd/ZstdCompressCtx;->setPledgedSrcSize0(J)J

    move-result-wide v0

    .line 210
    .local v0, "result":J
    invoke-static {v0, v1}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    return-void

    .line 211
    :cond_0
    new-instance v2, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {v2, v0, v1}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    throw v2
.end method

.method public setWorkers(I)Lcom/github/luben/zstd/ZstdCompressCtx;
    .locals 2
    .param p1, "workers"    # I

    .line 75
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->acquireSharedLock()V

    .line 76
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdCompressCtx;->nativePtr:J

    invoke-static {v0, v1, p1}, Lcom/github/luben/zstd/Zstd;->setCompressionWorkers(JI)I

    .line 77
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdCompressCtx;->releaseSharedLock()V

    .line 78
    return-object p0
.end method
