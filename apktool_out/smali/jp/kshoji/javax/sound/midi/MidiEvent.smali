.class public Ljp/kshoji/javax/sound/midi/MidiEvent;
.super Ljava/lang/Object;
.source "MidiEvent.java"


# instance fields
.field private final message:Ljp/kshoji/javax/sound/midi/MidiMessage;

.field private tick:J


# direct methods
.method public constructor <init>(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    .locals 0
    .param p1, "message"    # Ljp/kshoji/javax/sound/midi/MidiMessage;
    .param p2, "tick"    # J

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Ljp/kshoji/javax/sound/midi/MidiEvent;->message:Ljp/kshoji/javax/sound/midi/MidiMessage;

    .line 23
    iput-wide p2, p0, Ljp/kshoji/javax/sound/midi/MidiEvent;->tick:J

    .line 24
    return-void
.end method


# virtual methods
.method public getMessage()Ljp/kshoji/javax/sound/midi/MidiMessage;
    .locals 1

    .line 33
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/MidiEvent;->message:Ljp/kshoji/javax/sound/midi/MidiMessage;

    return-object v0
.end method

.method public getTick()J
    .locals 2

    .line 42
    iget-wide v0, p0, Ljp/kshoji/javax/sound/midi/MidiEvent;->tick:J

    return-wide v0
.end method

.method public setTick(J)V
    .locals 0
    .param p1, "tick"    # J

    .line 51
    iput-wide p1, p0, Ljp/kshoji/javax/sound/midi/MidiEvent;->tick:J

    .line 52
    return-void
.end method
