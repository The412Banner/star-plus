.class public interface abstract Ljp/kshoji/javax/sound/midi/MidiDevice;
.super Ljava/lang/Object;
.source "MidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getDeviceInfo()Ljp/kshoji/javax/sound/midi/MidiDevice$Info;
.end method

.method public abstract getMaxReceivers()I
.end method

.method public abstract getMaxTransmitters()I
.end method

.method public abstract getMicrosecondPosition()J
.end method

.method public abstract getReceiver()Ljp/kshoji/javax/sound/midi/Receiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation
.end method

.method public abstract getReceivers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljp/kshoji/javax/sound/midi/Receiver;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransmitter()Ljp/kshoji/javax/sound/midi/Transmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation
.end method

.method public abstract getTransmitters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljp/kshoji/javax/sound/midi/Transmitter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isOpen()Z
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation
.end method
