.class public Lcn/sherlock/com/sun/media/sound/ModelMappedInstrument;
.super Lcn/sherlock/com/sun/media/sound/ModelInstrument;
.source "ModelMappedInstrument.java"


# instance fields
.field private ins:Lcn/sherlock/com/sun/media/sound/ModelInstrument;


# direct methods
.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/ModelInstrument;Ljp/kshoji/javax/sound/midi/Patch;)V
    .locals 3
    .param p1, "ins"    # Lcn/sherlock/com/sun/media/sound/ModelInstrument;
    .param p2, "patch"    # Ljp/kshoji/javax/sound/midi/Patch;

    .line 41
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getSoundbank()Ljp/kshoji/javax/sound/midi/Soundbank;

    move-result-object v0

    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v0, p2, v1, v2}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;-><init>(Ljp/kshoji/javax/sound/midi/Soundbank;Ljp/kshoji/javax/sound/midi/Patch;Ljava/lang/String;Ljava/lang/Class;)V

    .line 42
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelMappedInstrument;->ins:Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    .line 43
    return-void
.end method


# virtual methods
.method public getChannelMixer(Ljp/kshoji/javax/sound/midi/MidiChannel;Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;
    .locals 1
    .param p1, "channel"    # Ljp/kshoji/javax/sound/midi/MidiChannel;
    .param p2, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 60
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelMappedInstrument;->ins:Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    invoke-virtual {v0, p1, p2}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getChannelMixer(Ljp/kshoji/javax/sound/midi/MidiChannel;Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelMappedInstrument;->ins:Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDirector([Lcn/sherlock/com/sun/media/sound/ModelPerformer;Ljp/kshoji/javax/sound/midi/MidiChannel;Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;)Lcn/sherlock/com/sun/media/sound/ModelDirector;
    .locals 1
    .param p1, "performers"    # [Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .param p2, "channel"    # Ljp/kshoji/javax/sound/midi/MidiChannel;
    .param p3, "player"    # Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;

    .line 55
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelMappedInstrument;->ins:Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    invoke-virtual {v0, p1, p2, p3}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getDirector([Lcn/sherlock/com/sun/media/sound/ModelPerformer;Ljp/kshoji/javax/sound/midi/MidiChannel;Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;)Lcn/sherlock/com/sun/media/sound/ModelDirector;

    move-result-object v0

    return-object v0
.end method

.method public getPerformers()[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelMappedInstrument;->ins:Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPerformers()[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    move-result-object v0

    return-object v0
.end method
