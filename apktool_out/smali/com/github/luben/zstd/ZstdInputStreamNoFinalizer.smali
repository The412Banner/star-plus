.class public Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
.super Ljava/io/FilterInputStream;
.source "ZstdInputStreamNoFinalizer.java"


# static fields
.field private static final srcBuffSize:I


# instance fields
.field private final bufferPool:Lcom/github/luben/zstd/BufferPool;

.field private dstPos:J

.field private frameFinished:Z

.field private isClosed:Z

.field private isContinuous:Z

.field private needRead:Z

.field private final src:[B

.field private final srcByteBuffer:Ljava/nio/ByteBuffer;

.field private srcPos:J

.field private srcSize:J

.field private final stream:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->load()V

    .line 35
    invoke-static {}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->recommendedDInSize()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcBuffSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/github/luben/zstd/NoPool;->INSTANCE:Lcom/github/luben/zstd/BufferPool;

    invoke-direct {p0, p1, v0}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;-><init>(Ljava/io/InputStream;Lcom/github/luben/zstd/BufferPool;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/github/luben/zstd/BufferPool;)V
    .locals 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "bufferPool"    # Lcom/github/luben/zstd/BufferPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    .line 29
    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcPos:J

    .line 30
    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcSize:J

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->needRead:Z

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isContinuous:Z

    .line 38
    iput-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->frameFinished:Z

    .line 39
    iput-boolean v1, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isClosed:Z

    .line 64
    iput-object p2, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->bufferPool:Lcom/github/luben/zstd/BufferPool;

    .line 65
    sget v0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcBuffSize:I

    invoke-interface {p2, v0}, Lcom/github/luben/zstd/BufferPool;->get(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcByteBuffer:Ljava/nio/ByteBuffer;

    .line 66
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/github/luben/zstd/Zstd;->extractArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->src:[B

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    invoke-static {}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->createDStream()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->stream:J

    .line 73
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->stream:J

    invoke-direct {p0, v0, v1}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->initDStream(J)I

    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 67
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get ByteBuffer of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcBuffSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from the BufferPool"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native createDStream()J
.end method

.method private native decompressStream(J[BI[BI)I
.end method

.method private static native freeDStream(J)I
.end method

.method private native initDStream(J)I
.end method

.method public static native recommendedDInSize()J
.end method

.method public static native recommendedDOutSize()J
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 204
    :try_start_0
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isClosed:Z

    if-nez v0, :cond_1

    .line 207
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->needRead:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 208
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 210
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 205
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 249
    :try_start_0
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 250
    monitor-exit p0

    return-void

    .line 252
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isClosed:Z

    .line 253
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->bufferPool:Lcom/github/luben/zstd/BufferPool;

    iget-object v1, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcByteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Lcom/github/luben/zstd/BufferPool;->release(Ljava/nio/ByteBuffer;)V

    .line 254
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->stream:J

    invoke-static {v0, v1}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->freeDStream(J)I

    .line 255
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 248
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized getContinuous()Z
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isContinuous:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 88
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 191
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [B

    .line 192
    .local v1, "oneByte":[B
    const/4 v2, 0x0

    .line 193
    .local v2, "result":I
    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 194
    invoke-virtual {p0, v1, v3, v0}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->readInternal([BII)I

    move-result v3

    move v2, v3

    goto :goto_0

    .line 196
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    :cond_0
    if-ne v2, v0, :cond_1

    .line 197
    aget-byte v0, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 199
    :cond_1
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 190
    .end local v1    # "oneByte":[B
    .end local v2    # "result":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 3
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 114
    if-ltz p2, :cond_2

    :try_start_0
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_2

    .line 118
    if-nez p3, :cond_0

    .line 119
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    .line 122
    .local v0, "result":I
    :goto_0
    if-nez v0, :cond_1

    .line 123
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->readInternal([BII)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    .line 125
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    :cond_1
    monitor-exit p0

    return v0

    .line 115
    .end local v0    # "result":I
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in buffer of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    .end local p1    # "dst":[B
    .end local p2    # "offset":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method readInternal([BII)I
    .locals 11
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isClosed:Z

    if-nez v0, :cond_c

    .line 136
    if-ltz p2, :cond_b

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_b

    .line 140
    add-int v0, p2, p3

    .line 141
    .local v0, "dstSize":I
    int-to-long v1, p2

    iput-wide v1, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    .line 142
    const-wide/16 v1, -0x1

    .line 144
    .local v1, "lastDstPos":J
    :goto_0
    iget-wide v3, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-gez v3, :cond_a

    iget-wide v3, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_a

    .line 147
    iget-boolean v3, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->needRead:Z

    const/4 v8, 0x0

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-gtz v3, :cond_0

    iget-wide v3, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    int-to-long v5, p2

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 148
    :cond_0
    iget-object v3, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->src:[B

    sget v5, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcBuffSize:I

    invoke-virtual {v3, v4, v8, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcSize:J

    .line 149
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcPos:J

    .line 150
    iget-wide v5, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcSize:J

    cmp-long v5, v5, v3

    if-gez v5, :cond_4

    .line 151
    iput-wide v3, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcSize:J

    .line 152
    iget-boolean v5, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->frameFinished:Z

    const/4 v6, -0x1

    if-eqz v5, :cond_1

    .line 153
    return v6

    .line 154
    :cond_1
    iget-boolean v5, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isContinuous:Z

    if-eqz v5, :cond_3

    .line 155
    iget-wide v7, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    int-to-long v9, p2

    sub-long/2addr v7, v9

    long-to-int v5, v7

    int-to-long v7, v5

    iput-wide v7, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcSize:J

    .line 156
    iget-wide v7, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcSize:J

    cmp-long v3, v7, v3

    if-lez v3, :cond_2

    .line 157
    iget-wide v3, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcSize:J

    long-to-int v3, v3

    return v3

    .line 159
    :cond_2
    return v6

    .line 161
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Read error or truncated source"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 164
    :cond_4
    iput-boolean v8, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->frameFinished:Z

    .line 167
    :cond_5
    iget-wide v9, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    .line 168
    .end local v1    # "lastDstPos":J
    .local v9, "lastDstPos":J
    iget-wide v2, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->stream:J

    iget-object v6, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->src:[B

    iget-wide v4, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcSize:J

    long-to-int v7, v4

    move-object v1, p0

    move-object v4, p1

    move v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->decompressStream(J[BI[BI)I

    move-result v1

    .line 170
    .local v1, "size":I
    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v2

    if-nez v2, :cond_9

    .line 175
    const/4 v2, 0x1

    if-nez v1, :cond_7

    .line 176
    iput-boolean v2, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->frameFinished:Z

    .line 179
    iget-wide v3, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcPos:J

    iget-wide v5, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->srcSize:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    move v8, v2

    :cond_6
    iput-boolean v8, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->needRead:Z

    .line 180
    iget-wide v2, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    int-to-long v4, p2

    sub-long/2addr v2, v4

    long-to-int v2, v2

    return v2

    .line 184
    :cond_7
    iget-wide v3, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-gez v3, :cond_8

    move v8, v2

    :cond_8
    iput-boolean v8, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->needRead:Z

    .line 186
    .end local v1    # "size":I
    move-wide v1, v9

    goto/16 :goto_0

    .line 171
    .restart local v1    # "size":I
    :cond_9
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decompression error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v1

    invoke-static {v4, v5}, Lcom/github/luben/zstd/Zstd;->getErrorName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    .end local v9    # "lastDstPos":J
    .local v1, "lastDstPos":J
    :cond_a
    iget-wide v3, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->dstPos:J

    int-to-long v5, p2

    sub-long/2addr v3, v5

    long-to-int v3, v3

    return v3

    .line 137
    .end local v0    # "dstSize":I
    .end local v1    # "lastDstPos":J
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in buffer of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setContinuous(Z)Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    .locals 0
    .param p1, "b"    # Z

    monitor-enter p0

    .line 83
    :try_start_0
    iput-boolean p1, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isContinuous:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-object p0

    .line 82
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    .end local p1    # "b":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setDict(Lcom/github/luben/zstd/ZstdDictDecompress;)Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    .locals 5
    .param p1, "dict"    # Lcom/github/luben/zstd/ZstdDictDecompress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 100
    :try_start_0
    invoke-virtual {p1}, Lcom/github/luben/zstd/ZstdDictDecompress;->acquireSharedLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    :try_start_1
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->stream:J

    invoke-static {v0, v1, p1}, Lcom/github/luben/zstd/Zstd;->loadFastDictDecompress(JLcom/github/luben/zstd/ZstdDictDecompress;)I

    move-result v0

    .line 103
    .local v0, "size":I
    int-to-long v1, v0

    invoke-static {v1, v2}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 107
    .end local v0    # "size":I
    :try_start_2
    invoke-virtual {p1}, Lcom/github/luben/zstd/ZstdDictDecompress;->releaseSharedLock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    nop

    .line 109
    monitor-exit p0

    return-object p0

    .line 104
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    .restart local v0    # "size":I
    :cond_0
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decompression error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v3, v0

    invoke-static {v3, v4}, Lcom/github/luben/zstd/Zstd;->getErrorName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "dict":Lcom/github/luben/zstd/ZstdDictDecompress;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    .end local v0    # "size":I
    .restart local p1    # "dict":Lcom/github/luben/zstd/ZstdDictDecompress;
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {p1}, Lcom/github/luben/zstd/ZstdDictDecompress;->releaseSharedLock()V

    .line 108
    throw v0

    .line 99
    .end local p1    # "dict":Lcom/github/luben/zstd/ZstdDictDecompress;
    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public declared-synchronized setDict([B)Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    .locals 5
    .param p1, "dict"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->stream:J

    array-length v2, p1

    invoke-static {v0, v1, p1, v2}, Lcom/github/luben/zstd/Zstd;->loadDictDecompress(J[BI)I

    move-result v0

    .line 93
    .local v0, "size":I
    int-to-long v1, v0

    invoke-static {v1, v2}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 96
    monitor-exit p0

    return-object p0

    .line 94
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decompression error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v3, v0

    invoke-static {v3, v4}, Lcom/github/luben/zstd/Zstd;->getErrorName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    .end local v0    # "size":I
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    .end local p1    # "dict":[B
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized skip(J)J
    .locals 10
    .param p1, "numBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 221
    :try_start_0
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_4

    .line 224
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 225
    monitor-exit p0

    return-wide v0

    .line 227
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->recommendedDOutSize()J

    move-result-wide v2

    long-to-int v2, v2

    .line 228
    .local v2, "bufferLen":I
    int-to-long v3, v2

    cmp-long v3, v3, p1

    if-lez v3, :cond_1

    .line 229
    long-to-int v2, p1

    .line 231
    :cond_1
    iget-object v3, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->bufferPool:Lcom/github/luben/zstd/BufferPool;

    invoke-interface {v3, v2}, Lcom/github/luben/zstd/BufferPool;->get(I)Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 232
    .local v3, "buf":Ljava/nio/ByteBuffer;
    move-wide v4, p1

    .line 234
    .local v4, "toSkip":J
    :try_start_2
    invoke-static {v3}, Lcom/github/luben/zstd/Zstd;->extractArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    .local v6, "data":[B
    :goto_0
    cmp-long v7, v4, v0

    if-lez v7, :cond_3

    .line 236
    int-to-long v7, v2

    :try_start_3
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8, v7}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->read([BII)I

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    .local v7, "read":I
    if-gez v7, :cond_2

    .line 238
    goto :goto_1

    .line 240
    :cond_2
    int-to-long v8, v7

    sub-long/2addr v4, v8

    .line 241
    .end local v7    # "read":I
    goto :goto_0

    .line 243
    .end local v6    # "data":[B
    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->bufferPool:Lcom/github/luben/zstd/BufferPool;

    invoke-interface {v0, v3}, Lcom/github/luben/zstd/BufferPool;->release(Ljava/nio/ByteBuffer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 244
    nop

    .line 245
    sub-long v0, p1, v4

    monitor-exit p0

    return-wide v0

    .line 243
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;
    :catchall_1
    move-exception v0

    :goto_2
    :try_start_5
    iget-object v1, p0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->bufferPool:Lcom/github/luben/zstd/BufferPool;

    invoke-interface {v1, v3}, Lcom/github/luben/zstd/BufferPool;->release(Ljava/nio/ByteBuffer;)V

    .line 244
    throw v0

    .line 222
    .end local v2    # "bufferLen":I
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    .end local v4    # "toSkip":J
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    .end local p1    # "numBytes":J
    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method
