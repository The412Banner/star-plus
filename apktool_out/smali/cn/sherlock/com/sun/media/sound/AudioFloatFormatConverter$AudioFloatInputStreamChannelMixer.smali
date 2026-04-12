.class Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;
.super Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;
.source "AudioFloatFormatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatInputStreamChannelMixer"
.end annotation


# instance fields
.field private ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

.field private conversion_buffer:[F

.field private sourceChannels:I

.field private targetChannels:I

.field private targetFormat:Lcn/sherlock/javax/sound/sampled/AudioFormat;


# direct methods
.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;I)V
    .locals 10
    .param p1, "ais"    # Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;
    .param p2, "targetChannels"    # I

    .line 130
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;-><init>()V

    .line 131
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    .line 132
    iput p2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    .line 133
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    .line 134
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    .line 135
    .local v0, "format":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    new-instance v9, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v2

    .line 136
    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v3

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v4

    .line 137
    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v1

    iget v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    div-int/2addr v1, v5

    mul-int v6, v1, p2

    .line 138
    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameRate()F

    move-result v7

    .line 139
    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->isBigEndian()Z

    move-result v8

    move-object v1, v9

    move v5, p2

    invoke-direct/range {v1 .. v8}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    iput-object v9, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetFormat:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 140
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

    .line 143
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->available()I

    move-result v0

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    div-int/2addr v0, v1

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->close()V

    .line 148
    return-void
.end method

.method public getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .locals 1

    .line 151
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetFormat:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    return-object v0
.end method

.method public getFrameLength()J
    .locals 2

    .line 155
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->getFrameLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public mark(I)V
    .locals 3
    .param p1, "readlimit"    # I

    .line 159
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    div-int v1, p1, v1

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->mark(I)V

    .line 160
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read([FII)I
    .locals 10
    .param p1, "b"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    div-int v0, p3, v0

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    mul-int/2addr v0, v1

    .line 168
    .local v0, "len2":I
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->conversion_buffer:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->conversion_buffer:[F

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 169
    :cond_0
    new-array v1, v0, [F

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->conversion_buffer:[F

    .line 170
    :cond_1
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->conversion_buffer:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->read([FII)I

    move-result v1

    .line 171
    .local v1, "ret":I
    if-gez v1, :cond_2

    .line 172
    return v1

    .line 173
    :cond_2
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 174
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    .line 175
    .local v2, "cs":I
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_0
    iget v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    if-ge v3, v4, :cond_4

    .line 176
    const/4 v4, 0x0

    .local v4, "i":I
    add-int v5, p2, v3

    .local v5, "ix":I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 177
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->conversion_buffer:[F

    aget v6, v6, v4

    aput v6, p1, v5

    .line 176
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v2

    goto :goto_1

    .line 175
    .end local v4    # "i":I
    .end local v5    # "ix":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "cs":I
    .end local v3    # "c":I
    :cond_4
    goto/16 :goto_a

    :cond_5
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    if-ne v2, v3, :cond_a

    .line 181
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    .line 182
    .restart local v2    # "cs":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v4, p2

    .local v4, "ix":I
    :goto_2
    if-ge v3, v0, :cond_6

    .line 183
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->conversion_buffer:[F

    aget v5, v5, v3

    aput v5, p1, v4

    .line 182
    add-int/2addr v3, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 185
    .end local v3    # "i":I
    .end local v4    # "ix":I
    :cond_6
    const/4 v3, 0x1

    .local v3, "c":I
    :goto_3
    iget v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    if-ge v3, v4, :cond_8

    .line 186
    move v4, v3

    .local v4, "i":I
    move v5, p2

    .restart local v5    # "ix":I
    :goto_4
    if-ge v4, v0, :cond_7

    .line 187
    aget v6, p1, v5

    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->conversion_buffer:[F

    aget v7, v7, v4

    add-float/2addr v6, v7

    aput v6, p1, v5

    .line 186
    add-int/2addr v4, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 185
    .end local v4    # "i":I
    .end local v5    # "ix":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 190
    .end local v3    # "c":I
    :cond_8
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v3

    .line 191
    .local v4, "vol":F
    const/4 v3, 0x0

    .local v3, "i":I
    move v5, p2

    .restart local v5    # "ix":I
    :goto_5
    if-ge v3, v0, :cond_9

    .line 192
    aget v6, p1, v5

    mul-float/2addr v6, v4

    aput v6, p1, v5

    .line 191
    add-int/2addr v3, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 194
    .end local v2    # "cs":I
    .end local v3    # "i":I
    .end local v4    # "vol":F
    .end local v5    # "ix":I
    :cond_9
    goto :goto_a

    .line 195
    :cond_a
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 196
    .local v2, "minChannels":I
    add-int v3, p2, p3

    .line 197
    .local v3, "off_len":I
    iget v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    .line 198
    .local v4, "ct":I
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    .line 199
    .local v5, "cs":I
    const/4 v6, 0x0

    .local v6, "c":I
    :goto_6
    if-ge v6, v2, :cond_c

    .line 200
    add-int v7, p2, v6

    .local v7, "i":I
    move v8, v6

    .local v8, "ix":I
    :goto_7
    if-ge v7, v3, :cond_b

    .line 201
    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->conversion_buffer:[F

    aget v9, v9, v8

    aput v9, p1, v7

    .line 200
    add-int/2addr v7, v4

    add-int/2addr v8, v5

    goto :goto_7

    .line 199
    .end local v7    # "i":I
    .end local v8    # "ix":I
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 204
    .end local v6    # "c":I
    :cond_c
    move v6, v2

    .restart local v6    # "c":I
    :goto_8
    iget v7, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    if-ge v6, v7, :cond_e

    .line 205
    add-int v7, p2, v6

    .restart local v7    # "i":I
    :goto_9
    if-ge v7, v3, :cond_d

    .line 206
    const/4 v8, 0x0

    aput v8, p1, v7

    .line 205
    add-int/2addr v7, v4

    goto :goto_9

    .line 204
    .end local v7    # "i":I
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 210
    .end local v2    # "minChannels":I
    .end local v3    # "off_len":I
    .end local v4    # "ct":I
    .end local v5    # "cs":I
    .end local v6    # "c":I
    :cond_e
    :goto_a
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    div-int v2, v1, v2

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    mul-int/2addr v2, v3

    return v2
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->reset()V

    .line 215
    return-void
.end method

.method public skip(J)J
    .locals 6
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    int-to-long v1, v1

    div-long v1, p1, v1

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->skip(J)J

    move-result-wide v0

    .line 219
    .local v0, "ret":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 220
    return-wide v0

    .line 221
    :cond_0
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    int-to-long v2, v2

    div-long v2, v0, v2

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    return-wide v2
.end method
