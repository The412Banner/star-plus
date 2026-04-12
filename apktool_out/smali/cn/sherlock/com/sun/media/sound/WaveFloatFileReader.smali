.class public Lcn/sherlock/com/sun/media/sound/WaveFloatFileReader;
.super Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;
.source "WaveFloatFileReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;-><init>()V

    return-void
.end method

.method private internal_getAudioFileFormat(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    .locals 18
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Lcn/sherlock/com/sun/media/sound/RIFFReader;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;-><init>(Ljava/io/InputStream;)V

    .line 65
    .local v0, "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RIFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 67
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WAVE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 70
    const/4 v2, 0x0

    .line 71
    .local v2, "fmt_found":Z
    const/4 v3, 0x0

    .line 73
    .local v3, "data_found":Z
    const/4 v4, 0x1

    .line 74
    .local v4, "channels":I
    const-wide/16 v5, 0x1

    .line 75
    .local v5, "samplerate":J
    const/4 v7, 0x1

    .line 76
    .local v7, "framesize":I
    const/4 v8, 0x1

    .line 78
    .local v8, "bits":I
    :goto_0
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->hasNextChunk()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 79
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->nextChunk()Lcn/sherlock/com/sun/media/sound/RIFFReader;

    move-result-object v9

    .line 81
    .local v9, "chunk":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v10

    const-string v11, "fmt "

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 82
    const/4 v2, 0x1

    .line 84
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v10

    .line 85
    .local v10, "format":I
    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    .line 87
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v4

    .line 88
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedInt()J

    move-result-wide v5

    .line 89
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedInt()J

    .line 90
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v7

    .line 91
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v8

    goto :goto_1

    .line 86
    :cond_0
    new-instance v11, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v11}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v11

    .line 93
    .end local v10    # "format":I
    :cond_1
    :goto_1
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v10

    const-string v11, "data"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 94
    const/4 v3, 0x1

    .line 95
    move v12, v4

    move-wide v13, v5

    move v15, v7

    move/from16 v16, v8

    goto :goto_2

    .line 97
    .end local v9    # "chunk":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    :cond_2
    goto :goto_0

    .line 78
    :cond_3
    move v12, v4

    move-wide v13, v5

    move v15, v7

    move/from16 v16, v8

    .line 99
    .end local v4    # "channels":I
    .end local v5    # "samplerate":J
    .end local v7    # "framesize":I
    .end local v8    # "bits":I
    .local v12, "channels":I
    .local v13, "samplerate":J
    .local v15, "framesize":I
    .local v16, "bits":I
    :goto_2
    if-eqz v2, :cond_5

    .line 101
    if-eqz v3, :cond_4

    .line 104
    new-instance v17, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    sget-object v5, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    long-to-float v6, v13

    long-to-float v10, v13

    const/4 v11, 0x0

    move-object/from16 v4, v17

    move/from16 v7, v16

    move v8, v12

    move v9, v15

    invoke-direct/range {v4 .. v11}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    .line 107
    .local v4, "audioformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    new-instance v5, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;

    sget-object v6, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->WAVE:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    const/4 v7, -0x1

    invoke-direct {v5, v6, v4, v7}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;Lcn/sherlock/javax/sound/sampled/AudioFormat;I)V

    .line 110
    .local v5, "fileformat":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    return-object v5

    .line 102
    .end local v4    # "audioformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .end local v5    # "fileformat":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    :cond_4
    new-instance v4, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v4}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v4

    .line 100
    :cond_5
    new-instance v4, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v4}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v4

    .line 68
    .end local v2    # "fmt_found":Z
    .end local v3    # "data_found":Z
    .end local v12    # "channels":I
    .end local v13    # "samplerate":J
    .end local v15    # "framesize":I
    .end local v16    # "bits":I
    :cond_6
    new-instance v2, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v2}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v2

    .line 66
    :cond_7
    new-instance v2, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v2}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v2
.end method


# virtual methods
.method public getAudioFileFormat(Ljava/io/File;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 149
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lcn/sherlock/com/sun/media/sound/WaveFloatFileReader;->getAudioFileFormat(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .local v1, "format":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 152
    nop

    .line 153
    return-object v1

    .line 151
    .end local v1    # "format":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 152
    throw v1
.end method

.method public getAudioFileFormat(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 54
    :try_start_0
    invoke-direct {p0, p1}, Lcn/sherlock/com/sun/media/sound/WaveFloatFileReader;->internal_getAudioFileFormat(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .local v0, "format":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 57
    nop

    .line 58
    return-object v0

    .line 56
    .end local v0    # "format":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 57
    throw v0
.end method

.method public getAudioFileFormat(Ljava/net/URL;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 137
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lcn/sherlock/com/sun/media/sound/WaveFloatFileReader;->getAudioFileFormat(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .local v1, "format":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 140
    nop

    .line 141
    return-object v1

    .line 139
    .end local v1    # "format":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 140
    throw v1
.end method

.method public getAudioInputStream(Ljava/io/File;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/WaveFloatFileReader;->getAudioInputStream(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getAudioInputStream(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/WaveFloatFileReader;->getAudioFileFormat(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;

    move-result-object v0

    .line 117
    .local v0, "format":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    new-instance v1, Lcn/sherlock/com/sun/media/sound/RIFFReader;

    invoke-direct {v1, p1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;-><init>(Ljava/io/InputStream;)V

    .line 118
    .local v1, "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RIFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WAVE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    :goto_0
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->hasNextChunk()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->nextChunk()Lcn/sherlock/com/sun/media/sound/RIFFReader;

    move-result-object v2

    .line 124
    .local v2, "chunk":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    new-instance v3, Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v4

    .line 126
    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getSize()J

    move-result-wide v5

    invoke-direct {v3, v2, v4, v5, v6}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcn/sherlock/javax/sound/sampled/AudioFormat;J)V

    .line 125
    return-object v3

    .line 128
    .end local v2    # "chunk":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    :cond_0
    goto :goto_0

    .line 129
    :cond_1
    new-instance v2, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v2}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v2

    .line 121
    :cond_2
    new-instance v2, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v2}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v2

    .line 119
    :cond_3
    new-instance v2, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v2}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v2
.end method

.method public getAudioInputStream(Ljava/net/URL;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/WaveFloatFileReader;->getAudioInputStream(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v0

    return-object v0
.end method
