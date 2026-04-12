.class Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;
.super Ljava/io/InputStream;
.source "AudioFloatFormatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatFormatConverterInputStream"
.end annotation


# instance fields
.field private converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

.field private fsize:I

.field private readfloatbuffer:[F

.field private stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;


# direct methods
.method public constructor <init>(Lcn/sherlock/javax/sound/sampled/AudioFormat;Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;)V
    .locals 1
    .param p1, "targetFormat"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .param p2, "stream"    # Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    .line 58
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->fsize:I

    .line 59
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    .line 60
    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->getConverter(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    .line 61
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->fsize:I

    .line 62
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

    .line 85
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->available()I

    move-result v0

    .line 86
    .local v0, "ret":I
    if-gez v0, :cond_0

    .line 87
    return v0

    .line 88
    :cond_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->fsize:I

    mul-int/2addr v1, v0

    return v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->close()V

    .line 93
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->fsize:I

    mul-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 95
    .end local p0    # "this":Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;
    .end local p1    # "readlimit":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 66
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->read([B)I

    move-result v1

    .line 67
    .local v1, "ret":I
    if-gez v1, :cond_0

    .line 68
    return v1

    .line 69
    :cond_0
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    return v2
.end method

.method public read([BII)I
    .locals 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->fsize:I

    div-int v0, p3, v0

    .line 75
    .local v0, "flen":I
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->readfloatbuffer:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->readfloatbuffer:[F

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 76
    :cond_0
    new-array v1, v0, [F

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->readfloatbuffer:[F

    .line 77
    :cond_1
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->readfloatbuffer:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->read([FII)I

    move-result v1

    .line 78
    .local v1, "ret":I
    if-gez v1, :cond_2

    .line 79
    return v1

    .line 80
    :cond_2
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->readfloatbuffer:[F

    const/4 v6, 0x0

    move v7, v1

    move-object v8, p1

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->toByteArray([FII[BI)[B

    .line 81
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->fsize:I

    mul-int/2addr v2, v1

    return v2
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 103
    .end local p0    # "this":Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public skip(J)J
    .locals 4
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->fsize:I

    int-to-long v1, v1

    div-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->skip(J)J

    move-result-wide v0

    .line 109
    .local v0, "ret":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 110
    return-wide v0

    .line 111
    :cond_0
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->fsize:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    return-wide v2
.end method
