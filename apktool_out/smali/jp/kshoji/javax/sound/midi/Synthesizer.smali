.class public interface abstract Ljp/kshoji/javax/sound/midi/Synthesizer;
.super Ljava/lang/Object;
.source "Synthesizer.java"

# interfaces
.implements Ljp/kshoji/javax/sound/midi/MidiDevice;


# virtual methods
.method public abstract getAvailableInstruments()[Ljp/kshoji/javax/sound/midi/Instrument;
.end method

.method public abstract getChannels()[Ljp/kshoji/javax/sound/midi/MidiChannel;
.end method

.method public abstract getDefaultSoundbank()Ljp/kshoji/javax/sound/midi/Soundbank;
.end method

.method public abstract getLatency()J
.end method

.method public abstract getLoadedInstruments()[Ljp/kshoji/javax/sound/midi/Instrument;
.end method

.method public abstract getMaxPolyphony()I
.end method

.method public abstract getVoiceStatus()[Ljp/kshoji/javax/sound/midi/VoiceStatus;
.end method

.method public abstract isSoundbankSupported(Ljp/kshoji/javax/sound/midi/Soundbank;)Z
.end method

.method public abstract loadAllInstruments(Ljp/kshoji/javax/sound/midi/Soundbank;)Z
.end method

.method public abstract loadInstrument(Ljp/kshoji/javax/sound/midi/Instrument;)Z
.end method

.method public abstract loadInstruments(Ljp/kshoji/javax/sound/midi/Soundbank;[Ljp/kshoji/javax/sound/midi/Patch;)Z
.end method

.method public abstract remapInstrument(Ljp/kshoji/javax/sound/midi/Instrument;Ljp/kshoji/javax/sound/midi/Instrument;)Z
.end method

.method public abstract unloadAllInstruments(Ljp/kshoji/javax/sound/midi/Soundbank;)V
.end method

.method public abstract unloadInstrument(Ljp/kshoji/javax/sound/midi/Instrument;)V
.end method

.method public abstract unloadInstruments(Ljp/kshoji/javax/sound/midi/Soundbank;[Ljp/kshoji/javax/sound/midi/Patch;)V
.end method
