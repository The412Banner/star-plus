.class public Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "FramedSnappyCompressorOutputStream.java"


# static fields
.field private static final MAX_COMPRESSED_BUFFER_SIZE:I = 0x10000


# instance fields
.field private final buffer:[B

.field private final checksum:Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

.field private final consumer:Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;

.field private currentIndex:I

.field private final oneByte:[B

.field private final out:Ljava/io/OutputStream;

.field private final params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const v0, 0x8000

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->createParameterBuilder(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->build()Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    move-result-object v0

    .line 62
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/lz77support/Parameters;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/lz77support/Parameters;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "params"    # Lorg/apache/commons/compress/compressors/lz77support/Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 47
    new-instance v0, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->checksum:Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->oneByte:[B

    .line 50
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->buffer:[B

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->currentIndex:I

    .line 75
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 76
    iput-object p2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 77
    new-instance v0, Lorg/apache/commons/compress/utils/ByteUtils$OutputStreamByteConsumer;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/utils/ByteUtils$OutputStreamByteConsumer;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->consumer:Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;

    .line 78
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->SZ_SIGNATURE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 79
    return-void
.end method

.method private flushBuffer()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 125
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;

    iget v3, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->currentIndex:I

    int-to-long v3, v3

    iget-object v5, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-direct {v2, v0, v3, v4, v5}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;-><init>(Ljava/io/OutputStream;JLorg/apache/commons/compress/compressors/lz77support/Parameters;)V

    .line 127
    .local v2, "o":Ljava/io/OutputStream;
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->buffer:[B

    iget v4, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->currentIndex:I

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 129
    .end local v2    # "o":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 130
    .local v2, "b":[B
    array-length v3, v2

    int-to-long v3, v3

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    const/4 v5, 0x3

    invoke-direct {p0, v5, v3, v4}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->writeLittleEndian(IJ)V

    .line 131
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->writeCrc()V

    .line 132
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 133
    iput v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->currentIndex:I

    .line 134
    return-void

    .line 126
    .local v2, "o":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "o":Ljava/io/OutputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "o":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
.end method

.method static mask(J)J
    .locals 4
    .param p0, "x"    # J

    .line 149
    const/16 v0, 0xf

    shr-long v0, p0, v0

    const/16 v2, 0x11

    shl-long v2, p0, v2

    or-long p0, v0, v2

    .line 150
    const-wide v0, 0xa282ead8L

    add-long/2addr p0, v0

    .line 151
    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    .line 152
    return-wide p0
.end method

.method private writeCrc()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->checksum:Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->buffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->currentIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->update([BII)V

    .line 142
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->checksum:Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->mask(J)J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->writeLittleEndian(IJ)V

    .line 143
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->checksum:Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->reset()V

    .line 144
    return-void
.end method

.method private writeLittleEndian(IJ)V
    .locals 1
    .param p1, "numBytes"    # I
    .param p2, "num"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->consumer:Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;

    invoke-static {v0, p2, p3, p1}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;JI)V

    .line 138
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 109
    nop

    .line 110
    return-void

    .line 108
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 109
    throw v0
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->currentIndex:I

    if-lez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->flushBuffer()V

    .line 121
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->oneByte:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 84
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->oneByte:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->write([B)V

    .line 85
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->currentIndex:I

    add-int/2addr v0, p3

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_0

    .line 90
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->flushBuffer()V

    .line 91
    :goto_0
    if-le p3, v1, :cond_0

    .line 92
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    add-int/2addr p2, v1

    .line 94
    sub-int/2addr p3, v1

    .line 95
    iput v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->currentIndex:I

    .line 96
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->flushBuffer()V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->buffer:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->currentIndex:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->currentIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;->currentIndex:I

    .line 101
    return-void
.end method
