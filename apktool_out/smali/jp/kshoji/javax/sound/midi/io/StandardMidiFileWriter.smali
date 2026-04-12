.class public Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;
.super Ljp/kshoji/javax/sound/midi/spi/MidiFileWriter;
.source "StandardMidiFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljp/kshoji/javax/sound/midi/spi/MidiFileWriter;-><init>()V

    return-void
.end method

.method private static writeTrack(Ljp/kshoji/javax/sound/midi/Track;Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;)I
    .locals 13
    .param p0, "track"    # Ljp/kshoji/javax/sound/midi/Track;
    .param p1, "midiDataOutputStream"    # Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/Track;->size()I

    move-result v0

    .line 177
    .local v0, "eventCount":I
    const v1, 0x4d54726b    # 2.2276677E8f

    invoke-virtual {p1, v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->writeInt(I)V

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "trackLength":I
    const-wide/16 v2, 0x0

    .line 182
    .local v2, "lastTick":J
    const/4 v4, 0x0

    .line 183
    .local v4, "midiEvent":Ljp/kshoji/javax/sound/midi/MidiEvent;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 184
    invoke-virtual {p0, v5}, Ljp/kshoji/javax/sound/midi/Track;->get(I)Ljp/kshoji/javax/sound/midi/MidiEvent;

    move-result-object v4

    .line 185
    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getTick()J

    move-result-wide v6

    .line 186
    .local v6, "tick":J
    sub-long v8, v6, v2

    long-to-int v8, v8

    invoke-static {v8}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->-$$Nest$smvariableLengthIntLength(I)I

    move-result v8

    add-int/2addr v1, v8

    .line 187
    move-wide v2, v6

    .line 189
    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getMessage()Ljp/kshoji/javax/sound/midi/MidiMessage;

    move-result-object v8

    invoke-virtual {v8}, Ljp/kshoji/javax/sound/midi/MidiMessage;->getLength()I

    move-result v8

    add-int/2addr v1, v8

    .line 183
    .end local v6    # "tick":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 193
    .end local v5    # "i":I
    :cond_0
    const/4 v5, 0x1

    .line 194
    .local v5, "needEndOfTrack":Z
    const/16 v6, 0x2f

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getMessage()Ljp/kshoji/javax/sound/midi/MidiMessage;

    move-result-object v7

    instance-of v7, v7, Ljp/kshoji/javax/sound/midi/MetaMessage;

    if-eqz v7, :cond_1

    .line 195
    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getMessage()Ljp/kshoji/javax/sound/midi/MidiMessage;

    move-result-object v7

    check-cast v7, Ljp/kshoji/javax/sound/midi/MetaMessage;

    invoke-virtual {v7}, Ljp/kshoji/javax/sound/midi/MetaMessage;->getType()I

    move-result v7

    if-ne v7, v6, :cond_1

    .line 196
    const/4 v5, 0x0

    goto :goto_1

    .line 198
    :cond_1
    add-int/lit8 v1, v1, 0x4

    .line 200
    :goto_1
    invoke-virtual {p1, v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->writeInt(I)V

    .line 203
    const-wide/16 v2, 0x0

    .line 204
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    const/4 v8, 0x0

    if-ge v7, v0, :cond_2

    .line 205
    invoke-virtual {p0, v7}, Ljp/kshoji/javax/sound/midi/Track;->get(I)Ljp/kshoji/javax/sound/midi/MidiEvent;

    move-result-object v4

    .line 206
    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getTick()J

    move-result-wide v9

    .line 207
    .local v9, "tick":J
    sub-long v11, v9, v2

    long-to-int v11, v11

    invoke-static {p1, v11}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->-$$Nest$mwriteVariableLengthInt(Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;I)V

    .line 208
    move-wide v2, v9

    .line 210
    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getMessage()Ljp/kshoji/javax/sound/midi/MidiMessage;

    move-result-object v11

    invoke-virtual {v11}, Ljp/kshoji/javax/sound/midi/MidiMessage;->getMessage()[B

    move-result-object v11

    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getMessage()Ljp/kshoji/javax/sound/midi/MidiMessage;

    move-result-object v12

    invoke-virtual {v12}, Ljp/kshoji/javax/sound/midi/MidiMessage;->getLength()I

    move-result v12

    invoke-virtual {p1, v11, v8, v12}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->write([BII)V

    .line 204
    .end local v9    # "tick":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 214
    .end local v7    # "i":I
    :cond_2
    if-eqz v5, :cond_3

    .line 215
    invoke-static {p1, v8}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->-$$Nest$mwriteVariableLengthInt(Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;I)V

    .line 216
    const/16 v7, 0xff

    invoke-virtual {p1, v7}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->writeByte(I)V

    .line 217
    invoke-virtual {p1, v6}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->writeByte(I)V

    .line 218
    invoke-static {p1, v8}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->-$$Nest$mwriteVariableLengthInt(Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;I)V

    .line 221
    :cond_3
    add-int/lit8 v6, v1, 0x4

    return v6
.end method


# virtual methods
.method public getMidiFileTypes()[I
    .locals 2

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public getMidiFileTypes(Ljp/kshoji/javax/sound/midi/Sequence;)[I
    .locals 2
    .param p1, "sequence"    # Ljp/kshoji/javax/sound/midi/Sequence;

    .line 111
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Sequence;->getTracks()[Ljp/kshoji/javax/sound/midi/Track;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 112
    filled-new-array {v1}, [I

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public write(Ljp/kshoji/javax/sound/midi/Sequence;ILjava/io/File;)I
    .locals 2
    .param p1, "sequence"    # Ljp/kshoji/javax/sound/midi/Sequence;
    .param p2, "fileType"    # I
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 121
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {p0, p1, p2, v0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;->write(Ljp/kshoji/javax/sound/midi/Sequence;ILjava/io/OutputStream;)I

    move-result v1

    .line 122
    .local v1, "written":I
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 123
    return v1
.end method

.method public write(Ljp/kshoji/javax/sound/midi/Sequence;ILjava/io/OutputStream;)I
    .locals 10
    .param p1, "sequence"    # Ljp/kshoji/javax/sound/midi/Sequence;
    .param p2, "fileType"    # I
    .param p3, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;

    invoke-direct {v0, p3}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 130
    .local v0, "midiDataOutputStream":Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Sequence;->getTracks()[Ljp/kshoji/javax/sound/midi/Track;

    move-result-object v1

    .line 131
    .local v1, "tracks":[Ljp/kshoji/javax/sound/midi/Track;
    const v2, 0x4d546864

    invoke-virtual {v0, v2}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->writeInt(I)V

    .line 132
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->writeInt(I)V

    .line 133
    invoke-virtual {v0, p2}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->writeShort(I)V

    .line 134
    array-length v2, v1

    invoke-virtual {v0, v2}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->writeShort(I)V

    .line 136
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Sequence;->getDivisionType()F

    move-result v2

    .line 137
    .local v2, "divisionType":F
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Sequence;->getResolution()I

    move-result v3

    .line 138
    .local v3, "resolution":I
    const/4 v4, 0x0

    .line 139
    .local v4, "division":I
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-nez v5, :cond_0

    .line 140
    and-int/lit16 v4, v3, 0x7fff

    goto :goto_0

    .line 141
    :cond_0
    const/high16 v5, 0x41c00000    # 24.0f

    cmpl-float v5, v2, v5

    if-nez v5, :cond_1

    .line 142
    const/16 v4, -0x1800

    .line 143
    and-int/lit16 v5, v3, 0xff

    add-int/2addr v4, v5

    goto :goto_0

    .line 144
    :cond_1
    const/high16 v5, 0x41c80000    # 25.0f

    cmpl-float v5, v2, v5

    if-nez v5, :cond_2

    .line 145
    const/16 v4, -0x1900

    .line 146
    and-int/lit16 v5, v3, 0xff

    add-int/2addr v4, v5

    goto :goto_0

    .line 147
    :cond_2
    const v5, 0x41efc28f    # 29.97f

    cmpl-float v5, v2, v5

    if-nez v5, :cond_3

    .line 148
    const/16 v4, -0x1d00

    .line 149
    and-int/lit16 v5, v3, 0xff

    add-int/2addr v4, v5

    goto :goto_0

    .line 150
    :cond_3
    const/high16 v5, 0x41f00000    # 30.0f

    cmpl-float v5, v2, v5

    if-nez v5, :cond_4

    .line 151
    const/16 v4, -0x1e00

    .line 152
    and-int/lit16 v5, v3, 0xff

    add-int/2addr v4, v5

    .line 154
    :cond_4
    :goto_0
    invoke-virtual {v0, v4}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->writeShort(I)V

    .line 156
    const/4 v5, 0x0

    .line 157
    .local v5, "length":I
    array-length v6, v1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v8, v1, v7

    .line 158
    .local v8, "track":Ljp/kshoji/javax/sound/midi/Track;
    invoke-static {v8, v0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;->writeTrack(Ljp/kshoji/javax/sound/midi/Track;Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;)I

    move-result v9

    add-int/2addr v5, v9

    .line 157
    .end local v8    # "track":Ljp/kshoji/javax/sound/midi/Track;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 161
    :cond_5
    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->close()V

    .line 162
    add-int/lit8 v6, v5, 0xe

    return v6
.end method
