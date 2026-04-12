.class public abstract Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;
.super Ljava/lang/Object;
.source "ModelAbstractOscillator.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/ModelOscillator;
.implements Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;
.implements Ljp/kshoji/javax/sound/midi/Soundbank;


# instance fields
.field protected channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

.field protected noteNumber:I

.field protected on:Z

.field protected pitch:F

.field protected samplerate:F

.field protected velocity:I

.field protected voice:Ljp/kshoji/javax/sound/midi/VoiceStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const v0, 0x45bb8000    # 6000.0f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->pitch:F

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->on:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public getAttenuation()F
    .locals 1

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public getChannel()Ljp/kshoji/javax/sound/midi/MidiChannel;
    .locals 1

    .line 75
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    return-object v0
.end method

.method public getChannels()I
    .locals 1

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstrument()Lcn/sherlock/com/sun/media/sound/ModelInstrument;
    .locals 2

    .line 150
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;

    invoke-direct {v0}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;-><init>()V

    .line 151
    .local v0, "ins":Lcn/sherlock/com/sun/media/sound/SimpleInstrument;
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->setName(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->getPerformer()Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->add(Lcn/sherlock/com/sun/media/sound/ModelPerformer;)V

    .line 153
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/SimpleInstrument;->setPatch(Ljp/kshoji/javax/sound/midi/Patch;)V

    .line 154
    return-object v0
.end method

.method public getInstrument(Ljp/kshoji/javax/sound/midi/Patch;)Ljp/kshoji/javax/sound/midi/Instrument;
    .locals 5
    .param p1, "patch"    # Ljp/kshoji/javax/sound/midi/Patch;

    .line 170
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->getInstrument()Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    move-result-object v0

    .line 171
    .local v0, "ins":Ljp/kshoji/javax/sound/midi/Instrument;
    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/Instrument;->getPatch()Ljp/kshoji/javax/sound/midi/Patch;

    move-result-object v1

    .line 172
    .local v1, "p":Ljp/kshoji/javax/sound/midi/Patch;
    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/Patch;->getBank()I

    move-result v2

    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getBank()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 173
    return-object v4

    .line 174
    :cond_0
    invoke-virtual {v1}, Ljp/kshoji/javax/sound/midi/Patch;->getProgram()I

    move-result v2

    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/Patch;->getProgram()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 175
    return-object v4

    .line 176
    :cond_1
    instance-of v2, v1, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    if-eqz v2, :cond_2

    instance-of v2, p1, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    if-eqz v2, :cond_2

    .line 177
    move-object v2, v1

    check-cast v2, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/ModelPatch;->isPercussion()Z

    move-result v2

    move-object v3, p1

    check-cast v3, Lcn/sherlock/com/sun/media/sound/ModelPatch;

    .line 178
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/ModelPatch;->isPercussion()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 179
    return-object v4

    .line 182
    :cond_2
    return-object v0
.end method

.method public getInstruments()[Ljp/kshoji/javax/sound/midi/Instrument;
    .locals 3

    .line 186
    const/4 v0, 0x1

    new-array v0, v0, [Ljp/kshoji/javax/sound/midi/Instrument;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->getInstrument()Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoteNumber()I
    .locals 1

    .line 83
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->noteNumber:I

    return v0
.end method

.method public getPatch()Ljp/kshoji/javax/sound/midi/Patch;
    .locals 2

    .line 123
    new-instance v0, Ljp/kshoji/javax/sound/midi/Patch;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljp/kshoji/javax/sound/midi/Patch;-><init>(II)V

    return-object v0
.end method

.method public getPerformer()Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .locals 2

    .line 142
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    invoke-direct {v0}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;-><init>()V

    .line 143
    .local v0, "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-object v0
.end method

.method public getPitch()F
    .locals 1

    .line 99
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->pitch:F

    return v0
.end method

.method public getResources()[Ljp/kshoji/javax/sound/midi/SoundbankResource;
    .locals 1

    .line 190
    const/4 v0, 0x0

    new-array v0, v0, [Ljp/kshoji/javax/sound/midi/SoundbankResource;

    return-object v0
.end method

.method public getSampleRate()F
    .locals 1

    .line 107
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->samplerate:F

    return v0
.end method

.method public getSoundBank()Ljp/kshoji/javax/sound/midi/Soundbank;
    .locals 2

    .line 160
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;

    invoke-direct {v0}, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;-><init>()V

    .line 161
    .local v0, "sbk":Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->getInstrument()Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/SimpleSoundbank;->addInstrument(Ljp/kshoji/javax/sound/midi/Instrument;)V

    .line 162
    return-object v0
.end method

.method public getVelocity()I
    .locals 1

    .line 87
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->velocity:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoice()Ljp/kshoji/javax/sound/midi/VoiceStatus;
    .locals 1

    .line 79
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->voice:Ljp/kshoji/javax/sound/midi/VoiceStatus;

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 52
    return-void
.end method

.method public isOn()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->on:Z

    return v0
.end method

.method public noteOff(I)V
    .locals 1
    .param p1, "velocity"    # I

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->on:Z

    .line 59
    return-void
.end method

.method public noteOn(Ljp/kshoji/javax/sound/midi/MidiChannel;Ljp/kshoji/javax/sound/midi/VoiceStatus;II)V
    .locals 1
    .param p1, "channel"    # Ljp/kshoji/javax/sound/midi/MidiChannel;
    .param p2, "voice"    # Ljp/kshoji/javax/sound/midi/VoiceStatus;
    .param p3, "noteNumber"    # I
    .param p4, "velocity"    # I

    .line 63
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    .line 64
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->voice:Ljp/kshoji/javax/sound/midi/VoiceStatus;

    .line 65
    iput p3, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->noteNumber:I

    .line 66
    iput p4, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->velocity:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->on:Z

    .line 68
    return-void
.end method

.method public open(F)Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;
    .locals 2
    .param p1, "samplerate"    # F

    .line 129
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .local v0, "oscs":Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;
    nop

    .line 135
    invoke-virtual {v0, p1}, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->setSampleRate(F)V

    .line 136
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->init()V

    .line 137
    return-object v0

    .line 132
    .end local v0    # "oscs":Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 130
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read([[FII)I
    .locals 1
    .param p1, "buffer"    # [[F
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const/4 v0, -0x1

    return v0
.end method

.method public setPitch(F)V
    .locals 0
    .param p1, "pitch"    # F

    .line 95
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->pitch:F

    .line 96
    return-void
.end method

.method public setSampleRate(F)V
    .locals 0
    .param p1, "samplerate"    # F

    .line 103
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/ModelAbstractOscillator;->samplerate:F

    .line 104
    return-void
.end method
