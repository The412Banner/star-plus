.class public Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;
.super Ljava/lang/Object;
.source "ZstdDirectBufferCompressingStream.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field private finalize:Z

.field inner:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 13
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->load()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream$1;-><init>(Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;Ljava/nio/ByteBuffer;I)V

    iput-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;

    .line 36
    return-void
.end method

.method public static recommendedOutputBufferSize()I
    .locals 1

    .line 38
    invoke-static {}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;->recommendedOutputBufferSize()I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 71
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized compress(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;->compress(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 61
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;
    .end local p1    # "source":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 77
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->finalize:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->close()V

    .line 80
    :cond_0
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 66
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected flushBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0
    .param p1, "toFlush"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    return-object p1
.end method

.method public declared-synchronized setDict(Lcom/github/luben/zstd/ZstdDictCompress;)Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;
    .locals 1
    .param p1, "dict"    # Lcom/github/luben/zstd/ZstdDictCompress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;->setDict(Lcom/github/luben/zstd/ZstdDictCompress;)Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-object p0

    .line 45
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;
    .end local p1    # "dict":Lcom/github/luben/zstd/ZstdDictCompress;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setDict([B)Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;
    .locals 1
    .param p1, "dict"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;->setDict([B)Lcom/github/luben/zstd/ZstdDirectBufferCompressingStreamNoFinalizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-object p0

    .line 40
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;
    .end local p1    # "dict":[B
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFinalize(Z)V
    .locals 0
    .param p1, "finalize"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/github/luben/zstd/ZstdDirectBufferCompressingStream;->finalize:Z

    .line 59
    return-void
.end method
