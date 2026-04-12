.class public abstract Ljp/kshoji/javax/sound/midi/spi/MidiDeviceProvider;
.super Ljava/lang/Object;
.source "MidiDeviceProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public abstract getDevice(Ljp/kshoji/javax/sound/midi/MidiDevice$Info;)Ljp/kshoji/javax/sound/midi/MidiDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getDeviceInfo()[Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
.end method

.method public isDeviceSupported(Ljp/kshoji/javax/sound/midi/MidiDevice$Info;)Z
    .locals 6
    .param p1, "info"    # Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    .line 46
    invoke-virtual {p0}, Ljp/kshoji/javax/sound/midi/spi/MidiDeviceProvider;->getDeviceInfo()[Ljp/kshoji/javax/sound/midi/MidiDevice$Info;

    move-result-object v0

    .line 48
    .local v0, "informationArray":[Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 49
    .local v4, "information":Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    invoke-virtual {p1, v4}, Ljp/kshoji/javax/sound/midi/MidiDevice$Info;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    const/4 v1, 0x1

    return v1

    .line 48
    .end local v4    # "information":Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    :cond_1
    return v2
.end method
