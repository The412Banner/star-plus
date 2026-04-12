.class public Ljp/kshoji/javax/sound/midi/MidiFileFormat;
.super Ljava/lang/Object;
.source "MidiFileFormat.java"


# static fields
.field public static final HEADER_MThd:I = 0x4d546864

.field public static final HEADER_MTrk:I = 0x4d54726b

.field public static final UNKNOWN_LENGTH:I = -0x1


# instance fields
.field protected byteLength:I

.field protected divisionType:F

.field protected microsecondLength:J

.field private final properties:Ljava/util/AbstractMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected resolution:I

.field protected type:I


# direct methods
.method public constructor <init>(IFIIJ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "divisionType"    # F
    .param p3, "resolution"    # I
    .param p4, "bytes"    # I
    .param p5, "microseconds"    # J

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Ljp/kshoji/javax/sound/midi/MidiFileFormat;->type:I

    .line 44
    iput p2, p0, Ljp/kshoji/javax/sound/midi/MidiFileFormat;->divisionType:F

    .line 45
    iput p3, p0, Ljp/kshoji/javax/sound/midi/MidiFileFormat;->resolution:I

    .line 46
    iput p4, p0, Ljp/kshoji/javax/sound/midi/MidiFileFormat;->byteLength:I

    .line 47
    iput-wide p5, p0, Ljp/kshoji/javax/sound/midi/MidiFileFormat;->microsecondLength:J

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiFileFormat;->properties:Ljava/util/AbstractMap;

    .line 49
    return-void
.end method

.method public constructor <init>(IFIIJLjava/util/Map;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "divisionType"    # F
    .param p3, "resolution"    # I
    .param p4, "bytes"    # I
    .param p5, "microseconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFIIJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p7, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p6}, Ljp/kshoji/javax/sound/midi/MidiFileFormat;-><init>(IFIIJ)V

    .line 67
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiFileFormat;->properties:Ljava/util/AbstractMap;

    invoke-virtual {v0, p7}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getByteLength()I
    .locals 1

    .line 76
    iget v0, p0, Ljp/kshoji/javax/sound/midi/MidiFileFormat;->byteLength:I

    return v0
.end method

.method public getDivisionType()F
    .locals 1

    .line 85
    iget v0, p0, Ljp/kshoji/javax/sound/midi/MidiFileFormat;->divisionType:F

    return v0
.end method

.method public getMicrosecondLength()J
    .locals 2

    .line 94
    iget-wide v0, p0, Ljp/kshoji/javax/sound/midi/MidiFileFormat;->microsecondLength:J

    return-wide v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiFileFormat;->properties:Ljava/util/AbstractMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResolution()I
    .locals 1

    .line 114
    iget v0, p0, Ljp/kshoji/javax/sound/midi/MidiFileFormat;->resolution:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 123
    iget v0, p0, Ljp/kshoji/javax/sound/midi/MidiFileFormat;->type:I

    return v0
.end method

.method public properties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiFileFormat;->properties:Ljava/util/AbstractMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
