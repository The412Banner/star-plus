.class public interface abstract Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;
.super Ljava/lang/Object;
.source "ModelOscillatorStream.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract noteOff(I)V
.end method

.method public abstract noteOn(Ljp/kshoji/javax/sound/midi/MidiChannel;Ljp/kshoji/javax/sound/midi/VoiceStatus;II)V
.end method

.method public abstract read([[FII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setPitch(F)V
.end method
