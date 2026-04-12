.class public Lcn/sherlock/com/sun/media/sound/AudioFileSoundbankReader;
.super Ljp/kshoji/javax/sound/midi/spi/SoundbankReader;
.source "AudioFileSoundbankReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljp/kshoji/javax/sound/midi/spi/SoundbankReader;-><init>()V

    return-void
.end method


# virtual methods
.method public getSoundbank(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Ljp/kshoji/javax/sound/midi/Soundbank;
    .locals 5
    .param p1, "ais"    # Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    :try_start_0
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFrameLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    nop

    .line 84
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v1

    const/16 v2, 0x400

    rem-int v1, v2, v1

    sub-int/2addr v2, v1

    new-array v1, v2, [B

    .line 86
    .local v1, "buff":[B
    :goto_0
    invoke-virtual {p1, v1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "ret":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 87
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->close()V

    .line 90
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object v0, v2

    .line 91
    .end local v1    # "buff":[B
    .end local v3    # "ret":I
    .local v0, "buffer":[B
    goto :goto_1

    .line 92
    .end local v0    # "buffer":[B
    :cond_1
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFrameLength()J

    move-result-wide v0

    .line 93
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 94
    .restart local v0    # "buffer":[B
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 96
    :goto_1
    new-instance v1, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;

    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    invoke-direct {v2, v0}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;-><init>([B)V

    .line 97
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v3

    const/high16 v4, -0x3a6a0000    # -4800.0f

    invoke-direct {v1, v2, v3, v4}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;-><init>(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;Lcn/sherlock/javax/sound/sampled/AudioFormat;F)V

    .line 98
    .local v1, "osc":Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;
    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    invoke-direct {v2}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;-><init>()V

    .line 99
    .local v2, "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v3, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;

    invoke-direct {v3}, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;-><init>()V

    .line 102
    .local v3, "sbk":Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;
    new-instance v4, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;

    invoke-direct {v4}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;-><init>()V

    .line 103
    .local v4, "ins":Lcn/sherlock/com/sun/media/sound/SimpleInstrument;
    invoke-virtual {v4, v2}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->add(Lcn/sherlock/com/sun/media/sound/ModelPerformer;)V

    .line 104
    invoke-virtual {v3, v4}, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->addInstrument(Ljp/kshoji/javax/sound/midi/Instrument;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    return-object v3

    .line 106
    .end local v0    # "buffer":[B
    .end local v1    # "osc":Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;
    .end local v2    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v3    # "sbk":Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;
    .end local v4    # "ins":Lcn/sherlock/com/sun/media/sound/SimpleInstrument;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSoundbank(Ljava/io/File;)Ljp/kshoji/javax/sound/midi/Soundbank;
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getAudioInputStream(Ljava/io/File;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v1

    .line 115
    .local v1, "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->close()V

    .line 116
    new-instance v2, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;

    new-instance v9, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v5, 0x0

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;-><init>(Ljava/io/File;JJ)V

    const/high16 v3, -0x3a6a0000    # -4800.0f

    invoke-direct {v2, v9, v3}, Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;-><init>(Lcn/sherlock/com/sun/media/sound/ModelByteBuffer;F)V

    .line 118
    .local v2, "osc":Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;
    new-instance v3, Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    invoke-direct {v3}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;-><init>()V

    .line 119
    .local v3, "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v4, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;

    invoke-direct {v4}, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;-><init>()V

    .line 121
    .local v4, "sbk":Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;
    new-instance v5, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;

    invoke-direct {v5}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;-><init>()V

    .line 122
    .local v5, "ins":Lcn/sherlock/com/sun/media/sound/SimpleInstrument;
    invoke-virtual {v5, v3}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->add(Lcn/sherlock/com/sun/media/sound/ModelPerformer;)V

    .line 123
    invoke-virtual {v4, v5}, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->addInstrument(Ljp/kshoji/javax/sound/midi/Instrument;)V
    :try_end_0
    .catch Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-object v4

    .line 127
    .end local v1    # "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .end local v2    # "osc":Lcn/sherlock/com/sun/media/sound/ModelByteBufferWavetable;
    .end local v3    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v4    # "sbk":Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;
    .end local v5    # "ins":Lcn/sherlock/com/sun/media/sound/SimpleInstrument;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/io/IOException;
    return-object v0

    .line 125
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 126
    .local v1, "e1":Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;
    return-object v0
.end method

.method public getSoundbank(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/Soundbank;
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 66
    :try_start_0
    invoke-static {p1}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getAudioInputStream(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v0

    .line 67
    .local v0, "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/AudioFileSoundbankReader;->getSoundbank(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Ljp/kshoji/javax/sound/midi/Soundbank;

    move-result-object v1
    :try_end_0
    .catch Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .local v1, "sbk":Ljp/kshoji/javax/sound/midi/Soundbank;
    if-eqz v1, :cond_0

    .line 69
    return-object v1

    .line 68
    .end local v0    # "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .end local v1    # "sbk":Ljp/kshoji/javax/sound/midi/Soundbank;
    :cond_0
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    goto :goto_1

    .line 70
    :catch_1
    move-exception v0

    .line 72
    :goto_0
    nop

    .line 73
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSoundbank(Ljava/net/URL;)Ljp/kshoji/javax/sound/midi/Soundbank;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getAudioInputStream(Ljava/net/URL;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v1

    .line 52
    .local v1, "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    invoke-virtual {p0, v1}, Lcn/sherlock/com/sun/media/sound/AudioFileSoundbankReader;->getSoundbank(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Ljp/kshoji/javax/sound/midi/Soundbank;

    move-result-object v2

    .line 53
    .local v2, "sbk":Ljp/kshoji/javax/sound/midi/Soundbank;
    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->close()V
    :try_end_0
    .catch Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-object v2

    .line 57
    .end local v1    # "ais":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .end local v2    # "sbk":Ljp/kshoji/javax/sound/midi/Soundbank;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/IOException;
    return-object v0

    .line 55
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 56
    .local v1, "e":Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;
    return-object v0
.end method
