.class public interface abstract Lcn/sherlock/com/sun/media/sound/AudioSynthesizer;
.super Ljava/lang/Object;
.source "AudioSynthesizer.java"

# interfaces
.implements Ljp/kshoji/javax/sound/midi/Synthesizer;


# virtual methods
.method public abstract getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;
.end method

.method public abstract getPropertyInfo(Ljava/util/Map;)[Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[",
            "Lcn/sherlock/com/sun/media/sound/AudioSynthesizerPropertyInfo;"
        }
    .end annotation
.end method

.method public abstract open(Lcn/sherlock/javax/sound/sampled/SourceDataLine;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sherlock/javax/sound/sampled/SourceDataLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation
.end method

.method public abstract openStream(Lcn/sherlock/javax/sound/sampled/AudioFormat;Ljava/util/Map;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sherlock/javax/sound/sampled/AudioFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/sherlock/javax/sound/sampled/AudioInputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/kshoji/javax/sound/midi/MidiUnavailableException;
        }
    .end annotation
.end method
