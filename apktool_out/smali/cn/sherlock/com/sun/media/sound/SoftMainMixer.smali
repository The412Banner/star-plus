.class public Lcn/sherlock/com/sun/media/sound/SoftMainMixer;
.super Ljava/lang/Object;
.source "SoftMainMixer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    }
.end annotation


# static fields
.field public static final CHANNEL_DELAY_EFFECT1:I = 0x8

.field public static final CHANNEL_DELAY_EFFECT2:I = 0x9

.field public static final CHANNEL_DELAY_LEFT:I = 0x3

.field public static final CHANNEL_DELAY_MONO:I = 0x5

.field public static final CHANNEL_DELAY_RIGHT:I = 0x4

.field public static final CHANNEL_EFFECT1:I = 0x6

.field public static final CHANNEL_EFFECT2:I = 0x7

.field public static final CHANNEL_LEFT:I = 0x0

.field public static final CHANNEL_LEFT_DRY:I = 0xa

.field public static final CHANNEL_MONO:I = 0x2

.field public static final CHANNEL_RIGHT:I = 0x1

.field public static final CHANNEL_RIGHT_DRY:I = 0xb

.field public static final CHANNEL_SCRATCH1:I = 0xc

.field public static final CHANNEL_SCRATCH2:I = 0xd


# instance fields
.field protected active_sensing_on:Z

.field private agc:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

.field private ais:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

.field private buffer_len:I

.field private buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

.field private chorus:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

.field protected co_master:Lcn/sherlock/com/sun/media/sound/SoftControl;

