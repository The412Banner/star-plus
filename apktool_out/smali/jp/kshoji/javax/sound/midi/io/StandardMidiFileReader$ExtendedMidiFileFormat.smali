.class Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$ExtendedMidiFileFormat;
.super Ljp/kshoji/javax/sound/midi/MidiFileFormat;
.source "StandardMidiFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtendedMidiFileFormat"
.end annotation


# instance fields
.field private final numberOfTracks:I


# direct methods
.method public constructor <init>(IFIIJI)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "divisionType"    # F
    .param p3, "resolution"    # I
    .param p4, "bytes"    # I
    .param p5, "microseconds"    # J
    .param p7, "numberOfTracks"    # I

    .line 63
    invoke-direct/range {p0 .. p6}, Ljp/kshoji/javax/sound/midi/MidiFileFormat;-><init>(IFIIJ)V

    .line 64
    iput p7, p0, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$ExtendedMidiFileFormat;->numberOfTracks:I

    .line 65
    return-void
.end method


# virtual methods
.method public getNumberTracks()I
    .locals 1

    .line 49
    iget v0, p0, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader$ExtendedMidiFileFormat;->numberOfTracks:I

    return v0
.end method
