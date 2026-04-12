.class public final Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;
.super Lorg/tukaani/xz/rangecoder/RangeEncoder;


# instance fields
.field private final buf:[B

.field private bufPos:I


# direct methods
.method public constructor <init>(ILorg/tukaani/xz/ArrayCache;)V
    .locals 1

    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/tukaani/xz/ArrayCache;->getByteArray(IZ)[B

    move-result-object p1

    iput-object p1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->buf:[B

    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->reset()V

    return-void
.end method


# virtual methods
.method public finish()I
    .locals 1

    :try_start_0
    invoke-super {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->finish()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public getPendingSize()I
    .locals 3

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    iget-wide v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->cacheSize:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->buf:[B

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method writeByte(I)V
    .locals 3

    iget-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method
