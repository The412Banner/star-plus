.class public Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "DeflateCompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# static fields
.field private static final MAGIC_1:I = 0x78

.field private static final MAGIC_2a:I = 0x1

.field private static final MAGIC_2b:I = 0x5e

.field private static final MAGIC_2c:I = 0x9c

.field private static final MAGIC_2d:I = 0xda


# instance fields
.field private final countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

.field private final in:Ljava/io/InputStream;

.field private final inflater:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 56
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "parameters"    # Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;

    .line 67
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 68
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;->withZlibHeader()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 69
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-direct {v0, v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    .line 70
    return-void
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 135
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    aget-byte v0, p0, v1

    const/16 v2, 0x78

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    aget-byte v2, p0, v0

    if-eq v2, v0, :cond_0

    aget-byte v2, p0, v0

    const/16 v3, 0x5e

    if-eq v2, v3, :cond_0

    aget-byte v2, p0, v0

    const/16 v3, -0x64

    if-eq v2, v3, :cond_0

    aget-byte v2, p0, v0

    const/16 v3, -0x26

    if-ne v2, v3, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 110
    nop

    .line 111
    return-void

    .line 109
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    .line 110
    throw v0
.end method

.method public getCompressedCount()J
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/CountingInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 76
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->count(I)V

    .line 77
    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    if-nez p3, :cond_0

    .line 84
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 87
    .local v0, "ret":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->count(I)V

    .line 88
    return v0
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
