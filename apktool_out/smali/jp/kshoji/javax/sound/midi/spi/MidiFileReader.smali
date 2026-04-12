.class public abstract Ljp/kshoji/javax/sound/midi/spi/MidiFileReader;
.super Ljava/lang/Object;
.source "MidiFileReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getMidiFileFormat(Ljava/io/File;)Ljp/kshoji/javax/sound/midi/MidiFileFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getMidiFileFormat(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/MidiFileFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getMidiFileFormat(Ljava/net/URL;)Ljp/kshoji/javax/sound/midi/MidiFileFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSequence(Ljava/io/File;)Ljp/kshoji/javax/sound/midi/Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSequence(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSequence(Ljava/net/URL;)Ljp/kshoji/javax/sound/midi/Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
