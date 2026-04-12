.class Lorg/tukaani/xz/BlockOutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;


# instance fields
.field private final check:Lorg/tukaani/xz/check/Check;

.field private final compressedSizeLimit:J

.field private filterChain:Lorg/tukaani/xz/FinishableOutputStream;

.field private final headerSize:I

.field private final out:Ljava/io/OutputStream;

.field private final outCounted:Lorg/tukaani/xz/CountingOutputStream;

.field private final tempBuf:[B

.field private uncompressedSize:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterEncoder;Lorg/tukaani/xz/check/Check;Lorg/tukaani/xz/ArrayCache;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/tukaani/xz/FinishableOutputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tukaani/xz/BlockOutputStream;->uncompressedSize:J

    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/tukaani/xz/BlockOutputStream;->tempBuf:[B

    iput-object p1, p0, Lorg/tukaani/xz/BlockOutputStream;->out:Ljava/io/OutputStream;

    iput-object p3, p0, Lorg/tukaani/xz/BlockOutputStream;->check:Lorg/tukaani/xz/check/Check;

    new-instance v1, Lorg/tukaani/xz/CountingOutputStream;

    invoke-direct {v1, p1}, Lorg/tukaani/xz/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/tukaani/xz/BlockOutputStream;->outCounted:Lorg/tukaani/xz/CountingOutputStream;

    iget-object v1, p0, Lorg/tukaani/xz/BlockOutputStream;->outCounted:Lorg/tukaani/xz/CountingOutputStream;

    iput-object v1, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    array-length v1, p2

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, p2, v1

    iget-object v3, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-interface {v2, v3, p4}, Lorg/tukaani/xz/FilterEncoder;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v2, p2

    sub-int/2addr v2, v0

    invoke-virtual {p4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v0, v1

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    aget-object v2, p2, v0

    invoke-interface {v2}, Lorg/tukaani/xz/FilterEncoder;->getFilterID()J

    move-result-wide v2

    invoke-static {p4, v2, v3}, Lorg/tukaani/xz/common/EncoderUtil;->encodeVLI(Ljava/io/OutputStream;J)V

    aget-object v2, p2, v0

    invoke-interface {v2}, Lorg/tukaani/xz/FilterEncoder;->getFilterProps()[B

    move-result-object v2

    array-length v3, v2

    int-to-long v3, v3

    invoke-static {p4, v3, v4}, Lorg/tukaani/xz/common/EncoderUtil;->encodeVLI(Ljava/io/OutputStream;J)V

    invoke-virtual {p4, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    if-eqz p2, :cond_2

    invoke-virtual {p4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    array-length p4, p2

    add-int/lit8 p4, p4, 0x4

    iput p4, p0, Lorg/tukaani/xz/BlockOutputStream;->headerSize:I

    iget p4, p0, Lorg/tukaani/xz/BlockOutputStream;->headerSize:I

    const/16 v0, 0x400

    if-gt p4, v0, :cond_3

    array-length p4, p2

    div-int/lit8 p4, p4, 0x4

    int-to-byte p4, p4

    aput-byte p4, p2, v1

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {p1, p2}, Lorg/tukaani/xz/common/EncoderUtil;->writeCRC32(Ljava/io/OutputStream;[B)V

    iget p1, p0, Lorg/tukaani/xz/BlockOutputStream;->headerSize:I

    int-to-long p1, p1

    const-wide v0, 0x7ffffffffffffffcL

    sub-long/2addr v0, p1

    invoke-virtual {p3}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result p1

    int-to-long p1, p1

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/tukaani/xz/BlockOutputStream;->compressedSizeLimit:J

    return-void

    :cond_3
    new-instance p1, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>()V

    throw p1
.end method

.method private validate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->outCounted:Lorg/tukaani/xz/CountingOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/CountingOutputStream;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v4, p0, Lorg/tukaani/xz/BlockOutputStream;->compressedSizeLimit:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/tukaani/xz/BlockOutputStream;->uncompressedSize:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "XZ Stream has grown too big"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public finish()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->finish()V

    invoke-direct {p0}, Lorg/tukaani/xz/BlockOutputStream;->validate()V

    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->outCounted:Lorg/tukaani/xz/CountingOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/CountingOutputStream;->getSize()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x3

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/tukaani/xz/BlockOutputStream;->out:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/tukaani/xz/BlockOutputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v1}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->flush()V

    invoke-direct {p0}, Lorg/tukaani/xz/BlockOutputStream;->validate()V

    return-void
.end method

.method public getUncompressedSize()J
    .locals 2

    iget-wide v0, p0, Lorg/tukaani/xz/BlockOutputStream;->uncompressedSize:J

    return-wide v0
.end method

.method public getUnpaddedSize()J
    .locals 4

    iget v0, p0, Lorg/tukaani/xz/BlockOutputStream;->headerSize:I

    int-to-long v0, v0

    iget-object v2, p0, Lorg/tukaani/xz/BlockOutputStream;->outCounted:Lorg/tukaani/xz/CountingOutputStream;

    invoke-virtual {v2}, Lorg/tukaani/xz/CountingOutputStream;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/tukaani/xz/BlockOutputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->tempBuf:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object p1, p0, Lorg/tukaani/xz/BlockOutputStream;->tempBuf:[B

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lorg/tukaani/xz/BlockOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/tukaani/xz/FinishableOutputStream;->write([BII)V

    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0, p1, p2, p3}, Lorg/tukaani/xz/check/Check;->update([BII)V

    iget-wide p1, p0, Lorg/tukaani/xz/BlockOutputStream;->uncompressedSize:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/tukaani/xz/BlockOutputStream;->uncompressedSize:J

    invoke-direct {p0}, Lorg/tukaani/xz/BlockOutputStream;->validate()V

    return-void
.end method
