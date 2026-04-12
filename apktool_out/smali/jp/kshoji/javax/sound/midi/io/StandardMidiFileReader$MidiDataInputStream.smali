.class Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;
.super Ljava/io/DataInputStream;
.source "StandardMidiFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MidiDataInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 81
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 82
    return-void
.end method


# virtual methods
.method public readVariableLengthInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;->readByte()B

    move-result v0

    .line 94
    .local v0, "value":I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    .line 95
    and-int/lit8 v0, v0, 0x7f

    .line 97
    :cond_0
    shl-int/lit8 v1, v0, 0x7

    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$MidiDataInputStream;->readByte()B

    move-result v2

    move v3, v2

    .local v3, "c":I
    and-int/lit8 v2, v2, 0x7f

    add-int v0, v1, v2

    .line 98
    and-int/lit16 v1, v3, 0x80

    if-nez v1, :cond_0

    .line 101
    .end local v3    # "c":I
    :cond_1
    return v0
.end method
