.class Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;
.super Ljava/util/zip/InflaterInputStream;
.source "InflaterInputStreamWithStatistics.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# instance fields
.field private compressedCount:J

.field private uncompressedCount:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 39
    invoke-direct {p0, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    .line 36
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    .line 36
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;
    .param p3, "size"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    .line 36
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    .line 48
    return-void
.end method


# virtual methods
.method protected fill()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    .line 53
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    .line 54
    return-void
.end method

.method public getCompressedCount()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    return-wide v0
.end method

.method public getUncompressedCount()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->read()I

    move-result v0

    .line 59
    .local v0, "b":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 60
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    .line 62
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v0

    .line 68
    .local v0, "bytes":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 69
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    .line 71
    :cond_0
    return v0
.end method
