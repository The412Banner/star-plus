.class public Lcn/sherlock/com/sun/media/sound/SoftVoice;
.super Ljp/kshoji/javax/sound/midi/VoiceStatus;
.source "SoftVoice.java"


# instance fields
.field private audiostarted:Z

.field protected channelmixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

.field private co_filter:Lcn/sherlock/com/sun/media/sound/SoftControl;

.field private co_filter_freq:[D

.field private co_filter_q:[D

.field private co_filter_type:[D

.field private co_mixer:Lcn/sherlock/com/sun/media/sound/SoftControl;

.field private co_mixer_active:[D

.field private co_mixer_balance:[D

.field private co_mixer_chorus:[D

.field private co_mixer_gain:[D

.field private co_mixer_pan:[D

.field private co_mixer_reverb:[D

.field private co_noteon:Lcn/sherlock/com/sun/media/sound/SoftControl;

.field protected co_noteon_keynumber:[D

.field protected co_noteon_on:[D

.field protected co_noteon_velocity:[D

.field private co_osc:Lcn/sherlock/com/sun/media/sound/SoftControl;

.field private co_osc_pitch:[D

.field private connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

.field private connections_dst:[[D

.field private connections_last:[D

.field private connections_src:[[[D

.field private connections_src_kc:[[I

.field private delay:I

.field private eg:Lcn/sherlock/com/sun/media/sound/SoftProcess;

.field public exclusiveClass:I

.field protected extendedConnectionBlocks:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

.field private filter_left:Lcn/sherlock/com/sun/media/sound/SoftFilter;

.field private filter_right:Lcn/sherlock/com/sun/media/sound/SoftFilter;

.field protected instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

.field private lastMuteValue:F

.field private lastSoloMuteValue:F

.field private last_out_mixer_effect1:F

.field private last_out_mixer_effect2:F

.field private last_out_mixer_left:F

.field private last_out_mixer_right:F

.field private lfo:Lcn/sherlock/com/sun/media/sound/SoftProcess;

.field private noteOff_velocity:I

.field private noteOn_noteNumber:I

.field private noteOn_velocity:I

.field private nrofchannels:I

.field protected objects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/sherlock/com/sun/media/sound/SoftControl;",
            ">;"
        }
    .end annotation
.end field

.field protected on:Z

.field private osc_attenuation:F

.field private osc_buff:[[F

.field private osc_stream:Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;

.field private osc_stream_nrofchannels:I

.field private osc_stream_off_transmitted:Z

.field private out_mixer_effect1:F

.field private out_mixer_effect2:F

.field private out_mixer_end:Z

.field private out_mixer_left:F

.field private out_mixer_right:F

.field protected performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

.field protected portamento:Z

.field public releaseTriggered:Z

.field protected resampler:Lcn/sherlock/com/sun/media/sound/SoftResamplerStreamer;

.field protected softchannel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

.field protected sostenuto:Z

.field private soundoff:Z

.field private started:Z

.field protected stealer_channel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

.field protected stealer_channelmixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

.field protected stealer_extendedConnectionBlocks:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

.field protected stealer_noteNumber:I

.field protected stealer_performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

.field protected stealer_releaseTriggered:Z

.field protected stealer_velocity:I

.field protected stealer_voiceID:I

.field private stopping:Z

.field protected sustain:Z

.field protected synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

.field protected tunedKey:D

.field protected tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

.field protected voiceID:I


# direct methods
.method static bridge synthetic -$$Nest$fgetco_filter_freq(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_filter_freq:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetco_filter_q(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_filter_q:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetco_filter_type(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_filter_type:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetco_mixer_active(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_active:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetco_mixer_balance(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_balance:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetco_mixer_chorus(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_chorus:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetco_mixer_gain(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_gain:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetco_mixer_pan(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_pan:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetco_mixer_reverb(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_reverb:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetco_osc_pitch(Lcn/sherlock/com/sun/media/sound/SoftVoice;)[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_osc_pitch:[D

    return-object p0
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;)V
    .locals 8
    .param p1, "synth"    # Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    .line 186
    invoke-direct {p0}, Ljp/kshoji/javax/sound/midi/VoiceStatus;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->exclusiveClass:I

    .line 42
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->releaseTriggered:Z

    .line 43
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->noteOn_noteNumber:I

    .line 44
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->noteOn_velocity:I

    .line 45
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->noteOff_velocity:I

    .line 46
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->delay:I

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channelmixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    .line 48
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->tunedKey:D

    .line 49
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    .line 50
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    .line 51
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_extendedConnectionBlocks:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 52
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    .line 53
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channelmixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    .line 54
    const/4 v2, -0x1

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_voiceID:I

    .line 55
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_noteNumber:I

    .line 56
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_velocity:I

    .line 57
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_releaseTriggered:Z

    .line 58
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->voiceID:I

    .line 59
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->sustain:Z

    .line 60
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->sostenuto:Z

    .line 61
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->portamento:Z

    .line 64
    new-instance v2, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;

    invoke-direct {v2}, Lcn/sherlock/com/sun/media/sound/SoftEnvelopeGenerator;-><init>()V

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->eg:Lcn/sherlock/com/sun/media/sound/SoftProcess;

    .line 65
    new-instance v2, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;

    invoke-direct {v2}, Lcn/sherlock/com/sun/media/sound/SoftLowFrequencyOscillator;-><init>()V

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->lfo:Lcn/sherlock/com/sun/media/sound/SoftProcess;

    .line 66
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->objects:Ljava/util/Map;

    .line 71
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->softchannel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    .line 72
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    .line 73
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->audiostarted:Z

    .line 74
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->started:Z

    .line 75
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stopping:Z

    .line 76
    const/4 v2, 0x0

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_attenuation:F

    .line 79
    const/4 v3, 0x2

    new-array v4, v3, [[F

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_buff:[[F

    .line 80
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream_off_transmitted:Z

    .line 81
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_end:Z

    .line 82
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_left:F

    .line 83
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_right:F

    .line 84
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect1:F

    .line 85
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect2:F

    .line 86
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_left:F

    .line 87
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_right:F

    .line 88
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_effect1:F

    .line 89
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_effect2:F

    .line 90
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->extendedConnectionBlocks:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 93
    const/16 v1, 0x32

    new-array v4, v1, [D

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_last:[D

    .line 95
    new-array v4, v3, [I

    const/4 v5, 0x1

    const/4 v6, 0x3

    aput v6, v4, v5

    aput v1, v4, v0

    const-class v7, [D

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[D

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_src:[[[D

    .line 97
    new-array v3, v3, [I

    aput v6, v3, v5

    aput v1, v3, v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_src_kc:[[I

    .line 99
    new-array v1, v1, [[D

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_dst:[[D

    .line 100
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->soundoff:Z

    .line 101
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->lastMuteValue:F

    .line 102
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->lastSoloMuteValue:F

    .line 103
    new-array v0, v5, [D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_keynumber:[D

    .line 104
    new-array v0, v5, [D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_velocity:[D

    .line 105
    new-array v0, v5, [D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_on:[D

    .line 106
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftVoice$1;

    invoke-direct {v0, p0}, Lcn/sherlock/com/sun/media/sound/SoftVoice$1;-><init>(Lcn/sherlock/com/sun/media/sound/SoftVoice;)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon:Lcn/sherlock/com/sun/media/sound/SoftControl;

    .line 122
    new-array v0, v5, [D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_active:[D

    .line 123
    new-array v0, v5, [D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_gain:[D

    .line 124
    new-array v0, v5, [D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_pan:[D

    .line 125
    new-array v0, v5, [D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_balance:[D

    .line 126
    new-array v0, v5, [D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_reverb:[D

    .line 127
    new-array v0, v5, [D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_chorus:[D

    .line 128
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;

    invoke-direct {v0, p0}, Lcn/sherlock/com/sun/media/sound/SoftVoice$2;-><init>(Lcn/sherlock/com/sun/media/sound/SoftVoice;)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer:Lcn/sherlock/com/sun/media/sound/SoftControl;

    .line 153
    new-array v0, v5, [D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_osc_pitch:[D

    .line 154
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftVoice$3;

    invoke-direct {v0, p0}, Lcn/sherlock/com/sun/media/sound/SoftVoice$3;-><init>(Lcn/sherlock/com/sun/media/sound/SoftVoice;)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_osc:Lcn/sherlock/com/sun/media/sound/SoftControl;

    .line 164
    new-array v0, v5, [D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_filter_freq:[D

    .line 165
    new-array v0, v5, [D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_filter_type:[D

    .line 166
    new-array v0, v5, [D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_filter_q:[D

    .line 167
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftVoice$4;

    invoke-direct {v0, p0}, Lcn/sherlock/com/sun/media/sound/SoftVoice$4;-><init>(Lcn/sherlock/com/sun/media/sound/SoftVoice;)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_filter:Lcn/sherlock/com/sun/media/sound/SoftControl;

    .line 187
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    .line 188
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;

    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v1

    invoke-direct {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftFilter;-><init>(F)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->filter_left:Lcn/sherlock/com/sun/media/sound/SoftFilter;

    .line 189
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftFilter;

    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v1

    invoke-direct {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftFilter;-><init>(F)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->filter_right:Lcn/sherlock/com/sun/media/sound/SoftFilter;

    .line 190
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->nrofchannels:I

    .line 191
    return-void
.end method

.method private getValue(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)[D
    .locals 3
    .param p1, "id"    # Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 210
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->objects:Ljava/util/Map;

    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sherlock/com/sun/media/sound/SoftControl;

    .line 211
    .local v0, "o":Lcn/sherlock/com/sun/media/sound/SoftControl;
    if-nez v0, :cond_0

    .line 212
    const/4 v1, 0x0

    return-object v1

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getInstance()I

    move-result v1

    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/sherlock/com/sun/media/sound/SoftControl;->get(ILjava/lang/String;)[D

    move-result-object v1

    return-object v1
.end method

.method private getValueKC(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)I
    .locals 3
    .param p1, "id"    # Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 194
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "midi_cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x78

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 196
    .local v0, "ic":I
    if-eqz v0, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    .line 197
    if-ge v0, v1, :cond_2

    .line 198
    return v0

    .line 200
    .end local v0    # "ic":I
    :cond_0
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v0

    const-string v2, "midi_rpn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    return v1

    .line 203
    :cond_1
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    const/16 v0, 0x79

    return v0

    .line 200
    :cond_2
    nop

    .line 206
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private processConnection(I)V
    .locals 14
    .param p1, "ix"    # I

    .line 250
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    aget-object v0, v0, p1

    .line 251
    .local v0, "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_src:[[[D

    aget-object v1, v1, p1

    .line 252
    .local v1, "src":[[D
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_dst:[[D

    aget-object v2, v2, p1

    .line 253
    .local v2, "dst":[D
    if-eqz v2, :cond_6

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_4

    .line 256
    :cond_0
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getScale()D

    move-result-wide v4

    .line 257
    .local v4, "value":D
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->softchannel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    iget-object v6, v6, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    const-wide/16 v7, 0x0

    if-nez v6, :cond_3

    .line 258
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v6

    .line 259
    .local v6, "srcs":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v6

    if-ge v9, v10, :cond_2

    .line 260
    aget-object v10, v1, v9

    aget-wide v11, v10, v3

    aget-object v10, v6, v9

    invoke-direct {p0, v11, v12, v10}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->transformValue(DLcn/sherlock/com/sun/media/sound/ModelSource;)D

    move-result-wide v10

    mul-double/2addr v4, v10

    .line 261
    cmpl-double v10, v4, v7

    if-nez v10, :cond_1

    .line 262
    goto :goto_1

    .line 259
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 264
    .end local v6    # "srcs":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .end local v9    # "i":I
    :cond_2
    :goto_1
    goto :goto_3

    .line 265
    :cond_3
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v6

    .line 266
    .restart local v6    # "srcs":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_src_kc:[[I

    aget-object v9, v9, p1

    .line 267
    .local v9, "src_kc":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v11, v6

    if-ge v10, v11, :cond_5

    .line 268
    aget-object v11, v1, v10

    aget-wide v12, v11, v3

    aget v11, v9, v10

    invoke-direct {p0, v12, v13, v11}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processKeyBasedController(DI)D

    move-result-wide v11

    aget-object v13, v6, v10

    invoke-direct {p0, v11, v12, v13}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->transformValue(DLcn/sherlock/com/sun/media/sound/ModelSource;)D

    move-result-wide v11

    mul-double/2addr v4, v11

    .line 270
    cmpl-double v11, v4, v7

    if-nez v11, :cond_4

    .line 271
    goto :goto_3

    .line 267
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 275
    .end local v6    # "srcs":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .end local v9    # "src_kc":[I
    .end local v10    # "i":I
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->transformValue(DLcn/sherlock/com/sun/media/sound/ModelDestination;)D

    move-result-wide v4

    .line 276
    aget-wide v6, v2, v3

    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_last:[D

    aget-wide v9, v8, p1

    sub-double/2addr v6, v9

    add-double/2addr v6, v4

    aput-wide v6, v2, v3

    .line 277
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_last:[D

    aput-wide v4, v3, p1

    .line 279
    return-void

    .line 254
    .end local v4    # "value":D
    :cond_6
    :goto_4
    return-void
.end method

.method private processKeyBasedController(DI)D
    .locals 7
    .param p1, "value"    # D
    .param p3, "keycontrol"    # I

    .line 231
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 232
    return-wide p1

    .line 233
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->softchannel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    if-eqz v0, :cond_4

    .line 234
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->softchannel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->note:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->softchannel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->note:I

    aget-object v0, v0, v1

    aget-boolean v0, v0, p3

    if-eqz v0, :cond_4

    .line 236
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->softchannel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_value:[[D

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->note:I

    aget-object v0, v0, v1

    aget-wide v1, v0, p3

    .line 238
    .local v1, "key_controlvalue":D
    const/16 v0, 0xa

    if-eq p3, v0, :cond_3

    const/16 v0, 0x5b

    if-eq p3, v0, :cond_3

    const/16 v0, 0x5d

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    add-double/2addr p1, v3

    .line 241
    cmpl-double v0, p1, v5

    if-lez v0, :cond_2

    .line 242
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    .line 243
    :cond_2
    const-wide/16 v3, 0x0

    cmpg-double v0, p1, v3

    if-gez v0, :cond_4

    .line 244
    const-wide/16 p1, 0x0

    goto :goto_1

    .line 239
    :cond_3
    :goto_0
    return-wide v1

    .line 246
    .end local v1    # "key_controlvalue":D
    :cond_4
    :goto_1
    return-wide p1
.end method

.method private transformValue(DLcn/sherlock/com/sun/media/sound/ModelDestination;)D
    .locals 2
    .param p1, "value"    # D
    .param p3, "dst"    # Lcn/sherlock/com/sun/media/sound/ModelDestination;

    .line 224
    invoke-virtual {p3}, Lcn/sherlock/com/sun/media/sound/ModelDestination;->getTransform()Lcn/sherlock/com/sun/media/sound/ModelTransform;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p3}, Lcn/sherlock/com/sun/media/sound/ModelDestination;->getTransform()Lcn/sherlock/com/sun/media/sound/ModelTransform;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/sherlock/com/sun/media/sound/ModelTransform;->transform(D)D

    move-result-wide v0

    return-wide v0

    .line 227
    :cond_0
    return-wide p1
.end method

.method private transformValue(DLcn/sherlock/com/sun/media/sound/ModelSource;)D
    .locals 2
    .param p1, "value"    # D
    .param p3, "src"    # Lcn/sherlock/com/sun/media/sound/ModelSource;

    .line 217
    invoke-virtual {p3}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getTransform()Lcn/sherlock/com/sun/media/sound/ModelTransform;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p3}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getTransform()Lcn/sherlock/com/sun/media/sound/ModelTransform;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/sherlock/com/sun/media/sound/ModelTransform;->transform(D)D

    move-result-wide v0

    return-wide v0

    .line 220
    :cond_0
    return-wide p1
.end method


# virtual methods
.method protected controlChange(II)V
    .locals 3
    .param p1, "controller"    # I
    .param p2, "value"    # I

    .line 459
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    if-nez v0, :cond_0

    .line 460
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_ctrl_connections:[[I

    aget-object v0, v0, p1

    .line 462
    .local v0, "c":[I
    if-nez v0, :cond_1

    .line 463
    return-void

    .line 464
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 465
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processConnection(I)V

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method protected mixAudioStream(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;FF)V
    .locals 9
    .param p1, "in"    # Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .param p2, "out"    # Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .param p3, "dout"    # Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .param p4, "amp_from"    # F
    .param p5, "amp_to"    # F

    .line 766
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->getSize()I

    move-result v0

    .line 767
    .local v0, "bufferlen":I
    float-to-double v1, p4

    const-wide v3, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    float-to-double v1, p5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 768
    return-void

    .line 769
    :cond_0
    if-eqz p3, :cond_6

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->delay:I

    if-eqz v1, :cond_6

    .line 771
    cmpl-float v1, p4, p5

    if-nez v1, :cond_3

    .line 772
    invoke-virtual {p2}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v1

    .line 773
    .local v1, "fout":[F
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v2

    .line 774
    .local v2, "fin":[F
    const/4 v3, 0x0

    .line 775
    .local v3, "j":I
    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->delay:I

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 776
    aget v5, v1, v4

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "j":I
    .local v6, "j":I
    aget v3, v2, v3

    mul-float/2addr v3, p5

    add-float/2addr v5, v3

    aput v5, v1, v4

    .line 775
    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_0

    .line 777
    .end local v4    # "i":I
    .end local v6    # "j":I
    .restart local v3    # "j":I
    :cond_1
    invoke-virtual {p3}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v1

    .line 778
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->delay:I

    if-ge v4, v5, :cond_2

    .line 779
    aget v5, v1, v4

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "j":I
    .restart local v6    # "j":I
    aget v3, v2, v3

    mul-float/2addr v3, p5

    add-float/2addr v5, v3

    aput v5, v1, v4

    .line 778
    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_1

    .line 780
    .end local v1    # "fout":[F
    .end local v2    # "fin":[F
    .end local v4    # "i":I
    .end local v6    # "j":I
    :cond_2
    goto/16 :goto_6

    .line 781
    :cond_3
    move v1, p4

    .line 782
    .local v1, "amp":F
    sub-float v2, p5, p4

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 783
    .local v2, "amp_delta":F
    invoke-virtual {p2}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v3

    .line 784
    .local v3, "fout":[F
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v4

    .line 785
    .local v4, "fin":[F
    const/4 v5, 0x0

    .line 786
    .local v5, "j":I
    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->delay:I

    .local v6, "i":I
    :goto_2
    if-ge v6, v0, :cond_4

    .line 787
    add-float/2addr v1, v2

    .line 788
    aget v7, v3, v6

    add-int/lit8 v8, v5, 0x1

    .end local v5    # "j":I
    .local v8, "j":I
    aget v5, v4, v5

    mul-float/2addr v5, v1

    add-float/2addr v7, v5

    aput v7, v3, v6

    .line 786
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_2

    .line 790
    .end local v6    # "i":I
    .end local v8    # "j":I
    .restart local v5    # "j":I
    :cond_4
    invoke-virtual {p3}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v3

    .line 791
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    iget v7, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->delay:I

    if-ge v6, v7, :cond_5

    .line 792
    add-float/2addr v1, v2

    .line 793
    aget v7, v3, v6

    add-int/lit8 v8, v5, 0x1

    .end local v5    # "j":I
    .restart local v8    # "j":I
    aget v5, v4, v5

    mul-float/2addr v5, v1

    add-float/2addr v7, v5

    aput v7, v3, v6

    .line 791
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_3

    .line 795
    .end local v1    # "amp":F
    .end local v2    # "amp_delta":F
    .end local v3    # "fout":[F
    .end local v4    # "fin":[F
    .end local v6    # "i":I
    .end local v8    # "j":I
    :cond_5
    goto :goto_6

    .line 799
    :cond_6
    cmpl-float v1, p4, p5

    if-nez v1, :cond_8

    .line 800
    invoke-virtual {p2}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v1

    .line 801
    .local v1, "fout":[F
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v2

    .line 802
    .local v2, "fin":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v0, :cond_7

    .line 803
    aget v4, v1, v3

    aget v5, v2, v3

    mul-float/2addr v5, p5

    add-float/2addr v4, v5

    aput v4, v1, v3

    .line 802
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 804
    .end local v1    # "fout":[F
    .end local v2    # "fin":[F
    .end local v3    # "i":I
    :cond_7
    goto :goto_6

    .line 805
    :cond_8
    move v1, p4

    .line 806
    .local v1, "amp":F
    sub-float v2, p5, p4

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 807
    .local v2, "amp_delta":F
    invoke-virtual {p2}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v3

    .line 808
    .local v3, "fout":[F
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v4

    .line 809
    .restart local v4    # "fin":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v0, :cond_9

    .line 810
    add-float/2addr v1, v2

    .line 811
    aget v6, v3, v5

    aget v7, v4, v5

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    aput v6, v3, v5

    .line 809
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 816
    .end local v1    # "amp":F
    .end local v2    # "amp_delta":F
    .end local v3    # "fout":[F
    .end local v4    # "fin":[F
    .end local v5    # "i":I
    :cond_9
    :goto_6
    return-void
.end method

.method protected noteOff(I)V
    .locals 4
    .param p1, "velocity"    # I

    .line 532
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    if-nez v0, :cond_0

    .line 533
    return-void

    .line 534
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    .line 536
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->noteOff_velocity:I

    .line 538
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->softchannel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    iget-boolean v1, v1, Lcn/sherlock/com/sun/media/sound/SoftChannel;->sustain:Z

    if-eqz v1, :cond_1

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->sustain:Z

    .line 540
    return-void

    .line 542
    :cond_1
    iget-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->sostenuto:Z

    if-eqz v1, :cond_2

    .line 543
    return-void

    .line 545
    :cond_2
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_on:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 547
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    if-nez v0, :cond_3

    .line 548
    return-void

    .line 549
    :cond_3
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 550
    .local v0, "c":[I
    if-nez v0, :cond_4

    .line 551
    return-void

    .line 552
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 553
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processConnection(I)V

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method protected noteOn(III)V
    .locals 18
    .param p1, "noteNumber"    # I
    .param p2, "velocity"    # I
    .param p3, "delay"    # I

    .line 303
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->sustain:Z

    .line 304
    iput-boolean v2, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->sostenuto:Z

    .line 305
    iput-boolean v2, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->portamento:Z

    .line 307
    iput-boolean v2, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->soundoff:Z

    .line 308
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    .line 309
    iput-boolean v3, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    .line 310
    iput-boolean v3, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->started:Z

    .line 313
    move/from16 v3, p1

    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->noteOn_noteNumber:I

    .line 314
    iput v1, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->noteOn_velocity:I

    .line 315
    move/from16 v4, p3

    iput v4, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->delay:I

    .line 317
    const/4 v5, 0x0

    iput v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->lastMuteValue:F

    .line 318
    iput v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->lastSoloMuteValue:F

    .line 320
    invoke-virtual/range {p0 .. p1}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->setNote(I)V

    .line 322
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-boolean v5, v5, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->forcedKeynumber:Z

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_0

    .line 323
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_keynumber:[D

    aput-wide v6, v5, v2

    goto :goto_0

    .line 325
    :cond_0
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_keynumber:[D

    iget-wide v8, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->tunedKey:D

    const-wide/high16 v10, 0x3f80000000000000L    # 0.0078125

    mul-double/2addr v8, v10

    aput-wide v8, v5, v2

    .line 326
    :goto_0
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-boolean v5, v5, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->forcedVelocity:Z

    if-eqz v5, :cond_1

    .line 327
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_velocity:[D

    aput-wide v6, v5, v2

    goto :goto_1

    .line 329
    :cond_1
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_velocity:[D

    int-to-float v8, v1

    const/high16 v9, 0x3c000000    # 0.0078125f

    mul-float/2addr v8, v9

    float-to-double v8, v8

    aput-wide v8, v5, v2

    .line 330
    :goto_1
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_active:[D

    aput-wide v6, v5, v2

    .line 331
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_gain:[D

    aput-wide v6, v5, v2

    .line 332
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_pan:[D

    aput-wide v6, v5, v2

    .line 333
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_balance:[D

    aput-wide v6, v5, v2

    .line 334
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_reverb:[D

    aput-wide v6, v5, v2

    .line 335
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_chorus:[D

    aput-wide v6, v5, v2

    .line 336
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_osc_pitch:[D

    aput-wide v6, v5, v2

    .line 337
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_filter_freq:[D

    aput-wide v6, v5, v2

    .line 338
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_filter_q:[D

    aput-wide v6, v5, v2

    .line 339
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_filter_type:[D

    aput-wide v6, v5, v2

    .line 340
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_on:[D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v5, v2

    .line 342
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->eg:Lcn/sherlock/com/sun/media/sound/SoftProcess;

    invoke-interface {v5}, Lcn/sherlock/com/sun/media/sound/SoftProcess;->reset()V

    .line 343
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->lfo:Lcn/sherlock/com/sun/media/sound/SoftProcess;

    invoke-interface {v5}, Lcn/sherlock/com/sun/media/sound/SoftProcess;->reset()V

    .line 344
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->filter_left:Lcn/sherlock/com/sun/media/sound/SoftFilter;

    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->reset()V

    .line 345
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->filter_right:Lcn/sherlock/com/sun/media/sound/SoftFilter;

    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->reset()V

    .line 347
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->objects:Ljava/util/Map;

    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getMainMixer()Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    move-result-object v8

    iget-object v8, v8, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master:Lcn/sherlock/com/sun/media/sound/SoftControl;

    const-string v9, "master"

    invoke-interface {v5, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->objects:Ljava/util/Map;

    const-string v8, "eg"

    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->eg:Lcn/sherlock/com/sun/media/sound/SoftProcess;

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->objects:Ljava/util/Map;

    const-string v8, "lfo"

    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->lfo:Lcn/sherlock/com/sun/media/sound/SoftProcess;

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->objects:Ljava/util/Map;

    const-string v8, "noteon"

    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon:Lcn/sherlock/com/sun/media/sound/SoftControl;

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->objects:Ljava/util/Map;

    const-string v8, "osc"

    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_osc:Lcn/sherlock/com/sun/media/sound/SoftControl;

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->objects:Ljava/util/Map;

    const-string v8, "mixer"

    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer:Lcn/sherlock/com/sun/media/sound/SoftControl;

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->objects:Ljava/util/Map;

    const-string v8, "filter"

    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_filter:Lcn/sherlock/com/sun/media/sound/SoftControl;

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-object v5, v5, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    iput-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 357
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_last:[D

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_last:[D

    array-length v5, v5

    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    array-length v8, v8

    if-ge v5, v8, :cond_3

    .line 359
    :cond_2
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    array-length v5, v5

    new-array v5, v5, [D

    iput-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_last:[D

    .line 361
    :cond_3
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_src:[[[D

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_src:[[[D

    array-length v5, v5

    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    array-length v8, v8

    if-ge v5, v8, :cond_5

    .line 363
    :cond_4
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    array-length v5, v5

    new-array v5, v5, [[[D

    iput-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_src:[[[D

    .line 364
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    array-length v5, v5

    new-array v5, v5, [[I

    iput-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_src_kc:[[I

    .line 366
    :cond_5
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_dst:[[D

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_dst:[[D

    array-length v5, v5

    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    array-length v8, v8

    if-ge v5, v8, :cond_7

    .line 368
    :cond_6
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    array-length v5, v5

    new-array v5, v5, [[D

    iput-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_dst:[[D

    .line 370
    :cond_7
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    array-length v8, v8

    if-ge v5, v8, :cond_c

    .line 371
    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    aget-object v8, v8, v5

    .line 372
    .local v8, "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_last:[D

    aput-wide v6, v9, v5

    .line 373
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 374
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v9

    .line 375
    .local v9, "srcs":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_src:[[[D

    aget-object v10, v10, v5

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_src:[[[D

    aget-object v10, v10, v5

    array-length v10, v10

    array-length v11, v9

    if-ge v10, v11, :cond_9

    .line 377
    :cond_8
    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_src:[[[D

    array-length v11, v9

    new-array v11, v11, [[D

    aput-object v11, v10, v5

    .line 378
    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_src_kc:[[I

    array-length v11, v9

    new-array v11, v11, [I

    aput-object v11, v10, v5

    .line 380
    :cond_9
    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_src:[[[D

    aget-object v10, v10, v5

    .line 381
    .local v10, "src":[[D
    iget-object v11, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_src_kc:[[I

    aget-object v11, v11, v5

    .line 382
    .local v11, "src_kc":[I
    iget-object v12, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_src:[[[D

    aput-object v10, v12, v5

    .line 383
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    array-length v13, v9

    if-ge v12, v13, :cond_a

    .line 384
    aget-object v13, v9, v12

    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v13

    invoke-direct {v0, v13}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->getValueKC(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)I

    move-result v13

    aput v13, v11, v12

    .line 385
    aget-object v13, v9, v12

    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v13

    invoke-direct {v0, v13}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->getValue(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)[D

    move-result-object v13

    aput-object v13, v10, v12

    .line 383
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 389
    .end local v9    # "srcs":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .end local v10    # "src":[[D
    .end local v11    # "src_kc":[I
    .end local v12    # "j":I
    :cond_a
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 390
    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_dst:[[D

    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v10

    .line 391
    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/ModelDestination;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v10

    .line 390
    invoke-direct {v0, v10}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->getValue(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)[D

    move-result-object v10

    aput-object v10, v9, v5

    goto :goto_4

    .line 393
    :cond_b
    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections_dst:[[D

    const/4 v10, 0x0

    aput-object v10, v9, v5

    .line 370
    .end local v8    # "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 396
    .end local v5    # "i":I
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    array-length v6, v6

    if-ge v5, v6, :cond_d

    .line 397
    invoke-direct {v0, v5}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processConnection(I)V

    .line 396
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 399
    .end local v5    # "i":I
    :cond_d
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->extendedConnectionBlocks:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    if-eqz v5, :cond_13

    .line 400
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->extendedConnectionBlocks:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    array-length v6, v5

    move v7, v2

    :goto_6
    if-ge v7, v6, :cond_13

    aget-object v8, v5, v7

    .line 401
    .local v8, "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    const-wide/16 v9, 0x0

    .line 403
    .local v9, "value":D
    iget-object v11, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->softchannel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    iget-object v11, v11, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    if-nez v11, :cond_f

    .line 404
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v11

    array-length v12, v11

    move v13, v2

    :goto_7
    if-ge v13, v12, :cond_11

    aget-object v14, v11, v13

    .line 405
    .local v14, "src":Lcn/sherlock/com/sun/media/sound/ModelSource;
    invoke-virtual {v14}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v15

    invoke-direct {v0, v15}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->getValue(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)[D

    move-result-object v15

    aget-wide v3, v15, v2

    .line 406
    .local v3, "x":D
    invoke-virtual {v14}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getTransform()Lcn/sherlock/com/sun/media/sound/ModelTransform;

    move-result-object v15

    .line 407
    .local v15, "t":Lcn/sherlock/com/sun/media/sound/ModelTransform;
    if-nez v15, :cond_e

    .line 408
    add-double/2addr v9, v3

    goto :goto_8

    .line 410
    :cond_e
    invoke-interface {v15, v3, v4}, Lcn/sherlock/com/sun/media/sound/ModelTransform;->transform(D)D

    move-result-wide v16

    add-double v9, v9, v16

    .line 404
    .end local v3    # "x":D
    .end local v14    # "src":Lcn/sherlock/com/sun/media/sound/ModelSource;
    .end local v15    # "t":Lcn/sherlock/com/sun/media/sound/ModelTransform;
    :goto_8
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, p1

    move/from16 v4, p3

    goto :goto_7

    .line 413
    :cond_f
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v3

    array-length v4, v3

    move v11, v2

    :goto_9
    if-ge v11, v4, :cond_11

    aget-object v12, v3, v11

    .line 414
    .local v12, "src":Lcn/sherlock/com/sun/media/sound/ModelSource;
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v13

    invoke-direct {v0, v13}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->getValue(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)[D

    move-result-object v13

    aget-wide v14, v13, v2

    .line 415
    .local v14, "x":D
    nop

    .line 416
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v13

    invoke-direct {v0, v13}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->getValueKC(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)I

    move-result v13

    .line 415
    invoke-direct {v0, v14, v15, v13}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processKeyBasedController(DI)D

    move-result-wide v13

    .line 417
    .end local v14    # "x":D
    .local v13, "x":D
    invoke-virtual {v12}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getTransform()Lcn/sherlock/com/sun/media/sound/ModelTransform;

    move-result-object v15

    .line 418
    .restart local v15    # "t":Lcn/sherlock/com/sun/media/sound/ModelTransform;
    if-nez v15, :cond_10

    .line 419
    add-double/2addr v9, v13

    goto :goto_a

    .line 421
    :cond_10
    invoke-interface {v15, v13, v14}, Lcn/sherlock/com/sun/media/sound/ModelTransform;->transform(D)D

    move-result-wide v16

    add-double v9, v9, v16

    .line 413
    .end local v12    # "src":Lcn/sherlock/com/sun/media/sound/ModelSource;
    .end local v13    # "x":D
    .end local v15    # "t":Lcn/sherlock/com/sun/media/sound/ModelTransform;
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 425
    :cond_11
    invoke-virtual {v8}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getDestination()Lcn/sherlock/com/sun/media/sound/ModelDestination;

    move-result-object v3

    .line 426
    .local v3, "dest":Lcn/sherlock/com/sun/media/sound/ModelDestination;
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/ModelDestination;->getTransform()Lcn/sherlock/com/sun/media/sound/ModelTransform;

    move-result-object v4

    .line 427
    .local v4, "t":Lcn/sherlock/com/sun/media/sound/ModelTransform;
    if-eqz v4, :cond_12

    .line 428
    invoke-interface {v4, v9, v10}, Lcn/sherlock/com/sun/media/sound/ModelTransform;->transform(D)D

    move-result-wide v9

    .line 429
    :cond_12
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/ModelDestination;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v11

    invoke-direct {v0, v11}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->getValue(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)[D

    move-result-object v11

    aget-wide v12, v11, v2

    add-double/2addr v12, v9

    aput-wide v12, v11, v2

    .line 400
    .end local v3    # "dest":Lcn/sherlock/com/sun/media/sound/ModelDestination;
    .end local v4    # "t":Lcn/sherlock/com/sun/media/sound/ModelTransform;
    .end local v8    # "connection":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .end local v9    # "value":D
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, p1

    move/from16 v4, p3

    goto/16 :goto_6

    .line 433
    :cond_13
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->eg:Lcn/sherlock/com/sun/media/sound/SoftProcess;

    iget-object v3, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-interface {v2, v3}, Lcn/sherlock/com/sun/media/sound/SoftProcess;->init(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;)V

    .line 434
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->lfo:Lcn/sherlock/com/sun/media/sound/SoftProcess;

    iget-object v3, v0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-interface {v2, v3}, Lcn/sherlock/com/sun/media/sound/SoftProcess;->init(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;)V

    .line 436
    return-void
.end method

.method protected nrpnChange(II)V
    .locals 3
    .param p1, "controller"    # I
    .param p2, "value"    # I

    .line 469
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    if-nez v0, :cond_0

    .line 470
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_nrpn_connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 472
    .local v0, "c":[I
    if-nez v0, :cond_1

    .line 473
    return-void

    .line 474
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 475
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processConnection(I)V

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method protected processAudioLogic([Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V
    .locals 22
    .param p1, "buffer"    # [Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 819
    move-object/from16 v7, p0

    iget-boolean v0, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->audiostarted:Z

    if-nez v0, :cond_0

    .line 820
    return-void

    .line 822
    :cond_0
    const/4 v1, 0x0

    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->getSize()I

    move-result v8

    .line 825
    .local v8, "bufferlen":I
    const/16 v2, 0xb

    const/16 v3, 0xa

    const/4 v9, 0x1

    :try_start_0
    iget-object v0, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_buff:[[F

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v4

    aput-object v4, v0, v1

    .line 826
    iget v0, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->nrofchannels:I

    if-eq v0, v9, :cond_1

    .line 827
    iget-object v0, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_buff:[[F

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v4

    aput-object v4, v0, v9

    .line 828
    :cond_1
    iget-object v0, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream:Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;

    iget-object v4, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_buff:[[F

    invoke-interface {v0, v4, v1, v8}, Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;->read([[FII)I

    move-result v0

    .line 829
    .local v0, "ret":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    .line 830
    iput-boolean v9, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stopping:Z

    .line 831
    return-void

    .line 833
    :cond_2
    if-eq v0, v8, :cond_3

    .line 834
    iget-object v4, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_buff:[[F

    aget-object v4, v4, v1

    const/4 v5, 0x0

    invoke-static {v4, v0, v8, v5}, Ljava/util/Arrays;->fill([FIIF)V

    .line 835
    iget v4, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->nrofchannels:I

    if-eq v4, v9, :cond_3

    .line 836
    iget-object v4, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_buff:[[F

    aget-object v4, v4, v9

    invoke-static {v4, v0, v8, v5}, Ljava/util/Arrays;->fill([FIIF)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    .end local v0    # "ret":I
    :cond_3
    goto :goto_0

    .line 839
    :catch_0
    move-exception v0

    .line 843
    :goto_0
    aget-object v0, p1, v1

    .line 844
    .local v0, "left":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    aget-object v10, p1, v9

    .line 845
    .local v10, "right":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    const/4 v4, 0x2

    aget-object v11, p1, v4

    .line 846
    .local v11, "mono":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    const/4 v4, 0x6

    aget-object v12, p1, v4

    .line 847
    .local v12, "eff1":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    const/4 v4, 0x7

    aget-object v13, p1, v4

    .line 849
    .local v13, "eff2":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    const/4 v4, 0x3

    aget-object v14, p1, v4

    .line 850
    .local v14, "dleft":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    const/4 v4, 0x4

    aget-object v15, p1, v4

    .line 851
    .local v15, "dright":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    const/4 v4, 0x5

    aget-object v16, p1, v4

    .line 852
    .local v16, "dmono":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    const/16 v4, 0x8

    aget-object v17, p1, v4

    .line 853
    .local v17, "deff1":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    const/16 v4, 0x9

    aget-object v18, p1, v4

    .line 855
    .local v18, "deff2":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    aget-object v6, p1, v3

    .line 856
    .local v6, "leftdry":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    aget-object v2, p1, v2

    .line 858
    .local v2, "rightdry":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    iget v3, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream_nrofchannels:I

    if-ne v3, v9, :cond_4

    .line 859
    const/4 v2, 0x0

    move-object v5, v2

    goto :goto_1

    .line 858
    :cond_4
    move-object v5, v2

    .line 861
    .end local v2    # "rightdry":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .local v5, "rightdry":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    :goto_1
    iget-object v2, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_filter_freq:[D

    aget-wide v1, v2, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_5

    .line 862
    iget-object v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->filter_left:Lcn/sherlock/com/sun/media/sound/SoftFilter;

    invoke-virtual {v1, v6}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->processAudio(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 863
    if-eqz v5, :cond_5

    .line 864
    iget-object v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->filter_right:Lcn/sherlock/com/sun/media/sound/SoftFilter;

    invoke-virtual {v1, v5}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->processAudio(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 867
    :cond_5
    iget v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->nrofchannels:I

    if-ne v1, v9, :cond_6

    .line 868
    iget v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_left:F

    iget v2, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_right:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_left:F

    .line 869
    iget v4, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_left:F

    iget v3, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_left:F

    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v19, v3

    move-object v3, v0

    move/from16 v20, v4

    move-object v4, v14

    move-object/from16 v21, v5

    .end local v5    # "rightdry":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .local v21, "rightdry":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    move/from16 v5, v20

    move-object/from16 v20, v6

    .end local v6    # "leftdry":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .local v20, "leftdry":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    move/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->mixAudioStream(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;FF)V

    .line 870
    if-eqz v21, :cond_9

    .line 871
    iget v5, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_left:F

    iget v6, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_left:F

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object v3, v0

    move-object v4, v14

    invoke-virtual/range {v1 .. v6}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->mixAudioStream(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;FF)V

    goto :goto_2

    .line 874
    .end local v20    # "leftdry":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .end local v21    # "rightdry":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .restart local v5    # "rightdry":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .restart local v6    # "leftdry":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    :cond_6
    move-object/from16 v21, v5

    move-object/from16 v20, v6

    .end local v5    # "rightdry":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .end local v6    # "leftdry":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .restart local v20    # "leftdry":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .restart local v21    # "rightdry":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    if-nez v21, :cond_7

    iget v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_left:F

    iget v2, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_right:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    iget v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_left:F

    iget v2, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_right:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    .line 878
    iget v5, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_left:F

    iget v6, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_left:F

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object v3, v11

    move-object/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->mixAudioStream(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;FF)V

    goto :goto_2

    .line 882
    :cond_7
    iget v5, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_left:F

    iget v6, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_left:F

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object v3, v0

    move-object v4, v14

    invoke-virtual/range {v1 .. v6}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->mixAudioStream(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;FF)V

    .line 883
    if-eqz v21, :cond_8

    .line 884
    iget v5, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_right:F

    iget v6, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_right:F

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object v3, v10

    move-object v4, v15

    invoke-virtual/range {v1 .. v6}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->mixAudioStream(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;FF)V

    goto :goto_2

    .line 887
    :cond_8
    iget v5, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_right:F

    iget v6, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_right:F

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object v3, v10

    move-object v4, v15

    invoke-virtual/range {v1 .. v6}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->mixAudioStream(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;FF)V

    .line 892
    :cond_9
    :goto_2
    if-nez v21, :cond_a

    .line 893
    iget v5, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_effect1:F

    iget v6, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect1:F

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object v3, v12

    move-object/from16 v4, v17

    invoke-virtual/range {v1 .. v6}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->mixAudioStream(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;FF)V

    .line 895
    iget v5, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_effect2:F

    iget v6, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect2:F

    move-object v3, v13

    move-object/from16 v4, v18

    invoke-virtual/range {v1 .. v6}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->mixAudioStream(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;FF)V

    goto :goto_3

    .line 898
    :cond_a
    iget v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_effect1:F

    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v5, v1, v19

    iget v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect1:F

    mul-float v6, v1, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object v3, v12

    move-object/from16 v4, v17

    invoke-virtual/range {v1 .. v6}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->mixAudioStream(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;FF)V

    .line 900
    iget v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_effect2:F

    mul-float v5, v1, v19

    iget v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect2:F

    mul-float v6, v1, v19

    move-object/from16 v1, p0

    move-object v3, v13

    move-object/from16 v4, v18

    invoke-virtual/range {v1 .. v6}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->mixAudioStream(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;FF)V

    .line 902
    iget v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_effect1:F

    mul-float v5, v1, v19

    iget v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect1:F

    mul-float v6, v1, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object v3, v12

    move-object/from16 v4, v17

    invoke-virtual/range {v1 .. v6}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->mixAudioStream(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;FF)V

    .line 904
    iget v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_effect2:F

    mul-float v5, v1, v19

    iget v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect2:F

    mul-float v6, v1, v19

    move-object/from16 v1, p0

    move-object v3, v13

    move-object/from16 v4, v18

    invoke-virtual/range {v1 .. v6}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->mixAudioStream(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;FF)V

    .line 908
    :goto_3
    iget v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_left:F

    iput v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_left:F

    .line 909
    iget v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_right:F

    iput v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_right:F

    .line 910
    iget v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect1:F

    iput v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_effect1:F

    .line 911
    iget v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect2:F

    iput v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_effect2:F

    .line 913
    iget-boolean v1, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_end:Z

    if-eqz v1, :cond_b

    .line 914
    iput-boolean v9, v7, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stopping:Z

    .line 917
    :cond_b
    return-void
.end method

.method protected processControlLogic()V
    .locals 24

    .line 575
    move-object/from16 v11, p0

    iget-boolean v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stopping:Z

    const/4 v12, 0x0

    if-eqz v0, :cond_1

    .line 576
    iput-boolean v12, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    .line 577
    iput-boolean v12, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stopping:Z

    .line 578
    iput-boolean v12, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->audiostarted:Z

    .line 579
    const/4 v13, 0x0

    iput-object v13, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 580
    iput-object v13, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    .line 581
    iput-object v13, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 582
    iput-object v13, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->extendedConnectionBlocks:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 583
    iput-object v13, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channelmixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    .line 584
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream:Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;

    if-eqz v0, :cond_0

    .line 586
    :try_start_0
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream:Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;

    invoke-interface {v0}, Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 591
    :cond_0
    :goto_0
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    if-eqz v0, :cond_1

    .line 592
    iget-object v1, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    iget-object v3, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget v4, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_voiceID:I

    iget v5, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_noteNumber:I

    iget v6, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_velocity:I

    iget-object v8, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_extendedConnectionBlocks:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    iget-object v9, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channelmixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    iget-boolean v10, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_releaseTriggered:Z

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v10}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->initVoice(Lcn/sherlock/com/sun/media/sound/SoftVoice;Lcn/sherlock/com/sun/media/sound/SoftPerformer;IIII[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;Z)V

    .line 596
    iput-boolean v12, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_releaseTriggered:Z

    .line 597
    iput-object v13, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    .line 598
    iput-object v13, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    .line 599
    const/4 v0, -0x1

    iput v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_voiceID:I

    .line 600
    iput v12, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_noteNumber:I

    .line 601
    iput v12, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_velocity:I

    .line 602
    iput-object v13, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_extendedConnectionBlocks:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 603
    iput-object v13, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channelmixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    .line 606
    :cond_1
    iget-boolean v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 607
    iput-boolean v1, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->audiostarted:Z

    .line 609
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->oscillators:[Lcn/sherlock/com/sun/media/sound/ModelOscillator;

    aget-object v2, v0, v12

    .line 611
    .local v2, "osc":Lcn/sherlock/com/sun/media/sound/ModelOscillator;
    iput-boolean v12, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream_off_transmitted:Z

    .line 612
    instance-of v0, v2, Lcn/sherlock/com/sun/media/sound/ModelWavetable;

    if-eqz v0, :cond_2

    .line 614
    :try_start_1
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->resampler:Lcn/sherlock/com/sun/media/sound/SoftResamplerStreamer;

    move-object v3, v2

    check-cast v3, Lcn/sherlock/com/sun/media/sound/ModelWavetable;

    iget-object v4, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    .line 615
    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v4

    invoke-virtual {v4}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v4

    .line 614
    invoke-interface {v0, v3, v4}, Lcn/sherlock/com/sun/media/sound/SoftResamplerStreamer;->open(Lcn/sherlock/com/sun/media/sound/ModelWavetable;F)V

    .line 616
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->resampler:Lcn/sherlock/com/sun/media/sound/SoftResamplerStreamer;

    iput-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream:Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 617
    :catch_1
    move-exception v0

    .line 619
    :goto_1
    goto :goto_2

    .line 621
    :cond_2
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v0

    invoke-interface {v2, v0}, Lcn/sherlock/com/sun/media/sound/ModelOscillator;->open(F)Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;

    move-result-object v0

    iput-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream:Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;

    .line 623
    :goto_2
    invoke-interface {v2}, Lcn/sherlock/com/sun/media/sound/ModelOscillator;->getAttenuation()F

    move-result v0

    iput v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_attenuation:F

    .line 624
    invoke-interface {v2}, Lcn/sherlock/com/sun/media/sound/ModelOscillator;->getChannels()I

    move-result v0

    iput v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream_nrofchannels:I

    .line 625
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_buff:[[F

    if-eqz v0, :cond_3

    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_buff:[[F

    array-length v0, v0

    iget v3, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream_nrofchannels:I

    if-ge v0, v3, :cond_4

    .line 626
    :cond_3
    iget v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream_nrofchannels:I

    new-array v0, v0, [[F

    iput-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_buff:[[F

    .line 628
    :cond_4
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream:Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;

    if-eqz v0, :cond_5

    .line 629
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream:Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;

    iget-object v3, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->softchannel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    iget v4, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->noteOn_noteNumber:I

    iget v5, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->noteOn_velocity:I

    invoke-interface {v0, v3, v11, v4, v5}, Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;->noteOn(Ljp/kshoji/javax/sound/midi/MidiChannel;Ljp/kshoji/javax/sound/midi/VoiceStatus;II)V

    .line 634
    .end local v2    # "osc":Lcn/sherlock/com/sun/media/sound/ModelOscillator;
    :cond_5
    iget-boolean v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->audiostarted:Z

    if-eqz v0, :cond_16

    .line 635
    iget-boolean v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->portamento:Z

    const-wide/high16 v2, 0x4060000000000000L    # 128.0

    if-eqz v0, :cond_9

    .line 636
    iget-wide v4, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->tunedKey:D

    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_keynumber:[D

    aget-wide v6, v0, v12

    mul-double/2addr v6, v2

    sub-double/2addr v4, v6

    .line 637
    .local v4, "note_delta":D
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 638
    .local v6, "note_delta_a":D
    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v0, v6, v8

    const-wide/high16 v8, 0x3f80000000000000L    # 0.0078125

    if-gez v0, :cond_6

    .line 639
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_keynumber:[D

    iget-wide v13, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->tunedKey:D

    mul-double/2addr v13, v8

    aput-wide v13, v0, v12

    .line 640
    iput-boolean v12, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->portamento:Z

    goto :goto_3

    .line 642
    :cond_6
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->softchannel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    iget-wide v13, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_time:D

    cmpl-double v0, v6, v13

    if-lez v0, :cond_7

    .line 643
    invoke-static {v4, v5}, Ljava/lang/Math;->signum(D)D

    move-result-wide v13

    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->softchannel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    iget-wide v2, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_time:D

    mul-double v4, v13, v2

    .line 645
    :cond_7
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_keynumber:[D

    aget-wide v2, v0, v12

    mul-double/2addr v8, v4

    add-double/2addr v2, v8

    aput-wide v2, v0, v12

    .line 648
    :goto_3
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    const/4 v2, 0x4

    aget-object v0, v0, v2

    .line 649
    .local v0, "c":[I
    if-nez v0, :cond_8

    .line 650
    return-void

    .line 651
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    array-length v3, v0

    if-ge v2, v3, :cond_9

    .line 652
    aget v3, v0, v2

    invoke-direct {v11, v3}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processConnection(I)V

    .line 651
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 655
    .end local v0    # "c":[I
    .end local v2    # "i":I
    .end local v4    # "note_delta":D
    .end local v6    # "note_delta_a":D
    :cond_9
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->eg:Lcn/sherlock/com/sun/media/sound/SoftProcess;

    invoke-interface {v0}, Lcn/sherlock/com/sun/media/sound/SoftProcess;->processControlLogic()V

    .line 656
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->lfo:Lcn/sherlock/com/sun/media/sound/SoftProcess;

    invoke-interface {v0}, Lcn/sherlock/com/sun/media/sound/SoftProcess;->processControlLogic()V

    .line 658
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v2, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->ctrl_connections:[I

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 659
    iget-object v2, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->ctrl_connections:[I

    aget v2, v2, v0

    invoke-direct {v11, v2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processConnection(I)V

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 661
    .end local v0    # "i":I
    :cond_a
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream:Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;

    iget-object v2, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_osc_pitch:[D

    aget-wide v3, v2, v12

    double-to-float v2, v3

    invoke-interface {v0, v2}, Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;->setPitch(F)V

    .line 663
    iget-object v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_filter_type:[D

    aget-wide v2, v0, v12

    double-to-int v0, v2

    .line 666
    .local v0, "filter_type":I
    iget-object v2, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_filter_freq:[D

    aget-wide v3, v2, v12

    const-wide v5, 0x40ca5e0000000000L    # 13500.0

    cmpl-double v2, v3, v5

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    if-nez v2, :cond_b

    .line 667
    const-wide v5, 0x40d3720820155763L    # 19912.126958213175

    .local v5, "filter_freq":D
    goto :goto_6

    .line 669
    .end local v5    # "filter_freq":D
    :cond_b
    iget-object v2, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_filter_freq:[D

    aget-wide v5, v2, v12

    const-wide v7, 0x40baf40000000000L    # 6900.0

    sub-double/2addr v5, v7

    .line 671
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    const-wide v9, 0x4092c00000000000L    # 1200.0

    div-double/2addr v7, v9

    mul-double/2addr v5, v7

    .line 669
    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    const-wide v7, 0x407b800000000000L    # 440.0

    mul-double/2addr v5, v7

    .line 680
    .restart local v5    # "filter_freq":D
    :goto_6
    iget-object v2, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_filter_q:[D

    aget-wide v7, v2, v12

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    div-double/2addr v7, v9

    .line 681
    .local v7, "q":D
    iget-object v2, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->filter_left:Lcn/sherlock/com/sun/media/sound/SoftFilter;

    invoke-virtual {v2, v0}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->setFilterType(I)V

    .line 682
    iget-object v2, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->filter_left:Lcn/sherlock/com/sun/media/sound/SoftFilter;

    invoke-virtual {v2, v5, v6}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->setFrequency(D)V

    .line 683
    iget-object v2, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->filter_left:Lcn/sherlock/com/sun/media/sound/SoftFilter;

    invoke-virtual {v2, v7, v8}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->setResonance(D)V

    .line 684
    iget-object v2, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->filter_right:Lcn/sherlock/com/sun/media/sound/SoftFilter;

    invoke-virtual {v2, v0}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->setFilterType(I)V

    .line 685
    iget-object v2, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->filter_right:Lcn/sherlock/com/sun/media/sound/SoftFilter;

    invoke-virtual {v2, v5, v6}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->setFrequency(D)V

    .line 686
    iget-object v2, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->filter_right:Lcn/sherlock/com/sun/media/sound/SoftFilter;

    invoke-virtual {v2, v7, v8}, Lcn/sherlock/com/sun/media/sound/SoftFilter;->setResonance(D)V

    .line 691
    iget v2, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_attenuation:F

    neg-float v2, v2

    float-to-double v13, v2

    iget-object v2, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_gain:[D

    aget-wide v17, v2, v12

    add-double v13, v13, v17

    .line 692
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    const-wide/high16 v17, 0x4069000000000000L    # 200.0

    div-double v9, v9, v17

    mul-double/2addr v13, v9

    .line 691
    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    double-to-float v2, v9

    .line 694
    .local v2, "gain":F
    iget-object v9, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_gain:[D

    aget-wide v13, v9, v12

    const-wide/high16 v9, -0x3f72000000000000L    # -960.0

    cmpg-double v9, v13, v9

    if-gtz v9, :cond_c

    .line 695
    const/4 v2, 0x0

    .line 697
    :cond_c
    iget-boolean v9, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->soundoff:Z

    if-eqz v9, :cond_d

    .line 698
    iput-boolean v1, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stopping:Z

    .line 699
    const/4 v2, 0x0

    .line 706
    :cond_d
    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    const-wide/high16 v13, 0x4060000000000000L    # 128.0

    mul-double/2addr v9, v13

    double-to-int v9, v9

    iput v9, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->volume:I

    .line 710
    iget-object v9, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_pan:[D

    aget-wide v13, v9, v12

    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v13, v9

    .line 712
    .local v13, "pan":D
    const-wide/16 v15, 0x0

    cmpg-double v15, v13, v15

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    if-gez v15, :cond_e

    .line 713
    const-wide/16 v13, 0x0

    goto :goto_7

    .line 714
    :cond_e
    cmpl-double v15, v13, v16

    if-lez v15, :cond_f

    .line 715
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 717
    :cond_f
    :goto_7
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    cmpl-double v15, v13, v18

    if-nez v15, :cond_10

    .line 718
    const v15, 0x3f3504f3

    mul-float/2addr v15, v2

    iput v15, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_left:F

    .line 719
    iget v15, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_left:F

    iput v15, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_right:F

    goto :goto_8

    .line 721
    :cond_10
    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v22, v13, v20

    mul-double v22, v22, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    iput v3, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_left:F

    .line 722
    mul-double v20, v20, v13

    mul-double v20, v20, v18

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    iput v3, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_right:F

    .line 725
    :goto_8
    iget-object v3, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_balance:[D

    aget-wide v20, v3, v12

    mul-double v20, v20, v9

    .line 726
    .local v20, "balance":D
    cmpl-double v3, v20, v18

    if-eqz v3, :cond_12

    .line 727
    cmpl-double v3, v20, v18

    if-lez v3, :cond_11

    .line 728
    iget v3, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_left:F

    float-to-double v3, v3

    sub-double v16, v16, v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v22

    mul-double v3, v3, v16

    double-to-float v3, v3

    iput v3, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_left:F

    goto :goto_9

    .line 730
    :cond_11
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    iget v3, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_right:F

    float-to-double v3, v3

    mul-double v15, v20, v22

    mul-double/2addr v3, v15

    double-to-float v3, v3

    iput v3, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_right:F

    .line 733
    :cond_12
    :goto_9
    iget-object v3, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-boolean v3, v3, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->reverb_on:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_13

    .line 734
    iget-object v3, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_reverb:[D

    aget-wide v15, v3, v12

    move-wide/from16 v22, v13

    .end local v13    # "pan":D
    .local v22, "pan":D
    mul-double v12, v15, v9

    double-to-float v12, v12

    iput v12, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect1:F

    .line 735
    iget v12, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect1:F

    mul-float/2addr v12, v2

    iput v12, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect1:F

    goto :goto_a

    .line 737
    .end local v22    # "pan":D
    .restart local v13    # "pan":D
    :cond_13
    move-wide/from16 v22, v13

    .end local v13    # "pan":D
    .restart local v22    # "pan":D
    iput v4, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect1:F

    .line 738
    :goto_a
    iget-object v12, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-boolean v12, v12, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->chorus_on:Z

    if-eqz v12, :cond_14

    .line 739
    iget-object v4, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_chorus:[D

    const/4 v3, 0x0

    aget-wide v12, v4, v3

    mul-double/2addr v12, v9

    double-to-float v4, v12

    iput v4, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect2:F

    .line 740
    iget v4, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect2:F

    mul-float/2addr v4, v2

    iput v4, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect2:F

    goto :goto_b

    .line 742
    :cond_14
    iput v4, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect2:F

    .line 743
    :goto_b
    iget-object v4, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_active:[D

    const/4 v3, 0x0

    aget-wide v9, v4, v3

    cmpg-double v4, v9, v18

    if-gez v4, :cond_15

    move v4, v1

    goto :goto_c

    :cond_15
    const/4 v4, 0x0

    :goto_c
    iput-boolean v4, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_end:Z

    .line 745
    iget-boolean v4, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    if-nez v4, :cond_16

    .line 746
    iget-boolean v4, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream_off_transmitted:Z

    if-nez v4, :cond_16

    .line 747
    iput-boolean v1, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream_off_transmitted:Z

    .line 748
    iget-object v1, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream:Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;

    if-eqz v1, :cond_16

    .line 749
    iget-object v1, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->osc_stream:Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;

    iget v4, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->noteOff_velocity:I

    invoke-interface {v1, v4}, Lcn/sherlock/com/sun/media/sound/ModelOscillatorStream;->noteOff(I)V

    .line 753
    .end local v0    # "filter_type":I
    .end local v2    # "gain":F
    .end local v5    # "filter_freq":D
    .end local v7    # "q":D
    .end local v20    # "balance":D
    .end local v22    # "pan":D
    :cond_16
    iget-boolean v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->started:Z

    if-eqz v0, :cond_17

    .line 754
    iget v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_left:F

    iput v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_left:F

    .line 755
    iget v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_right:F

    iput v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_right:F

    .line 756
    iget v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect1:F

    iput v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_effect1:F

    .line 757
    iget v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->out_mixer_effect2:F

    iput v0, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->last_out_mixer_effect2:F

    .line 758
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcn/sherlock/com/sun/media/sound/SoftVoice;->started:Z

    .line 761
    :cond_17
    return-void
.end method

.method protected redamp()V
    .locals 6

    .line 557
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_on:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    .line 558
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_on:[D

    aget-wide v2, v0, v1

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    .line 560
    return-void

    .line 562
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->sustain:Z

    .line 563
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_on:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    .line 565
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    if-nez v0, :cond_2

    .line 566
    return-void

    .line 567
    :cond_2
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 568
    .local v0, "c":[I
    if-nez v0, :cond_3

    .line 569
    return-void

    .line 570
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 571
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processConnection(I)V

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method protected rpnChange(II)V
    .locals 3
    .param p1, "controller"    # I
    .param p2, "value"    # I

    .line 479
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    if-nez v0, :cond_0

    .line 480
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_rpn_connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 482
    .local v0, "c":[I
    if-nez v0, :cond_1

    .line 483
    return-void

    .line 484
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 485
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processConnection(I)V

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method protected setChannelPressure(I)V
    .locals 3
    .param p1, "pressure"    # I

    .line 449
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    if-nez v0, :cond_0

    .line 450
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 452
    .local v0, "c":[I
    if-nez v0, :cond_1

    .line 453
    return-void

    .line 454
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 455
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processConnection(I)V

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method protected setMute(Z)V
    .locals 6
    .param p1, "mute"    # Z

    .line 499
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_gain:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->lastMuteValue:F

    float-to-double v4, v4

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 500
    if-eqz p1, :cond_0

    const/high16 v0, -0x3b900000    # -960.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->lastMuteValue:F

    .line 501
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_gain:[D

    aget-wide v2, v0, v1

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->lastMuteValue:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 502
    return-void
.end method

.method protected setNote(I)V
    .locals 4
    .param p1, "noteNumber"    # I

    .line 297
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->note:I

    .line 298
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    invoke-virtual {v0, p1}, Lcn/sherlock/com/sun/media/sound/SoftTuning;->getTuning(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->tunedKey:D

    .line 299
    return-void
.end method

.method protected setPitchBend(I)V
    .locals 3
    .param p1, "bend"    # I

    .line 489
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    if-nez v0, :cond_0

    .line 490
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 492
    .local v0, "c":[I
    if-nez v0, :cond_1

    .line 493
    return-void

    .line 494
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 495
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processConnection(I)V

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method protected setPolyPressure(I)V
    .locals 3
    .param p1, "pressure"    # I

    .line 439
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    if-nez v0, :cond_0

    .line 440
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 442
    .local v0, "c":[I
    if-nez v0, :cond_1

    .line 443
    return-void

    .line 444
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 445
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processConnection(I)V

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method protected setSoloMute(Z)V
    .locals 6
    .param p1, "mute"    # Z

    .line 505
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_gain:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->lastSoloMuteValue:F

    float-to-double v4, v4

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 506
    if-eqz p1, :cond_0

    const/high16 v0, -0x3b900000    # -960.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->lastSoloMuteValue:F

    .line 507
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_mixer_gain:[D

    aget-wide v2, v0, v1

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->lastSoloMuteValue:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 508
    return-void
.end method

.method protected shutdown()V
    .locals 6

    .line 511
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_on:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    .line 512
    return-void

    .line 513
    :cond_0
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    .line 515
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_on:[D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    aput-wide v2, v0, v1

    .line 517
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    if-nez v0, :cond_1

    .line 518
    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 520
    .local v0, "c":[I
    if-nez v0, :cond_2

    .line 521
    return-void

    .line 522
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 523
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processConnection(I)V

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method protected soundOff()V
    .locals 1

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->soundoff:Z

    .line 529
    return-void
.end method

.method protected updateTuning(Lcn/sherlock/com/sun/media/sound/SoftTuning;)V
    .locals 5
    .param p1, "newtuning"    # Lcn/sherlock/com/sun/media/sound/SoftTuning;

    .line 282
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    .line 283
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->note:I

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftTuning;->getTuning(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->tunedKey:D

    .line 284
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->portamento:Z

    if-nez v0, :cond_2

    .line 285
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_keynumber:[D

    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->tunedKey:D

    const-wide/high16 v3, 0x3f80000000000000L    # 0.0078125

    mul-double/2addr v1, v3

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 286
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    if-nez v0, :cond_0

    .line 287
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->midi_connections:[[I

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 289
    .local v0, "c":[I
    if-nez v0, :cond_1

    .line 290
    return-void

    .line 291
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 292
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processConnection(I)V

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "c":[I
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
