.class public Lcn/sherlock/media/SourceDataLineImpl;
.super Ljava/lang/Object;
.source "SourceDataLineImpl.java"

# interfaces
.implements Lcn/sherlock/javax/sound/sampled/SourceDataLine;


# instance fields
.field private audioTrack:Landroid/media/AudioTrack;

.field private bufferSize:I

.field private format:Lcn/sherlock/javax/sound/sampled/AudioFormat;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v6, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v1, 0x472c4400    # 44100.0f

    const/16 v2, 0x10

    const/4 v3, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(FIIZZ)V

    iput-object v6, p0, Lcn/sherlock/media/SourceDataLineImpl;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/javax/sound/sampled/AudioFormat;)V
    .locals 7
    .param p1, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v6, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v1, 0x472c4400    # 44100.0f

    const/16 v2, 0x10

    const/4 v3, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(FIIZZ)V

    iput-object v6, p0, Lcn/sherlock/media/SourceDataLineImpl;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 20
    iput-object p1, p0, Lcn/sherlock/media/SourceDataLineImpl;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 21
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 53
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    .line 56
    :cond_0
    return-void
.end method

.method public drain()V
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcn/sherlock/media/SourceDataLineImpl;->flush()V

    .line 26
    return-void
.end method

.method public flush()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 33
    :cond_0
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 84
    iget v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->bufferSize:I

    return v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .locals 1

    .line 78
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    return-object v0
.end method

.method public getFramePosition()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLevel()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    return v1

    .line 126
    :cond_0
    return v1
.end method

.method public getLineInfo()Lcn/sherlock/javax/sound/sampled/DataLine$Info;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getLineInfo()Lcn/sherlock/javax/sound/sampled/Line$Info;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcn/sherlock/media/SourceDataLineImpl;->getLineInfo()Lcn/sherlock/javax/sound/sampled/DataLine$Info;

    move-result-object v0

    return-object v0
.end method

.method public getLongFramePosition()J
    .locals 2

    .line 104
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 107
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMicrosecondPosition()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0

    .line 116
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcn/sherlock/media/SourceDataLineImpl;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 3

    .line 65
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 68
    :cond_1
    return v1
.end method

.method public open()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/LineUnavailableException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v0

    float-to-int v0, v0

    .line 141
    .local v0, "sampleRateInHz":I
    iget-object v1, p0, Lcn/sherlock/media/SourceDataLineImpl;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    .line 142
    const/4 v1, 0x4

    move v8, v1

    .local v1, "channelConfig":I
    goto :goto_0

    .line 143
    .end local v1    # "channelConfig":I
    :cond_0
    iget-object v1, p0, Lcn/sherlock/media/SourceDataLineImpl;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 144
    const/16 v1, 0xc

    move v8, v1

    .line 150
    .local v8, "channelConfig":I
    :goto_0
    invoke-static {v0, v8, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v9

    .line 152
    .local v9, "bufferSizeInBytes":I
    iput v9, p0, Lcn/sherlock/media/SourceDataLineImpl;->bufferSize:I

    .line 153
    new-instance v10, Landroid/media/AudioTrack;

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x3

    move-object v1, v10

    move v3, v0

    move v4, v8

    move v6, v9

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v10, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    .line 156
    return-void

    .line 146
    .end local v8    # "channelConfig":I
    .end local v9    # "bufferSizeInBytes":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "format.getChannels() must in (1,2)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public open(Lcn/sherlock/javax/sound/sampled/AudioFormat;)V
    .locals 11
    .param p1, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/LineUnavailableException;
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcn/sherlock/media/SourceDataLineImpl;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 184
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v0

    float-to-int v0, v0

    .line 187
    .local v0, "sampleRateInHz":I
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    .line 188
    const/4 v1, 0x4

    move v8, v1

    .local v1, "channelConfig":I
    goto :goto_0

    .line 189
    .end local v1    # "channelConfig":I
    :cond_0
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 190
    const/16 v1, 0xc

    move v8, v1

    .line 195
    .local v8, "channelConfig":I
    :goto_0
    invoke-static {v0, v8, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v9

    .line 197
    .local v9, "bufferSizeInBytes":I
    iput v9, p0, Lcn/sherlock/media/SourceDataLineImpl;->bufferSize:I

    .line 198
    new-instance v10, Landroid/media/AudioTrack;

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x3

    move-object v1, v10

    move v3, v0

    move v4, v8

    move v6, v9

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v10, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    .line 201
    return-void

    .line 192
    .end local v8    # "channelConfig":I
    .end local v9    # "bufferSizeInBytes":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "format.getChannels() must in (1,2)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public open(Lcn/sherlock/javax/sound/sampled/AudioFormat;I)V
    .locals 10
    .param p1, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/LineUnavailableException;
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcn/sherlock/media/SourceDataLineImpl;->format:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 163
    iput p2, p0, Lcn/sherlock/media/SourceDataLineImpl;->bufferSize:I

    .line 164
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v0

    float-to-int v0, v0

    .line 167
    .local v0, "sampleRateInHz":I
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 168
    const/4 v1, 0x4

    move v8, v1

    .local v1, "channelConfig":I
    goto :goto_0

    .line 169
    .end local v1    # "channelConfig":I
    :cond_0
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 170
    const/16 v1, 0xc

    move v8, v1

    .line 175
    .local v8, "channelConfig":I
    :goto_0
    new-instance v9, Landroid/media/AudioTrack;

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x3

    move-object v1, v9

    move v3, v0

    move v4, v8

    move v6, p2

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v9, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    .line 178
    return-void

    .line 172
    .end local v8    # "channelConfig":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "format.getChannels() must in (1,2)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public start()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 40
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 47
    :cond_0
    return-void
.end method

.method public write([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 205
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcn/sherlock/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    return v0

    .line 208
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
