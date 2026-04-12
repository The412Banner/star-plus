.class public interface abstract Lcn/sherlock/com/sun/media/sound/ReferenceCountingDevice;
.super Ljava/lang/Object;
.source "ReferenceCountingDevice.java"


# virtual methods
.method public abstract getReceiverReferenceCounting()Ljp/kshoji/javax/sound/midi/Receiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation
.end method

.method public abstract getTransmitterReferenceCounting()Ljp/kshoji/javax/sound/midi/Transmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation
.end method
