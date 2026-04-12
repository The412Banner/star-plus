.class Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;
.super Ljava/io/DataOutputStream;
.source "StandardMidiFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MidiDataOutputStream"
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$mwriteVariableLengthInt(Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->writeVariableLengthInt(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smvariableLengthIntLength(I)I
    .locals 0

    invoke-static {p0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->variableLengthIntLength(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 38
    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 39
    return-void
.end method

.method private static getValueToWrite(I)I
    .locals 3
    .param p0, "value"    # I

    .line 48
    and-int/lit8 v0, p0, 0x7f

    .line 49
    .local v0, "result":I
    move v1, p0

    .line 51
    .local v1, "currentValue":I
    :goto_0
    shr-int/lit8 v2, v1, 0x7

    move v1, v2

    if-eqz v2, :cond_0

    .line 52
    shl-int/lit8 v0, v0, 0x8

    .line 53
    and-int/lit8 v2, v1, 0x7f

    or-int/lit16 v2, v2, 0x80

    or-int/2addr v0, v2

    goto :goto_0

    .line 55
    :cond_0
    return v0
.end method

.method private static variableLengthIntLength(I)I
    .locals 3
    .param p0, "value"    # I

    .line 65
    invoke-static {p0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->getValueToWrite(I)I

    move-result v0

    .line 67
    .local v0, "valueToWrite":I
    const/4 v1, 0x0

    .line 69
    .local v1, "length":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 71
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    .line 72
    ushr-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 78
    :cond_0
    return v1
.end method

.method private writeVariableLengthInt(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-static {p1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->getValueToWrite(I)I

    move-result v0

    .line 91
    .local v0, "valueToWrite":I
    :goto_0
    and-int/lit16 v1, v0, 0xff

    invoke-virtual {p0, v1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter$MidiDataOutputStream;->writeByte(I)V

    .line 93
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    .line 94
    ushr-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method
