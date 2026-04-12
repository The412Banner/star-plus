.class public Lcom/github/luben/zstd/ZstdInputStream;
.super Ljava/io/FilterInputStream;
.source "ZstdInputStream.java"


# instance fields
.field private inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 24
    new-instance v0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-direct {v0, p1}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/github/luben/zstd/BufferPool;)V
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "bufferPool"    # Lcom/github/luben/zstd/BufferPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    new-instance v0, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-direct {v0, p1, p2}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;-><init>(Ljava/io/InputStream;Lcom/github/luben/zstd/BufferPool;)V

    iput-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    .line 35
    return-void
.end method

.method public static recommendedDInSize()J
    .locals 2

    .line 56
    invoke-static {}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->recommendedDInSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static recommendedDOutSize()J
    .locals 2

    .line 60
    invoke-static {}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->recommendedDOutSize()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->close()V

    .line 112
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/github/luben/zstd/ZstdInputStream;->close()V

    .line 53
    return-void
.end method

.method public getContinuous()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->getContinuous()Z

    move-result v0

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->read([BII)I

    move-result v0

    return v0
.end method

.method public setContinuous(Z)Lcom/github/luben/zstd/ZstdInputStream;
    .locals 1
    .param p1, "b"    # Z

    .line 69
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->setContinuous(Z)Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    .line 70
    return-object p0
.end method

.method public setDict(Lcom/github/luben/zstd/ZstdDictDecompress;)Lcom/github/luben/zstd/ZstdInputStream;
    .locals 1
    .param p1, "dict"    # Lcom/github/luben/zstd/ZstdDictDecompress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->setDict(Lcom/github/luben/zstd/ZstdDictDecompress;)Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    .line 83
    return-object p0
.end method

.method public setDict([B)Lcom/github/luben/zstd/ZstdInputStream;
    .locals 1
    .param p1, "dict"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->setDict([B)Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    .line 79
    return-object p0
.end method

.method public setFinalize(Z)V
    .locals 0
    .param p1, "finalize"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "numBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/github/luben/zstd/ZstdInputStream;->inner:Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;

    invoke-virtual {v0, p1, p2}, Lcom/github/luben/zstd/ZstdInputStreamNoFinalizer;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
