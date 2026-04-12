.class Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread$1;
.super Ljava/lang/Object;
.source "SequencerImpl.java"

# interfaces
.implements Ljp/kshoji/javax/sound/midi/Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;


# direct methods
.method constructor <init>(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)V
    .locals 0
    .param p1, "this$1"    # Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    .line 262
    iput-object p1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread$1;->this$1:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 275
    return-void
.end method

.method public send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    .locals 7
    .param p1, "message"    # Ljp/kshoji/javax/sound/midi/MidiMessage;
    .param p2, "timeStamp"    # J

    .line 265
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread$1;->this$1:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    iget-object v0, v0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetisRecording(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread$1;->this$1:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->-$$Nest$fgetrecordingTrack(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)Ljp/kshoji/javax/sound/midi/Track;

    move-result-object v0

    new-instance v1, Ljp/kshoji/javax/sound/midi/MidiEvent;

    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread$1;->this$1:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-static {v2}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->-$$Nest$fgetrecordStartedTick(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread$1;->this$1:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-static {v5}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->-$$Nest$fgetrecordingStartedTime(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    iget-object v4, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread$1;->this$1:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    iget-object v4, v4, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getTicksPerMicrosecond()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {v1, p1, v2, v3}, Ljp/kshoji/javax/sound/midi/MidiEvent;-><init>(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V

    invoke-virtual {v0, v1}, Ljp/kshoji/javax/sound/midi/Track;->add(Ljp/kshoji/javax/sound/midi/MidiEvent;)Z

    .line 269
    :cond_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread$1;->this$1:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-static {v0, p1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->-$$Nest$mfireEventListeners(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;Ljp/kshoji/javax/sound/midi/MidiMessage;)V

    .line 270
    return-void
.end method
