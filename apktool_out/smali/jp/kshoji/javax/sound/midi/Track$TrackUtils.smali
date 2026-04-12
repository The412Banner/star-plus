.class public Ljp/kshoji/javax/sound/midi/Track$TrackUtils;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/kshoji/javax/sound/midi/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mergeSequenceToTrack(Ljp/kshoji/javax/sound/midi/Sequencer;Ljava/util/Map;)Ljp/kshoji/javax/sound/midi/Track;
    .locals 7
    .param p0, "sequencer"    # Ljp/kshoji/javax/sound/midi/Sequencer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/kshoji/javax/sound/midi/Sequencer;",
            "Ljava/util/Map<",
            "Ljp/kshoji/javax/sound/midi/Track;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljp/kshoji/javax/sound/midi/Track;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;
        }
    .end annotation

    .line 86
    .local p1, "recordEnable":Ljava/util/Map;, "Ljava/util/Map<Ljp/kshoji/javax/sound/midi/Track;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    invoke-interface {p0}, Ljp/kshoji/javax/sound/midi/Sequencer;->getSequence()Ljp/kshoji/javax/sound/midi/Sequence;

    move-result-object v0

    .line 87
    .local v0, "sourceSequence":Ljp/kshoji/javax/sound/midi/Sequence;
    new-instance v1, Ljp/kshoji/javax/sound/midi/Track;

    invoke-direct {v1}, Ljp/kshoji/javax/sound/midi/Track;-><init>()V

    .line 91
    .local v1, "mergedTrack":Ljp/kshoji/javax/sound/midi/Track;
    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Ljp/kshoji/javax/sound/midi/Track;->-$$Nest$sfgetemptyTracks()[Ljp/kshoji/javax/sound/midi/Track;

    move-result-object v2

    .local v2, "tracks":[Ljp/kshoji/javax/sound/midi/Track;
    goto :goto_0

    .line 94
    .end local v2    # "tracks":[Ljp/kshoji/javax/sound/midi/Track;
    :cond_0
    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/Sequence;->getTracks()[Ljp/kshoji/javax/sound/midi/Track;

    move-result-object v2

    .line 97
    .restart local v2    # "tracks":[Ljp/kshoji/javax/sound/midi/Track;
    :goto_0
    const/4 v3, 0x0

    .line 98
    .local v3, "hasSoloTrack":Z
    const/4 v4, 0x0

    .local v4, "trackIndex":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 99
    invoke-interface {p0, v4}, Ljp/kshoji/javax/sound/midi/Sequencer;->getTrackSolo(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    const/4 v3, 0x1

    .line 101
    goto :goto_2

    .line 98
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 105
    .end local v4    # "trackIndex":I
    :cond_2
    :goto_2
    const/4 v4, 0x0

    .restart local v4    # "trackIndex":I
    :goto_3
    array-length v5, v2

    if-ge v4, v5, :cond_6

    .line 106
    invoke-interface {p0, v4}, Ljp/kshoji/javax/sound/midi/Sequencer;->getTrackMute(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 108
    goto :goto_4

    .line 110
    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {p0, v4}, Ljp/kshoji/javax/sound/midi/Sequencer;->getTrackSolo(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 112
    goto :goto_4

    .line 114
    :cond_4
    invoke-interface {p0}, Ljp/kshoji/javax/sound/midi/Sequencer;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_5

    aget-object v5, v2, v4

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    aget-object v5, v2, v4

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 116
    goto :goto_4

    .line 119
    :cond_5
    invoke-static {v1}, Ljp/kshoji/javax/sound/midi/Track;->-$$Nest$fgetevents(Ljp/kshoji/javax/sound/midi/Track;)Ljava/util/List;

    move-result-object v5

    aget-object v6, v2, v4

    invoke-static {v6}, Ljp/kshoji/javax/sound/midi/Track;->-$$Nest$fgetevents(Ljp/kshoji/javax/sound/midi/Track;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 122
    .end local v4    # "trackIndex":I
    :cond_6
    invoke-static {v1}, Ljp/kshoji/javax/sound/midi/Track$TrackUtils;->sortEvents(Ljp/kshoji/javax/sound/midi/Track;)V

    .line 124
    return-object v1
.end method

.method public static sortEvents(Ljp/kshoji/javax/sound/midi/Track;)V
    .locals 9
    .param p0, "track"    # Ljp/kshoji/javax/sound/midi/Track;

    .line 133
    invoke-static {p0}, Ljp/kshoji/javax/sound/midi/Track;->-$$Nest$fgetevents(Ljp/kshoji/javax/sound/midi/Track;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 135
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, "filtered":Ljava/util/Collection;, "Ljava/util/Collection<Ljp/kshoji/javax/sound/midi/MidiEvent;>;"
    invoke-static {p0}, Ljp/kshoji/javax/sound/midi/Track;->-$$Nest$fgetevents(Ljp/kshoji/javax/sound/midi/Track;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/kshoji/javax/sound/midi/MidiEvent;

    .line 137
    .local v3, "event":Ljp/kshoji/javax/sound/midi/MidiEvent;
    invoke-static {}, Ljp/kshoji/javax/sound/midi/Track;->-$$Nest$sfgetEND_OF_TRACK()[B

    move-result-object v4

    invoke-virtual {v3}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getMessage()Ljp/kshoji/javax/sound/midi/MidiMessage;

    move-result-object v5

    invoke-virtual {v5}, Ljp/kshoji/javax/sound/midi/MidiMessage;->getMessage()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 138
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v3    # "event":Ljp/kshoji/javax/sound/midi/MidiEvent;
    :cond_0
    goto :goto_0

    .line 141
    :cond_1
    invoke-static {p0}, Ljp/kshoji/javax/sound/midi/Track;->-$$Nest$fgetevents(Ljp/kshoji/javax/sound/midi/Track;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 142
    invoke-static {p0}, Ljp/kshoji/javax/sound/midi/Track;->-$$Nest$fgetevents(Ljp/kshoji/javax/sound/midi/Track;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    invoke-static {p0}, Ljp/kshoji/javax/sound/midi/Track;->-$$Nest$fgetevents(Ljp/kshoji/javax/sound/midi/Track;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Ljp/kshoji/javax/sound/midi/Track;->midiEventComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 148
    invoke-static {p0}, Ljp/kshoji/javax/sound/midi/Track;->-$$Nest$fgetevents(Ljp/kshoji/javax/sound/midi/Track;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    invoke-static {p0}, Ljp/kshoji/javax/sound/midi/Track;->-$$Nest$fgetevents(Ljp/kshoji/javax/sound/midi/Track;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljp/kshoji/javax/sound/midi/MidiEvent;

    new-instance v4, Ljp/kshoji/javax/sound/midi/MetaMessage;

    invoke-static {}, Ljp/kshoji/javax/sound/midi/Track;->-$$Nest$sfgetEND_OF_TRACK()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljp/kshoji/javax/sound/midi/MetaMessage;-><init>([B)V

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljp/kshoji/javax/sound/midi/MidiEvent;-><init>(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    :cond_2
    invoke-static {p0}, Ljp/kshoji/javax/sound/midi/Track;->-$$Nest$fgetevents(Ljp/kshoji/javax/sound/midi/Track;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljp/kshoji/javax/sound/midi/MidiEvent;

    new-instance v4, Ljp/kshoji/javax/sound/midi/MetaMessage;

    invoke-static {}, Ljp/kshoji/javax/sound/midi/Track;->-$$Nest$sfgetEND_OF_TRACK()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljp/kshoji/javax/sound/midi/MetaMessage;-><init>([B)V

    invoke-static {p0}, Ljp/kshoji/javax/sound/midi/Track;->-$$Nest$fgetevents(Ljp/kshoji/javax/sound/midi/Track;)Ljava/util/List;

    move-result-object v5

    invoke-static {p0}, Ljp/kshoji/javax/sound/midi/Track;->-$$Nest$fgetevents(Ljp/kshoji/javax/sound/midi/Track;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljp/kshoji/javax/sound/midi/MidiEvent;

    invoke-virtual {v5}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getTick()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-direct {v3, v4, v5, v6}, Ljp/kshoji/javax/sound/midi/MidiEvent;-><init>(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v1    # "filtered":Ljava/util/Collection;, "Ljava/util/Collection<Ljp/kshoji/javax/sound/midi/MidiEvent;>;"
    :goto_1
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
