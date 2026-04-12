.class public Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;
.super Ljava/lang/Object;
.source "ZstdDirectBufferDecompressingStream.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private finalize:Z

.field private inner:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 12
    invoke-static {}, Lcom/github/luben/zstd/util/Native;->load()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "source"    # Ljava/nio/ByteBuffer;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->finalize:Z

    .line 28
    new-instance v0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream$1;

    invoke-direct {v0, p0, p1}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream$1;-><init>(Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;

    .line 34
    return-void
.end method

.method public static recommendedTargetBufferSize()I
    .locals 1

    .line 52
    invoke-static {}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->recommendedTargetBufferSize()I

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

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 70
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->finalize:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->close()V

    .line 79
    :cond_0
    return-void
.end method

.method public declared-synchronized hasRemaining()Z
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->hasRemaining()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 48
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->read(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 66
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;
    .end local p1    # "target":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected refill(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0
    .param p1, "toRefill"    # Ljava/nio/ByteBuffer;

    .line 21
    return-object p1
.end method

.method public declared-synchronized setDict(Lcom/github/luben/zstd/ZstdDictDecompress;)Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;
    .locals 1
    .param p1, "dict"    # Lcom/github/luben/zstd/ZstdDictDecompress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->setDict(Lcom/github/luben/zstd/ZstdDictDecompress;)Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-object p0

    .line 60
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;
    .end local p1    # "dict":Lcom/github/luben/zstd/ZstdDictDecompress;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setDict([B)Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;
    .locals 1
    .param p1, "dict"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->inner:Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;->setDict([B)Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStreamNoFinalizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-object p0

    .line 55
    .end local p0    # "this":Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;
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

    .line 44
    iput-boolean p1, p0, Lcom/github/luben/zstd/ZstdDirectBufferDecompressingStream;->finalize:Z

    .line 45
    return-void
.end method
