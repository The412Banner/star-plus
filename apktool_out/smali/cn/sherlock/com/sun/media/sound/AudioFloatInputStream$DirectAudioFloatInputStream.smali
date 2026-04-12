.class Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;
.super Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;
.source "AudioFloatInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectAudioFloatInputStream"
.end annotation


# instance fields
.field private buffer:[B

.field private converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

.field private framesize_pc:I

.field private stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;


# direct methods
.method public constructor <init>(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)V
    .locals 14
    .param p1, "stream"    # Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 133
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;-><init>()V

    .line 134
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    invoke-static {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->getConverter(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    .line 135
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    .line 139
    .local v0, "format":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    sget-object v1, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    invoke-static {v1, v0}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getTargetFormats(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;Lcn/sherlock/javax/sound/sampled/AudioFormat;)[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v1

    .line 141
    .local v1, "formats":[Lcn/sherlock/javax/sound/sampled/AudioFormat;
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 142
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .local v2, "newformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    goto :goto_0

    .line 144
    .end local v2    # "newformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    :cond_0
    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v2

    .line 145
    .local v2, "samplerate":F
    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v3

    .line 146
    .local v3, "samplesizeinbits":I
    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v4

    .line 147
    .local v4, "framesize":I
    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameRate()F

    move-result v5

    .line 148
    .local v5, "framerate":F
    const/16 v11, 0x10

    .line 149
    .end local v3    # "samplesizeinbits":I
    .local v11, "samplesizeinbits":I
    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v3

    div-int/lit8 v6, v11, 0x8

    mul-int v12, v3, v6

    .line 150
    .end local v4    # "framesize":I
    .local v12, "framesize":I
    move v9, v2

    .line 152
    .end local v5    # "framerate":F
    .local v9, "framerate":F
    new-instance v13, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    sget-object v4, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    .line 154
    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v7

    const/4 v10, 0x0

    move-object v3, v13

    move v5, v2

    move v6, v11

    move v8, v12

    invoke-direct/range {v3 .. v10}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    move-object v2, v3

    .line 158
    .end local v9    # "framerate":F
    .end local v11    # "samplesizeinbits":I
    .end local v12    # "framesize":I
    .local v2, "newformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    :goto_0
    invoke-static {v2, p1}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getAudioInputStream(Lcn/sherlock/javax/sound/sampled/AudioFormat;Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v3

    invoke-static {v3}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->getConverter(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    move-result-object v3

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    .line 161
    .end local v0    # "format":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .end local v1    # "formats":[Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .end local v2    # "newformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    :cond_1
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    .line 162
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->framesize_pc:I

    .line 163
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 164
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

    .line 194
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->available()I

    move-result v0

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->framesize_pc:I

    div-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->close()V

    .line 199
    return-void
.end method

.method public getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .locals 1

    .line 167
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method public getFrameLength()J
    .locals 2

    .line 171
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFrameLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .line 202
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->framesize_pc:I

    mul-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->mark(I)V

    .line 203
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read([FII)I
    .locals 5
    .param p1, "b"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->framesize_pc:I

    mul-int/2addr v0, p3

    .line 176
    .local v0, "b_len":I
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->buffer:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->buffer:[B

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 177
    :cond_0
    new-array v1, v0, [B

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->buffer:[B

    .line 178
    :cond_1
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->buffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->read([BII)I

    move-result v1

    .line 179
    .local v1, "ret":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 180
    return v2

    .line 181
    :cond_2
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->converter:Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->buffer:[B

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->framesize_pc:I

    div-int v4, v1, v4

    invoke-virtual {v2, v3, p1, p2, v4}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->toFloatArray([B[FII)[F

    .line 182
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->framesize_pc:I

    div-int v2, v1, v2

    return v2
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->reset()V

    .line 211
    return-void
.end method

.method public skip(J)J
    .locals 7
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->framesize_pc:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    .line 187
    .local v0, "b_len":J
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-virtual {v2, v0, v1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->skip(J)J

    move-result-wide v2

    .line 188
    .local v2, "ret":J
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 189
    return-wide v4

    .line 190
    :cond_0
    iget v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream$DirectAudioFloatInputStream;->framesize_pc:I

    int-to-long v4, v4

    div-long v4, v2, v4

    return-wide v4
.end method
