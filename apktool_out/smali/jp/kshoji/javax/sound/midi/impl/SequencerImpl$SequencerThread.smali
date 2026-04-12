.class Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;
.super Ljava/lang/Thread;
.source "SequencerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SequencerThread"
.end annotation


# instance fields
.field private needRefreshPlayingTrack:Z

.field private playingTrack:Ljp/kshoji/javax/sound/midi/Track;

.field private recordStartedTick:J

.field private recordingStartedTime:J

.field private recordingTrack:Ljp/kshoji/javax/sound/midi/Track;

.field private runningStoppedTime:J

.field final synthetic this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

.field private tickPosition:J

.field private tickPositionSetTime:J


# direct methods
.method static bridge synthetic -$$Nest$fgetrecordStartedTick(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)J
    .locals 2

    iget-wide v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->recordStartedTick:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetrecordingStartedTime(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)J
    .locals 2

    iget-wide v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->recordingStartedTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetrecordingTrack(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)Ljp/kshoji/javax/sound/midi/Track;
    .locals 0

    iget-object p0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->recordingTrack:Ljp/kshoji/javax/sound/midi/Track;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputneedRefreshPlayingTrack(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->needRefreshPlayingTrack:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mfireEventListeners(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;Ljp/kshoji/javax/sound/midi/MidiMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->fireEventListeners(Ljp/kshoji/javax/sound/midi/MidiMessage;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTickPosition(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)J
    .locals 2

    invoke-direct {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->getTickPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$msetTickPosition(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->setTickPosition(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPlaying(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)V
    .locals 0

    invoke-direct {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->startPlaying()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartRecording(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)V
    .locals 0

    invoke-direct {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->startRecording()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopPlaying(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)V
    .locals 0

    invoke-direct {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->stopPlaying()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopRecording(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)V
    .locals 0

    invoke-direct {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->stopRecording()V

    return-void
.end method

.method private constructor <init>(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)V
    .locals 2

    .line 92
    iput-object p1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->tickPosition:J

    .line 84
    const/4 p1, 0x0

    iput-object p1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->playingTrack:Ljp/kshoji/javax/sound/midi/Track;

    .line 87
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->needRefreshPlayingTrack:Z

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;Ljp/kshoji/javax/sound/midi/impl/SequencerImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;-><init>(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)V

    return-void
.end method

.method private fireEventListeners(Ljp/kshoji/javax/sound/midi/MidiMessage;)V
    .locals 5
    .param p1, "message"    # Ljp/kshoji/javax/sound/midi/MidiMessage;

    .line 226
    instance-of v0, p1, Ljp/kshoji/javax/sound/midi/MetaMessage;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetmetaEventListeners(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetmetaEventListeners(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/kshoji/javax/sound/midi/MetaEventListener;

    .line 230
    .local v2, "metaEventListener":Ljp/kshoji/javax/sound/midi/MetaEventListener;
    move-object v3, p1

    check-cast v3, Ljp/kshoji/javax/sound/midi/MetaMessage;

    invoke-interface {v2, v3}, Ljp/kshoji/javax/sound/midi/MetaEventListener;->meta(Ljp/kshoji/javax/sound/midi/MetaMessage;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .end local v2    # "metaEventListener":Ljp/kshoji/javax/sound/midi/MetaEventListener;
    goto :goto_0

    .line 234
    :cond_0
    goto :goto_1

    .line 235
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 232
    :catch_0
    move-exception v1

    .line 235
    :goto_1
    :try_start_1
    monitor-exit v0

    goto :goto_6

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 236
    :cond_1
    instance-of v0, p1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    if-eqz v0, :cond_3

    .line 237
    move-object v0, p1

    check-cast v0, Ljp/kshoji/javax/sound/midi/ShortMessage;

    .line 238
    .local v0, "shortMessage":Ljp/kshoji/javax/sound/midi/ShortMessage;
    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/ShortMessage;->getCommand()I

    move-result v1

    const/16 v2, 0xb0

    if-ne v1, v2, :cond_3

    .line 239
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetcontrollerEventListenerMap(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 241
    :try_start_2
    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v2}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetcontrollerEventListenerMap(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/ShortMessage;->getData1()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 242
    .local v2, "eventListeners":Ljava/util/Set;, "Ljava/util/Set<Ljp/kshoji/javax/sound/midi/ControllerEventListener;>;"
    if-eqz v2, :cond_2

    .line 243
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljp/kshoji/javax/sound/midi/ControllerEventListener;

    .line 244
    .local v4, "eventListener":Ljp/kshoji/javax/sound/midi/ControllerEventListener;
    invoke-interface {v4, v0}, Ljp/kshoji/javax/sound/midi/ControllerEventListener;->controlChange(Ljp/kshoji/javax/sound/midi/ShortMessage;)V
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 245
    .end local v4    # "eventListener":Ljp/kshoji/javax/sound/midi/ControllerEventListener;
    goto :goto_3

    .line 249
    .end local v2    # "eventListeners":Ljava/util/Set;, "Ljava/util/Set<Ljp/kshoji/javax/sound/midi/ControllerEventListener;>;"
    :cond_2
    goto :goto_4

    .line 250
    :catchall_1
    move-exception v2

    goto :goto_5

    .line 247
    :catch_1
    move-exception v2

    .line 250
    :goto_4
    :try_start_3
    monitor-exit v1

    goto :goto_6

    :goto_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 253
    .end local v0    # "shortMessage":Ljp/kshoji/javax/sound/midi/ShortMessage;
    :cond_3
    :goto_6
    return-void
.end method

.method private getTickPosition()J
    .locals 6

    .line 99
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetisRunning(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Z

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_0

    .line 101
    iget-wide v2, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->tickPosition:J

    long-to-float v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->tickPositionSetTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getTicksPerMicrosecond()F

    move-result v1

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-long v0, v0

    return-wide v0

    .line 104
    :cond_0
    iget-wide v2, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->tickPosition:J

    long-to-float v0, v2

    iget-wide v2, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->runningStoppedTime:J

    iget-wide v4, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->tickPositionSetTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getTicksPerMicrosecond()F

    move-result v1

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-long v0, v0

    return-wide v0
.end method

.method private isRecordable(Ljava/util/Collection;Ljp/kshoji/javax/sound/midi/MidiEvent;)Z
    .locals 3
    .param p2, "midiEvent"    # Ljp/kshoji/javax/sound/midi/MidiEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljp/kshoji/javax/sound/midi/MidiEvent;",
            ")Z"
        }
    .end annotation

    .line 465
    .local p1, "recordEnableChannels":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 466
    const/4 v0, 0x0

    return v0

    .line 469
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 470
    return v1

    .line 473
    :cond_1
    invoke-virtual {p2}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getMessage()Ljp/kshoji/javax/sound/midi/MidiMessage;

    move-result-object v0

    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/MidiMessage;->getStatus()I

    move-result v0

    .line 474
    .local v0, "status":I
    and-int/lit16 v2, v0, 0xf0

    sparse-switch v2, :sswitch_data_0

    .line 487
    return v1

    .line 484
    :sswitch_0
    and-int/lit8 v1, v0, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0x90 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xb0 -> :sswitch_0
        0xc0 -> :sswitch_0
        0xd0 -> :sswitch_0
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method private processTempoChange(Ljp/kshoji/javax/sound/midi/MetaMessage;)Z
    .locals 6
    .param p1, "metaMessage"    # Ljp/kshoji/javax/sound/midi/MetaMessage;

    .line 424
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/MetaMessage;->getLength()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/MetaMessage;->getStatus()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 425
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/MetaMessage;->getMessage()[B

    move-result-object v0

    .line 426
    .local v0, "message":[B
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    and-int/2addr v3, v1

    const/16 v4, 0x51

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 427
    const/4 v3, 0x5

    aget-byte v3, v0, v3

    and-int/2addr v3, v1

    const/4 v5, 0x4

    aget-byte v5, v0, v5

    and-int/2addr v5, v1

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    aget-byte v4, v0, v4

    and-int/2addr v1, v4

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v3

    .line 431
    .local v1, "tempo":I
    iget-object v3, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->setTempoInMPQ(F)V

    .line 432
    return v2

    .line 435
    .end local v0    # "message":[B
    .end local v1    # "tempo":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private refreshPlayingTrack()V
    .locals 3

    .line 442
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetsequence(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljp/kshoji/javax/sound/midi/Sequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 443
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetsequence(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljp/kshoji/javax/sound/midi/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/Sequence;->getTracks()[Ljp/kshoji/javax/sound/midi/Track;

    move-result-object v0

    .line 447
    .local v0, "tracks":[Ljp/kshoji/javax/sound/midi/Track;
    array-length v1, v0

    if-lez v1, :cond_1

    .line 450
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v2}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetrecordEnable(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Ljp/kshoji/javax/sound/midi/Track$TrackUtils;->mergeSequenceToTrack(Ljp/kshoji/javax/sound/midi/Sequencer;Ljava/util/Map;)Ljp/kshoji/javax/sound/midi/Track;

    move-result-object v1

    iput-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->playingTrack:Ljp/kshoji/javax/sound/midi/Track;
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    goto :goto_0

    .line 451
    :catch_0
    move-exception v1

    .line 455
    :cond_1
    :goto_0
    return-void
.end method

.method private setTickPosition(J)V
    .locals 2
    .param p1, "tick"    # J

    .line 114
    iput-wide p1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->tickPosition:J

    .line 115
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetisRunning(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->tickPositionSetTime:J

    .line 118
    :cond_0
    return-void
.end method

.method private startPlaying()V
    .locals 2

    .line 183
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetisRunning(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getLoopStartPoint()J

    move-result-wide v0

    iput-wide v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->tickPosition:J

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->tickPositionSetTime:J

    .line 190
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fputisRunning(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;Z)V

    .line 192
    monitor-enter p0

    .line 193
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 194
    monitor-exit p0

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startRecording()V
    .locals 2

    .line 124
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetisRecording(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetsequence(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljp/kshoji/javax/sound/midi/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/Sequence;->createTrack()Ljp/kshoji/javax/sound/midi/Track;

    move-result-object v0

    iput-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->recordingTrack:Ljp/kshoji/javax/sound/midi/Track;

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->recordingStartedTime:J

    .line 131
    invoke-direct {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->getTickPosition()J

    move-result-wide v0

    iput-wide v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->recordStartedTick:J

    .line 132
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fputisRecording(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;Z)V

    .line 133
    return-void
.end method

.method private stopPlaying()V
    .locals 2

    .line 201
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetisRunning(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 205
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->interrupt()V

    .line 207
    return-void

    .line 205
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 210
    :cond_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fputisRunning(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;Z)V

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->runningStoppedTime:J

    .line 214
    monitor-enter p0

    .line 215
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 216
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 217
    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->interrupt()V

    .line 218
    return-void

    .line 216
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private stopRecording()V
    .locals 14

    .line 139
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetisRecording(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 145
    .local v0, "recordEndedTime":J
    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fputisRecording(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;Z)V

    .line 147
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v2, "eventToRemoval":Ljava/util/Collection;, "Ljava/util/Collection<Ljp/kshoji/javax/sound/midi/MidiEvent;>;"
    iget-object v4, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v4}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetsequence(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljp/kshoji/javax/sound/midi/Sequence;

    move-result-object v4

    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/Sequence;->getTracks()[Ljp/kshoji/javax/sound/midi/Track;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_6

    aget-object v6, v4, v3

    .line 149
    .local v6, "track":Ljp/kshoji/javax/sound/midi/Track;
    iget-object v7, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v7}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetrecordEnable(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 152
    .local v7, "recordEnableChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 153
    const/4 v8, 0x0

    .local v8, "trackIndex":I
    :goto_1
    invoke-virtual {v6}, Ljp/kshoji/javax/sound/midi/Track;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 154
    invoke-virtual {v6, v8}, Ljp/kshoji/javax/sound/midi/Track;->get(I)Ljp/kshoji/javax/sound/midi/MidiEvent;

    move-result-object v9

    .line 155
    .local v9, "midiEvent":Ljp/kshoji/javax/sound/midi/MidiEvent;
    invoke-direct {p0, v7, v9}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->isRecordable(Ljava/util/Collection;Ljp/kshoji/javax/sound/midi/MidiEvent;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 156
    invoke-virtual {v9}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getTick()J

    move-result-wide v10

    iget-wide v12, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->recordingStartedTime:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_1

    invoke-virtual {v9}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getTick()J

    move-result-wide v10

    cmp-long v10, v10, v0

    if-gtz v10, :cond_1

    .line 157
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v9    # "midiEvent":Ljp/kshoji/javax/sound/midi/MidiEvent;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 161
    .end local v8    # "trackIndex":I
    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljp/kshoji/javax/sound/midi/MidiEvent;

    .line 162
    .local v9, "event":Ljp/kshoji/javax/sound/midi/MidiEvent;
    invoke-virtual {v6, v9}, Ljp/kshoji/javax/sound/midi/Track;->remove(Ljp/kshoji/javax/sound/midi/MidiEvent;)Z

    .line 163
    .end local v9    # "event":Ljp/kshoji/javax/sound/midi/MidiEvent;
    goto :goto_2

    .line 166
    :cond_3
    const/4 v8, 0x0

    .local v8, "eventIndex":I
    :goto_3
    iget-object v9, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->recordingTrack:Ljp/kshoji/javax/sound/midi/Track;

    invoke-virtual {v9}, Ljp/kshoji/javax/sound/midi/Track;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 167
    iget-object v9, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->recordingTrack:Ljp/kshoji/javax/sound/midi/Track;

    invoke-virtual {v9, v8}, Ljp/kshoji/javax/sound/midi/Track;->get(I)Ljp/kshoji/javax/sound/midi/MidiEvent;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->isRecordable(Ljava/util/Collection;Ljp/kshoji/javax/sound/midi/MidiEvent;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 168
    iget-object v9, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->recordingTrack:Ljp/kshoji/javax/sound/midi/Track;

    invoke-virtual {v9, v8}, Ljp/kshoji/javax/sound/midi/Track;->get(I)Ljp/kshoji/javax/sound/midi/MidiEvent;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljp/kshoji/javax/sound/midi/Track;->add(Ljp/kshoji/javax/sound/midi/MidiEvent;)Z

    .line 166
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 172
    .end local v8    # "eventIndex":I
    :cond_5
    invoke-static {v6}, Ljp/kshoji/javax/sound/midi/Track$TrackUtils;->sortEvents(Ljp/kshoji/javax/sound/midi/Track;)V

    .line 148
    .end local v6    # "track":Ljp/kshoji/javax/sound/midi/Track;
    .end local v7    # "recordEnableChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->needRefreshPlayingTrack:Z

    .line 177
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 257
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 259
    invoke-direct {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->refreshPlayingTrack()V

    .line 262
    new-instance v0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread$1;

    invoke-direct {v0, p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread$1;-><init>(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)V

    .line 278
    .local v0, "midiEventRecordingReceiver":Ljp/kshoji/javax/sound/midi/Receiver;
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgettransmitters(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 279
    :try_start_0
    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v2}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgettransmitters(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/kshoji/javax/sound/midi/Transmitter;

    .line 281
    .local v3, "transmitter":Ljp/kshoji/javax/sound/midi/Transmitter;
    invoke-interface {v3, v0}, Ljp/kshoji/javax/sound/midi/Transmitter;->setReceiver(Ljp/kshoji/javax/sound/midi/Receiver;)V

    .line 282
    .end local v3    # "transmitter":Ljp/kshoji/javax/sound/midi/Transmitter;
    goto :goto_0

    .line 283
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 286
    :goto_1
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetisOpen(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 287
    monitor-enter p0

    .line 290
    :goto_2
    :try_start_1
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetisRunning(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetisOpen(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 295
    :cond_1
    goto :goto_3

    .line 296
    :catchall_0
    move-exception v1

    goto/16 :goto_12

    .line 293
    :catch_0
    move-exception v1

    .line 296
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->playingTrack:Ljp/kshoji/javax/sound/midi/Track;

    if-nez v1, :cond_3

    .line 299
    iget-boolean v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->needRefreshPlayingTrack:Z

    if-eqz v1, :cond_2

    .line 300
    invoke-direct {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->refreshPlayingTrack()V

    .line 303
    :cond_2
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->playingTrack:Ljp/kshoji/javax/sound/midi/Track;

    if-nez v1, :cond_3

    .line 304
    goto :goto_1

    .line 309
    :cond_3
    const/4 v1, 0x0

    .local v1, "loop":I
    :goto_4
    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-virtual {v2}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getLoopCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_17

    .line 310
    iget-boolean v2, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->needRefreshPlayingTrack:Z

    if-eqz v2, :cond_4

    .line 311
    invoke-direct {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->refreshPlayingTrack()V

    .line 314
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    iget-object v4, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->playingTrack:Ljp/kshoji/javax/sound/midi/Track;

    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/Track;->size()I

    move-result v4

    if-ge v2, v4, :cond_15

    .line 315
    iget-object v4, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->playingTrack:Ljp/kshoji/javax/sound/midi/Track;

    invoke-virtual {v4, v2}, Ljp/kshoji/javax/sound/midi/Track;->get(I)Ljp/kshoji/javax/sound/midi/MidiEvent;

    move-result-object v4

    .line 316
    .local v4, "midiEvent":Ljp/kshoji/javax/sound/midi/MidiEvent;
    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getMessage()Ljp/kshoji/javax/sound/midi/MidiMessage;

    move-result-object v5

    .line 318
    .local v5, "midiMessage":Ljp/kshoji/javax/sound/midi/MidiMessage;
    iget-boolean v6, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->needRefreshPlayingTrack:Z

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_c

    .line 320
    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getTick()J

    move-result-wide v9

    iget-wide v11, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->tickPosition:J

    cmp-long v6, v9, v11

    if-gez v6, :cond_b

    .line 321
    instance-of v6, v5, Ljp/kshoji/javax/sound/midi/MetaMessage;

    if-eqz v6, :cond_7

    .line 323
    move-object v6, v5

    check-cast v6, Ljp/kshoji/javax/sound/midi/MetaMessage;

    .line 324
    .local v6, "metaMessage":Ljp/kshoji/javax/sound/midi/MetaMessage;
    invoke-direct {p0, v6}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->processTempoChange(Ljp/kshoji/javax/sound/midi/MetaMessage;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 326
    iget-object v9, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v9}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetreceivers(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v9

    monitor-enter v9

    .line 327
    :try_start_3
    iget-object v10, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v10}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetreceivers(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljp/kshoji/javax/sound/midi/Receiver;

    .line 328
    .local v11, "receiver":Ljp/kshoji/javax/sound/midi/Receiver;
    invoke-interface {v11, v5, v7, v8}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V

    .line 329
    .end local v11    # "receiver":Ljp/kshoji/javax/sound/midi/Receiver;
    goto :goto_6

    .line 330
    :cond_5
    monitor-exit v9

    goto :goto_7

    :catchall_1
    move-exception v3

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 332
    .end local v6    # "metaMessage":Ljp/kshoji/javax/sound/midi/MetaMessage;
    :cond_6
    :goto_7
    goto/16 :goto_f

    :cond_7
    instance-of v6, v5, Ljp/kshoji/javax/sound/midi/SysexMessage;

    if-eqz v6, :cond_9

    .line 334
    iget-object v6, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v6}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetreceivers(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v6

    monitor-enter v6

    .line 335
    :try_start_4
    iget-object v9, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v9}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetreceivers(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljp/kshoji/javax/sound/midi/Receiver;

    .line 336
    .local v10, "receiver":Ljp/kshoji/javax/sound/midi/Receiver;
    invoke-interface {v10, v5, v7, v8}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V

    .line 337
    .end local v10    # "receiver":Ljp/kshoji/javax/sound/midi/Receiver;
    goto :goto_8

    .line 338
    :cond_8
    monitor-exit v6

    goto/16 :goto_f

    :catchall_2
    move-exception v3

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3

    .line 339
    :cond_9
    instance-of v6, v5, Ljp/kshoji/javax/sound/midi/ShortMessage;

    if-eqz v6, :cond_14

    .line 341
    move-object v6, v5

    check-cast v6, Ljp/kshoji/javax/sound/midi/ShortMessage;

    .line 342
    .local v6, "shortMessage":Ljp/kshoji/javax/sound/midi/ShortMessage;
    invoke-virtual {v6}, Ljp/kshoji/javax/sound/midi/ShortMessage;->getCommand()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 347
    iget-object v9, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v9}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetreceivers(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v9

    monitor-enter v9

    goto :goto_9

    .line 345
    :sswitch_0
    goto :goto_b

    .line 348
    :goto_9
    :try_start_5
    iget-object v10, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v10}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetreceivers(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljp/kshoji/javax/sound/midi/Receiver;

    .line 349
    .restart local v11    # "receiver":Ljp/kshoji/javax/sound/midi/Receiver;
    invoke-interface {v11, v5, v7, v8}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V

    .line 350
    .end local v11    # "receiver":Ljp/kshoji/javax/sound/midi/Receiver;
    goto :goto_a

    .line 351
    :cond_a
    monitor-exit v9

    .line 354
    .end local v6    # "shortMessage":Ljp/kshoji/javax/sound/midi/ShortMessage;
    :goto_b
    goto/16 :goto_f

    .line 351
    .restart local v6    # "shortMessage":Ljp/kshoji/javax/sound/midi/ShortMessage;
    :catchall_3
    move-exception v3

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v3

    .line 359
    .end local v6    # "shortMessage":Ljp/kshoji/javax/sound/midi/ShortMessage;
    :cond_b
    iput-boolean v3, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->needRefreshPlayingTrack:Z

    .line 363
    :cond_c
    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getTick()J

    move-result-wide v9

    iget-object v6, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-virtual {v6}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getLoopStartPoint()J

    move-result-wide v11

    cmp-long v6, v9, v11

    if-ltz v6, :cond_13

    iget-object v6, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-virtual {v6}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getLoopEndPoint()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v6, v9, v11

    if-eqz v6, :cond_d

    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getTick()J

    move-result-wide v9

    iget-object v6, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-virtual {v6}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getLoopEndPoint()J

    move-result-wide v11

    cmp-long v6, v9, v11

    if-lez v6, :cond_d

    goto/16 :goto_e

    .line 371
    :cond_d
    :try_start_6
    iget-object v6, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-virtual {v6}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getTicksPerMicrosecond()F

    move-result v6

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v6

    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getTick()J

    move-result-wide v10

    iget-wide v12, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->tickPosition:J

    sub-long/2addr v10, v12

    long-to-float v6, v10

    mul-float/2addr v9, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v9, v6

    iget-object v6, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-virtual {v6}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getTempoFactor()F

    move-result v6

    div-float/2addr v9, v6

    float-to-long v9, v9

    .line 372
    .local v9, "sleepLength":J
    cmp-long v6, v9, v7

    if-lez v6, :cond_e

    .line 373
    invoke-static {v9, v10}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->sleep(J)V

    .line 375
    :cond_e
    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getTick()J

    move-result-wide v11

    iput-wide v11, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->tickPosition:J

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->tickPositionSetTime:J
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 379
    .end local v9    # "sleepLength":J
    goto :goto_c

    .line 377
    :catch_1
    move-exception v6

    .line 381
    :goto_c
    iget-object v6, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v6}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetisRunning(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 382
    goto :goto_10

    .line 385
    :cond_f
    iget-boolean v6, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->needRefreshPlayingTrack:Z

    if-eqz v6, :cond_10

    .line 386
    goto :goto_10

    .line 390
    :cond_10
    instance-of v6, v5, Ljp/kshoji/javax/sound/midi/MetaMessage;

    if-eqz v6, :cond_11

    .line 391
    move-object v6, v5

    check-cast v6, Ljp/kshoji/javax/sound/midi/MetaMessage;

    .line 392
    .local v6, "metaMessage":Ljp/kshoji/javax/sound/midi/MetaMessage;
    invoke-direct {p0, v6}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->processTempoChange(Ljp/kshoji/javax/sound/midi/MetaMessage;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 393
    invoke-direct {p0, v5}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->fireEventListeners(Ljp/kshoji/javax/sound/midi/MidiMessage;)V

    .line 396
    goto :goto_f

    .line 401
    .end local v6    # "metaMessage":Ljp/kshoji/javax/sound/midi/MetaMessage;
    :cond_11
    iget-object v6, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v6}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetreceivers(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v6

    monitor-enter v6

    .line 402
    :try_start_7
    iget-object v9, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v9}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fgetreceivers(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljp/kshoji/javax/sound/midi/Receiver;

    .line 403
    .restart local v10    # "receiver":Ljp/kshoji/javax/sound/midi/Receiver;
    invoke-interface {v10, v5, v7, v8}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V

    .line 404
    .end local v10    # "receiver":Ljp/kshoji/javax/sound/midi/Receiver;
    goto :goto_d

    .line 405
    :cond_12
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 407
    invoke-direct {p0, v5}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->fireEventListeners(Ljp/kshoji/javax/sound/midi/MidiMessage;)V

    goto :goto_f

    .line 405
    :catchall_4
    move-exception v3

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v3

    .line 365
    :cond_13
    :goto_e
    invoke-virtual {v4}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getTick()J

    move-result-wide v6

    iput-wide v6, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->tickPosition:J

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->tickPositionSetTime:J

    .line 367
    nop

    .line 314
    .end local v4    # "midiEvent":Ljp/kshoji/javax/sound/midi/MidiEvent;
    .end local v5    # "midiMessage":Ljp/kshoji/javax/sound/midi/MidiMessage;
    :cond_14
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 309
    .end local v2    # "i":I
    :cond_15
    :goto_10
    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-virtual {v2}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getLoopCount()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    move v2, v1

    goto :goto_11

    :cond_16
    add-int/lit8 v2, v1, 0x1

    :goto_11
    move v1, v2

    goto/16 :goto_4

    .line 412
    .end local v1    # "loop":I
    :cond_17
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->this$0:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-static {v1, v3}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->-$$Nest$fputisRunning(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;Z)V

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->runningStoppedTime:J

    goto/16 :goto_1

    .line 296
    :goto_12
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v1

    .line 415
    :cond_18
    return-void

    .line 283
    :catchall_5
    move-exception v2

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0x90 -> :sswitch_0
    .end sparse-switch
.end method
