.class public Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "ZstdCompressorOutputStream.java"


# instance fields
.field private final encOS:Lcom/github/luben/zstd/ZstdOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 83
    new-instance v0, Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-direct {v0, p1}, Lcom/github/luben/zstd/ZstdOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 73
    new-instance v0, Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-direct {v0, p1, p2}, Lcom/github/luben/zstd/ZstdOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .param p2, "level"    # I
    .param p3, "closeFrameOnFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 61
    new-instance v0, Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-direct {v0, p1, p2, p3}, Lcom/github/luben/zstd/ZstdOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZZ)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .param p2, "level"    # I
    .param p3, "closeFrameOnFlush"    # Z
    .param p4, "useChecksum"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 48
    new-instance v0, Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/github/luben/zstd/ZstdOutputStream;-><init>(Ljava/io/OutputStream;IZZ)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    .line 49
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdOutputStream;->close()V

    .line 89
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdOutputStream;->flush()V

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdOutputStream;->write(I)V

    .line 94
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/luben/zstd/ZstdOutputStream;->write([BII)V

    .line 99
    return-void
.end method
