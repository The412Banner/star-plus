.class public Ljp/kshoji/javax/sound/midi/Track;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/kshoji/javax/sound/midi/Track$TrackUtils;
    }
.end annotation


# static fields
.field private static final END_OF_TRACK:[B

.field private static final emptyTracks:[Ljp/kshoji/javax/sound/midi/Track;

.field static final midiEventComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljp/kshoji/javax/sound/midi/MidiEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljp/kshoji/javax/sound/midi/MidiEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetevents(Ljp/kshoji/javax/sound/midi/Track;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ljp/kshoji/javax/sound/midi/Track;->events:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetEND_OF_TRACK()[B
    .locals 1

    sget-object v0, Ljp/kshoji/javax/sound/midi/Track;->END_OF_TRACK:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetemptyTracks()[Ljp/kshoji/javax/sound/midi/Track;
    .locals 1

    sget-object v0, Ljp/kshoji/javax/sound/midi/Track;->emptyTracks:[Ljp/kshoji/javax/sound/midi/Track;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljp/kshoji/javax/sound/midi/Track;->END_OF_TRACK:[B

    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [Ljp/kshoji/javax/sound/midi/Track;

    sput-object v0, Ljp/kshoji/javax/sound/midi/Track;->emptyTracks:[Ljp/kshoji/javax/sound/midi/Track;

    .line 28
    new-instance v0, Ljp/kshoji/javax/sound/midi/Track$1;

    invoke-direct {v0}, Ljp/kshoji/javax/sound/midi/Track$1;-><init>()V

    sput-object v0, Ljp/kshoji/javax/sound/midi/Track;->midiEventComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        0x2ft
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/kshoji/javax/sound/midi/Track;->events:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljp/kshoji/javax/sound/midi/MidiEvent;)Z
    .locals 2
    .param p1, "event"    # Ljp/kshoji/javax/sound/midi/MidiEvent;

    .line 164
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/Track;->events:Ljava/util/List;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/Track;->events:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(I)Ljp/kshoji/javax/sound/midi/MidiEvent;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/Track;->events:Ljava/util/List;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/Track;->events:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/kshoji/javax/sound/midi/MidiEvent;

    monitor-exit v0

    return-object v1

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljp/kshoji/javax/sound/midi/MidiEvent;)Z
    .locals 2
    .param p1, "event"    # Ljp/kshoji/javax/sound/midi/MidiEvent;

    .line 190
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/Track;->events:Ljava/util/List;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/Track;->events:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 192
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 2

    .line 201
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/Track;->events:Ljava/util/List;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/Track;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ticks()J
    .locals 3

    .line 212
    invoke-static {p0}, Ljp/kshoji/javax/sound/midi/Track$TrackUtils;->sortEvents(Ljp/kshoji/javax/sound/midi/Track;)V

    .line 214
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/Track;->events:Ljava/util/List;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/Track;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    monitor-exit v0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 219
    :cond_0
    iget-object v1, p0, Ljp/kshoji/javax/sound/midi/Track;->events:Ljava/util/List;

    iget-object v2, p0, Ljp/kshoji/javax/sound/midi/Track;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/kshoji/javax/sound/midi/MidiEvent;

    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/MidiEvent;->getTick()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
