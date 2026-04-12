.class public Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;
.super Ljp/kshoji/javax/sound/midi/spi/MidiFileReader;
.source "StandardMidiFileReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;,
        Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$ExtendedMidiFileFormat;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljp/kshoji/javax/sound/midi/spi/MidiFileReader;-><init>()V

    return-void
.end method

.method private static convertToByteArrayInputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_0

    .line 387
    move-object v0, p0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    return-object v0

    .line 390
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 391
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x2800

    new-array v1, v1, [B

    .line 392
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 393
    .local v2, "readBytes":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v2, v3

    if-ltz v3, :cond_1

    .line 394
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 397
    :cond_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v3
.end method

.method private static processRunningMessage(IILjava/io/DataInput;)Ljp/kshoji/javax/sound/midi/ShortMessage;
    .locals 3
    .param p0, "status"    # I
    .param p1, "data1"    # I
    .param p2, "midiDataInputStream"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    and-int/lit16 v0, p0, 0xf0

    sparse-switch v0, :sswitch_data_0

    .line 370
    new-instance v0, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid data: %02x %02x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :sswitch_0
    new-instance v0, Ljp/kshoji/javax/sound/midi/ShortMessage;

    invoke-direct {v0}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>()V

    .line 366
    .local v0, "shortMessage":Ljp/kshoji/javax/sound/midi/ShortMessage;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Ljp/kshoji/javax/sound/midi/ShortMessage;->setMessage(III)V

    .line 367
    goto :goto_0

    .line 359
    .end local v0    # "shortMessage":Ljp/kshoji/javax/sound/midi/ShortMessage;
    :sswitch_1
    new-instance v0, Ljp/kshoji/javax/sound/midi/ShortMessage;

    invoke-direct {v0}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>()V

    .line 360
    .restart local v0    # "shortMessage":Ljp/kshoji/javax/sound/midi/ShortMessage;
    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-virtual {v0, p0, p1, v1}, Ljp/kshoji/javax/sound/midi/ShortMessage;->setMessage(III)V

    .line 361
    nop

    .line 373
    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_1
        0x90 -> :sswitch_1
        0xa0 -> :sswitch_1
        0xb0 -> :sswitch_1
        0xc0 -> :sswitch_0
        0xd0 -> :sswitch_0
        0xe0 -> :sswitch_1
    .end sparse-switch
.end method

.method private static processSystemMessage(ILjava/lang/Integer;Ljava/io/DataInput;)Ljp/kshoji/javax/sound/midi/ShortMessage;
    .locals 3
    .param p0, "data1"    # I
    .param p1, "data2"    # Ljava/lang/Integer;
    .param p2, "midiDataInputStream"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    const-string v0, "Invalid data: %02x"

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 335
    :pswitch_0
    new-instance v1, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :pswitch_1
    if-nez p1, :cond_0

    .line 330
    new-instance v0, Ljp/kshoji/javax/sound/midi/ShortMessage;

    invoke-direct {v0}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>()V

    .line 331
    .local v0, "shortMessage":Ljp/kshoji/javax/sound/midi/ShortMessage;
    invoke-virtual {v0, p0, v1, v1}, Ljp/kshoji/javax/sound/midi/ShortMessage;->setMessage(III)V

    .line 332
    goto :goto_0

    .line 328
    .end local v0    # "shortMessage":Ljp/kshoji/javax/sound/midi/ShortMessage;
    :cond_0
    new-instance v1, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :pswitch_2
    new-instance v0, Ljp/kshoji/javax/sound/midi/ShortMessage;

    invoke-direct {v0}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>()V

    .line 313
    .restart local v0    # "shortMessage":Ljp/kshoji/javax/sound/midi/ShortMessage;
    if-nez p1, :cond_1

    .line 314
    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-virtual {v0, p0, v2, v1}, Ljp/kshoji/javax/sound/midi/ShortMessage;->setMessage(III)V

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, p0, v2, v1}, Ljp/kshoji/javax/sound/midi/ShortMessage;->setMessage(III)V

    .line 318
    goto :goto_0

    .line 302
    .end local v0    # "shortMessage":Ljp/kshoji/javax/sound/midi/ShortMessage;
    :pswitch_3
    new-instance v0, Ljp/kshoji/javax/sound/midi/ShortMessage;

    invoke-direct {v0}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>()V

    .line 303
    .restart local v0    # "shortMessage":Ljp/kshoji/javax/sound/midi/ShortMessage;
    if-nez p1, :cond_2

    .line 304
    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Ljp/kshoji/javax/sound/midi/ShortMessage;->setMessage(III)V

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Ljp/kshoji/javax/sound/midi/ShortMessage;->setMessage(III)V

    .line 308
    nop

    .line 337
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0xf2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getMidiFileFormat(Ljava/io/File;)Ljp/kshoji/javax/sound/midi/MidiFileFormat;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 190
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->getMidiFileFormat(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/MidiFileFormat;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 190
    return-object v1

    .line 192
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 193
    throw v1
.end method

.method public getMidiFileFormat(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/MidiFileFormat;
    .locals 17
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    move-object/from16 v1, p1

    instance-of v0, v1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    .line 110
    move-object v0, v1

    check-cast v0, Ljava/io/DataInputStream;

    move-object v2, v0

    .local v0, "dataInputStream":Ljava/io/DataInputStream;
    goto :goto_0

    .line 111
    .end local v0    # "dataInputStream":Ljava/io/DataInputStream;
    :cond_0
    instance-of v0, v1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;

    invoke-static/range {p1 .. p1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->convertToByteArrayInputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v0

    .restart local v0    # "dataInputStream":Ljava/io/DataInputStream;
    goto :goto_0

    .line 115
    .end local v0    # "dataInputStream":Ljava/io/DataInputStream;
    :cond_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v0

    .line 119
    .local v2, "dataInputStream":Ljava/io/DataInputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v3, 0x4d546864

    const-string v4, "Invalid header"

    if-ne v0, v3, :cond_6

    .line 123
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 124
    .local v0, "bytes":I
    const/4 v3, 0x6

    if-lt v0, v3, :cond_5

    .line 128
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 129
    .local v3, "type":I
    if-ltz v3, :cond_4

    const/4 v5, 0x2

    if-gt v3, v5, :cond_4

    .line 133
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 134
    .local v4, "numberOfTracks":I
    if-lez v4, :cond_3

    .line 138
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    .line 141
    .local v5, "division":I
    const v6, 0x8000

    and-int/2addr v6, v5

    if-eqz v6, :cond_2

    .line 142
    ushr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    neg-int v5, v6

    .line 143
    packed-switch v5, :pswitch_data_0

    .line 158
    :pswitch_0
    new-instance v6, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    goto :goto_2

    .line 154
    :pswitch_1
    const/high16 v6, 0x41f00000    # 30.0f

    .line 155
    .local v6, "divisionType":F
    goto :goto_1

    .line 151
    .end local v6    # "divisionType":F
    :pswitch_2
    const v6, 0x41efc28f    # 29.97f

    .line 152
    .restart local v6    # "divisionType":F
    goto :goto_1

    .line 148
    .end local v6    # "divisionType":F
    :pswitch_3
    const/high16 v6, 0x41c80000    # 25.0f

    .line 149
    .restart local v6    # "divisionType":F
    goto :goto_1

    .line 145
    .end local v6    # "divisionType":F
    :pswitch_4
    const/high16 v6, 0x41c00000    # 24.0f

    .line 146
    .restart local v6    # "divisionType":F
    nop

    .line 160
    :goto_1
    and-int/lit16 v7, v5, 0xff

    move v13, v5

    move v14, v6

    move v15, v7

    .local v7, "resolution":I
    goto :goto_3

    .line 158
    .end local v6    # "divisionType":F
    .end local v7    # "resolution":I
    :goto_2
    const-string v7, "Invalid sequence information"

    invoke-direct {v6, v7}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    .end local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    throw v6

    .line 162
    .restart local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    :cond_2
    const/4 v6, 0x0

    .line 163
    .restart local v6    # "divisionType":F
    and-int/lit16 v7, v5, 0x7fff

    move v13, v5

    move v14, v6

    move v15, v7

    .line 166
    .end local v5    # "division":I
    .end local v6    # "divisionType":F
    .local v13, "division":I
    .local v14, "divisionType":F
    .local v15, "resolution":I
    :goto_3
    add-int/lit8 v5, v0, -0x6

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Ljava/io/DataInputStream;->skip(J)J

    .line 168
    new-instance v16, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$ExtendedMidiFileFormat;

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    move-object/from16 v5, v16

    move v6, v3

    move v7, v14

    move v8, v15

    move v12, v4

    invoke-direct/range {v5 .. v12}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$ExtendedMidiFileFormat;-><init>(IFIIJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 168
    return-object v16

    .line 135
    .end local v13    # "division":I
    .end local v14    # "divisionType":F
    .end local v15    # "resolution":I
    :cond_3
    :try_start_2
    new-instance v5, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    const-string v6, "Invalid tracks"

    invoke-direct {v5, v6}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    .end local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    throw v5

    .line 130
    .end local v4    # "numberOfTracks":I
    .restart local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    :cond_4
    new-instance v5, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    invoke-direct {v5, v4}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    .end local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    throw v5

    .line 125
    .end local v3    # "type":I
    .restart local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    :cond_5
    new-instance v3, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    invoke-direct {v3, v4}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    .end local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    throw v3

    .line 120
    .end local v0    # "bytes":I
    .restart local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    :cond_6
    new-instance v0, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    invoke-direct {v0, v4}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    .end local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    .restart local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 171
    throw v0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getMidiFileFormat(Ljava/net/URL;)Ljp/kshoji/javax/sound/midi/MidiFileFormat;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 179
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->getMidiFileFormat(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/MidiFileFormat;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 179
    return-object v1

    .line 181
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 182
    throw v1
.end method

.method public getSequence(Ljava/io/File;)Ljp/kshoji/javax/sound/midi/Sequence;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 416
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->getSequence(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/Sequence;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 416
    return-object v1

    .line 418
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 419
    throw v1
.end method

.method public getSequence(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/Sequence;
    .locals 16
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    new-instance v0, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;

    invoke-static/range {p1 .. p1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->convertToByteArrayInputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v0

    .line 202
    .local v1, "midiDataInputStream":Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;
    move-object/from16 v2, p0

    :try_start_0
    invoke-virtual {v2, v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->getMidiFileFormat(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/MidiFileFormat;

    move-result-object v0

    check-cast v0, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$ExtendedMidiFileFormat;

    .line 203
    .local v0, "midiFileFormat":Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$ExtendedMidiFileFormat;
    new-instance v3, Ljp/kshoji/javax/sound/midi/Sequence;

    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$ExtendedMidiFileFormat;->getDivisionType()F

    move-result v4

    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$ExtendedMidiFileFormat;->getResolution()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljp/kshoji/javax/sound/midi/Sequence;-><init>(FI)V

    .line 205
    .local v3, "sequence":Ljp/kshoji/javax/sound/midi/Sequence;
    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$ExtendedMidiFileFormat;->getNumberTracks()I

    move-result v4

    .line 207
    .local v4, "numberOfTracks":I
    :goto_0
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "numberOfTracks":I
    .local v5, "numberOfTracks":I
    if-lez v4, :cond_a

    .line 208
    invoke-virtual {v3}, Ljp/kshoji/javax/sound/midi/Sequence;->createTrack()Ljp/kshoji/javax/sound/midi/Track;

    move-result-object v4

    .line 209
    .local v4, "track":Ljp/kshoji/javax/sound/midi/Track;
    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;->readInt()I

    move-result v6

    const v7, 0x4d54726b    # 2.2276677E8f

    if-ne v6, v7, :cond_9

    .line 213
    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;->readInt()I

    .line 215
    const/4 v6, -0x1

    .line 216
    .local v6, "runningStatus":I
    const/4 v7, 0x0

    .line 217
    .local v7, "ticks":I
    const/4 v8, 0x1

    .line 220
    .local v8, "isTrackRunning":Z
    :goto_1
    if-eqz v8, :cond_8

    .line 222
    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;->readVariableLengthInt()I

    move-result v9

    add-int/2addr v7, v9

    .line 224
    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;->readUnsignedByte()I

    move-result v9

    .line 226
    .local v9, "data":I
    const/16 v10, 0x80

    const/16 v11, 0xff

    const/16 v12, 0xf0

    if-ge v9, v10, :cond_2

    .line 228
    if-ltz v6, :cond_0

    if-ge v6, v12, :cond_0

    .line 229
    invoke-static {v6, v9, v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->processRunningMessage(IILjava/io/DataInput;)Ljp/kshoji/javax/sound/midi/ShortMessage;

    move-result-object v10

    .local v10, "message":Ljp/kshoji/javax/sound/midi/MidiMessage;
    goto/16 :goto_3

    .line 230
    .end local v10    # "message":Ljp/kshoji/javax/sound/midi/MidiMessage;
    :cond_0
    if-lt v6, v12, :cond_1

    if-gt v6, v11, :cond_1

    .line 231
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6, v10, v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->processSystemMessage(ILjava/lang/Integer;Ljava/io/DataInput;)Ljp/kshoji/javax/sound/midi/ShortMessage;

    move-result-object v10

    .restart local v10    # "message":Ljp/kshoji/javax/sound/midi/MidiMessage;
    goto/16 :goto_3

    .line 233
    .end local v10    # "message":Ljp/kshoji/javax/sound/midi/MidiMessage;
    :cond_1
    new-instance v10, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    const-string v11, "Invalid data: %02x %02x"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v12, v13}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    .end local v1    # "midiDataInputStream":Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    throw v10

    .line 235
    .restart local v1    # "midiDataInputStream":Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    :cond_2
    if-ge v9, v12, :cond_3

    .line 237
    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;->readUnsignedByte()I

    move-result v10

    invoke-static {v9, v10, v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->processRunningMessage(IILjava/io/DataInput;)Ljp/kshoji/javax/sound/midi/ShortMessage;

    move-result-object v10

    .line 239
    .restart local v10    # "message":Ljp/kshoji/javax/sound/midi/MidiMessage;
    move v6, v9

    goto :goto_3

    .line 240
    .end local v10    # "message":Ljp/kshoji/javax/sound/midi/MidiMessage;
    :cond_3
    if-eq v9, v12, :cond_7

    const/16 v10, 0xf7

    if-ne v9, v10, :cond_4

    goto :goto_2

    .line 251
    :cond_4
    if-ne v9, v11, :cond_6

    .line 253
    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;->readUnsignedByte()I

    move-result v10

    .line 255
    .local v10, "type":I
    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;->readVariableLengthInt()I

    move-result v11

    .line 256
    .local v11, "metaLength":I
    new-array v12, v11, [B

    .line 257
    .local v12, "metaData":[B
    invoke-virtual {v1, v12}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;->readFully([B)V

    .line 259
    new-instance v13, Ljp/kshoji/javax/sound/midi/MetaMessage;

    invoke-direct {v13}, Ljp/kshoji/javax/sound/midi/MetaMessage;-><init>()V

    .line 260
    .local v13, "metaMessage":Ljp/kshoji/javax/sound/midi/MetaMessage;
    invoke-virtual {v13, v10, v12, v11}, Ljp/kshoji/javax/sound/midi/MetaMessage;->setMessage(I[BI)V

    .line 261
    move-object v14, v13

    .line 263
    .local v14, "message":Ljp/kshoji/javax/sound/midi/MidiMessage;
    const/4 v6, -0x1

    .line 265
    const/16 v15, 0x2f

    if-ne v10, v15, :cond_5

    .line 266
    const/4 v8, 0x0

    .line 268
    .end local v10    # "type":I
    .end local v11    # "metaLength":I
    .end local v12    # "metaData":[B
    .end local v13    # "metaMessage":Ljp/kshoji/javax/sound/midi/MetaMessage;
    :cond_5
    move-object v10, v14

    goto :goto_3

    .line 270
    .end local v14    # "message":Ljp/kshoji/javax/sound/midi/MidiMessage;
    :cond_6
    const/4 v10, 0x0

    invoke-static {v9, v10, v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->processSystemMessage(ILjava/lang/Integer;Ljava/io/DataInput;)Ljp/kshoji/javax/sound/midi/ShortMessage;

    move-result-object v10

    .line 272
    .local v10, "message":Ljp/kshoji/javax/sound/midi/MidiMessage;
    move v6, v9

    goto :goto_3

    .line 242
    .end local v10    # "message":Ljp/kshoji/javax/sound/midi/MidiMessage;
    :cond_7
    :goto_2
    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;->readVariableLengthInt()I

    move-result v10

    .line 243
    .local v10, "sysexLength":I
    new-array v11, v10, [B

    .line 244
    .local v11, "sysexData":[B
    invoke-virtual {v1, v11}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;->readFully([B)V

    .line 246
    new-instance v12, Ljp/kshoji/javax/sound/midi/SysexMessage;

    invoke-direct {v12}, Ljp/kshoji/javax/sound/midi/SysexMessage;-><init>()V

    .line 247
    .local v12, "sysexMessage":Ljp/kshoji/javax/sound/midi/SysexMessage;
    invoke-virtual {v12, v9, v11, v10}, Ljp/kshoji/javax/sound/midi/SysexMessage;->setMessage(I[BI)V

    .line 248
    move-object v13, v12

    .line 250
    .local v13, "message":Ljp/kshoji/javax/sound/midi/MidiMessage;
    const/4 v6, -0x1

    .line 251
    .end local v10    # "sysexLength":I
    .end local v11    # "sysexData":[B
    .end local v12    # "sysexMessage":Ljp/kshoji/javax/sound/midi/SysexMessage;
    move-object v10, v13

    .line 275
    .end local v13    # "message":Ljp/kshoji/javax/sound/midi/MidiMessage;
    .local v10, "message":Ljp/kshoji/javax/sound/midi/MidiMessage;
    :goto_3
    new-instance v11, Ljp/kshoji/javax/sound/midi/MidiEvent;

    int-to-long v12, v7

    invoke-direct {v11, v10, v12, v13}, Ljp/kshoji/javax/sound/midi/MidiEvent;-><init>(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V

    invoke-virtual {v4, v11}, Ljp/kshoji/javax/sound/midi/Track;->add(Ljp/kshoji/javax/sound/midi/MidiEvent;)Z

    .line 276
    nop

    .end local v9    # "data":I
    .end local v10    # "message":Ljp/kshoji/javax/sound/midi/MidiMessage;
    goto/16 :goto_1

    .line 278
    :cond_8
    invoke-static {v4}, Ljp/kshoji/javax/sound/midi/Track$TrackUtils;->sortEvents(Ljp/kshoji/javax/sound/midi/Track;)V

    .line 279
    .end local v4    # "track":Ljp/kshoji/javax/sound/midi/Track;
    .end local v6    # "runningStatus":I
    .end local v7    # "ticks":I
    .end local v8    # "isTrackRunning":Z
    move v4, v5

    goto/16 :goto_0

    .line 210
    .restart local v4    # "track":Ljp/kshoji/javax/sound/midi/Track;
    :cond_9
    new-instance v6, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;

    const-string v7, "Invalid track header"

    invoke-direct {v6, v7}, Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    .end local v1    # "midiDataInputStream":Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    .end local v4    # "track":Ljp/kshoji/javax/sound/midi/Track;
    .restart local v1    # "midiDataInputStream":Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    :cond_a
    nop

    .line 283
    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;->close()V

    .line 281
    return-object v3

    .line 283
    .end local v0    # "midiFileFormat":Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$ExtendedMidiFileFormat;
    .end local v3    # "sequence":Ljp/kshoji/javax/sound/midi/Sequence;
    .end local v5    # "numberOfTracks":I
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;->close()V

    .line 284
    throw v0
.end method

.method public getSequence(Ljava/net/URL;)Ljp/kshoji/javax/sound/midi/Sequence;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 405
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->getSequence(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/Sequence;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 405
    return-object v1

    .line 407
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 408
    throw v1
.end method
