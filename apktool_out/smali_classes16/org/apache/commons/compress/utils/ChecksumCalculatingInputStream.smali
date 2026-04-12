.class public Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;
.super Ljava/io/InputStream;
.source "ChecksumCalculatingInputStream.java"


# instance fields
.field private final checksum:Ljava/util/zip/Checksum;

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/util/zip/Checksum;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "checksum"    # Ljava/util/zip/Checksum;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 34
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 36
    const-string v0, "checksum"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    const-string v0, "in"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    .line 40
    iput-object p2, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    .line 41
    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

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

    .line 51
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 52
    .local v0, "ret":I
    if-ltz v0, :cond_0

    .line 53
    iget-object v1, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 55
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    if-nez p3, :cond_0

    .line 78
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 81
    .local v0, "ret":I
    if-ltz v0, :cond_1

    .line 82
    iget-object v1, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v1, p1, p2, v0}, Ljava/util/zip/Checksum;->update([BII)V

    .line 84
    :cond_1
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

    .line 90
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    .line 91
    const-wide/16 v0, 0x1

    return-wide v0

    .line 93
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
