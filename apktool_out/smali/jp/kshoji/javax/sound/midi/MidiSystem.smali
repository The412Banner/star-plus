.class public final Ljp/kshoji/javax/sound/midi/MidiSystem;
.super Ljava/lang/Object;
.source "MidiSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/kshoji/javax/sound/midi/MidiSystem$MidiSystemUtils;
    }
.end annotation


# static fields
.field private static final midiDevices:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljp/kshoji/javax/sound/midi/MidiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final standardMidiFileReader:Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;

.field private static final standardMidiFileWriter:Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;

.field private static final synthesizers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljp/kshoji/javax/sound/midi/Synthesizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->midiDevices:Ljava/util/Collection;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->synthesizers:Ljava/util/Collection;

    .line 29
    new-instance v0, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;

    invoke-direct {v0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;-><init>()V

    sput-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->standardMidiFileReader:Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;

    .line 30
    new-instance v0, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;

    invoke-direct {v0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;-><init>()V

    sput-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->standardMidiFileWriter:Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method public static addMidiDevice(Ljp/kshoji/javax/sound/midi/MidiDevice;)V
    .locals 2
    .param p0, "midiDevice"    # Ljp/kshoji/javax/sound/midi/MidiDevice;

    .line 38
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->midiDevices:Ljava/util/Collection;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Ljp/kshoji/javax/sound/midi/MidiSystem;->midiDevices:Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static addSynthesizer(Ljp/kshoji/javax/sound/midi/Synthesizer;)V
    .locals 2
    .param p0, "synthesizer"    # Ljp/kshoji/javax/sound/midi/Synthesizer;

    .line 60
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->synthesizers:Ljava/util/Collection;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Ljp/kshoji/javax/sound/midi/MidiSystem;->synthesizers:Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getMidiDevice(Ljp/kshoji/javax/sound/midi/MidiDevice$Info;)Ljp/kshoji/javax/sound/midi/MidiDevice;
    .locals 4
    .param p0, "info"    # Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 151
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->midiDevices:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->midiDevices:Ljava/util/Collection;

    monitor-enter v0

    .line 156
    :try_start_0
    sget-object v1, Ljp/kshoji/javax/sound/midi/MidiSystem;->midiDevices:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/kshoji/javax/sound/midi/MidiDevice;

    .line 157
    .local v2, "midiDevice":Ljp/kshoji/javax/sound/midi/MidiDevice;
    invoke-interface {v2}, Ljp/kshoji/javax/sound/midi/MidiDevice;->getDeviceInfo()Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    monitor-exit v0

    return-object v2

    .line 160
    .end local v2    # "midiDevice":Ljp/kshoji/javax/sound/midi/MidiDevice;
    :cond_0
    goto :goto_0

    .line 161
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested device not installed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 152
    :cond_2
    new-instance v0, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;

    const-string v1, "MidiDevice not found"

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMidiDeviceInfo()[Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    .locals 5

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljp/kshoji/javax/sound/midi/MidiDevice$Info;>;"
    sget-object v1, Ljp/kshoji/javax/sound/midi/MidiSystem;->midiDevices:Ljava/util/Collection;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v2, Ljp/kshoji/javax/sound/midi/MidiSystem;->midiDevices:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/kshoji/javax/sound/midi/MidiDevice;

    .line 132
    .local v3, "device":Ljp/kshoji/javax/sound/midi/MidiDevice;
    invoke-interface {v3}, Ljp/kshoji/javax/sound/midi/MidiDevice;->getDeviceInfo()Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    move-result-object v4

    .line 133
    .local v4, "deviceInfo":Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    if-eqz v4, :cond_0

    .line 134
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v3    # "device":Ljp/kshoji/javax/sound/midi/MidiDevice;
    .end local v4    # "deviceInfo":Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    :cond_0
    goto :goto_0

    .line 137
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    return-object v1

    .line 137
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getMidiFileFormat(Ljava/io/File;)Ljp/kshoji/javax/sound/midi/MidiFileFormat;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->standardMidiFileReader:Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;

    invoke-virtual {v0, p0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->getMidiFileFormat(Ljava/io/File;)Ljp/kshoji/javax/sound/midi/MidiFileFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getMidiFileFormat(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/MidiFileFormat;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->standardMidiFileReader:Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;

    invoke-virtual {v0, p0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->getMidiFileFormat(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/MidiFileFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getMidiFileFormat(Ljava/net/URL;)Ljp/kshoji/javax/sound/midi/MidiFileFormat;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->standardMidiFileReader:Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;

    invoke-virtual {v0, p0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->getMidiFileFormat(Ljava/net/URL;)Ljp/kshoji/javax/sound/midi/MidiFileFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getMidiFileTypes()[I
    .locals 1

    .line 383
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->standardMidiFileWriter:Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;

    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;->getMidiFileTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public static getMidiFileTypes(Ljp/kshoji/javax/sound/midi/Sequence;)[I
    .locals 1
    .param p0, "sequence"    # Ljp/kshoji/javax/sound/midi/Sequence;

    .line 394
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->standardMidiFileWriter:Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;

    invoke-virtual {v0, p0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;->getMidiFileTypes(Ljp/kshoji/javax/sound/midi/Sequence;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getReceiver()Ljp/kshoji/javax/sound/midi/Receiver;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 174
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->midiDevices:Ljava/util/Collection;

    monitor-enter v0

    .line 175
    :try_start_0
    sget-object v1, Ljp/kshoji/javax/sound/midi/MidiSystem;->midiDevices:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/kshoji/javax/sound/midi/MidiDevice;

    .line 176
    .local v2, "midiDevice":Ljp/kshoji/javax/sound/midi/MidiDevice;
    invoke-interface {v2}, Ljp/kshoji/javax/sound/midi/MidiDevice;->getReceiver()Ljp/kshoji/javax/sound/midi/Receiver;

    move-result-object v3

    .line 177
    .local v3, "receiver":Ljp/kshoji/javax/sound/midi/Receiver;
    if-eqz v3, :cond_0

    .line 178
    monitor-exit v0

    return-object v3

    .line 180
    .end local v2    # "midiDevice":Ljp/kshoji/javax/sound/midi/MidiDevice;
    .end local v3    # "receiver":Ljp/kshoji/javax/sound/midi/Receiver;
    :cond_0
    goto :goto_0

    .line 181
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    new-instance v0, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;

    const-string v1, "Receiver not found"

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getSequence(Ljava/io/File;)Ljp/kshoji/javax/sound/midi/Sequence;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->standardMidiFileReader:Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;

    invoke-virtual {v0, p0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->getSequence(Ljava/io/File;)Ljp/kshoji/javax/sound/midi/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSequence(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/Sequence;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->standardMidiFileReader:Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;

    invoke-virtual {v0, p0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->getSequence(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSequence(Ljava/net/URL;)Ljp/kshoji/javax/sound/midi/Sequence;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->standardMidiFileReader:Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;

    invoke-virtual {v0, p0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileReader;->getSequence(Ljava/net/URL;)Ljp/kshoji/javax/sound/midi/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSequencer()Ljp/kshoji/javax/sound/midi/Sequencer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 251
    new-instance v0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-direct {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;-><init>()V

    return-object v0
.end method

.method public static getSequencer(Z)Ljp/kshoji/javax/sound/midi/Sequencer;
    .locals 1
    .param p0, "connected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 263
    new-instance v0, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;

    invoke-direct {v0}, Ljp/kshoji/javax/sound/midi/impl/SequencerImpl;-><init>()V

    return-object v0
.end method

.method public static getSoundbank(Ljava/io/File;)Ljp/kshoji/javax/sound/midi/Soundbank;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSoundbank(Ljava/io/InputStream;)Ljp/kshoji/javax/sound/midi/Soundbank;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSoundbank(Ljava/net/URL;)Ljp/kshoji/javax/sound/midi/Soundbank;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSynthesizer()Ljp/kshoji/javax/sound/midi/Synthesizer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 316
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->synthesizers:Ljava/util/Collection;

    monitor-enter v0

    .line 317
    :try_start_0
    sget-object v1, Ljp/kshoji/javax/sound/midi/MidiSystem;->synthesizers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/kshoji/javax/sound/midi/Synthesizer;

    .line 319
    .local v1, "synthesizer":Ljp/kshoji/javax/sound/midi/Synthesizer;
    monitor-exit v0

    return-object v1

    .line 321
    .end local v1    # "synthesizer":Ljp/kshoji/javax/sound/midi/Synthesizer;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    new-instance v0, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;

    const-string v1, "Synthesizer not found"

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getTransmitter()Ljp/kshoji/javax/sound/midi/Transmitter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 193
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->midiDevices:Ljava/util/Collection;

    monitor-enter v0

    .line 194
    :try_start_0
    sget-object v1, Ljp/kshoji/javax/sound/midi/MidiSystem;->midiDevices:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/kshoji/javax/sound/midi/MidiDevice;

    .line 195
    .local v2, "midiDevice":Ljp/kshoji/javax/sound/midi/MidiDevice;
    invoke-interface {v2}, Ljp/kshoji/javax/sound/midi/MidiDevice;->getTransmitter()Ljp/kshoji/javax/sound/midi/Transmitter;

    move-result-object v3

    .line 196
    .local v3, "transmitter":Ljp/kshoji/javax/sound/midi/Transmitter;
    if-eqz v3, :cond_0

    .line 197
    monitor-exit v0

    return-object v3

    .line 199
    .end local v2    # "midiDevice":Ljp/kshoji/javax/sound/midi/MidiDevice;
    .end local v3    # "transmitter":Ljp/kshoji/javax/sound/midi/Transmitter;
    :cond_0
    goto :goto_0

    .line 200
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    new-instance v0, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;

    const-string v1, "Transmitter not found"

    invoke-direct {v0, v1}, Ljp/kshoji/javax/sound/midi/MidiUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isFileTypeSupported(I)Z
    .locals 1
    .param p0, "fileType"    # I

    .line 404
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->standardMidiFileWriter:Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;

    invoke-virtual {v0, p0}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;->isFileTypeSupported(I)Z

    move-result v0

    return v0
.end method

.method public static isFileTypeSupported(ILjp/kshoji/javax/sound/midi/Sequence;)Z
    .locals 1
    .param p0, "fileType"    # I
    .param p1, "sequence"    # Ljp/kshoji/javax/sound/midi/Sequence;

    .line 415
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->standardMidiFileWriter:Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;

    invoke-virtual {v0, p0, p1}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;->isFileTypeSupported(ILjp/kshoji/javax/sound/midi/Sequence;)Z

    move-result v0

    return v0
.end method

.method public static registerSynthesizer(Ljp/kshoji/javax/sound/midi/Synthesizer;)V
    .locals 2
    .param p0, "synthesizer"    # Ljp/kshoji/javax/sound/midi/Synthesizer;

    .line 332
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->synthesizers:Ljava/util/Collection;

    monitor-enter v0

    .line 333
    :try_start_0
    sget-object v1, Ljp/kshoji/javax/sound/midi/MidiSystem;->synthesizers:Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 334
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removeMidiDevice(Ljp/kshoji/javax/sound/midi/MidiDevice;)V
    .locals 2
    .param p0, "midiDevice"    # Ljp/kshoji/javax/sound/midi/MidiDevice;

    .line 49
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->midiDevices:Ljava/util/Collection;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Ljp/kshoji/javax/sound/midi/MidiSystem;->midiDevices:Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removeSynthesizer(Ljp/kshoji/javax/sound/midi/Synthesizer;)V
    .locals 2
    .param p0, "synthesizer"    # Ljp/kshoji/javax/sound/midi/Synthesizer;

    .line 71
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->synthesizers:Ljava/util/Collection;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Ljp/kshoji/javax/sound/midi/MidiSystem;->synthesizers:Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static write(Ljp/kshoji/javax/sound/midi/Sequence;ILjava/io/File;)I
    .locals 1
    .param p0, "sequence"    # Ljp/kshoji/javax/sound/midi/Sequence;
    .param p1, "fileType"    # I
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->standardMidiFileWriter:Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;

    invoke-virtual {v0, p0, p1, p2}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;->write(Ljp/kshoji/javax/sound/midi/Sequence;ILjava/io/File;)I

    move-result v0

    return v0
.end method

.method public static write(Ljp/kshoji/javax/sound/midi/Sequence;ILjava/io/OutputStream;)I
    .locals 1
    .param p0, "sequence"    # Ljp/kshoji/javax/sound/midi/Sequence;
    .param p1, "fileType"    # I
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    sget-object v0, Ljp/kshoji/javax/sound/midi/MidiSystem;->standardMidiFileWriter:Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;

    invoke-virtual {v0, p0, p1, p2}, Ljp/kshoji/javax/sound/midi/io/StandardMidiFileWriter;->write(Ljp/kshoji/javax/sound/midi/Sequence;ILjava/io/OutputStream;)I

    move-result v0

    return v0
.end method
