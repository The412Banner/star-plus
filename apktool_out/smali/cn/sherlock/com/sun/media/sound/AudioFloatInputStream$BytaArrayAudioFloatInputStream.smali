.class Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;
.super Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;
.source "AudioFloatInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BytaArrayAudioFloatInputStream"
.end annotation


# instance fields
.field private buffer:[B

.field private buffer_len:I

.field private buffer_offset:I

.field private converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

.field private format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

.field private framesize_pc:I

.field private markpos:I

.field private pos:I


# direct methods
.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;[BII)V
    .locals 2
    .param p1, "converter"    # Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .line 59
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    .line 50
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->markpos:I

    .line 60
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    .line 61
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 62
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer:[B

    .line 63
    iput p3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_offset:I

    .line 64
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->framesize_pc:I

    .line 65
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->framesize_pc:I

    div-int v0, p4, v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_len:I

    .line 67
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_len:I

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    return-object v0
.end method

.method public getFrameLength()J
    .locals 2

    .line 74
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_len:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .line 113
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->markpos:I

    .line 114
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public read([FII)I
    .locals 6
    .param p1, "b"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    if-eqz p1, :cond_4

    .line 80
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_3

    .line 82
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_len:I

    if-lt v0, v1, :cond_0

    .line 83
    const/4 v0, -0x1

    return v0

    .line 84
    :cond_0
    if-nez p3, :cond_1

    .line 85
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_1
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    add-int/2addr v0, p3

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_len:I

    if-le v0, v1, :cond_2

    .line 87
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_len:I

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    sub-int p3, v0, v1

    .line 88
    :cond_2
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer:[B

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_offset:I

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->framesize_pc:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->toFloatArray([BI[FII)[F

    .line 90
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    .line 91
    return p3

    .line 81
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 79
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->markpos:I

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    .line 122
    return-void
.end method

.method public skip(J)J
    .locals 4
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_len:I

    if-lt v0, v1, :cond_0

    .line 96
    const-wide/16 v0, -0x1

    return-wide v0

    .line 97
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 98
    return-wide v0

    .line 99
    :cond_1
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_len:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 100
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_len:I

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    sub-int/2addr v0, v1

    int-to-long p1, v0

    .line 101
    :cond_2
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    .line 102
    return-wide p1
.end method