.field private co_master_balance:[D

.field private co_master_coarse_tuning:[D

.field private co_master_fine_tuning:[D

.field private co_master_volume:[D

.field private control_mutex:Ljava/lang/Object;

.field private cur_registeredMixers:[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;

.field private delay_midievent:I

.field last_volume_left:D

.field last_volume_right:D

.field private max_delay_midievent:I

.field protected midimessages:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private msec_buffer_len:J

.field private msec_last_activity:J

.field private nrofchannels:I

.field private pusher_silent:Z

.field private pusher_silent_count:I

.field protected readfully:Z

.field private registeredMixers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;",
            ">;"
        }
    .end annotation
.end field

.field private reverb:Lcn/sherlock/com/sun/media/sound/SoftReverb;

.field private sample_pos:J

.field private samplerate:F

.field private stoppedMixers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;",
            ">;"
        }
    .end annotation
.end field

.field private synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

.field private voicestatus:[Lcn/sherlock/com/sun/media/sound/SoftVoice;


# direct methods
.method static bridge synthetic -$$Nest$fgetbuffers(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetco_master_balance(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_balance:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetco_master_coarse_tuning(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_coarse_tuning:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetco_master_fine_tuning(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_fine_tuning:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetco_master_volume(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_volume:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsynth(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    return-object p0
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;)V
    .locals 12
    .param p1, "synth"    # Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->active_sensing_on:Z

    .line 71
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->msec_last_activity:J

    .line 72
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->pusher_silent:Z

    .line 73
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->pusher_silent_count:I

    .line 74
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->sample_pos:J

    .line 75
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->readfully:Z

    .line 78
    const v6, 0x472c4400    # 44100.0f

    iput v6, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->samplerate:F

    .line 79
    const/4 v6, 0x2

    iput v6, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->nrofchannels:I

    .line 80
    const/4 v7, 0x0

    iput-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->voicestatus:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    .line 85
    iput-wide v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->msec_buffer_len:J

    .line 86
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffer_len:I

    .line 87
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    iput-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->midimessages:Ljava/util/TreeMap;

    .line 88
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->delay_midievent:I

    .line 89
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->max_delay_midievent:I

    .line 90
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->last_volume_left:D

    .line 91
    iput-wide v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->last_volume_right:D

    .line 92
    new-array v10, v5, [D

    iput-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_balance:[D

    .line 93
    new-array v10, v5, [D

    iput-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_volume:[D

    .line 94
    new-array v10, v5, [D

    iput-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_coarse_tuning:[D

    .line 95
    new-array v10, v5, [D

    iput-object v10, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_fine_tuning:[D

    .line 97
    iput-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->registeredMixers:Ljava/util/Set;

    .line 98
    iput-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->stoppedMixers:Ljava/util/Set;

    .line 99
    iput-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->cur_registeredMixers:[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;

    .line 100
    new-instance v7, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$1;

    invoke-direct {v7, p0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$1;-><init>(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)V

    iput-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master:Lcn/sherlock/com/sun/media/sound/SoftControl;

    .line 800
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    .line 802
    iput-wide v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->sample_pos:J

    .line 804
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_balance:[D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    aput-wide v10, v3, v0

    .line 805
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_volume:[D

    aput-wide v8, v3, v0

    .line 806
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_coarse_tuning:[D

    aput-wide v10, v3, v0

    .line 807
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_fine_tuning:[D

    aput-wide v10, v3, v0

    .line 809
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getControlRate()F

    move-result v3

    float-to-double v3, v3

    const-wide v7, 0x412e848000000000L    # 1000000.0

    div-double/2addr v7, v3

    double-to-long v3, v7

    iput-wide v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->msec_buffer_len:J

    .line 810
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v3

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->samplerate:F

    .line 811
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v3

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->nrofchannels:I

    .line 813
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v3

    .line 814
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getControlRate()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 816
    .local v3, "buffersize":I
    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffer_len:I

    .line 818
    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->max_delay_midievent:I

    .line 820
    iget-object v4, p1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    .line 821
    const/16 v4, 0xe

    new-array v4, v4, [Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 822
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    array-length v7, v7

    if-ge v4, v7, :cond_0

    .line 823
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    new-instance v8, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v9

    invoke-direct {v8, v3, v9}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;-><init>(ILcn/sherlock/javax/sound/sampled/AudioFormat;)V

    aput-object v8, v7, v4

    .line 822
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 825
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getVoices()[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    move-result-object v4

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->voicestatus:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    .line 827
    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftReverb;

    invoke-direct {v4}, Lcn/sherlock/com/sun/media/sound/SoftReverb;-><init>()V

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->reverb:Lcn/sherlock/com/sun/media/sound/SoftReverb;

    .line 828
    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftChorus;

    invoke-direct {v4}, Lcn/sherlock/com/sun/media/sound/SoftChorus;-><init>()V

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->chorus:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    .line 829
    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftLimiter;

    invoke-direct {v4}, Lcn/sherlock/com/sun/media/sound/SoftLimiter;-><init>()V

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->agc:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    .line 831
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v4

    invoke-virtual {v4}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v4

    .line 832
    .local v4, "samplerate":F
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getControlRate()F

    move-result v7

    .line 833
    .local v7, "controlrate":F
    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->reverb:Lcn/sherlock/com/sun/media/sound/SoftReverb;

    invoke-virtual {v8, v4, v7}, Lcn/sherlock/com/sun/media/sound/SoftReverb;->init(FF)V

    .line 834
    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->chorus:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    invoke-interface {v8, v4, v7}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->init(FF)V

    .line 835
    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->agc:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    invoke-interface {v8, v4, v7}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->init(FF)V

    .line 837
    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->reverb:Lcn/sherlock/com/sun/media/sound/SoftReverb;

    iget-boolean v9, p1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->reverb_light:Z

    invoke-virtual {v8, v9}, Lcn/sherlock/com/sun/media/sound/SoftReverb;->setLightMode(Z)V

    .line 839
    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->reverb:Lcn/sherlock/com/sun/media/sound/SoftReverb;

    invoke-virtual {v8, v5}, Lcn/sherlock/com/sun/media/sound/SoftReverb;->setMixMode(Z)V

    .line 840
    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->chorus:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    invoke-interface {v8, v5}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->setMixMode(Z)V

    .line 841
    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->agc:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    invoke-interface {v8, v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->setMixMode(Z)V

    .line 843
    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->chorus:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v10, 0x7

    aget-object v9, v9, v10

    invoke-interface {v8, v0, v9}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->setInput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 844
    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->chorus:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v9, v9, v0

    invoke-interface {v8, v0, v9}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->setOutput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 845
    iget v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->nrofchannels:I

    if-eq v8, v5, :cond_1

    .line 846
    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->chorus:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v9, v9, v5

    invoke-interface {v8, v5, v9}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->setOutput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 847
    :cond_1
    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->chorus:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    iget-object v9, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v10, 0x6

    aget-object v9, v9, v10

    invoke-interface {v8, v6, v9}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->setOutput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 849
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->reverb:Lcn/sherlock/com/sun/media/sound/SoftReverb;

    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v8, v8, v10

    invoke-virtual {v6, v0, v8}, Lcn/sherlock/com/sun/media/sound/SoftReverb;->setInput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 850
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->reverb:Lcn/sherlock/com/sun/media/sound/SoftReverb;

    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v8, v8, v0

    invoke-virtual {v6, v0, v8}, Lcn/sherlock/com/sun/media/sound/SoftReverb;->setOutput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 851
    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->nrofchannels:I

    if-eq v6, v5, :cond_2

    .line 852
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->reverb:Lcn/sherlock/com/sun/media/sound/SoftReverb;

    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v8, v8, v5

    invoke-virtual {v6, v5, v8}, Lcn/sherlock/com/sun/media/sound/SoftReverb;->setOutput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 854
    :cond_2
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->agc:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v8, v8, v0

    invoke-interface {v6, v0, v8}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->setInput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 855
    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->nrofchannels:I

    if-eq v6, v5, :cond_3

    .line 856
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->agc:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v8, v8, v5

    invoke-interface {v6, v5, v8}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->setInput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 857
    :cond_3
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->agc:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v8, v8, v0

    invoke-interface {v6, v0, v8}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->setOutput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 858
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->nrofchannels:I

    if-eq v0, v5, :cond_4

    .line 859
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->agc:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v6, v6, v5

    invoke-interface {v0, v5, v6}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->setOutput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 861
    :cond_4
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;

    invoke-direct {v0, p0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$2;-><init>(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;)V

    .line 923
    .local v0, "in":Ljava/io/InputStream;
    new-instance v5, Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v6

    invoke-direct {v5, v0, v6, v1, v2}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcn/sherlock/javax/sound/sampled/AudioFormat;J)V

    iput-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->ais:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 925
    return-void
.end method

.method private processMessages(J)V
    .locals 11
    .param p1, "timeStamp"    # J

    .line 424
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->midimessages:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 425
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 426
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 427
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->msec_buffer_len:J

    add-long/2addr v5, p1

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 428
    return-void

    .line 429
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v3, p1

    .line 430
    .local v3, "msec_delay":J
    long-to-double v5, v3

    iget v7, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->samplerate:F

    float-to-double v7, v7

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v7, v9

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->delay_midievent:I

    .line 431
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->delay_midievent:I

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->max_delay_midievent:I

    if-le v5, v6, :cond_1

    .line 432
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->max_delay_midievent:I

    iput v5, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->delay_midievent:I

    .line 433
    :cond_1
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->delay_midievent:I

    if-gez v5, :cond_2

    .line 434
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->delay_midievent:I

    .line 435
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->processMessage(Ljava/lang/Object;)V

    .line 436
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 437
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Object;>;"
    .end local v3    # "msec_delay":J
    goto :goto_0

    .line 438
    :cond_3
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->delay_midievent:I

    .line 439
    return-void
.end method

.method private processSystemExclusiveMessage([B)V
    .locals 23
    .param p1, "data"    # [B

    .line 123
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v3, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 124
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->activity()V

    .line 127
    const/4 v0, 0x1

    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x7e

    const/4 v6, 0x3

    const/16 v7, 0x7f

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x7

    const/4 v11, 0x4

    const/4 v12, 0x5

    const/4 v13, 0x2

    if-ne v4, v5, :cond_4

    .line 128
    aget-byte v4, v2, v13

    and-int/lit16 v4, v4, 0xff

    .line 129
    .local v4, "deviceID":I
    if-eq v4, v7, :cond_0

    iget-object v5, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getDeviceID()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 130
    :cond_0
    aget-byte v5, v2, v6

    and-int/lit16 v5, v5, 0xff

    .line 132
    .local v5, "subid1":I
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 195
    :pswitch_0
    aget-byte v14, v2, v11

    and-int/lit16 v14, v14, 0xff

    .line 196
    .local v14, "subid2":I
    packed-switch v14, :pswitch_data_1

    .line 215
    goto/16 :goto_1

    .line 212
    :pswitch_1
    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iput v0, v15, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voice_allocation_mode:I

    .line 213
    goto/16 :goto_1

    .line 209
    :pswitch_2
    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iput v8, v15, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voice_allocation_mode:I

    .line 210
    goto/16 :goto_1

    .line 204
    :pswitch_3
    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v15, v8}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->setGeneralMidiMode(I)V

    .line 205
    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iput v8, v15, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voice_allocation_mode:I

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->reset()V

    .line 207
    goto/16 :goto_1

    .line 198
    :pswitch_4
    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v15}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getGeneralMidiMode()I

    move-result v15

    if-nez v15, :cond_1

    .line 199
    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v15, v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->setGeneralMidiMode(I)V

    .line 200
    :cond_1
    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iput v0, v15, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voice_allocation_mode:I

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->reset()V

    .line 202
    goto/16 :goto_1

    .line 176
    .end local v14    # "subid2":I
    :pswitch_5
    aget-byte v14, v2, v11

    and-int/lit16 v14, v14, 0xff

    .line 177
    .restart local v14    # "subid2":I
    packed-switch v14, :pswitch_data_2

    .line 191
    goto/16 :goto_1

    .line 187
    :pswitch_6
    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v15, v13}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->setGeneralMidiMode(I)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->reset()V

    .line 189
    goto/16 :goto_1

    .line 183
    :pswitch_7
    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v15, v8}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->setGeneralMidiMode(I)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->reset()V

    .line 185
    goto :goto_1

    .line 179
    :pswitch_8
    iget-object v15, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v15, v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->setGeneralMidiMode(I)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->reset()V

    .line 181
    goto :goto_1

    .line 134
    .end local v14    # "subid2":I
    :pswitch_9
    aget-byte v14, v2, v11

    and-int/lit16 v14, v14, 0xff

    .line 135
    .restart local v14    # "subid2":I
    packed-switch v14, :pswitch_data_3

    .line 172
    :pswitch_a
    goto :goto_1

    .line 162
    :pswitch_b
    new-instance v15, Lcn/sherlock/com/sun/media/sound/SoftTuning;

    invoke-direct {v15, v2}, Lcn/sherlock/com/sun/media/sound/SoftTuning;-><init>([B)V

    .line 163
    .local v15, "tuning":Lcn/sherlock/com/sun/media/sound/SoftTuning;
    aget-byte v11, v2, v12

    and-int/lit16 v11, v11, 0xff

    mul-int/lit16 v11, v11, 0x4000

    aget-byte v6, v2, v9

    and-int/lit16 v6, v6, 0xff

    mul-int/lit16 v6, v6, 0x80

    add-int/2addr v11, v6

    aget-byte v6, v2, v10

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v11, v6

    .line 165
    .local v11, "channelmask":I
    iget-object v6, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v6, v6, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    .line 166
    .local v6, "channels":[Lcn/sherlock/com/sun/media/sound/SoftChannel;
    const/16 v18, 0x0

    move/from16 v10, v18

    .local v10, "i":I
    :goto_0
    array-length v13, v6

    if-ge v10, v13, :cond_3

    .line 167
    shl-int v13, v0, v10

    and-int/2addr v13, v11

    if-eqz v13, :cond_2

    .line 168
    aget-object v13, v6, v10

    iput-object v15, v13, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    .line 166
    :cond_2
    add-int/lit8 v10, v10, 0x1

    const/4 v13, 0x2

    goto :goto_0

    .line 169
    .end local v10    # "i":I
    :cond_3
    goto :goto_1

    .line 151
    .end local v6    # "channels":[Lcn/sherlock/com/sun/media/sound/SoftChannel;
    .end local v11    # "channelmask":I
    .end local v15    # "tuning":Lcn/sherlock/com/sun/media/sound/SoftTuning;
    :pswitch_c
    iget-object v6, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    new-instance v10, Ljp/kshoji/javax/sound/midi/Patch;

    aget-byte v11, v2, v12

    and-int/lit16 v11, v11, 0xff

    aget-byte v13, v2, v9

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v10, v11, v13}, Ljp/kshoji/javax/sound/midi/Patch;-><init>(II)V

    invoke-virtual {v6, v10}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getTuning(Ljp/kshoji/javax/sound/midi/Patch;)Lcn/sherlock/com/sun/media/sound/SoftTuning;

    move-result-object v6

    .line 153
    .local v6, "tuning":Lcn/sherlock/com/sun/media/sound/SoftTuning;
    invoke-virtual {v6, v2}, Lcn/sherlock/com/sun/media/sound/SoftTuning;->load([B)V

    .line 154
    goto :goto_1

    .line 139
    .end local v6    # "tuning":Lcn/sherlock/com/sun/media/sound/SoftTuning;
    :pswitch_d
    iget-object v6, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    new-instance v10, Ljp/kshoji/javax/sound/midi/Patch;

    aget-byte v11, v2, v12

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v10, v8, v11}, Ljp/kshoji/javax/sound/midi/Patch;-><init>(II)V

    invoke-virtual {v6, v10}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getTuning(Ljp/kshoji/javax/sound/midi/Patch;)Lcn/sherlock/com/sun/media/sound/SoftTuning;

    move-result-object v6

    .line 141
    .restart local v6    # "tuning":Lcn/sherlock/com/sun/media/sound/SoftTuning;
    invoke-virtual {v6, v2}, Lcn/sherlock/com/sun/media/sound/SoftTuning;->load([B)V

    .line 142
    nop

    .line 226
    .end local v4    # "deviceID":I
    .end local v5    # "subid1":I
    .end local v6    # "tuning":Lcn/sherlock/com/sun/media/sound/SoftTuning;
    .end local v14    # "subid2":I
    :cond_4
    :goto_1
    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v7, :cond_19

    .line 227
    const/4 v4, 0x2

    aget-byte v5, v2, v4

    and-int/lit16 v4, v5, 0xff

    .line 228
    .restart local v4    # "deviceID":I
    if-eq v4, v7, :cond_5

    iget-object v5, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getDeviceID()I

    move-result v5

    if-ne v4, v5, :cond_19

    .line 229
    :cond_5
    const/4 v5, 0x3

    aget-byte v6, v2, v5

    and-int/lit16 v5, v6, 0xff

    .line 231
    .restart local v5    # "subid1":I
    packed-switch v5, :pswitch_data_4

    :pswitch_e
    move/from16 v20, v4

    move/from16 v21, v5

    .end local v4    # "deviceID":I
    .end local v5    # "subid1":I
    .local v20, "deviceID":I
    .local v21, "subid1":I
    goto/16 :goto_e

    .line 396
    .end local v20    # "deviceID":I
    .end local v21    # "subid1":I
    .restart local v4    # "deviceID":I
    .restart local v5    # "subid1":I
    :pswitch_f
    const/4 v6, 0x4

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    .line 397
    .local v6, "subid2":I
    packed-switch v6, :pswitch_data_5

    .line 410
    goto/16 :goto_e

    .line 399
    :pswitch_10
    aget-byte v7, v2, v12

    and-int/lit16 v7, v7, 0xff

    .line 400
    .local v7, "channel":I
    aget-byte v8, v2, v9

    and-int/lit16 v8, v8, 0xff

    .line 401
    .local v8, "keynumber":I
    iget-object v9, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v9, v9, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    aget-object v9, v9, v7

    .line 402
    .local v9, "softchannel":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    const/4 v10, 0x7

    .local v10, "j":I
    :goto_2
    array-length v11, v2

    sub-int/2addr v11, v0

    if-ge v10, v11, :cond_6

    .line 403
    aget-byte v11, v2, v10

    and-int/lit16 v11, v11, 0xff

    .line 404
    .local v11, "controlnumber":I
    add-int/lit8 v12, v10, 0x1

    aget-byte v12, v2, v12

    and-int/lit16 v12, v12, 0xff

    .line 405
    .local v12, "controlvalue":I
    invoke-virtual {v9, v8, v11, v12}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChangePerNote(III)V

    .line 402
    .end local v11    # "controlnumber":I
    .end local v12    # "controlvalue":I
    add-int/lit8 v10, v10, 0x2

    goto :goto_2

    .line 408
    .end local v10    # "j":I
    :cond_6
    goto/16 :goto_e

    .line 338
    .end local v6    # "subid2":I
    .end local v7    # "channel":I
    .end local v8    # "keynumber":I
    .end local v9    # "softchannel":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    :pswitch_11
    const/4 v6, 0x4

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    .line 339
    .restart local v6    # "subid2":I
    packed-switch v6, :pswitch_data_6

    .line 390
    goto/16 :goto_e

    .line 374
    :pswitch_12
    array-length v7, v2

    const/4 v8, 0x7

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    div-int/2addr v7, v8

    new-array v7, v7, [I

    .line 375
    .local v7, "destinations":[I
    array-length v8, v2

    const/4 v10, 0x7

    sub-int/2addr v8, v10

    const/4 v10, 0x2

    div-int/2addr v8, v10

    new-array v8, v8, [I

    .line 376
    .local v8, "ranges":[I
    const/4 v10, 0x0

    .line 377
    .local v10, "ix":I
    const/4 v11, 0x7

    .local v11, "j":I
    :goto_3
    array-length v13, v2

    sub-int/2addr v13, v0

    if-ge v11, v13, :cond_7

    .line 378
    aget-byte v13, v2, v11

    and-int/lit16 v13, v13, 0xff

    aput v13, v7, v10

    .line 379
    add-int/lit8 v13, v11, 0x1

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    aput v13, v8, v10

    .line 380
    add-int/lit8 v10, v10, 0x1

    .line 377
    add-int/lit8 v11, v11, 0x2

    goto :goto_3

    .line 382
    .end local v11    # "j":I
    :cond_7
    aget-byte v0, v2, v12

    and-int/lit16 v0, v0, 0xff

    .line 383
    .local v0, "channel":I
    iget-object v11, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v11, v11, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    aget-object v11, v11, v0

    .line 384
    .local v11, "softchannel":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    .line 385
    .local v9, "control":I
    invoke-virtual {v11, v9, v7, v8}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mapControlToDestination(I[I[I)V

    .line 387
    goto/16 :goto_e

    .line 358
    .end local v0    # "channel":I
    .end local v7    # "destinations":[I
    .end local v8    # "ranges":[I
    .end local v9    # "control":I
    .end local v10    # "ix":I
    .end local v11    # "softchannel":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    :pswitch_13
    array-length v7, v2

    const/4 v8, 0x7

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    div-int/2addr v7, v8

    new-array v7, v7, [I

    .line 359
    .restart local v7    # "destinations":[I
    array-length v8, v2

    const/4 v9, 0x7

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    div-int/2addr v8, v9

    new-array v8, v8, [I

    .line 360
    .restart local v8    # "ranges":[I
    const/4 v9, 0x0

    .line 361
    .local v9, "ix":I
    const/4 v10, 0x6

    .local v10, "j":I
    :goto_4
    array-length v11, v2

    sub-int/2addr v11, v0

    if-ge v10, v11, :cond_8

    .line 362
    aget-byte v11, v2, v10

    and-int/lit16 v11, v11, 0xff

    aput v11, v7, v9

    .line 363
    add-int/lit8 v11, v10, 0x1

    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    aput v11, v8, v9

    .line 364
    add-int/lit8 v9, v9, 0x1

    .line 361
    add-int/lit8 v10, v10, 0x2

    goto :goto_4

    .line 366
    .end local v10    # "j":I
    :cond_8
    aget-byte v0, v2, v12

    and-int/lit16 v0, v0, 0xff

    .line 367
    .restart local v0    # "channel":I
    iget-object v10, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v10, v10, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    aget-object v10, v10, v0

    .line 368
    .local v10, "softchannel":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    invoke-virtual {v10, v7, v8}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mapPolyPressureToDestination([I[I)V

    .line 370
    goto/16 :goto_e

    .line 342
    .end local v0    # "channel":I
    .end local v7    # "destinations":[I
    .end local v8    # "ranges":[I
    .end local v9    # "ix":I
    .end local v10    # "softchannel":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    :pswitch_14
    array-length v7, v2

    const/4 v8, 0x7

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    div-int/2addr v7, v8

    new-array v7, v7, [I

    .line 343
    .restart local v7    # "destinations":[I
    array-length v8, v2

    const/4 v9, 0x7

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    div-int/2addr v8, v9

    new-array v8, v8, [I

    .line 344
    .restart local v8    # "ranges":[I
    const/4 v9, 0x0

    .line 345
    .restart local v9    # "ix":I
    const/4 v10, 0x6

    .local v10, "j":I
    :goto_5
    array-length v11, v2

    sub-int/2addr v11, v0

    if-ge v10, v11, :cond_9

    .line 346
    aget-byte v11, v2, v10

    and-int/lit16 v11, v11, 0xff

    aput v11, v7, v9

    .line 347
    add-int/lit8 v11, v10, 0x1

    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    aput v11, v8, v9

    .line 348
    add-int/lit8 v9, v9, 0x1

    .line 345
    add-int/lit8 v10, v10, 0x2

    goto :goto_5

    .line 350
    .end local v10    # "j":I
    :cond_9
    aget-byte v0, v2, v12

    and-int/lit16 v0, v0, 0xff

    .line 351
    .restart local v0    # "channel":I
    iget-object v10, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v10, v10, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    aget-object v10, v10, v0

    .line 352
    .local v10, "softchannel":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    invoke-virtual {v10, v7, v8}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mapChannelPressureToDestination([I[I)V

    .line 354
    goto/16 :goto_e

    .line 284
    .end local v0    # "channel":I
    .end local v6    # "subid2":I
    .end local v7    # "destinations":[I
    .end local v8    # "ranges":[I
    .end local v9    # "ix":I
    .end local v10    # "softchannel":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    :pswitch_15
    const/4 v6, 0x4

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    .line 285
    .restart local v6    # "subid2":I
    sparse-switch v6, :sswitch_data_0

    .line 334
    goto/16 :goto_e

    .line 319
    :sswitch_0
    new-instance v7, Lcn/sherlock/com/sun/media/sound/SoftTuning;

    invoke-direct {v7, v2}, Lcn/sherlock/com/sun/media/sound/SoftTuning;-><init>([B)V

    .line 320
    .local v7, "tuning":Lcn/sherlock/com/sun/media/sound/SoftTuning;
    aget-byte v8, v2, v12

    and-int/lit16 v8, v8, 0xff

    mul-int/lit16 v8, v8, 0x4000

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    mul-int/lit16 v9, v9, 0x80

    add-int/2addr v8, v9

    const/4 v9, 0x7

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    .line 322
    .local v8, "channelmask":I
    iget-object v9, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v9, v9, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    .line 323
    .local v9, "channels":[Lcn/sherlock/com/sun/media/sound/SoftChannel;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    array-length v11, v9

    if-ge v10, v11, :cond_b

    .line 324
    shl-int v11, v0, v10

    and-int/2addr v11, v8

    if-eqz v11, :cond_a

    .line 325
    aget-object v11, v9, v10

    iput-object v7, v11, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    .line 323
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 326
    .end local v10    # "i":I
    :cond_b
    iget-object v10, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getVoices()[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    move-result-object v10

    .line 327
    .local v10, "voices":[Lcn/sherlock/com/sun/media/sound/SoftVoice;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7
    array-length v12, v10

    if-ge v11, v12, :cond_d

    .line 328
    aget-object v12, v10, v11

    iget-boolean v12, v12, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v12, :cond_c

    .line 329
    aget-object v12, v10, v11

    iget v12, v12, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    shl-int v12, v0, v12

    and-int/2addr v12, v8

    if-eqz v12, :cond_c

    .line 330
    aget-object v12, v10, v11

    invoke-virtual {v12, v7}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->updateTuning(Lcn/sherlock/com/sun/media/sound/SoftTuning;)V

    .line 327
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 331
    .end local v11    # "i":I
    :cond_d
    goto/16 :goto_e

    .line 303
    .end local v7    # "tuning":Lcn/sherlock/com/sun/media/sound/SoftTuning;
    .end local v8    # "channelmask":I
    .end local v9    # "channels":[Lcn/sherlock/com/sun/media/sound/SoftChannel;
    .end local v10    # "voices":[Lcn/sherlock/com/sun/media/sound/SoftVoice;
    :sswitch_1
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    new-instance v7, Ljp/kshoji/javax/sound/midi/Patch;

    aget-byte v8, v2, v12

    and-int/lit16 v8, v8, 0xff

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    invoke-direct {v7, v8, v9}, Ljp/kshoji/javax/sound/midi/Patch;-><init>(II)V

    invoke-virtual {v0, v7}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getTuning(Ljp/kshoji/javax/sound/midi/Patch;)Lcn/sherlock/com/sun/media/sound/SoftTuning;

    move-result-object v0

    .line 305
    .local v0, "tuning":Lcn/sherlock/com/sun/media/sound/SoftTuning;
    invoke-virtual {v0, v2}, Lcn/sherlock/com/sun/media/sound/SoftTuning;->load([B)V

    .line 306
    iget-object v7, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v7}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getVoices()[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    move-result-object v7

    .line 307
    .local v7, "voices":[Lcn/sherlock/com/sun/media/sound/SoftVoice;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8
    array-length v9, v7

    if-ge v8, v9, :cond_f

    .line 308
    aget-object v9, v7, v8

    iget-boolean v9, v9, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v9, :cond_e

    .line 309
    aget-object v9, v7, v8

    iget-object v9, v9, Lcn/sherlock/com/sun/media/sound/SoftVoice;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    if-ne v9, v0, :cond_e

    .line 310
    aget-object v9, v7, v8

    invoke-virtual {v9, v0}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->updateTuning(Lcn/sherlock/com/sun/media/sound/SoftTuning;)V

    .line 307
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 311
    .end local v8    # "i":I
    :cond_f
    goto/16 :goto_e

    .line 289
    .end local v0    # "tuning":Lcn/sherlock/com/sun/media/sound/SoftTuning;
    .end local v7    # "voices":[Lcn/sherlock/com/sun/media/sound/SoftVoice;
    :sswitch_2
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    new-instance v7, Ljp/kshoji/javax/sound/midi/Patch;

    aget-byte v9, v2, v12

    and-int/lit16 v9, v9, 0xff

    invoke-direct {v7, v8, v9}, Ljp/kshoji/javax/sound/midi/Patch;-><init>(II)V

    invoke-virtual {v0, v7}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getTuning(Ljp/kshoji/javax/sound/midi/Patch;)Lcn/sherlock/com/sun/media/sound/SoftTuning;

    move-result-object v0

    .line 291
    .restart local v0    # "tuning":Lcn/sherlock/com/sun/media/sound/SoftTuning;
    invoke-virtual {v0, v2}, Lcn/sherlock/com/sun/media/sound/SoftTuning;->load([B)V

    .line 292
    iget-object v7, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v7}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getVoices()[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    move-result-object v7

    .line 293
    .restart local v7    # "voices":[Lcn/sherlock/com/sun/media/sound/SoftVoice;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    array-length v9, v7

    if-ge v8, v9, :cond_11

    .line 294
    aget-object v9, v7, v8

    iget-boolean v9, v9, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v9, :cond_10

    .line 295
    aget-object v9, v7, v8

    iget-object v9, v9, Lcn/sherlock/com/sun/media/sound/SoftVoice;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    if-ne v9, v0, :cond_10

    .line 296
    aget-object v9, v7, v8

    invoke-virtual {v9, v0}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->updateTuning(Lcn/sherlock/com/sun/media/sound/SoftTuning;)V

    .line 293
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 297
    .end local v8    # "i":I
    :cond_11
    goto/16 :goto_e

    .line 234
    .end local v0    # "tuning":Lcn/sherlock/com/sun/media/sound/SoftTuning;
    .end local v6    # "subid2":I
    .end local v7    # "voices":[Lcn/sherlock/com/sun/media/sound/SoftVoice;
    :pswitch_16
    const/4 v6, 0x4

    aget-byte v8, v2, v6

    and-int/lit16 v6, v8, 0xff

    .line 235
    .restart local v6    # "subid2":I
    packed-switch v6, :pswitch_data_7

    .line 279
    move/from16 v20, v4

    move/from16 v21, v5

    .end local v4    # "deviceID":I
    .end local v5    # "subid1":I
    .restart local v20    # "deviceID":I
    .restart local v21    # "subid1":I
    goto/16 :goto_e

    .line 252
    .end local v20    # "deviceID":I
    .end local v21    # "subid1":I
    .restart local v4    # "deviceID":I
    .restart local v5    # "subid1":I
    :pswitch_17
    const/4 v7, 0x5

    .line 253
    .local v7, "ix":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "ix":I
    .local v8, "ix":I
    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    .line 254
    .local v7, "slotPathLen":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ix":I
    .local v9, "ix":I
    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    .line 255
    .local v8, "paramWidth":I
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "ix":I
    .local v10, "ix":I
    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    .line 256
    .local v9, "valueWidth":I
    new-array v11, v7, [I

    .line 257
    .local v11, "slotPath":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_a
    if-ge v12, v7, :cond_12

    .line 258
    add-int/lit8 v13, v10, 0x1

    .end local v10    # "ix":I
    .local v13, "ix":I
    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    .line 259
    .local v10, "msb":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "ix":I
    .local v14, "ix":I
    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    .line 260
    .local v13, "lsb":I
    mul-int/lit16 v15, v10, 0x80

    add-int/2addr v15, v13

    aput v15, v11, v12

    .line 257
    .end local v10    # "msb":I
    .end local v13    # "lsb":I
    add-int/lit8 v12, v12, 0x1

    move v10, v14

    goto :goto_a

    .line 262
    .end local v12    # "i":I
    .end local v14    # "ix":I
    .local v10, "ix":I
    :cond_12
    array-length v12, v2

    sub-int/2addr v12, v0

    sub-int/2addr v12, v10

    add-int v0, v8, v9

    div-int/2addr v12, v0

    move v0, v12

    .line 264
    .local v0, "paramCount":I
    new-array v12, v0, [J

    .line 265
    .local v12, "params":[J
    new-array v13, v0, [J

    .line 266
    .local v13, "values":[J
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_b
    if-ge v14, v0, :cond_15

    .line 267
    const-wide/16 v15, 0x0

    aput-wide v15, v13, v14

    .line 268
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_c
    const-wide/16 v16, 0x80

    if-ge v15, v8, :cond_13

    .line 269
    aget-wide v18, v12, v14

    mul-long v18, v18, v16

    add-int/lit8 v16, v10, 0x1

    .end local v10    # "ix":I
    .local v16, "ix":I
    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    move/from16 v20, v4

    move/from16 v21, v5

    .end local v4    # "deviceID":I
    .end local v5    # "subid1":I
    .restart local v20    # "deviceID":I
    .restart local v21    # "subid1":I
    int-to-long v4, v10

    add-long v18, v18, v4

    aput-wide v18, v12, v14

    .line 268
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v16

    move/from16 v4, v20

    move/from16 v5, v21

    goto :goto_c

    .end local v16    # "ix":I
    .end local v20    # "deviceID":I
    .end local v21    # "subid1":I
    .restart local v4    # "deviceID":I
    .restart local v5    # "subid1":I
    .restart local v10    # "ix":I
    :cond_13
    move/from16 v20, v4

    move/from16 v21, v5

    .line 271
    .end local v4    # "deviceID":I
    .end local v5    # "subid1":I
    .end local v15    # "j":I
    .restart local v20    # "deviceID":I
    .restart local v21    # "subid1":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_d
    if-ge v4, v9, :cond_14

    .line 272
    aget-wide v18, v13, v14

    mul-long v18, v18, v16

    add-int/lit8 v5, v10, 0x1

    .end local v10    # "ix":I
    .local v5, "ix":I
    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    move v15, v7

    move/from16 v22, v8

    .end local v7    # "slotPathLen":I
    .end local v8    # "paramWidth":I
    .local v15, "slotPathLen":I
    .local v22, "paramWidth":I
    int-to-long v7, v10

    add-long v18, v18, v7

    aput-wide v18, v13, v14

    .line 271
    add-int/lit8 v4, v4, 0x1

    move v10, v5

    move v7, v15

    move/from16 v8, v22

    goto :goto_d

    .end local v5    # "ix":I
    .end local v15    # "slotPathLen":I
    .end local v22    # "paramWidth":I
    .restart local v7    # "slotPathLen":I
    .restart local v8    # "paramWidth":I
    .restart local v10    # "ix":I
    :cond_14
    move v15, v7

    move/from16 v22, v8

    .line 266
    .end local v4    # "j":I
    .end local v7    # "slotPathLen":I
    .end local v8    # "paramWidth":I
    .restart local v15    # "slotPathLen":I
    .restart local v22    # "paramWidth":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v20

    move/from16 v5, v21

    goto :goto_b

    .end local v15    # "slotPathLen":I
    .end local v20    # "deviceID":I
    .end local v21    # "subid1":I
    .end local v22    # "paramWidth":I
    .local v4, "deviceID":I
    .local v5, "subid1":I
    .restart local v7    # "slotPathLen":I
    .restart local v8    # "paramWidth":I
    :cond_15
    move/from16 v20, v4

    move/from16 v21, v5

    move v15, v7

    move/from16 v22, v8

    .line 276
    .end local v4    # "deviceID":I
    .end local v5    # "subid1":I
    .end local v7    # "slotPathLen":I
    .end local v8    # "paramWidth":I
    .end local v14    # "i":I
    .restart local v15    # "slotPathLen":I
    .restart local v20    # "deviceID":I
    .restart local v21    # "subid1":I
    .restart local v22    # "paramWidth":I
    invoke-virtual {v1, v11, v12, v13}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->globalParameterControlChange([I[J[J)V

    .line 277
    goto :goto_e

    .line 240
    .end local v0    # "paramCount":I
    .end local v9    # "valueWidth":I
    .end local v10    # "ix":I
    .end local v11    # "slotPath":[I
    .end local v12    # "params":[J
    .end local v13    # "values":[J
    .end local v15    # "slotPathLen":I
    .end local v20    # "deviceID":I
    .end local v21    # "subid1":I
    .end local v22    # "paramWidth":I
    .restart local v4    # "deviceID":I
    .restart local v5    # "subid1":I
    :pswitch_18
    move/from16 v20, v4

    move/from16 v21, v5

    .end local v4    # "deviceID":I
    .end local v5    # "subid1":I
    .restart local v20    # "deviceID":I
    .restart local v21    # "subid1":I
    aget-byte v4, v2, v12

    and-int/2addr v4, v7

    aget-byte v5, v2, v9

    and-int/2addr v5, v7

    mul-int/lit16 v5, v5, 0x80

    add-int/2addr v4, v5

    .line 242
    .local v4, "val":I
    if-ne v6, v0, :cond_16

    .line 243
    invoke-virtual {v1, v4}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->setVolume(I)V

    goto :goto_e

    .line 244
    :cond_16
    const/4 v0, 0x2

    if-ne v6, v0, :cond_17

    .line 245
    invoke-virtual {v1, v4}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->setBalance(I)V

    goto :goto_e

    .line 246
    :cond_17
    const/4 v0, 0x3

    if-ne v6, v0, :cond_18

    .line 247
    invoke-virtual {v1, v4}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->setFineTuning(I)V

    goto :goto_e

    .line 248
    :cond_18
    const/4 v0, 0x4

    if-ne v6, v0, :cond_19

    .line 249
    invoke-virtual {v1, v4}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->setCoarseTuning(I)V

    .line 420
    .end local v4    # "val":I
    .end local v6    # "subid2":I
    .end local v20    # "deviceID":I
    .end local v21    # "subid1":I
    :cond_19
    :goto_e
    monitor-exit v3

    .line 421
    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_9
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_16
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_15
        :pswitch_11
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public activity()V
    .locals 8

    .line 765
    const-wide/16 v0, 0x0

    .line 766
    .local v0, "silent_samples":J
    iget-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->pusher_silent:Z

    if-eqz v2, :cond_0

    .line 768
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->pusher_silent:Z

    .line 769
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    if-eqz v2, :cond_0

    .line 771
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->ais:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    invoke-virtual {v2, v3}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->setInputStream(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)V

    .line 772
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    iget-wide v0, v2, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->silent_samples:J

    .line 775
    :cond_0
    iget-wide v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->sample_pos:J

    add-long/2addr v2, v0

    long-to-double v2, v2

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->samplerate:F

    float-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v4

    mul-double/2addr v2, v6

    double-to-long v2, v2

    iput-wide v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->msec_last_activity:J

    .line 777
    return-void
.end method

.method public close()V
    .locals 0

    .line 1145
    return-void
.end method

.method public getBalance()I
    .locals 6

    .line 989
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 990
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_balance:[D

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const-wide/high16 v4, 0x40d0000000000000L    # 16384.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    monitor-exit v0

    return v1

    .line 991
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCoarseTuning()I
    .locals 6

    .line 1001
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_coarse_tuning:[D

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const-wide/high16 v4, 0x40d0000000000000L    # 16384.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    monitor-exit v0

    return v1

    .line 1003
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFineTuning()I
    .locals 6

    .line 995
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 996
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_fine_tuning:[D

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const-wide/high16 v4, 0x40d0000000000000L    # 16384.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    monitor-exit v0

    return v1

    .line 997
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInputStream()Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .locals 1

    .line 928
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->ais:Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    return-object v0
.end method

.method public getMicrosecondPosition()J
    .locals 7

    .line 1133
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->pusher_silent:Z

    const-wide v1, 0x412e848000000000L    # 1000000.0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    if-eqz v0, :cond_0

    .line 1137
    iget-wide v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->sample_pos:J

    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    iget-wide v5, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->silent_samples:J

    add-long/2addr v3, v5

    long-to-double v3, v3

    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->samplerate:F

    float-to-double v5, v0

    div-double/2addr v1, v5

    mul-double/2addr v3, v1

    double-to-long v0, v3

    return-wide v0

    .line 1141
    :cond_0
    iget-wide v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->sample_pos:J

    long-to-double v3, v3

    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->samplerate:F

    float-to-double v5, v0

    div-double/2addr v1, v5

    mul-double/2addr v3, v1

    double-to-long v0, v3

    return-wide v0
.end method

.method public getVolume()I
    .locals 6

    .line 983
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 984
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_volume:[D

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const-wide/high16 v4, 0x40d0000000000000L    # 16384.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    monitor-exit v0

    return v1

    .line 985
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public globalParameterControlChange([I[J[J)V
    .locals 10
    .param p1, "slothpath"    # [I
    .param p2, "params"    # [J
    .param p3, "paramsvalue"    # [J

    .line 1008
    array-length v0, p1

    if-nez v0, :cond_0

    .line 1009
    return-void

    .line 1011
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1015
    const/4 v1, 0x0

    :try_start_0
    aget v2, p1, v1

    const/16 v3, 0x81

    if-ne v2, v3, :cond_1

    .line 1016
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_1

    .line 1017
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->reverb:Lcn/sherlock/com/sun/media/sound/SoftReverb;

    aget-wide v6, p2, v2

    aget-wide v8, p3, v2

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcn/sherlock/com/sun/media/sound/SoftReverb;->globalParameterControlChange([IJJ)V

    .line 1016
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1021
    .end local v2    # "i":I
    :cond_1
    aget v1, p1, v1

    const/16 v2, 0x82

    if-ne v1, v2, :cond_2

    .line 1022
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p3

    if-ge v1, v2, :cond_2

    .line 1023
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->chorus:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    aget-wide v5, p2, v1

    aget-wide v7, p3, v1

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->globalParameterControlChange([IJJ)V

    .line 1022
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1029
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 1030
    return-void

    .line 1029
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected processAudioBuffers()V
    .locals 36

    .line 443
    move-object/from16 v1, p0

    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    iget-wide v2, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->silent_samples:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 445
    iget-wide v2, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->sample_pos:J

    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    iget-wide v6, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->silent_samples:J

    add-long/2addr v2, v6

    iput-wide v2, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->sample_pos:J

    .line 446
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    iput-wide v4, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->silent_samples:J

    .line 449
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    array-length v2, v2

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x5

    if-ge v0, v2, :cond_2

    .line 450
    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    .line 455
    iget-object v2, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->clear()V

    .line 449
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    .end local v0    # "i":I
    :cond_2
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->isSilent()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 460
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v0, v0, v2

    iget-object v8, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v8, v8, v6

    invoke-virtual {v0, v8}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->swap(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 462
    :cond_3
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->isSilent()Z

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_4

    .line 464
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v0, v0, v8

    iget-object v9, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v9, v9, v5

    invoke-virtual {v0, v9}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->swap(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 466
    :cond_4
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->isSilent()Z

    move-result v0

    const/4 v9, 0x2

    if-nez v0, :cond_5

    .line 468
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v0, v0, v9

    iget-object v10, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v10, v10, v7

    invoke-virtual {v0, v10}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->swap(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 470
    :cond_5
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->isSilent()Z

    move-result v0

    if-nez v0, :cond_6

    .line 472
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v10, 0x6

    aget-object v0, v0, v10

    iget-object v10, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v4, v10, v4

    invoke-virtual {v0, v4}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->swap(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 474
    :cond_6
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->isSilent()Z

    move-result v0

    if-nez v0, :cond_7

    .line 476
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v4, 0x7

    aget-object v0, v0, v4

    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->swap(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 485
    :cond_7
    iget-object v3, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 487
    :try_start_0
    iget-wide v10, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->sample_pos:J

    long-to-double v10, v10

    iget v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->samplerate:F

    float-to-double v12, v0

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v14, v12

    mul-double/2addr v10, v14

    double-to-long v10, v10

    .line 489
    .local v10, "msec_pos":J
    invoke-direct {v1, v10, v11}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->processMessages(J)V

    .line 491
    iget-boolean v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->active_sensing_on:Z

    if-eqz v0, :cond_8

    .line 495
    iget-wide v12, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->msec_last_activity:J

    sub-long v12, v10, v12

    const-wide/32 v14, 0xf4240

    cmp-long v0, v12, v14

    if-lez v0, :cond_8

    .line 496
    iput-boolean v2, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->active_sensing_on:Z

    .line 497
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    array-length v4, v0

    move v12, v2

    :goto_1
    if-ge v12, v4, :cond_8

    aget-object v13, v0, v12

    .line 498
    .local v13, "c":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->allSoundOff()V

    .line 497
    .end local v13    # "c":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 503
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->voicestatus:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v4, v4

    if-ge v0, v4, :cond_a

    .line 504
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->voicestatus:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v4, :cond_9

    .line 505
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->voicestatus:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processControlLogic()V

    .line 503
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 506
    .end local v0    # "i":I
    :cond_a
    iget-wide v12, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->sample_pos:J

    iget v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffer_len:I

    int-to-long v14, v0

    add-long/2addr v12, v14

    iput-wide v12, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->sample_pos:J

    .line 508
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_volume:[D

    aget-wide v12, v0, v2

    .line 509
    .local v12, "volume":D
    move-wide v14, v12

    .line 510
    .local v14, "volume_left":D
    move-wide/from16 v16, v12

    .line 512
    .local v16, "volume_right":D
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_balance:[D

    aget-wide v18, v0, v2

    .line 513
    .local v18, "balance":D
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v18, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    if-lez v0, :cond_b

    .line 514
    sub-double v24, v20, v18

    mul-double v24, v24, v22

    mul-double v14, v14, v24

    move-wide/from16 v26, v16

    goto :goto_3

    .line 516
    :cond_b
    mul-double v24, v18, v22

    mul-double v16, v16, v24

    move-wide/from16 v26, v16

    .line 518
    .end local v16    # "volume_right":D
    .local v26, "volume_right":D
    :goto_3
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->chorus:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    invoke-interface {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->processControlLogic()V

    .line 519
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->reverb:Lcn/sherlock/com/sun/media/sound/SoftReverb;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftReverb;->processControlLogic()V

    .line 520
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->agc:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    invoke-interface {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->processControlLogic()V

    .line 522
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->cur_registeredMixers:[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;

    if-nez v0, :cond_c

    .line 523
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->registeredMixers:Ljava/util/Set;

    if-eqz v0, :cond_c

    .line 524
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->registeredMixers:Ljava/util/Set;

    .line 525
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;

    iput-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->cur_registeredMixers:[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;

    .line 526
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->registeredMixers:Ljava/util/Set;

    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->cur_registeredMixers:[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 530
    :cond_c
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->cur_registeredMixers:[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;

    .line 531
    .local v0, "act_registeredMixers":[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    if-eqz v0, :cond_d

    .line 532
    array-length v4, v0

    if-nez v4, :cond_d

    .line 533
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_4

    .line 535
    .end local v10    # "msec_pos":J
    .end local v12    # "volume":D
    .end local v18    # "balance":D
    :cond_d
    move-object v4, v0

    .end local v0    # "act_registeredMixers":[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    .local v4, "act_registeredMixers":[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 537
    if-eqz v4, :cond_1f

    .line 540
    iget-object v3, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v3, v3, v2

    .line 541
    .local v3, "leftbak":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    iget-object v10, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v10, v10, v8

    .line 542
    .local v10, "rightbak":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    iget-object v11, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v11, v11, v9

    .line 543
    .local v11, "monobak":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    iget-object v12, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v12, v12, v6

    .line 544
    .local v12, "delayleftbak":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    iget-object v13, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v13, v13, v5

    .line 545
    .local v13, "delayrightbak":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v17, v0, v7

    .line 547
    .local v17, "delaymonobak":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->getSize()I

    move-result v7

    .line 549
    .local v7, "bufferlen":I
    iget v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->nrofchannels:I

    new-array v5, v0, [[F

    .line 550
    .local v5, "cbuffer":[[F
    iget v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->nrofchannels:I

    new-array v6, v0, [[F

    .line 551
    .local v6, "obuffer":[[F
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v0

    aput-object v0, v6, v2

    .line 552
    iget v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->nrofchannels:I

    if-eq v0, v8, :cond_e

    .line 553
    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v0

    aput-object v0, v6, v8

    .line 555
    :cond_e
    array-length v0, v4

    move v9, v2

    :goto_5
    if-ge v9, v0, :cond_1e

    aget-object v8, v4, v9

    .line 559
    .local v8, "cmixer":Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    move/from16 v29, v0

    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    move-object/from16 v30, v4

    .end local v4    # "act_registeredMixers":[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    .local v30, "act_registeredMixers":[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    iget-object v4, v8, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v4, v4, v2

    aput-object v4, v0, v2

    .line 560
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    iget-object v4, v8, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/16 v28, 0x1

    aget-object v4, v4, v28

    aput-object v4, v0, v28

    .line 561
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    iget-object v4, v8, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/16 v25, 0x2

    aget-object v4, v4, v25

    aput-object v4, v0, v25

    .line 562
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    iget-object v4, v8, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/16 v24, 0x3

    aget-object v4, v4, v24

    aput-object v4, v0, v24

    .line 563
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    iget-object v4, v8, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/16 v19, 0x4

    aget-object v4, v4, v19

    aput-object v4, v0, v19

    .line 564
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    iget-object v4, v8, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/16 v18, 0x5

    aget-object v4, v4, v18

    aput-object v4, v0, v18

    .line 566
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->clear()V

    .line 567
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->clear()V

    .line 568
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->clear()V

    .line 570
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->isSilent()Z

    move-result v0

    if-nez v0, :cond_f

    .line 572
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v0, v0, v2

    iget-object v2, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->swap(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 574
    :cond_f
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->isSilent()Z

    move-result v0

    if-nez v0, :cond_10

    .line 576
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->swap(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 578
    :cond_10
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->isSilent()Z

    move-result v0

    if-nez v0, :cond_11

    .line 580
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->swap(Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 583
    :cond_11
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v0

    aput-object v0, v5, v2

    .line 584
    iget v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->nrofchannels:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_12

    .line 585
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v0

    aput-object v0, v5, v2

    .line 587
    :cond_12
    const/4 v0, 0x0

    .line 588
    .local v0, "hasactivevoices":Z
    const/4 v2, 0x0

    move/from16 v35, v2

    move v2, v0

    move/from16 v0, v35

    .local v0, "i":I
    .local v2, "hasactivevoices":Z
    :goto_6
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->voicestatus:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v4, v4

    if-ge v0, v4, :cond_15

    .line 589
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->voicestatus:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v4, :cond_13

    .line 590
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->voicestatus:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channelmixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    move-wide/from16 v31, v14

    .end local v14    # "volume_left":D
    .local v31, "volume_left":D
    iget-object v14, v8, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;->mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-ne v4, v14, :cond_14

    .line 591
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->voicestatus:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v0

    iget-object v14, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v4, v14}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processAudioLogic([Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 592
    const/4 v2, 0x1

    goto :goto_7

    .line 589
    .end local v31    # "volume_left":D
    .restart local v14    # "volume_left":D
    :cond_13
    move-wide/from16 v31, v14

    .line 588
    .end local v14    # "volume_left":D
    .restart local v31    # "volume_left":D
    :cond_14
    :goto_7
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v14, v31

    goto :goto_6

    .end local v31    # "volume_left":D
    .restart local v14    # "volume_left":D
    :cond_15
    move-wide/from16 v31, v14

    .line 596
    .end local v0    # "i":I
    .end local v14    # "volume_left":D
    .restart local v31    # "volume_left":D
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->isSilent()Z

    move-result v0

    if-nez v0, :cond_18

    .line 598
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v0

    .line 599
    .local v0, "mono":[F
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v14, 0x0

    aget-object v4, v4, v14

    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v4

    .line 600
    .local v4, "left":[F
    iget v14, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->nrofchannels:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_17

    .line 601
    iget-object v14, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v14

    .line 602
    .local v14, "right":[F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_8
    if-ge v15, v7, :cond_16

    .line 603
    aget v33, v0, v15

    .line 604
    .local v33, "v":F
    aget v34, v4, v15

    add-float v34, v34, v33

    aput v34, v4, v15

    .line 605
    aget v34, v14, v15

    add-float v34, v34, v33

    aput v34, v14, v15

    .line 602
    .end local v33    # "v":F
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 607
    .end local v14    # "right":[F
    .end local v15    # "i":I
    :cond_16
    goto :goto_a

    .line 610
    :cond_17
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_9
    if-ge v14, v7, :cond_18

    .line 611
    aget v15, v4, v14

    aget v33, v0, v14

    add-float v15, v15, v33

    aput v15, v4, v14

    .line 610
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 616
    .end local v0    # "mono":[F
    .end local v4    # "left":[F
    .end local v14    # "i":I
    :cond_18
    :goto_a
    iget-object v0, v8, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;->mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    const/4 v4, 0x0

    invoke-interface {v0, v5, v4, v7}, Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;->process([[FII)Z

    move-result v0

    if-nez v0, :cond_19

    .line 617
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 618
    :try_start_1
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->registeredMixers:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 619
    const/4 v0, 0x0

    iput-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->cur_registeredMixers:[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;

    .line 620
    monitor-exit v4

    goto :goto_b

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 623
    :cond_19
    :goto_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v4, v5

    if-ge v0, v4, :cond_1b

    .line 624
    aget-object v4, v5, v0

    .line 625
    .local v4, "cbuff":[F
    aget-object v14, v6, v0

    .line 626
    .local v14, "obuff":[F
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_d
    if-ge v15, v7, :cond_1a

    .line 627
    aget v33, v14, v15

    aget v34, v4, v15

    add-float v33, v33, v34

    aput v33, v14, v15

    .line 626
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 623
    .end local v4    # "cbuff":[F
    .end local v14    # "obuff":[F
    .end local v15    # "j":I
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 630
    .end local v0    # "i":I
    :cond_1b
    if-nez v2, :cond_1d

    .line 631
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 632
    :try_start_2
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->stoppedMixers:Ljava/util/Set;

    if-eqz v0, :cond_1c

    .line 633
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->stoppedMixers:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 634
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->stoppedMixers:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 635
    iget-object v0, v8, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;->mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-interface {v0}, Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;->stop()V

    .line 638
    :cond_1c
    monitor-exit v4

    goto :goto_e

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 555
    .end local v2    # "hasactivevoices":Z
    .end local v8    # "cmixer":Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    :cond_1d
    :goto_e
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v29

    move-object/from16 v4, v30

    move-wide/from16 v14, v31

    const/4 v2, 0x0

    const/4 v8, 0x1

    goto/16 :goto_5

    .line 643
    .end local v30    # "act_registeredMixers":[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    .end local v31    # "volume_left":D
    .local v4, "act_registeredMixers":[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    .local v14, "volume_left":D
    :cond_1e
    move-object/from16 v30, v4

    move-wide/from16 v31, v14

    .end local v4    # "act_registeredMixers":[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    .end local v14    # "volume_left":D
    .restart local v30    # "act_registeredMixers":[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    .restart local v31    # "volume_left":D
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v2, 0x0

    aput-object v3, v0, v2

    .line 644
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v2, 0x1

    aput-object v10, v0, v2

    .line 645
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v2, 0x2

    aput-object v11, v0, v2

    .line 646
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v2, 0x3

    aput-object v12, v0, v2

    .line 647
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v2, 0x4

    aput-object v13, v0, v2

    .line 648
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v2, 0x5

    aput-object v17, v0, v2

    goto :goto_f

    .line 537
    .end local v3    # "leftbak":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .end local v5    # "cbuffer":[[F
    .end local v6    # "obuffer":[[F
    .end local v7    # "bufferlen":I
    .end local v10    # "rightbak":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .end local v11    # "monobak":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .end local v12    # "delayleftbak":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .end local v13    # "delayrightbak":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .end local v17    # "delaymonobak":Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;
    .end local v30    # "act_registeredMixers":[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    .end local v31    # "volume_left":D
    .restart local v4    # "act_registeredMixers":[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    .restart local v14    # "volume_left":D
    :cond_1f
    move-object/from16 v30, v4

    move-wide/from16 v31, v14

    .line 652
    .end local v4    # "act_registeredMixers":[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    .end local v14    # "volume_left":D
    .restart local v30    # "act_registeredMixers":[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    .restart local v31    # "volume_left":D
    :goto_f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_10
    iget-object v2, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->voicestatus:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v2, v2

    if-ge v0, v2, :cond_21

    .line 653
    iget-object v2, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->voicestatus:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v2, :cond_20

    .line 654
    iget-object v2, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->voicestatus:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channelmixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-nez v2, :cond_20

    .line 655
    iget-object v2, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->voicestatus:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v2, v3}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->processAudioLogic([Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V

    .line 652
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 657
    .end local v0    # "i":I
    :cond_21
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->isSilent()Z

    move-result v0

    if-nez v0, :cond_24

    .line 659
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v0

    .line 660
    .local v0, "mono":[F
    iget-object v2, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v2

    .line 661
    .local v2, "left":[F
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->getSize()I

    move-result v3

    .line 662
    .local v3, "bufferlen":I
    iget v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->nrofchannels:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_23

    .line 663
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v4

    .line 664
    .local v4, "right":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    if-ge v5, v3, :cond_22

    .line 665
    aget v6, v0, v5

    .line 666
    .local v6, "v":F
    aget v7, v2, v5

    add-float/2addr v7, v6

    aput v7, v2, v5

    .line 667
    aget v7, v4, v5

    add-float/2addr v7, v6

    aput v7, v4, v5

    .line 664
    .end local v6    # "v":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 669
    .end local v4    # "right":[F
    .end local v5    # "i":I
    :cond_22
    goto :goto_13

    .line 672
    :cond_23
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    if-ge v4, v3, :cond_24

    .line 673
    aget v5, v2, v4

    aget v6, v0, v4

    add-float/2addr v5, v6

    aput v5, v2, v4

    .line 672
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 679
    .end local v0    # "mono":[F
    .end local v2    # "left":[F
    .end local v3    # "bufferlen":I
    .end local v4    # "i":I
    :cond_24
    :goto_13
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-boolean v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->chorus_on:Z

    if-eqz v0, :cond_25

    .line 680
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->chorus:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    invoke-interface {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->processAudio()V

    .line 682
    :cond_25
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-boolean v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->reverb_on:Z

    if-eqz v0, :cond_26

    .line 683
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->reverb:Lcn/sherlock/com/sun/media/sound/SoftReverb;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftReverb;->processAudio()V

    .line 685
    :cond_26
    iget v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->nrofchannels:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    .line 686
    move-wide/from16 v2, v26

    .end local v26    # "volume_right":D
    .local v2, "volume_right":D
    add-double v14, v31, v2

    div-double v14, v14, v22

    .end local v31    # "volume_left":D
    .restart local v14    # "volume_left":D
    goto :goto_14

    .line 685
    .end local v2    # "volume_right":D
    .end local v14    # "volume_left":D
    .restart local v26    # "volume_right":D
    .restart local v31    # "volume_left":D
    :cond_27
    move-wide/from16 v2, v26

    .end local v26    # "volume_right":D
    .restart local v2    # "volume_right":D
    move-wide/from16 v14, v31

    .line 689
    .end local v31    # "volume_left":D
    .restart local v14    # "volume_left":D
    :goto_14
    iget-wide v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->last_volume_left:D

    cmpl-double v0, v4, v14

    if-nez v0, :cond_2b

    iget-wide v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->last_volume_right:D

    cmpl-double v0, v4, v2

    if-eqz v0, :cond_28

    goto :goto_17

    .line 714
    :cond_28
    cmpl-double v0, v14, v20

    if-nez v0, :cond_29

    cmpl-double v0, v2, v20

    if-eqz v0, :cond_2e

    .line 715
    :cond_29
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v0

    .line 716
    .local v0, "left":[F
    iget-object v5, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v5

    .line 717
    .local v5, "right":[F
    iget-object v6, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->getSize()I

    move-result v4

    .line 719
    .local v4, "bufferlen":I
    mul-double v6, v14, v14

    double-to-float v6, v6

    .line 720
    .local v6, "amp":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_15
    if-ge v7, v4, :cond_2a

    .line 721
    aget v8, v0, v7

    mul-float/2addr v8, v6

    aput v8, v0, v7

    .line 720
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 722
    .end local v7    # "i":I
    :cond_2a
    iget v7, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->nrofchannels:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2e

    .line 723
    mul-double v7, v2, v2

    double-to-float v6, v7

    .line 724
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_16
    if-ge v7, v4, :cond_2e

    .line 725
    aget v8, v5, v7

    mul-float/2addr v8, v6

    aput v8, v5, v7

    .line 724
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 690
    .end local v0    # "left":[F
    .end local v4    # "bufferlen":I
    .end local v5    # "right":[F
    .end local v6    # "amp":F
    .end local v7    # "i":I
    :cond_2b
    :goto_17
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v0

    .line 691
    .restart local v0    # "left":[F
    iget-object v5, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v5

    .line 692
    .restart local v5    # "right":[F
    iget-object v6, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->getSize()I

    move-result v4

    .line 696
    .restart local v4    # "bufferlen":I
    iget-wide v6, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->last_volume_left:D

    iget-wide v8, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->last_volume_left:D

    mul-double/2addr v6, v8

    double-to-float v6, v6

    .line 697
    .restart local v6    # "amp":F
    mul-double v7, v14, v14

    float-to-double v9, v6

    sub-double/2addr v7, v9

    int-to-double v9, v4

    div-double/2addr v7, v9

    double-to-float v7, v7

    .line 698
    .local v7, "amp_delta":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_18
    if-ge v8, v4, :cond_2c

    .line 699
    add-float/2addr v6, v7

    .line 700
    aget v9, v0, v8

    mul-float/2addr v9, v6

    aput v9, v0, v8

    .line 698
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    .line 702
    .end local v8    # "i":I
    :cond_2c
    iget v8, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->nrofchannels:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2d

    .line 703
    iget-wide v8, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->last_volume_right:D

    iget-wide v10, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->last_volume_right:D

    mul-double/2addr v8, v10

    double-to-float v6, v8

    .line 704
    mul-double v26, v2, v2

    float-to-double v8, v6

    sub-double v26, v26, v8

    int-to-double v8, v4

    div-double v8, v26, v8

    double-to-float v7, v8

    .line 705
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_19
    if-ge v8, v4, :cond_2d

    .line 706
    add-float/2addr v6, v7

    .line 707
    aget v9, v5, v8

    float-to-double v9, v9

    mul-double/2addr v9, v2

    double-to-float v9, v9

    aput v9, v5, v8

    .line 705
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    .line 710
    .end local v8    # "i":I
    :cond_2d
    iput-wide v14, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->last_volume_left:D

    .line 711
    iput-wide v2, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->last_volume_right:D

    .line 713
    .end local v0    # "left":[F
    .end local v4    # "bufferlen":I
    .end local v5    # "right":[F
    .end local v6    # "amp":F
    .end local v7    # "amp_delta":F
    nop

    .line 731
    :cond_2e
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->isSilent()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    .line 732
    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->isSilent()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 736
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 737
    :try_start_3
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->midimessages:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    move v5, v0

    .line 738
    .local v5, "midimessages_size":I
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 740
    if-nez v5, :cond_30

    .line 742
    iget v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->pusher_silent_count:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->pusher_silent_count:I

    .line 743
    iget v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->pusher_silent_count:I

    const/4 v4, 0x5

    if-le v0, v4, :cond_30

    .line 745
    const/4 v0, 0x0

    iput v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->pusher_silent_count:I

    .line 746
    iget-object v4, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 747
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->pusher_silent:Z

    .line 748
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    if-eqz v0, :cond_2f

    .line 749
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->weakstream:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer$WeakAudioStream;->setInputStream(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)V

    .line 750
    :cond_2f
    monitor-exit v4

    goto :goto_1a

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 753
    .end local v5    # "midimessages_size":I
    :cond_30
    :goto_1a
    goto :goto_1b

    .line 738
    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 755
    :cond_31
    const/4 v0, 0x0

    iput v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->pusher_silent_count:I

    .line 757
    :goto_1b
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-boolean v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->agc_on:Z

    if-eqz v0, :cond_32

    .line 758
    iget-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->agc:Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;

    invoke-interface {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;->processAudio()V

    .line 760
    :cond_32
    return-void

    .line 535
    .end local v2    # "volume_right":D
    .end local v14    # "volume_left":D
    .end local v30    # "act_registeredMixers":[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    :catchall_4
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0
.end method

.method public processMessage(IIII)V
    .locals 3
    .param p1, "ch"    # I
    .param p2, "cmd"    # I
    .param p3, "data1"    # I
    .param p4, "data2"    # I

    .line 1078
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1079
    :try_start_0
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->activity()V

    .line 1080
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1082
    const/16 v0, 0xf0

    if-ne p2, v0, :cond_0

    .line 1083
    or-int v0, p2, p1

    .line 1084
    .local v0, "status":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1086
    :pswitch_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v1, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1087
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->active_sensing_on:Z

    .line 1088
    monitor-exit v1

    .line 1089
    goto :goto_0

    .line 1088
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1093
    :goto_0
    return-void

    .line 1096
    .end local v0    # "status":I
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    .line 1097
    .local v0, "channels":[Lcn/sherlock/com/sun/media/sound/SoftChannel;
    array-length v1, v0

    if-lt p1, v1, :cond_1

    .line 1098
    return-void

    .line 1099
    :cond_1
    aget-object v1, v0, p1

    .line 1101
    .local v1, "softchannel":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    .line 1124
    :sswitch_0
    mul-int/lit16 v2, p4, 0x80

    add-int/2addr v2, p3

    invoke-virtual {v1, v2}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->setPitchBend(I)V

    .line 1125
    goto :goto_1

    .line 1121
    :sswitch_1
    invoke-virtual {v1, p3}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->setChannelPressure(I)V

    .line 1122
    goto :goto_1

    .line 1118
    :sswitch_2
    invoke-virtual {v1, p3}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->programChange(I)V

    .line 1119
    goto :goto_1

    .line 1115
    :sswitch_3
    invoke-virtual {v1, p3, p4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1116
    goto :goto_1

    .line 1112
    :sswitch_4
    invoke-virtual {v1, p3, p4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->setPolyPressure(II)V

    .line 1113
    goto :goto_1

    .line 1103
    :sswitch_5
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->delay_midievent:I

    if-eqz v2, :cond_2

    .line 1104
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->delay_midievent:I

    invoke-virtual {v1, p3, p4, v2}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->noteOn(III)V

    goto :goto_1

    .line 1106
    :cond_2
    invoke-virtual {v1, p3, p4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->noteOn(II)V

    .line 1107
    goto :goto_1

    .line 1109
    :sswitch_6
    invoke-virtual {v1, p3, p4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->noteOff(II)V

    .line 1110
    nop

    .line 1130
    :goto_1
    return-void

    .line 1080
    .end local v0    # "channels":[Lcn/sherlock/com/sun/media/sound/SoftChannel;
    .end local v1    # "softchannel":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :pswitch_data_0
    .packed-switch 0xfe
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_6
        0x90 -> :sswitch_5
        0xa0 -> :sswitch_4
        0xb0 -> :sswitch_3
        0xc0 -> :sswitch_2
        0xd0 -> :sswitch_1
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method public processMessage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 1033
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 1034
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->processMessage([B)V

    .line 1035
    :cond_0
    instance-of v0, p1, Ljp/kshoji/javax/sound/midi/MidiMessage;

    if-eqz v0, :cond_1

    .line 1036
    move-object v0, p1

    check-cast v0, Ljp/kshoji/javax/sound/midi/MidiMessage;

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->processMessage(Ljp/kshoji/javax/sound/midi/MidiMessage;)V

    .line 1037
    :cond_1
    return-void
.end method

.method public processMessage(Ljp/kshoji/javax/sound/midi/MidiMessage;)V
    .locals 5
    .param p1, "message"    # Ljp/kshoji/javax/sound/midi/MidiMessage;

    .line 1040
    instance-of v0, p1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    if-eqz v0, :cond_0

    .line 1041
    move-object v0, p1

    check-cast v0, Ljp/kshoji/javax/sound/midi/ShortMessage;

    .line 1042
    .local v0, "sms":Ljp/kshoji/javax/sound/midi/ShortMessage;
    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/ShortMessage;->getChannel()I

    move-result v1

    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/ShortMessage;->getCommand()I

    move-result v2

    .line 1043
    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/ShortMessage;->getData1()I

    move-result v3

    invoke-virtual {v0}, Ljp/kshoji/javax/sound/midi/ShortMessage;->getData2()I

    move-result v4

    .line 1042
    invoke-virtual {p0, v1, v2, v3, v4}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->processMessage(IIII)V

    .line 1044
    return-void

    .line 1046
    .end local v0    # "sms":Ljp/kshoji/javax/sound/midi/ShortMessage;
    :cond_0
    invoke-virtual {p1}, Ljp/kshoji/javax/sound/midi/MidiMessage;->getMessage()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->processMessage([B)V

    .line 1047
    return-void
.end method

.method public processMessage([B)V
    .locals 6
    .param p1, "data"    # [B

    .line 1050
    const/4 v0, 0x0

    .line 1051
    .local v0, "status":I
    array-length v1, p1

    if-lez v1, :cond_0

    .line 1052
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v0, v1, 0xff

    .line 1054
    :cond_0
    const/16 v1, 0xf0

    if-ne v0, v1, :cond_1

    .line 1055
    invoke-direct {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->processSystemExclusiveMessage([B)V

    .line 1056
    return-void

    .line 1059
    :cond_1
    and-int/lit16 v1, v0, 0xf0

    .line 1060
    .local v1, "cmd":I
    and-int/lit8 v2, v0, 0xf

    .line 1064
    .local v2, "ch":I
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 1065
    aget-byte v3, p1, v4

    and-int/lit16 v3, v3, 0xff

    .local v3, "data1":I
    goto :goto_0

    .line 1067
    .end local v3    # "data1":I
    :cond_2
    const/4 v3, 0x0

    .line 1068
    .restart local v3    # "data1":I
    :goto_0
    array-length v4, p1

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    .line 1069
    aget-byte v4, p1, v5

    and-int/lit16 v4, v4, 0xff

    .local v4, "data2":I
    goto :goto_1

    .line 1071
    .end local v4    # "data2":I
    :cond_3
    const/4 v4, 0x0

    .line 1073
    .restart local v4    # "data2":I
    :goto_1
    invoke-virtual {p0, v2, v1, v3, v4}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->processMessage(IIII)V

    .line 1075
    return-void
.end method

.method public registerMixer(Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;)V
    .locals 7
    .param p1, "mixer"    # Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    .line 786
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->registeredMixers:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 787
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->registeredMixers:Ljava/util/Set;

    .line 788
    :cond_0
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;-><init>(Lcn/sherlock/com/sun/media/sound/SoftMainMixer;Lcn/sherlock/com/sun/media/sound/SoftMainMixer-IA;)V

    .line 789
    .local v0, "mixercontainer":Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;
    const/4 v2, 0x6

    new-array v2, v2, [Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    iput-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 790
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 791
    iget-object v3, v0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;->buffers:[Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->buffer_len:I

    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    .line 792
    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;-><init>(ILcn/sherlock/javax/sound/sampled/AudioFormat;)V

    aput-object v4, v3, v2

    .line 790
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 794
    .end local v2    # "i":I
    :cond_1
    iput-object p1, v0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;->mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    .line 795
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->registeredMixers:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 796
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->cur_registeredMixers:[Lcn/sherlock/com/sun/media/sound/SoftMainMixer$SoftChannelMixerContainer;

    .line 797
    return-void
.end method

.method public reset()V
    .locals 10

    .line 933
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v0, v0, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    .line 934
    .local v0, "channels":[Lcn/sherlock/com/sun/media/sound/SoftChannel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_2

    .line 935
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->allSoundOff()V

    .line 936
    aget-object v2, v0, v1

    invoke-virtual {v2, v3}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->resetAllControllers(Z)V

    .line 938
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->synth:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getGeneralMidiMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 939
    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 940
    aget-object v2, v0, v1

    const/16 v3, 0x3c00

    invoke-virtual {v2, v4, v3}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->programChange(II)V

    goto :goto_1

    .line 942
    :cond_0
    aget-object v2, v0, v1

    const/16 v3, 0x3c80

    invoke-virtual {v2, v4, v3}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->programChange(II)V

    goto :goto_1

    .line 944
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2, v4, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->programChange(II)V

    .line 934
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 946
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x3fff

    invoke-virtual {p0, v1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->setVolume(I)V

    .line 947
    const/16 v1, 0x2000

    invoke-virtual {p0, v1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->setBalance(I)V

    .line 948
    invoke-virtual {p0, v1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->setCoarseTuning(I)V

    .line 949
    invoke-virtual {p0, v1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->setFineTuning(I)V

    .line 951
    const/16 v1, 0x81

    filled-new-array {v1}, [I

    move-result-object v1

    new-array v2, v3, [J

    const-wide/16 v5, 0x0

    aput-wide v5, v2, v4

    new-array v7, v3, [J

    const-wide/16 v8, 0x4

    aput-wide v8, v7, v4

    invoke-virtual {p0, v1, v2, v7}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->globalParameterControlChange([I[J[J)V

    .line 954
    const/16 v1, 0x82

    filled-new-array {v1}, [I

    move-result-object v1

    new-array v2, v3, [J

    aput-wide v5, v2, v4

    new-array v3, v3, [J

    const-wide/16 v5, 0x2

    aput-wide v5, v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->globalParameterControlChange([I[J[J)V

    .line 956
    return-void
.end method

.method public setBalance(I)V
    .locals 6
    .param p1, "value"    # I

    .line 965
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 966
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_balance:[D

    int-to-double v2, p1

    const-wide/high16 v4, 0x40d0000000000000L    # 16384.0

    div-double/2addr v2, v4

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 967
    monitor-exit v0

    .line 968
    return-void

    .line 967
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCoarseTuning(I)V
    .locals 6
    .param p1, "value"    # I

    .line 977
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 978
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_coarse_tuning:[D

    int-to-double v2, p1

    const-wide/high16 v4, 0x40d0000000000000L    # 16384.0

    div-double/2addr v2, v4

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 979
    monitor-exit v0

    .line 980
    return-void

    .line 979
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFineTuning(I)V
    .locals 6
    .param p1, "value"    # I

    .line 971
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 972
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_fine_tuning:[D

    int-to-double v2, p1

    const-wide/high16 v4, 0x40d0000000000000L    # 16384.0

    div-double/2addr v2, v4

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 973
    monitor-exit v0

    .line 974
    return-void

    .line 973
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVolume(I)V
    .locals 6
    .param p1, "value"    # I

    .line 959
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 960
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->co_master_volume:[D

    int-to-double v2, p1

    const-wide/high16 v4, 0x40d0000000000000L    # 16384.0

    div-double/2addr v2, v4

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 961
    monitor-exit v0

    .line 962
    return-void

    .line 961
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopMixer(Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;)V
    .locals 1
    .param p1, "mixer"    # Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    .line 780
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->stoppedMixers:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->stoppedMixers:Ljava/util/Set;

    .line 782
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->stoppedMixers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 783
    return-void
.end method
