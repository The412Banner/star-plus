.class public Lcom/github/luben/zstd/ZstdDictTrainer;
.super Ljava/lang/Object;
.source "ZstdDictTrainer.java"


# instance fields
.field private final allocatedSize:I

.field private final dictSize:I

.field private filledSize:J

.field private final sampleSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final trainingSamples:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "sampleSize"    # I
    .param p2, "dictSize"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->trainingSamples:Ljava/nio/ByteBuffer;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->sampleSizes:Ljava/util/List;

    .line 17
    iput p1, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->allocatedSize:I

    .line 18
    iput p2, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->dictSize:I

    .line 19
    return-void
.end method

.method private copyToIntArray(Ljava/util/List;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 58
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 59
    .local v0, "ints":[I
    const/4 v1, 0x0

    .line 60
    .local v1, "idx":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 61
    .local v3, "i":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v1

    .line 62
    nop

    .end local v3    # "i":Ljava/lang/Integer;
    add-int/lit8 v1, v1, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addSample([B)Z
    .locals 4
    .param p1, "sample"    # [B

    monitor-enter p0

    .line 22
    :try_start_0
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->filledSize:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->allocatedSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 23
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 25
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->trainingSamples:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 26
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->sampleSizes:Ljava/util/List;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-wide v0, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->filledSize:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->filledSize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 21
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdDictTrainer;
    .end local p1    # "sample":[B
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public trainSamples()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/luben/zstd/ZstdDictTrainer;->trainSamples(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public trainSamples(Z)[B
    .locals 2
    .param p1, "legacy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/github/luben/zstd/ZstdDictTrainer;->trainSamplesDirect(Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 52
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 53
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 54
    return-object v1
.end method

.method public trainSamplesDirect()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/luben/zstd/ZstdDictTrainer;->trainSamplesDirect(Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized trainSamplesDirect(Z)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "legacy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/luben/zstd/ZstdException;
        }
    .end annotation

    monitor-enter p0

    .line 36
    :try_start_0
    iget v0, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->dictSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 37
    .local v0, "dictBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->trainingSamples:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/github/luben/zstd/ZstdDictTrainer;->sampleSizes:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/github/luben/zstd/ZstdDictTrainer;->copyToIntArray(Ljava/util/List;)[I

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Lcom/github/luben/zstd/Zstd;->trainFromBufferDirect(Ljava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;Z)J

    move-result-wide v1

    .line 38
    .local v1, "l":J
    invoke-static {v1, v2}, Lcom/github/luben/zstd/Zstd;->isError(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-object v0

    .line 39
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdDictTrainer;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 40
    new-instance v3, Lcom/github/luben/zstd/ZstdException;

    invoke-direct {v3, v1, v2}, Lcom/github/luben/zstd/ZstdException;-><init>(J)V

    throw v3

    .line 35
    .end local v0    # "dictBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "l":J
    .end local p1    # "legacy":Z
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
