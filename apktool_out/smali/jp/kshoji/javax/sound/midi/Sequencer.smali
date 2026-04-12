.class public interface abstract Ljp/kshoji/javax/sound/midi/Sequencer;
.super Ljava/lang/Object;
.source "Sequencer.java"

# interfaces
.implements Ljp/kshoji/javax/sound/midi/MidiDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;
    }
.end annotation


# static fields
.field public static final LOOP_CONTINUOUSLY:I = -0x1


# virtual methods
.method public abstract addControllerEventListener(Ljp/kshoji/javax/sound/midi/ControllerEventListener;[I)[I
.end method

.method public abstract addMetaEventListener(Ljp/kshoji/javax/sound/midi/MetaEventListener;)Z
.end method

.method public abstract getLoopCount()I
.end method

.method public abstract getLoopEndPoint()J
.end method

.method public abstract getLoopStartPoint()J
.end method

.method public abstract getMasterSyncMode()Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;
.end method

.method public abstract getMasterSyncModes()[Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;
.end method

.method public abstract getMicrosecondLength()J
.end method

.method public abstract getMicrosecondPosition()J
.end method

.method public abstract getSequence()Ljp/kshoji/javax/sound/midi/Sequence;
.end method

.method public abstract getSlaveSyncMode()Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;
.end method

.method public abstract getSlaveSyncModes()[Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;
.end method

.method public abstract getTempoFactor()F
.end method

.method public abstract getTempoInBPM()F
.end method

.method public abstract getTempoInMPQ()F
.end method

.method public abstract getTickLength()J
.end method

.method public abstract getTickPosition()J
.end method

.method public abstract getTrackMute(I)Z
.end method

.method public abstract getTrackSolo(I)Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract recordDisable(Ljp/kshoji/javax/sound/midi/Track;)V
.end method

.method public abstract recordEnable(Ljp/kshoji/javax/sound/midi/Track;I)V
.end method

.method public abstract removeControllerEventListener(Ljp/kshoji/javax/sound/midi/ControllerEventListener;[I)[I
.end method

.method public abstract removeMetaEventListener(Ljp/kshoji/javax/sound/midi/MetaEventListener;)V
.end method

.method public abstract setLoopCount(I)V
.end method

.method public abstract setLoopEndPoint(J)V
.end method

.method public abstract setLoopStartPoint(J)V
.end method

.method public abstract setMasterSyncMode(Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;)V
.end method

.method public abstract setMicrosecondPosition(J)V
.end method

.method public abstract setSequence(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation
.end method

.method public abstract setSequence(Ljp/kshoji/javax/sound/midi/Sequence;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation
.end method

.method public abstract setSlaveSyncMode(Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;)V
.end method

.method public abstract setTempoFactor(F)V
.end method

.method public abstract setTempoInBPM(F)V
.end method

.method public abstract setTempoInMPQ(F)V
.end method

.method public abstract setTickPosition(J)V
.end method

.method public abstract setTrackMute(IZ)V
.end method

.method public abstract setTrackSolo(IZ)V
.end method

.method public abstract start()V
.end method

.method public abstract startRecording()V
.end method

.method public abstract stop()V
.end method

.method public abstract stopRecording()V
.end method
