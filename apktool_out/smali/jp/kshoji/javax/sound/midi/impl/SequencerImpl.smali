.class public Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;
.super Ljava/lang/Object;
.source "SequencerImpl.java"

# interfaces
.implements Ljp/kshoji/javax/sound/midi/Sequencer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;
    }
.end annotation


# static fields
.field private static final MASTER_SYNC_MODES:[Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

.field private static final SLAVE_SYNC_MODES:[Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;


# instance fields
.field private final controllerEventListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljp/kshoji/javax/sound/midi/ControllerEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile isOpen:Z

.field private volatile isRecording:Z

.field private volatile isRunning:Z

.field private loopCount:I

.field private loopEndPoint:J

.field private loopStartPoint:J

.field private masterSyncMode:Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

.field private final metaEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljp/kshoji/javax/sound/midi/MetaEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljp/kshoji/javax/sound/midi/Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final recordEnable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljp/kshoji/javax/sound/midi/Track;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private sequence:Ljp/kshoji/javax/sound/midi/Sequence;

.field private sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

.field private slaveSyncMode:Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

.field private volatile tempoFactor:F

.field private tempoInBPM:F

.field private final trackMute:Landroid/util/SparseBooleanArray;

.field private final trackSolo:Landroid/util/SparseBooleanArray;

.field private final transmitters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljp/kshoji/javax/sound/midi/Transmitter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetcontrollerEventListenerMap(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->controllerEventListenerMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisOpen(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->isOpen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRecording(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->isRecording:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRunning(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->isRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmetaEventListeners(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->metaEventListeners:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreceivers(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->receivers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecordEnable(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->recordEnable:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsequence(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljp/kshoji/javax/sound/midi/Sequence;
    .locals 0

    iget-object p0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequence:Ljp/kshoji/javax/sound/midi/Sequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettransmitters(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->transmitters:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisRecording(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->isRecording:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisRunning(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->isRunning:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 45
    const/4 v0, 0x1

    new-array v1, v0, [Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    sget-object v2, Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;->INTERNAL_CLOCK:Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->MASTER_SYNC_MODES:[Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    .line 46
    new-array v0, v0, [Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    sget-object v1, Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;->NO_SYNC:Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    aput-object v1, v0, v3

    sput-object v0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->SLAVE_SYNC_MODES:[Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->transmitters:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->receivers:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->metaEventListeners:Ljava/util/Set;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->controllerEventListenerMap:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->recordEnable:Ljava/util/Map;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    .line 55
    iput-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequence:Ljp/kshoji/javax/sound/midi/Sequence;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->isOpen:Z

    .line 57
    iput v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->loopCount:I

    .line 58
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->loopStartPoint:J

    .line 59
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->loopEndPoint:J

    .line 60
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->tempoFactor:F

    .line 61
    sget-object v1, Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;->INTERNAL_CLOCK:Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    iput-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->masterSyncMode:Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    .line 62
    sget-object v1, Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;->NO_SYNC:Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    iput-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->slaveSyncMode:Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    .line 63
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->trackMute:Landroid/util/SparseBooleanArray;

    .line 64
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->trackSolo:Landroid/util/SparseBooleanArray;

    .line 65
    const/high16 v1, 0x42f00000    # 120.0f

    iput v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->tempoInBPM:F

    .line 67
    iput-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->isRunning:Z

    .line 68
    iput-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->isRecording:Z

    .line 496
    return-void
.end method


# virtual methods
.method public addControllerEventListener(Ljp/kshoji/javax/sound/midi/ControllerEventListener;[I)[I
    .locals 6
    .param p1, "listener"    # Ljp/kshoji/javax/sound/midi/ControllerEventListener;
    .param p2, "controllers"    # [I

    .line 623
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->controllerEventListenerMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 624
    :try_start_0
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p2, v2

    .line 625
    .local v3, "controllerId":I
    iget-object v4, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->controllerEventListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 626
    .local v4, "listeners":Ljava/util/Set;, "Ljava/util/Set<Ljp/kshoji/javax/sound/midi/ControllerEventListener;>;"
    if-nez v4, :cond_0

    .line 627
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v4, v5

    .line 629
    :cond_0
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object v5, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->controllerEventListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 624
    .end local v3    # "controllerId":I
    .end local v4    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Ljp/kshoji/javax/sound/midi/ControllerEventListener;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 632
    :cond_1
    monitor-exit v0

    return-object p2

    .line 633
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addMetaEventListener(Ljp/kshoji/javax/sound/midi/MetaEventListener;)Z
    .locals 2
    .param p1, "listener"    # Ljp/kshoji/javax/sound/midi/MetaEventListener;

    .line 669
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->metaEventListeners:Ljava/util/Set;

    monitor-enter v0

    .line 670
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->metaEventListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 671
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .line 537
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->receivers:Ljava/util/List;

    monitor-enter v0

    .line 538
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 539
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 541
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->transmitters:Ljava/util/List;

    monitor-enter v1

    .line 542
    :try_start_1
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->transmitters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 543
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 545
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->-$$Nest$mstopPlaying(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)V

    .line 547
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->-$$Nest$mstopRecording(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)V

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->isOpen:Z

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    .line 552
    :cond_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->metaEventListeners:Ljava/util/Set;

    monitor-enter v0

    .line 553
    :try_start_2
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->metaEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 554
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 556
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->controllerEventListenerMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 557
    :try_start_3
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->controllerEventListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 558
    monitor-exit v1

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 554
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 543
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 539
    :catchall_3
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method public getDeviceInfo()Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    .locals 5

    .line 501
    new-instance v0, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    const-string v1, "Android MIDI Sequencer"

    const-string v2, "0.1"

    const-string v3, "Sequencer"

    const-string v4, "jp.kshoji"

    invoke-direct {v0, v3, v4, v1, v2}, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 683
    iget v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->loopCount:I

    return v0
.end method

.method public getLoopEndPoint()J
    .locals 2

    .line 709
    iget-wide v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->loopEndPoint:J

    return-wide v0
.end method

.method public getLoopStartPoint()J
    .locals 2

    .line 696
    iget-wide v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->loopStartPoint:J

    return-wide v0
.end method

.method public getMasterSyncMode()Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;
    .locals 1

    .line 723
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->masterSyncMode:Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    return-object v0
.end method

.method public getMasterSyncModes()[Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;
    .locals 1

    .line 738
    sget-object v0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->MASTER_SYNC_MODES:[Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    return-object v0
.end method

.method public getMaxReceivers()I
    .locals 2

    .line 568
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->receivers:Ljava/util/List;

    monitor-enter v0

    .line 569
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 570
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxTransmitters()I
    .locals 2

    .line 575
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->transmitters:Ljava/util/List;

    monitor-enter v0

    .line 576
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->transmitters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 577
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMicrosecondLength()J
    .locals 2

    .line 775
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequence:Ljp/kshoji/javax/sound/midi/Sequence;

    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/Sequence;->getMicrosecondLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMicrosecondPosition()J
    .locals 2

    .line 743
    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getTickPosition()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getTicksPerMicrosecond()F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getReceiver()Ljp/kshoji/javax/sound/midi/Receiver;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->receivers:Ljava/util/List;

    monitor-enter v0

    .line 584
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 587
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->receivers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/kshoji/javax/sound/midi/Receiver;

    monitor-exit v0

    return-object v1

    .line 585
    :cond_0
    new-instance v1, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;

    const-string v2, "Receiver not found"

    invoke-direct {v1, v2}, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 589
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getReceivers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljp/kshoji/javax/sound/midi/Receiver;",
            ">;"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->receivers:Ljava/util/List;

    monitor-enter v0

    .line 596
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->receivers:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 597
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSequence()Ljp/kshoji/javax/sound/midi/Sequence;
    .locals 1

    .line 780
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequence:Ljp/kshoji/javax/sound/midi/Sequence;

    return-object v0
.end method

.method public getSlaveSyncMode()Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;
    .locals 1

    .line 800
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->slaveSyncMode:Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    return-object v0
.end method

.method public getSlaveSyncModes()[Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;
    .locals 1

    .line 815
    sget-object v0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->SLAVE_SYNC_MODES:[Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    return-object v0
.end method

.method public getTempoFactor()F
    .locals 1

    .line 820
    iget v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->tempoFactor:F

    return v0
.end method

.method public getTempoInBPM()F
    .locals 1

    .line 834
    iget v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->tempoInBPM:F

    return v0
.end method

.method public getTempoInMPQ()F
    .locals 2

    .line 844
    const v0, 0x4c64e1c0    # 6.0E7f

    iget v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->tempoInBPM:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getTickLength()J
    .locals 2

    .line 854
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequence:Ljp/kshoji/javax/sound/midi/Sequence;

    if-nez v0, :cond_0

    .line 855
    const-wide/16 v0, 0x0

    return-wide v0

    .line 857
    :cond_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequence:Ljp/kshoji/javax/sound/midi/Sequence;

    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/Sequence;->getTickLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTickPosition()J
    .locals 2

    .line 862
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    if-nez v0, :cond_0

    .line 863
    const-wide/16 v0, 0x0

    return-wide v0

    .line 865
    :cond_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->-$$Nest$mgetTickPosition(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)J

    move-result-wide v0

    return-wide v0
.end method

.method getTicksPerMicrosecond()F
    .locals 3

    .line 757
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequence:Ljp/kshoji/javax/sound/midi/Sequence;

    if-nez v0, :cond_0

    .line 758
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 762
    :cond_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequence:Ljp/kshoji/javax/sound/midi/Sequence;

    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/Sequence;->getDivisionType()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const v1, 0x49742400    # 1000000.0f

    if-nez v0, :cond_1

    .line 764
    iget v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->tempoInBPM:F

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v0, v2

    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequence:Ljp/kshoji/javax/sound/midi/Sequence;

    invoke-virtual {v2}, Ljp/kshoji/javax/sound/midi/Sequence;->getResolution()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    .local v0, "ticksPerMicrosecond":F
    goto :goto_0

    .line 767
    .end local v0    # "ticksPerMicrosecond":F
    :cond_1
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequence:Ljp/kshoji/javax/sound/midi/Sequence;

    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/Sequence;->getDivisionType()F

    move-result v0

    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequence:Ljp/kshoji/javax/sound/midi/Sequence;

    invoke-virtual {v2}, Ljp/kshoji/javax/sound/midi/Sequence;->getResolution()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 770
    .restart local v0    # "ticksPerMicrosecond":F
    :goto_0
    return v0
.end method

.method public getTrackMute(I)Z
    .locals 1
    .param p1, "track"    # I

    .line 877
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->trackMute:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public getTrackSolo(I)Z
    .locals 1
    .param p1, "track"    # I

    .line 887
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->trackSolo:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public getTransmitter()Ljp/kshoji/javax/sound/midi/Transmitter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 603
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->transmitters:Ljava/util/List;

    monitor-enter v0

    .line 604
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->transmitters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 607
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->transmitters:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/kshoji/javax/sound/midi/Transmitter;

    monitor-exit v0

    return-object v1

    .line 605
    :cond_0
    new-instance v1, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;

    const-string v2, "Transmitter not found"

    invoke-direct {v1, v2}, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 609
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTransmitters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljp/kshoji/javax/sound/midi/Transmitter;",
            ">;"
        }
    .end annotation

    .line 615
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->transmitters:Ljava/util/List;

    monitor-enter v0

    .line 616
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->transmitters:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 617
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOpen()Z
    .locals 1

    .line 563
    iget-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->isOpen:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 939
    iget-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->isRecording:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 960
    iget-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->isRunning:Z

    return v0
.end method

.method public open()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->receivers:Ljava/util/List;

    monitor-enter v0

    .line 508
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 509
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->receivers:Ljava/util/List;

    invoke-static {}, Ljp/kshoji/javax/sound/midi/MidiSystem$MidiSystemUtils;->getReceivers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 510
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 512
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->transmitters:Ljava/util/List;

    monitor-enter v1

    .line 513
    :try_start_1
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->transmitters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 514
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->transmitters:Ljava/util/List;

    invoke-static {}, Ljp/kshoji/javax/sound/midi/MidiSystem$MidiSystemUtils;->getTransmitters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 515
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 517
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;-><init>(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;Ljp/kshoji/javax/sound/midi/impl/SequencerImpl-IA;)V

    iput-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    .line 519
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MidiSequencer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-virtual {v2}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->setName(Ljava/lang/String;)V

    .line 521
    :try_start_2
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->start()V
    :try_end_2
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 524
    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 527
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->isOpen:Z

    .line 528
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    monitor-enter v0

    .line 529
    :try_start_3
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 530
    monitor-exit v0

    .line 531
    return-void

    .line 530
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 515
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 510
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public recordDisable(Ljp/kshoji/javax/sound/midi/Track;)V
    .locals 3
    .param p1, "track"    # Ljp/kshoji/javax/sound/midi/Track;

    .line 897
    if-nez p1, :cond_0

    .line 899
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->recordEnable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 902
    :cond_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->recordEnable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 903
    .local v0, "trackRecordEnable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 904
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->recordEnable:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    .end local v0    # "trackRecordEnable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method public recordEnable(Ljp/kshoji/javax/sound/midi/Track;I)V
    .locals 4
    .param p1, "track"    # Ljp/kshoji/javax/sound/midi/Track;
    .param p2, "channel"    # I

    .line 911
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->recordEnable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 912
    .local v0, "trackRecordEnable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 913
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 916
    :cond_0
    const/4 v1, -0x1

    const/16 v2, 0x10

    if-ne p2, v1, :cond_2

    .line 917
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 919
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 917
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 921
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->recordEnable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 922
    :cond_2
    if-ltz p2, :cond_3

    if-ge p2, v2, :cond_3

    .line 923
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 924
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->recordEnable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    :cond_3
    :goto_1
    return-void
.end method

.method public removeControllerEventListener(Ljp/kshoji/javax/sound/midi/ControllerEventListener;[I)[I
    .locals 7
    .param p1, "listener"    # Ljp/kshoji/javax/sound/midi/ControllerEventListener;
    .param p2, "controllers"    # [I

    .line 639
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->controllerEventListenerMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 640
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p2, v3

    .line 642
    .local v4, "controllerId":I
    iget-object v5, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->controllerEventListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 643
    .local v5, "listeners":Ljava/util/Set;, "Ljava/util/Set<Ljp/kshoji/javax/sound/midi/ControllerEventListener;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 644
    invoke-interface {v5, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 647
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    :goto_1
    iget-object v6, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->controllerEventListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 641
    .end local v4    # "controllerId":I
    .end local v5    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Ljp/kshoji/javax/sound/midi/ControllerEventListener;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 653
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 654
    .local v2, "resultPrimitiveArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 655
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 656
    .local v4, "resultValue":Ljava/lang/Integer;
    if-nez v4, :cond_2

    .line 657
    goto :goto_3

    .line 660
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v3

    .line 654
    .end local v4    # "resultValue":Ljava/lang/Integer;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 662
    .end local v3    # "i":I
    :cond_3
    monitor-exit v0

    return-object v2

    .line 663
    .end local v1    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "resultPrimitiveArray":[I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeMetaEventListener(Ljp/kshoji/javax/sound/midi/MetaEventListener;)V
    .locals 2
    .param p1, "listener"    # Ljp/kshoji/javax/sound/midi/MetaEventListener;

    .line 676
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->metaEventListeners:Ljava/util/Set;

    monitor-enter v0

    .line 677
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->metaEventListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 678
    monitor-exit v0

    .line 679
    return-void

    .line 678
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLoopCount(I)V
    .locals 3
    .param p1, "count"    # I

    .line 688
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid loop count value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_1
    :goto_0
    iput p1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->loopCount:I

    .line 692
    return-void
.end method

.method public setLoopEndPoint(J)V
    .locals 4
    .param p1, "tick"    # J

    .line 714
    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getTickLength()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->loopStartPoint:J

    cmp-long v2, v2, p1

    if-gtz v2, :cond_1

    :cond_0
    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 717
    iput-wide p1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->loopEndPoint:J

    .line 718
    return-void

    .line 715
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid loop end point value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLoopStartPoint(J)V
    .locals 4
    .param p1, "tick"    # J

    .line 701
    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getTickLength()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    iget-wide v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->loopEndPoint:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->loopEndPoint:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 704
    iput-wide p1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->loopStartPoint:J

    .line 705
    return-void

    .line 702
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid loop start point value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMasterSyncMode(Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;)V
    .locals 4
    .param p1, "sync"    # Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    .line 728
    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getMasterSyncModes()[Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 729
    .local v3, "availableMode":Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;
    if-ne v3, p1, :cond_0

    .line 730
    iput-object p1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->masterSyncMode:Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    .line 728
    .end local v3    # "availableMode":Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 733
    :cond_1
    return-void
.end method

.method public setMicrosecondPosition(J)V
    .locals 2
    .param p1, "microseconds"    # J

    .line 748
    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getTicksPerMicrosecond()F

    move-result v0

    long-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->setTickPosition(J)V

    .line 749
    return-void
.end method

.method public setSequence(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 785
    new-instance v0, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;

    invoke-direct {v0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;-><init>()V

    invoke-virtual {v0, p1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->getSequence(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/Sequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->setSequence(Ljp/kshoji/javax/sound/midi/Sequence;)V

    .line 786
    return-void
.end method

.method public setSequence(Ljp/kshoji/javax/sound/midi/Sequence;)V
    .locals 2
    .param p1, "sequence"    # Ljp/kshoji/javax/sound/midi/Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 790
    iput-object p1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequence:Ljp/kshoji/javax/sound/midi/Sequence;

    .line 792
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 793
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->-$$Nest$fputneedRefreshPlayingTrack(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;Z)V

    .line 795
    :cond_0
    return-void
.end method

.method public setSlaveSyncMode(Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;)V
    .locals 4
    .param p1, "sync"    # Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    .line 805
    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->getSlaveSyncModes()[Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 806
    .local v3, "availableMode":Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;
    if-ne v3, p1, :cond_0

    .line 807
    iput-object p1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->slaveSyncMode:Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;

    .line 805
    .end local v3    # "availableMode":Ljp/kshoji/javax/sound/midi/Sequencer$SyncMode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 810
    :cond_1
    return-void
.end method

.method public setTempoFactor(F)V
    .locals 2
    .param p1, "factor"    # F

    .line 825
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 829
    iput p1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->tempoFactor:F

    .line 830
    return-void

    .line 826
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The tempo factor must be larger than 0f."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTempoInBPM(F)V
    .locals 0
    .param p1, "bpm"    # F

    .line 839
    iput p1, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->tempoInBPM:F

    .line 840
    return-void
.end method

.method public setTempoInMPQ(F)V
    .locals 1
    .param p1, "mpq"    # F

    .line 849
    const v0, 0x4c64e1c0    # 6.0E7f

    div-float/2addr v0, p1

    iput v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->tempoInBPM:F

    .line 850
    return-void
.end method

.method public setTickPosition(J)V
    .locals 1
    .param p1, "tick"    # J

    .line 870
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-static {v0, p1, p2}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->-$$Nest$msetTickPosition(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;J)V

    .line 873
    :cond_0
    return-void
.end method

.method public setTrackMute(IZ)V
    .locals 1
    .param p1, "track"    # I
    .param p2, "mute"    # Z

    .line 882
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->trackMute:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 883
    return-void
.end method

.method public setTrackSolo(IZ)V
    .locals 1
    .param p1, "track"    # I
    .param p2, "solo"    # Z

    .line 892
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->trackSolo:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 893
    return-void
.end method

.method public start()V
    .locals 1

    .line 953
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->-$$Nest$mstartPlaying(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)V

    .line 956
    :cond_0
    return-void
.end method

.method public startRecording()V
    .locals 1

    .line 931
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->-$$Nest$mstartRecording(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)V

    .line 933
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->-$$Nest$mstartPlaying(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)V

    .line 935
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 966
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->-$$Nest$mstopRecording(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)V

    .line 968
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->-$$Nest$mstopPlaying(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)V

    .line 970
    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 1

    .line 945
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;->sequencerThread:Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;

    invoke-static {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;->-$$Nest$mstopRecording(Ljp/kshoji/javax/sound/midi/impl/SequencerImpl$SequencerThread;)V

    .line 948
    :cond_0
    return-void
.end method
