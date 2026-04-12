.class public Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;
.super Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;
.source "WaveExtensibleFileReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    }
.end annotation


# static fields
.field private static SUBTYPE_IEEE_FLOAT:Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;

.field private static SUBTYPE_PCM:Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;

.field private static allchannelnames:[Ljava/lang/String;

.field private static channelnames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 143
    const/16 v0, 0x12

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "FL"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "FR"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "FC"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "LF"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "BL"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "BR"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "FLC"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "FLR"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "BC"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "SL"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "SR"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "TC"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "TFL"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "TFC"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "TFR"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-string v2, "TBL"

    const/16 v18, 0xf

    aput-object v2, v1, v18

    const-string v2, "TBC"

    const/16 v19, 0x10

    aput-object v2, v1, v19

    const-string v2, "TBR"

    const/16 v20, 0x11

    aput-object v2, v1, v20

    sput-object v1, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->channelnames:[Ljava/lang/String;

    .line 149
    const/16 v1, 0x40

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "w1"

    aput-object v2, v1, v3

    const-string/jumbo v2, "w2"

    aput-object v2, v1, v4

    const-string/jumbo v2, "w3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "w4"

    aput-object v2, v1, v6

    const-string/jumbo v2, "w5"

    aput-object v2, v1, v7

    const-string/jumbo v2, "w6"

    aput-object v2, v1, v8

    const-string/jumbo v2, "w7"

    aput-object v2, v1, v9

    const-string/jumbo v2, "w8"

    aput-object v2, v1, v10

    const-string/jumbo v2, "w9"

    aput-object v2, v1, v11

    const-string/jumbo v2, "w10"

    aput-object v2, v1, v12

    const-string/jumbo v2, "w11"

    aput-object v2, v1, v13

    const-string/jumbo v2, "w12"

    aput-object v2, v1, v14

    const-string/jumbo v2, "w13"

    aput-object v2, v1, v15

    const-string/jumbo v2, "w14"

    aput-object v2, v1, v16

    const-string/jumbo v2, "w15"

    aput-object v2, v1, v17

    const-string/jumbo v2, "w16"

    aput-object v2, v1, v18

    const-string/jumbo v2, "w17"

    aput-object v2, v1, v19

    const-string/jumbo v2, "w18"

    aput-object v2, v1, v20

    const-string/jumbo v2, "w19"

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-string/jumbo v2, "w20"

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-string/jumbo v2, "w21"

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-string/jumbo v2, "w22"

    aput-object v2, v1, v0

    const/16 v0, 0x16

    const-string/jumbo v2, "w23"

    aput-object v2, v1, v0

    const/16 v0, 0x17

    const-string/jumbo v2, "w24"

    aput-object v2, v1, v0

    const/16 v0, 0x18

    const-string/jumbo v2, "w25"

    aput-object v2, v1, v0

    const/16 v0, 0x19

    const-string/jumbo v2, "w26"

    aput-object v2, v1, v0

    const/16 v0, 0x1a

    const-string/jumbo v2, "w27"

    aput-object v2, v1, v0

    const/16 v0, 0x1b

    const-string/jumbo v2, "w28"

    aput-object v2, v1, v0

    const/16 v0, 0x1c

    const-string/jumbo v2, "w29"

    aput-object v2, v1, v0

    const/16 v0, 0x1d

    const-string/jumbo v2, "w30"

    aput-object v2, v1, v0

    const/16 v0, 0x1e

    const-string/jumbo v2, "w31"

    aput-object v2, v1, v0

    const/16 v0, 0x1f

    const-string/jumbo v2, "w32"

    aput-object v2, v1, v0

    const/16 v0, 0x20

    const-string/jumbo v2, "w33"

    aput-object v2, v1, v0

    const/16 v0, 0x21

    const-string/jumbo v2, "w34"

    aput-object v2, v1, v0

    const/16 v0, 0x22

    const-string/jumbo v2, "w35"

    aput-object v2, v1, v0

    const/16 v0, 0x23

    const-string/jumbo v2, "w36"

    aput-object v2, v1, v0

    const/16 v0, 0x24

    const-string/jumbo v2, "w37"

    aput-object v2, v1, v0

    const/16 v0, 0x25

    const-string/jumbo v2, "w38"

    aput-object v2, v1, v0

    const/16 v0, 0x26

    const-string/jumbo v2, "w39"

    aput-object v2, v1, v0

    const/16 v0, 0x27

    const-string/jumbo v2, "w40"

    aput-object v2, v1, v0

    const/16 v0, 0x28

    const-string/jumbo v2, "w41"

    aput-object v2, v1, v0

    const/16 v0, 0x29

    const-string/jumbo v2, "w42"

    aput-object v2, v1, v0

    const/16 v0, 0x2a

    const-string/jumbo v2, "w43"

    aput-object v2, v1, v0

    const/16 v0, 0x2b

    const-string/jumbo v2, "w44"

    aput-object v2, v1, v0

    const/16 v0, 0x2c

    const-string/jumbo v2, "w45"

    aput-object v2, v1, v0

    const/16 v0, 0x2d

    const-string/jumbo v2, "w46"

    aput-object v2, v1, v0

    const/16 v0, 0x2e

    const-string/jumbo v2, "w47"

    aput-object v2, v1, v0

    const/16 v0, 0x2f

    const-string/jumbo v2, "w48"

    aput-object v2, v1, v0

    const/16 v0, 0x30

    const-string/jumbo v2, "w49"

    aput-object v2, v1, v0

    const/16 v0, 0x31

    const-string/jumbo v2, "w50"

    aput-object v2, v1, v0

    const/16 v0, 0x32

    const-string/jumbo v2, "w51"

    aput-object v2, v1, v0

    const/16 v0, 0x33

    const-string/jumbo v2, "w52"

    aput-object v2, v1, v0

    const/16 v0, 0x34

    const-string/jumbo v2, "w53"

    aput-object v2, v1, v0

    const/16 v0, 0x35

    const-string/jumbo v2, "w54"

    aput-object v2, v1, v0

    const/16 v0, 0x36

    const-string/jumbo v2, "w55"

    aput-object v2, v1, v0

    const/16 v0, 0x37

    const-string/jumbo v2, "w56"

    aput-object v2, v1, v0

    const/16 v0, 0x38

    const-string/jumbo v2, "w57"

    aput-object v2, v1, v0

    const/16 v0, 0x39

    const-string/jumbo v2, "w58"

    aput-object v2, v1, v0

    const/16 v0, 0x3a

    const-string/jumbo v2, "w59"

    aput-object v2, v1, v0

    const/16 v0, 0x3b

    const-string/jumbo v2, "w60"

    aput-object v2, v1, v0

    const/16 v0, 0x3c

    const-string/jumbo v2, "w61"

    aput-object v2, v1, v0

    const/16 v0, 0x3d

    const-string/jumbo v2, "w62"

    aput-object v2, v1, v0

    const/16 v0, 0x3e

    const-string/jumbo v2, "w63"

    aput-object v2, v1, v0

    const/16 v0, 0x3f

    const-string/jumbo v2, "w64"

    aput-object v2, v1, v0

    sput-object v1, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->allchannelnames:[Ljava/lang/String;

    .line 158
    new-instance v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;

    const/16 v14, 0x9b

    const/16 v15, 0x71

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/16 v8, 0x80

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xaa

    const/4 v12, 0x0

    const/16 v13, 0x38

    move-object v3, v0

    invoke-direct/range {v3 .. v15}, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;-><init>(JIIIIIIIIII)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->SUBTYPE_PCM:Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;

    .line 161
    new-instance v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;

    const/16 v27, 0x9b

    const/16 v28, 0x71

    const-wide/16 v17, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x10

    const/16 v21, 0x80

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xaa

    const/16 v25, 0x0

    const/16 v26, 0x38

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v28}, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;-><init>(JIIIIIIIIII)V

    sput-object v0, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->SUBTYPE_IEEE_FLOAT:Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;-><init>()V

    return-void
.end method

.method private decodeChannelMask(J)Ljava/lang/String;
    .locals 8
    .param p1, "channelmask"    # J

    .line 165
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-wide/16 v1, 0x1

    .line 167
    .local v1, "m":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->allchannelnames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 168
    and-long v4, p1, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 169
    sget-object v4, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->channelnames:[Ljava/lang/String;

    array-length v4, v4

    const-string v5, " "

    if-ge v3, v4, :cond_0

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->channelnames:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 172
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->allchannelnames:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_1
    :goto_1
    const-wide/16 v4, 0x2

    mul-long/2addr v1, v4

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 178
    const/4 v3, 0x0

    return-object v3

    .line 179
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private internal_getAudioFileFormat(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    .locals 26
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    new-instance v0, Lcn/sherlock/com/sun/media/sound/RIFFReader;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;-><init>(Ljava/io/InputStream;)V

    .line 200
    .local v0, "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RIFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 202
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WAVE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 205
    const/4 v2, 0x0

    .line 206
    .local v2, "fmt_found":Z
    const/4 v3, 0x0

    .line 208
    .local v3, "data_found":Z
    const/4 v4, 0x1

    .line 209
    .local v4, "channels":I
    const-wide/16 v5, 0x1

    .line 211
    .local v5, "samplerate":J
    const/4 v7, 0x1

    .line 212
    .local v7, "framesize":I
    const/4 v8, 0x1

    .line 213
    .local v8, "bits":I
    const/4 v9, 0x1

    .line 214
    .local v9, "validBitsPerSample":I
    const-wide/16 v10, 0x0

    .line 215
    .local v10, "channelMask":J
    const/4 v12, 0x0

    .line 217
    .local v12, "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    :goto_0
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->hasNextChunk()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 218
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->nextChunk()Lcn/sherlock/com/sun/media/sound/RIFFReader;

    move-result-object v13

    .line 220
    .local v13, "chunk":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v14

    const-string v15, "fmt "

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 221
    const/4 v2, 0x1

    .line 223
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v14

    .line 224
    .local v14, "format":I
    const v15, 0xfffe

    if-ne v14, v15, :cond_2

    .line 227
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v4

    .line 228
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedInt()J

    move-result-wide v5

    .line 229
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedInt()J

    .line 230
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v7

    .line 231
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v8

    .line 232
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v15

    .line 233
    .local v15, "cbSize":I
    move-object/from16 v16, v0

    .end local v0    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .local v16, "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    const/16 v0, 0x16

    if-ne v15, v0, :cond_1

    .line 235
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedShort()I

    move-result v0

    .line 236
    .end local v9    # "validBitsPerSample":I
    .local v0, "validBitsPerSample":I
    if-gt v0, v8, :cond_0

    .line 238
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->readUnsignedInt()J

    move-result-wide v9

    .line 239
    .end local v10    # "channelMask":J
    .local v9, "channelMask":J
    invoke-static {v13}, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->read(Lcn/sherlock/com/sun/media/sound/RIFFReader;)Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;

    move-result-object v11

    move-object v12, v11

    move-wide v10, v9

    move v9, v0

    .end local v12    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .local v11, "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    goto :goto_1

    .line 237
    .end local v9    # "channelMask":J
    .end local v11    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .restart local v10    # "channelMask":J
    .restart local v12    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    :cond_0
    new-instance v9, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v9}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v9

    .line 234
    .end local v0    # "validBitsPerSample":I
    .local v9, "validBitsPerSample":I
    :cond_1
    new-instance v0, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0

    .line 225
    .end local v15    # "cbSize":I
    .end local v16    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .local v0, "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    :cond_2
    move-object/from16 v16, v0

    .end local v0    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .restart local v16    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    new-instance v0, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0

    .line 220
    .end local v14    # "format":I
    .end local v16    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .restart local v0    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    :cond_3
    move-object/from16 v16, v0

    .line 242
    .end local v0    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .restart local v16    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    :goto_1
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v14, "data"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    const/4 v3, 0x1

    .line 244
    move v0, v4

    move-wide v13, v5

    move v15, v7

    move/from16 v17, v9

    move-object v9, v12

    move v12, v8

    goto :goto_2

    .line 246
    .end local v13    # "chunk":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    :cond_4
    move-object/from16 v0, v16

    goto :goto_0

    .line 217
    .end local v16    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .restart local v0    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .restart local v16    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    move v0, v4

    move-wide v13, v5

    move v15, v7

    move/from16 v17, v9

    move-object v9, v12

    move v12, v8

    .line 248
    .end local v4    # "channels":I
    .end local v5    # "samplerate":J
    .end local v7    # "framesize":I
    .end local v8    # "bits":I
    .local v0, "channels":I
    .local v9, "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .local v12, "bits":I
    .local v13, "samplerate":J
    .local v15, "framesize":I
    .local v17, "validBitsPerSample":I
    :goto_2
    if-eqz v2, :cond_c

    .line 250
    if-eqz v3, :cond_b

    .line 253
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v8, v4

    .line 254
    .local v8, "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v7, p0

    invoke-direct {v7, v10, v11}, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->decodeChannelMask(J)Ljava/lang/String;

    move-result-object v6

    .line 255
    .local v6, "s_channelmask":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 256
    const-string v4, "channelOrder"

    invoke-interface {v8, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-eqz v4, :cond_7

    .line 258
    const-string v4, "channelMask"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v8, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_7
    const-string/jumbo v4, "validBitsPerSample"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const/16 v18, 0x0

    .line 264
    .local v18, "audioformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    sget-object v4, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->SUBTYPE_PCM:Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;

    invoke-virtual {v9, v4}, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 265
    const/16 v4, 0x8

    if-ne v12, v4, :cond_8

    .line 266
    new-instance v19, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    sget-object v5, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    long-to-float v4, v13

    long-to-float v1, v13

    const/16 v20, 0x0

    move/from16 v21, v4

    move-object/from16 v4, v19

    move-object/from16 v22, v6

    .end local v6    # "s_channelmask":Ljava/lang/String;
    .local v22, "s_channelmask":Ljava/lang/String;
    move/from16 v6, v21

    move v7, v12

    move-object/from16 v21, v8

    .end local v8    # "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v21, "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move v8, v0

    move-object/from16 v23, v9

    .end local v9    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .local v23, "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    move v9, v15

    move-wide/from16 v24, v10

    .end local v10    # "channelMask":J
    .local v24, "channelMask":J
    move v10, v1

    move/from16 v11, v20

    move v1, v12

    .end local v12    # "bits":I
    .local v1, "bits":I
    move-object/from16 v12, v21

    invoke-direct/range {v4 .. v12}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZLjava/util/Map;)V

    move-object/from16 v20, v23

    .end local v18    # "audioformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .local v4, "audioformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    goto :goto_3

    .line 270
    .end local v1    # "bits":I
    .end local v4    # "audioformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .end local v21    # "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v22    # "s_channelmask":Ljava/lang/String;
    .end local v23    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .end local v24    # "channelMask":J
    .restart local v6    # "s_channelmask":Ljava/lang/String;
    .restart local v8    # "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .restart local v10    # "channelMask":J
    .restart local v12    # "bits":I
    .restart local v18    # "audioformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    :cond_8
    move-object/from16 v22, v6

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move-wide/from16 v24, v10

    move v1, v12

    .end local v6    # "s_channelmask":Ljava/lang/String;
    .end local v8    # "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .end local v10    # "channelMask":J
    .end local v12    # "bits":I
    .restart local v1    # "bits":I
    .restart local v21    # "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v22    # "s_channelmask":Ljava/lang/String;
    .restart local v23    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .restart local v24    # "channelMask":J
    new-instance v19, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    sget-object v5, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    long-to-float v6, v13

    long-to-float v10, v13

    const/4 v11, 0x0

    move-object/from16 v4, v19

    move v7, v1

    move v8, v0

    move v9, v15

    move-object/from16 v12, v21

    invoke-direct/range {v4 .. v12}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZLjava/util/Map;)V

    move-object/from16 v20, v23

    .end local v18    # "audioformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .restart local v4    # "audioformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    goto :goto_3

    .line 273
    .end local v1    # "bits":I
    .end local v4    # "audioformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .end local v21    # "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v22    # "s_channelmask":Ljava/lang/String;
    .end local v23    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .end local v24    # "channelMask":J
    .restart local v6    # "s_channelmask":Ljava/lang/String;
    .restart local v8    # "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .restart local v10    # "channelMask":J
    .restart local v12    # "bits":I
    .restart local v18    # "audioformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    :cond_9
    move-object/from16 v22, v6

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move-wide/from16 v24, v10

    move v1, v12

    .end local v6    # "s_channelmask":Ljava/lang/String;
    .end local v8    # "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .end local v10    # "channelMask":J
    .end local v12    # "bits":I
    .restart local v1    # "bits":I
    .restart local v21    # "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v22    # "s_channelmask":Ljava/lang/String;
    .restart local v23    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .restart local v24    # "channelMask":J
    sget-object v4, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->SUBTYPE_IEEE_FLOAT:Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;

    move-object/from16 v12, v23

    .end local v23    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .local v12, "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    invoke-virtual {v12, v4}, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 274
    new-instance v19, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    sget-object v5, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    long-to-float v6, v13

    long-to-float v10, v13

    const/4 v11, 0x0

    move-object/from16 v4, v19

    move v7, v1

    move v8, v0

    move v9, v15

    move-object/from16 v20, v12

    .end local v12    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .local v20, "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    move-object/from16 v12, v21

    invoke-direct/range {v4 .. v12}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZLjava/util/Map;)V

    .line 279
    .end local v18    # "audioformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .restart local v4    # "audioformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    :goto_3
    new-instance v5, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;

    sget-object v6, Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;->WAVE:Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;

    const/4 v7, -0x1

    invoke-direct {v5, v6, v4, v7}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFileFormat$Type;Lcn/sherlock/javax/sound/sampled/AudioFormat;I)V

    .line 282
    .local v5, "fileformat":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    return-object v5

    .line 277
    .end local v4    # "audioformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .end local v5    # "fileformat":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    .end local v20    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .restart local v12    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .restart local v18    # "audioformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    :cond_a
    new-instance v4, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v4}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v4

    .line 251
    .end local v1    # "bits":I
    .end local v18    # "audioformat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .end local v21    # "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v22    # "s_channelmask":Ljava/lang/String;
    .end local v24    # "channelMask":J
    .restart local v9    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .restart local v10    # "channelMask":J
    .local v12, "bits":I
    :cond_b
    new-instance v4, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v4}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v4

    .line 249
    :cond_c
    new-instance v4, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v4}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v4

    .line 203
    .end local v2    # "fmt_found":Z
    .end local v3    # "data_found":Z
    .end local v9    # "subFormat":Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader$GUID;
    .end local v10    # "channelMask":J
    .end local v12    # "bits":I
    .end local v13    # "samplerate":J
    .end local v15    # "framesize":I
    .end local v16    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .end local v17    # "validBitsPerSample":I
    .local v0, "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    :cond_d
    move-object/from16 v16, v0

    .end local v0    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .restart local v16    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    new-instance v0, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0

    .line 201
    .end local v16    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .restart local v0    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    :cond_e
    move-object/from16 v16, v0

    .end local v0    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    .restart local v16    # "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    new-instance v0, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0
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

    .line 318
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 321
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->getAudioFileFormat(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .local v1, "format":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 324
    nop

    .line 325
    return-object v1

    .line 323
    .end local v1    # "format":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 324
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

    .line 186
    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 189
    :try_start_0
    invoke-direct {p0, p1}, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->internal_getAudioFileFormat(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .local v0, "format":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 192
    nop

    .line 193
    return-object v0

    .line 191
    .end local v0    # "format":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 192
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

    .line 306
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 309
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->getAudioFileFormat(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    .local v1, "format":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 312
    nop

    .line 313
    return-object v1

    .line 311
    .end local v1    # "format":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 312
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

    .line 335
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->getAudioInputStream(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

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

    .line 288
    invoke-virtual {p0, p1}, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->getAudioFileFormat(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;

    move-result-object v0

    .line 289
    .local v0, "format":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    new-instance v1, Lcn/sherlock/com/sun/media/sound/RIFFReader;

    invoke-direct {v1, p1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;-><init>(Ljava/io/InputStream;)V

    .line 290
    .local v1, "riffiterator":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RIFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WAVE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    :goto_0
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->hasNextChunk()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->nextChunk()Lcn/sherlock/com/sun/media/sound/RIFFReader;

    move-result-object v2

    .line 296
    .local v2, "chunk":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    new-instance v3, Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFileFormat;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v4

    .line 298
    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/RIFFReader;->getSize()J

    move-result-wide v5

    invoke-direct {v3, v2, v4, v5, v6}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcn/sherlock/javax/sound/sampled/AudioFormat;J)V

    .line 297
    return-object v3

    .line 300
    .end local v2    # "chunk":Lcn/sherlock/com/sun/media/sound/RIFFReader;
    :cond_0
    goto :goto_0

    .line 301
    :cond_1
    new-instance v2, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v2}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v2

    .line 293
    :cond_2
    new-instance v2, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    invoke-direct {v2}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>()V

    throw v2

    .line 291
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

    .line 330
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;->getAudioInputStream(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v0

    return-object v0
.end method
