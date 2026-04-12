.class public Ljp/kshoji/javax/sound/midi/MidiSystem$MidiSystemUtils;
.super Ljava/lang/Object;
.source "MidiSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/kshoji/javax/sound/midi/MidiSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MidiSystemUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReceivers()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljp/kshoji/javax/sound/midi/Receiver;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljp/kshoji/javax/sound/midi/Receiver;>;"
    invoke-static {}, Ljp/kshoji/javax/sound/midi/MidiSystem;->getMidiDeviceInfo()[Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    move-result-object v1

    .line 91
    .local v1, "midiDeviceInfos":[Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 92
    .local v4, "midiDeviceInfo":Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    invoke-static {v4}, Ljp/kshoji/javax/sound/midi/MidiSystem;->getMidiDevice(Ljp/kshoji/javax/sound/midi/MidiDevice$Info;)Ljp/kshoji/javax/sound/midi/MidiDevice;

    move-result-object v5

    invoke-interface {v5}, Ljp/kshoji/javax/sound/midi/MidiDevice;->getReceivers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    .end local v4    # "midiDeviceInfo":Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-object v0
.end method

.method public static getTransmitters()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljp/kshoji/javax/sound/midi/Transmitter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljp/kshoji/javax/sound/midi/Transmitter;>;"
    invoke-static {}, Ljp/kshoji/javax/sound/midi/MidiSystem;->getMidiDeviceInfo()[Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    move-result-object v1

    .line 108
    .local v1, "midiDeviceInfos":[Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 109
    .local v4, "midiDeviceInfo":Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    invoke-static {v4}, Ljp/kshoji/javax/sound/midi/MidiSystem;->getMidiDevice(Ljp/kshoji/javax/sound/midi/MidiDevice$Info;)Ljp/kshoji/javax/sound/midi/MidiDevice;

    move-result-object v5

    invoke-interface {v5}, Ljp/kshoji/javax/sound/midi/MidiDevice;->getTransmitters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    .end local v4    # "midiDeviceInfo":Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-object v0
.end method
