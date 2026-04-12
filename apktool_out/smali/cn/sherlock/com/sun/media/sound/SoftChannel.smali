.class public Lcn/sherlock/com/sun/media/sound/SoftChannel;
.super Ljava/lang/Object;
.source "SoftChannel.java"

# interfaces
.implements Ljp/kshoji/javax/sound/midi/MidiChannel;
.implements Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/com/sun/media/sound/SoftChannel$MidiControlObject;
    }
.end annotation


# static fields
.field private static final RPN_NULL_VALUE:I = 0x3fff

.field private static dontResetControls:[Z


# instance fields
.field private bank:I

.field protected cds_channelpressure_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

.field protected cds_control_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

.field protected cds_control_number:I

.field protected cds_polypressure_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

.field private channel:I

.field private channelpressure:I

.field private co_midi:[Lcn/sherlock/com/sun/media/sound/SoftControl;

.field private co_midi_cc:Lcn/sherlock/com/sun/media/sound/SoftControl;

.field private co_midi_cc_cc:[[D

.field private co_midi_channel_pressure:[D

.field private co_midi_nrpn:Lcn/sherlock/com/sun/media/sound/SoftControl;

.field co_midi_nrpn_nrpn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[D>;"
        }
    .end annotation
.end field

.field co_midi_nrpn_nrpn_i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private co_midi_pitch:[D

.field private co_midi_rpn:Lcn/sherlock/com/sun/media/sound/SoftControl;

.field co_midi_rpn_rpn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[D>;"
        }
    .end annotation
.end field

.field co_midi_rpn_rpn_i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private control_mutex:Ljava/lang/Object;

.field private controller:[I

.field protected current_director:Lcn/sherlock/com/sun/media/sound/ModelDirector;

.field protected current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

.field protected current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

.field private firstVoice:Z

.field protected keybasedcontroller_active:[[Z

.field protected keybasedcontroller_value:[[D

.field private lastVelocity:[I

.field private mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

.field private mono:Z

.field private mute:Z

.field private nrpn_control:I

.field private pitchbend:I

.field private play_delay:I

.field private play_noteNumber:I

.field private play_releasetriggered:Z

.field private play_velocity:I

.field private polypressure:[I

.field private portamento:Z

.field protected portamento_lastnote:[I

.field protected portamento_lastnote_ix:I

.field protected portamento_time:D

.field private prevVoiceID:I

.field private program:I

.field private rpn_control:I

.field private solo:Z

.field private solomute:Z

.field protected sustain:Z

.field private synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

.field protected tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

.field protected tuning_bank:I

.field protected tuning_program:I

.field private voiceNo:I

.field private voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;


# direct methods
.method static bridge synthetic -$$Nest$fgetco_midi_cc_cc(Lcn/sherlock/com/sun/media/sound/SoftChannel;)[[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_cc_cc:[[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetco_midi_channel_pressure(Lcn/sherlock/com/sun/media/sound/SoftChannel;)[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_channel_pressure:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetco_midi_pitch(Lcn/sherlock/com/sun/media/sound/SoftChannel;)[D
    .locals 0

    iget-object p0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_pitch:[D

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 44
    const/16 v0, 0x80

    new-array v0, v0, [Z

    sput-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 47
    sget-object v1, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    aput-boolean v2, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 50
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x20

    aput-boolean v1, v0, v2

    .line 51
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/4 v2, 0x7

    aput-boolean v1, v0, v2

    .line 52
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x8

    aput-boolean v1, v0, v2

    .line 53
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0xa

    aput-boolean v1, v0, v2

    .line 54
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0xb

    aput-boolean v1, v0, v2

    .line 55
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x5b

    aput-boolean v1, v0, v2

    .line 56
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x5c

    aput-boolean v1, v0, v2

    .line 57
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x5d

    aput-boolean v1, v0, v2

    .line 58
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x5e

    aput-boolean v1, v0, v2

    .line 59
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x5f

    aput-boolean v1, v0, v2

    .line 60
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x46

    aput-boolean v1, v0, v2

    .line 61
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x47

    aput-boolean v1, v0, v2

    .line 62
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x48

    aput-boolean v1, v0, v2

    .line 63
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x49

    aput-boolean v1, v0, v2

    .line 64
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x4a

    aput-boolean v1, v0, v2

    .line 65
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x4b

    aput-boolean v1, v0, v2

    .line 66
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x4c

    aput-boolean v1, v0, v2

    .line 67
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x4d

    aput-boolean v1, v0, v2

    .line 68
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x4e

    aput-boolean v1, v0, v2

    .line 69
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x4f

    aput-boolean v1, v0, v2

    .line 70
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x78

    aput-boolean v1, v0, v2

    .line 71
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x79

    aput-boolean v1, v0, v2

    .line 72
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x7a

    aput-boolean v1, v0, v2

    .line 73
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x7b

    aput-boolean v1, v0, v2

    .line 74
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x7c

    aput-boolean v1, v0, v2

    .line 75
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x7d

    aput-boolean v1, v0, v2

    .line 76
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x7e

    aput-boolean v1, v0, v2

    .line 77
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x7f

    aput-boolean v1, v0, v2

    .line 79
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/4 v2, 0x6

    aput-boolean v1, v0, v2

    .line 80
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x26

    aput-boolean v1, v0, v2

    .line 81
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x60

    aput-boolean v1, v0, v2

    .line 82
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x61

    aput-boolean v1, v0, v2

    .line 83
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x62

    aput-boolean v1, v0, v2

    .line 84
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x63

    aput-boolean v1, v0, v2

    .line 85
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x64

    aput-boolean v1, v0, v2

    .line 86
    sget-object v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    const/16 v2, 0x65

    aput-boolean v1, v0, v2

    .line 88
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;I)V
    .locals 7
    .param p1, "synth"    # Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;
    .param p2, "channel"    # I

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/16 v0, 0x3fff

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpn_control:I

    .line 92
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->nrpn_control:I

    .line 93
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_time:D

    .line 94
    const/16 v0, 0x80

    new-array v1, v0, [I

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote:[I

    .line 95
    const/4 v1, 0x0

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote_ix:I

    .line 96
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento:Z

    .line 97
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mono:Z

    .line 98
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mute:Z

    .line 99
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->solo:Z

    .line 100
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->solomute:Z

    .line 108
    new-array v2, v0, [I

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->polypressure:[I

    .line 109
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channelpressure:I

    .line 110
    new-array v2, v0, [I

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controller:[I

    .line 112
    const/4 v2, 0x1

    new-array v3, v2, [D

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_pitch:[D

    .line 113
    new-array v3, v2, [D

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_channel_pressure:[D

    .line 114
    new-instance v3, Lcn/sherlock/com/sun/media/sound/SoftTuning;

    invoke-direct {v3}, Lcn/sherlock/com/sun/media/sound/SoftTuning;-><init>()V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    .line 115
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning_bank:I

    .line 116
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning_program:I

    .line 117
    const/4 v3, 0x0

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 118
    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    .line 119
    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_director:Lcn/sherlock/com/sun/media/sound/ModelDirector;

    .line 122
    const/4 v4, -0x1

    iput v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_control_number:I

    .line 123
    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_control_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 124
    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_channelpressure_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 125
    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_polypressure_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 126
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->sustain:Z

    .line 127
    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    .line 128
    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_value:[[D

    .line 148
    new-array v4, v0, [Lcn/sherlock/com/sun/media/sound/SoftControl;

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi:[Lcn/sherlock/com/sun/media/sound/SoftControl;

    .line 150
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi:[Lcn/sherlock/com/sun/media/sound/SoftControl;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 151
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi:[Lcn/sherlock/com/sun/media/sound/SoftControl;

    new-instance v6, Lcn/sherlock/com/sun/media/sound/SoftChannel$MidiControlObject;

    invoke-direct {v6, p0, v3}, Lcn/sherlock/com/sun/media/sound/SoftChannel$MidiControlObject;-><init>(Lcn/sherlock/com/sun/media/sound/SoftChannel;Lcn/sherlock/com/sun/media/sound/SoftChannel-IA;)V

    aput-object v6, v5, v4

    .line 150
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    .end local v4    # "i":I
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v2

    aput v0, v3, v1

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_cc_cc:[[D

    .line 156
    new-instance v3, Lcn/sherlock/com/sun/media/sound/SoftChannel$1;

    invoke-direct {v3, p0}, Lcn/sherlock/com/sun/media/sound/SoftChannel$1;-><init>(Lcn/sherlock/com/sun/media/sound/SoftChannel;)V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_cc:Lcn/sherlock/com/sun/media/sound/SoftControl;

    .line 164
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_rpn_rpn_i:Ljava/util/Map;

    .line 165
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_rpn_rpn:Ljava/util/Map;

    .line 166
    new-instance v3, Lcn/sherlock/com/sun/media/sound/SoftChannel$2;

    invoke-direct {v3, p0}, Lcn/sherlock/com/sun/media/sound/SoftChannel$2;-><init>(Lcn/sherlock/com/sun/media/sound/SoftChannel;)V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_rpn:Lcn/sherlock/com/sun/media/sound/SoftControl;

    .line 180
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_nrpn_nrpn_i:Ljava/util/Map;

    .line 181
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_nrpn_nrpn:Ljava/util/Map;

    .line 182
    new-instance v3, Lcn/sherlock/com/sun/media/sound/SoftChannel$3;

    invoke-direct {v3, p0}, Lcn/sherlock/com/sun/media/sound/SoftChannel$3;-><init>(Lcn/sherlock/com/sun/media/sound/SoftChannel;)V

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_nrpn:Lcn/sherlock/com/sun/media/sound/SoftControl;

    .line 619
    new-array v0, v0, [I

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->lastVelocity:[I

    .line 621
    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->firstVoice:Z

    .line 622
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voiceNo:I

    .line 623
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->play_noteNumber:I

    .line 624
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->play_velocity:I

    .line 625
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->play_delay:I

    .line 626
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->play_releasetriggered:Z

    .line 212
    iput p2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    .line 213
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getVoices()[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    .line 214
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    .line 215
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getMainMixer()Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    .line 216
    iget-object v0, p1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    .line 217
    invoke-virtual {p0, v2}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->resetAllControllers(Z)V

    .line 218
    return-void
.end method

.method private createModelConnections(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;[I[I)[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .locals 23
    .param p1, "sid"    # Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    .param p2, "destination"    # [I
    .param p3, "range"    # [I

    .line 826
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v3, "conns":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_7

    .line 829
    aget v5, v2, v4

    .line 830
    .local v5, "d":I
    aget v6, p3, v4

    .line 831
    .local v6, "r":I
    const/4 v7, 0x0

    if-nez v5, :cond_0

    .line 832
    add-int/lit8 v8, v6, -0x40

    mul-int/lit8 v8, v8, 0x64

    int-to-double v8, v8

    .line 833
    .local v8, "scale":D
    new-instance v10, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v11, Lcn/sherlock/com/sun/media/sound/ModelSource;

    invoke-direct {v11, v1, v7, v7, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v12, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    new-instance v13, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v14, "osc"

    const-string/jumbo v15, "pitch"

    invoke-direct {v13, v14, v15}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v12, v13}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v10, v11, v8, v9, v12}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    .line 841
    .local v10, "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    .end local v8    # "scale":D
    .end local v10    # "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    :cond_0
    const-wide v8, 0x40c2c00000000000L    # 9600.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x4050000000000000L    # 64.0

    const/4 v14, 0x1

    if-ne v5, v14, :cond_2

    .line 845
    int-to-double v14, v6

    div-double/2addr v14, v12

    sub-double/2addr v14, v10

    mul-double/2addr v14, v8

    .line 847
    .local v14, "scale":D
    const-wide/16 v17, 0x0

    cmpl-double v17, v14, v17

    if-lez v17, :cond_1

    .line 848
    new-instance v8, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v9, Lcn/sherlock/com/sun/media/sound/ModelSource;

    const/4 v10, 0x1

    invoke-direct {v9, v1, v10, v7, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    neg-double v10, v14

    new-instance v12, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    sget-object v13, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_FILTER_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v12, v13}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v8, v9, v10, v11, v12}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    .local v8, "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    goto :goto_1

    .line 857
    .end local v8    # "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    :cond_1
    new-instance v8, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v9, Lcn/sherlock/com/sun/media/sound/ModelSource;

    invoke-direct {v9, v1, v7, v7, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v10, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    sget-object v11, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_FILTER_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v10, v11}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    invoke-direct {v8, v9, v14, v15, v10}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    .line 866
    .restart local v8    # "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    :goto_1
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    .end local v8    # "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .end local v14    # "scale":D
    :cond_2
    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    .line 869
    int-to-double v8, v6

    const-wide/high16 v10, 0x4050000000000000L    # 64.0

    div-double/2addr v8, v10

    .line 870
    .local v8, "scale":D
    new-instance v10, Lcn/sherlock/com/sun/media/sound/SoftChannel$4;

    invoke-direct {v10, v0, v8, v9}, Lcn/sherlock/com/sun/media/sound/SoftChannel$4;-><init>(Lcn/sherlock/com/sun/media/sound/SoftChannel;D)V

    .line 883
    .local v10, "mt":Lcn/sherlock/com/sun/media/sound/ModelTransform;
    new-instance v11, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v12, Lcn/sherlock/com/sun/media/sound/ModelSource;

    invoke-direct {v12, v1, v10}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;Lcn/sherlock/com/sun/media/sound/ModelTransform;)V

    new-instance v13, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    sget-object v14, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_GAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v13, v14}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide/high16 v14, -0x3f72000000000000L    # -960.0

    invoke-direct {v11, v12, v14, v15, v13}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    .line 886
    .local v11, "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    .end local v8    # "scale":D
    .end local v10    # "mt":Lcn/sherlock/com/sun/media/sound/ModelTransform;
    .end local v11    # "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    :cond_3
    const/4 v8, 0x3

    if-ne v5, v8, :cond_4

    .line 890
    int-to-double v8, v6

    const-wide/high16 v10, 0x4050000000000000L    # 64.0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    const-wide v10, 0x40c2c00000000000L    # 9600.0

    mul-double/2addr v8, v10

    .line 891
    .restart local v8    # "scale":D
    new-instance v10, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v11, Lcn/sherlock/com/sun/media/sound/ModelSource;

    sget-object v12, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_LFO1:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const/4 v13, 0x1

    invoke-direct {v11, v12, v7, v13, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v12, Lcn/sherlock/com/sun/media/sound/ModelSource;

    invoke-direct {v12, v1, v7, v7, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v13, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    sget-object v14, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_PITCH:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v13, v14}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-wide/from16 v20, v8

    move-object/from16 v22, v13

    invoke-direct/range {v17 .. v22}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    .line 903
    .local v10, "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    .end local v8    # "scale":D
    .end local v10    # "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    :cond_4
    const/4 v8, 0x4

    if-ne v5, v8, :cond_5

    .line 906
    int-to-double v8, v6

    const-wide/high16 v10, 0x4060000000000000L    # 128.0

    div-double/2addr v8, v10

    const-wide v10, 0x40a2c00000000000L    # 2400.0

    mul-double/2addr v8, v10

    .line 907
    .restart local v8    # "scale":D
    new-instance v10, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v11, Lcn/sherlock/com/sun/media/sound/ModelSource;

    sget-object v12, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_LFO1:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const/4 v13, 0x1

    invoke-direct {v11, v12, v7, v13, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v12, Lcn/sherlock/com/sun/media/sound/ModelSource;

    invoke-direct {v12, v1, v7, v7, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v13, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    sget-object v14, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_FILTER_FREQ:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v13, v14}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-wide/from16 v20, v8

    move-object/from16 v22, v13

    invoke-direct/range {v17 .. v22}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    .line 919
    .restart local v10    # "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    .end local v8    # "scale":D
    .end local v10    # "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    :cond_5
    const/4 v8, 0x5

    if-ne v5, v8, :cond_6

    .line 922
    int-to-double v8, v6

    const-wide v10, 0x405fc00000000000L    # 127.0

    div-double/2addr v8, v10

    .line 924
    .restart local v8    # "scale":D
    new-instance v10, Lcn/sherlock/com/sun/media/sound/SoftChannel$5;

    invoke-direct {v10, v0, v8, v9}, Lcn/sherlock/com/sun/media/sound/SoftChannel$5;-><init>(Lcn/sherlock/com/sun/media/sound/SoftChannel;D)V

    .line 932
    .local v10, "mt":Lcn/sherlock/com/sun/media/sound/ModelTransform;
    new-instance v17, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    new-instance v12, Lcn/sherlock/com/sun/media/sound/ModelSource;

    sget-object v11, Lcn/sherlock/com/sun/media/sound/ModelSource;->SOURCE_LFO1:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v12, v11, v7, v7, v7}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;ZZI)V

    new-instance v13, Lcn/sherlock/com/sun/media/sound/ModelSource;

    invoke-direct {v13, v1, v10}, Lcn/sherlock/com/sun/media/sound/ModelSource;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;Lcn/sherlock/com/sun/media/sound/ModelTransform;)V

    new-instance v7, Lcn/sherlock/com/sun/media/sound/ModelDestination;

    sget-object v11, Lcn/sherlock/com/sun/media/sound/ModelDestination;->DESTINATION_GAIN:Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    invoke-direct {v7, v11}, Lcn/sherlock/com/sun/media/sound/ModelDestination;-><init>(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;)V

    const-wide/high16 v14, -0x3f72000000000000L    # -960.0

    move-object/from16 v11, v17

    move-object/from16 v16, v7

    invoke-direct/range {v11 .. v16}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;-><init>(Lcn/sherlock/com/sun/media/sound/ModelSource;Lcn/sherlock/com/sun/media/sound/ModelSource;DLcn/sherlock/com/sun/media/sound/ModelDestination;)V

    move-object/from16 v7, v17

    .line 941
    .local v7, "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    .end local v5    # "d":I
    .end local v6    # "r":I
    .end local v7    # "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .end local v8    # "scale":D
    .end local v10    # "mt":Lcn/sherlock/com/sun/media/sound/ModelTransform;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 945
    .end local v4    # "i":I
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    return-object v4
.end method

.method private findFreeVoice(I)I
    .locals 8
    .param p1, "x"    # I

    .line 221
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 228
    return v0

    .line 230
    :cond_0
    move v1, p1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 231
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-nez v2, :cond_1

    .line 232
    return v1

    .line 230
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getVoiceAllocationMode()I

    move-result v1

    .line 237
    .local v1, "vmode":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 242
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    .line 243
    .local v2, "steal_channel":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 244
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    if-nez v4, :cond_4

    .line 245
    const/16 v4, 0x9

    if-ne v2, v4, :cond_3

    .line 246
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v3

    iget v2, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    goto :goto_2

    .line 248
    :cond_3
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v5, v5, v3

    iget v5, v5, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    if-eq v5, v4, :cond_4

    .line 249
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v3

    iget v4, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    if-le v4, v2, :cond_4

    .line 250
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v3

    iget v2, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    .line 243
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 256
    .end local v3    # "j":I
    :cond_5
    const/4 v3, -0x1

    .line 258
    .local v3, "voiceNo":I
    const/4 v4, 0x0

    .line 260
    .local v4, "v":Lcn/sherlock/com/sun/media/sound/SoftVoice;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v6, v6

    if-ge v5, v6, :cond_8

    .line 261
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v6, v6, v5

    iget v6, v6, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    if-ne v6, v2, :cond_7

    .line 262
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    if-nez v6, :cond_7

    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v6, v6, v5

    iget-boolean v6, v6, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    if-nez v6, :cond_7

    .line 263
    if-nez v4, :cond_6

    .line 264
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v6, v5

    .line 265
    move v3, v5

    .line 267
    :cond_6
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v6, v6, v5

    iget v6, v6, Lcn/sherlock/com/sun/media/sound/SoftVoice;->voiceID:I

    iget v7, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->voiceID:I

    if-ge v6, v7, :cond_7

    .line 268
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v6, v5

    .line 269
    move v3, v5

    .line 260
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 275
    .end local v5    # "j":I
    :cond_8
    if-ne v3, v0, :cond_b

    .line 276
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_4
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v5, v5

    if-ge v0, v5, :cond_b

    .line 277
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    if-ne v5, v2, :cond_a

    .line 278
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    if-nez v5, :cond_a

    .line 279
    if-nez v4, :cond_9

    .line 280
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v5, v0

    .line 281
    move v3, v0

    .line 283
    :cond_9
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/sherlock/com/sun/media/sound/SoftVoice;->voiceID:I

    iget v6, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->voiceID:I

    if-ge v5, v6, :cond_a

    .line 284
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v5, v0

    .line 285
    move v3, v0

    .line 276
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 292
    .end local v0    # "j":I
    :cond_b
    return v3

    .line 301
    .end local v2    # "steal_channel":I
    .end local v3    # "voiceNo":I
    .end local v4    # "v":Lcn/sherlock/com/sun/media/sound/SoftVoice;
    :cond_c
    const/4 v2, -0x1

    .line 303
    .local v2, "voiceNo":I
    const/4 v3, 0x0

    .line 305
    .local v3, "v":Lcn/sherlock/com/sun/media/sound/SoftVoice;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_5
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v5, v5

    if-ge v4, v5, :cond_f

    .line 306
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    if-nez v5, :cond_e

    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v5, v5, v4

    iget-boolean v5, v5, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    if-nez v5, :cond_e

    .line 307
    if-nez v3, :cond_d

    .line 308
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v5, v4

    .line 309
    move v2, v4

    .line 311
    :cond_d
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v5, v5, v4

    iget v5, v5, Lcn/sherlock/com/sun/media/sound/SoftVoice;->voiceID:I

    iget v6, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->voiceID:I

    if-ge v5, v6, :cond_e

    .line 312
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v5, v4

    .line 313
    move v2, v4

    .line 305
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 318
    .end local v4    # "j":I
    :cond_f
    if-ne v2, v0, :cond_12

    .line 320
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_6
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v4, v4

    if-ge v0, v4, :cond_12

    .line 321
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    if-nez v4, :cond_11

    .line 322
    if-nez v3, :cond_10

    .line 323
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v4, v0

    .line 324
    move v2, v0

    .line 326
    :cond_10
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v0

    iget v4, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->voiceID:I

    iget v5, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->voiceID:I

    if-ge v4, v5, :cond_11

    .line 327
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v4, v0

    .line 328
    move v2, v0

    .line 320
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 334
    .end local v0    # "j":I
    :cond_12
    return v2
.end method

.method private noteOff_internal(II)V
    .locals 9
    .param p1, "noteNumber"    # I
    .param p2, "velocity"    # I

    .line 557
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_0
    iget-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mono:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 560
    iget-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento:Z

    if-eqz v1, :cond_0

    .line 561
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote_ix:I

    const/16 v3, 0x7f

    if-eq v1, v3, :cond_0

    .line 562
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote:[I

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote_ix:I

    aput p1, v1, v3

    .line 563
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote_ix:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote_ix:I

    .line 568
    :cond_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->activity()V

    .line 569
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_3

    .line 570
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v1

    iget v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v1

    iget v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->note:I

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->releaseTriggered:Z

    if-nez v3, :cond_1

    .line 573
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v1

    invoke-virtual {v3, p2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->noteOff(I)V

    .line 576
    :cond_1
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    if-ne v3, p0, :cond_2

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v1

    iget v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_noteNumber:I

    if-ne v3, p1, :cond_2

    .line 577
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v1

    .line 578
    .local v3, "v":Lcn/sherlock/com/sun/media/sound/SoftVoice;
    iput-boolean v4, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_releaseTriggered:Z

    .line 579
    const/4 v5, 0x0

    iput-object v5, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    .line 580
    iput-object v5, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    .line 581
    const/4 v6, -0x1

    iput v6, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_voiceID:I

    .line 582
    iput v4, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_noteNumber:I

    .line 583
    iput v4, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_velocity:I

    .line 584
    iput-object v5, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_extendedConnectionBlocks:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 585
    iput-object v5, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channelmixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    .line 569
    .end local v3    # "v":Lcn/sherlock/com/sun/media/sound/SoftVoice;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 591
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    if-nez v1, :cond_7

    .line 592
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->program:I

    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->bank:I

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    .line 593
    invoke-virtual {v1, v3, v5, v6}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->findInstrument(III)Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    move-result-object v1

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 594
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    if-nez v1, :cond_4

    .line 595
    monitor-exit v0

    return-void

    .line 596
    :cond_4
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-eqz v1, :cond_5

    .line 597
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-virtual {v1, v3}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->stopMixer(Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;)V

    .line 598
    :cond_5
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->getSourceInstrument()Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    move-result-object v1

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    .line 599
    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getChannelMixer(Ljp/kshoji/javax/sound/midi/MidiChannel;Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    move-result-object v1

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    .line 600
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-eqz v1, :cond_6

    .line 601
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-virtual {v1, v3}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->registerMixer(Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;)V

    .line 602
    :cond_6
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    invoke-virtual {v1, p0, p0}, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->getDirector(Ljp/kshoji/javax/sound/midi/MidiChannel;Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;)Lcn/sherlock/com/sun/media/sound/ModelDirector;

    move-result-object v1

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_director:Lcn/sherlock/com/sun/media/sound/ModelDirector;

    .line 603
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->applyInstrumentCustomization()V

    .line 606
    :cond_7
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget v3, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voiceIDCounter:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voiceIDCounter:I

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->prevVoiceID:I

    .line 607
    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->firstVoice:Z

    .line 608
    iput v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voiceNo:I

    .line 610
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftTuning;->getTuning()[D

    move-result-object v1

    aget-wide v5, v1, p1

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v1, v5

    .line 611
    .local v1, "tunedKey":I
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->play_noteNumber:I

    .line 612
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->lastVelocity:[I

    aget v3, v3, p1

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->play_velocity:I

    .line 613
    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->play_releasetriggered:Z

    .line 614
    iput v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->play_delay:I

    .line 615
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_director:Lcn/sherlock/com/sun/media/sound/ModelDirector;

    invoke-interface {v2, v1, p2}, Lcn/sherlock/com/sun/media/sound/ModelDirector;->noteOff(II)V

    .line 617
    .end local v1    # "tunedKey":I
    monitor-exit v0

    .line 618
    return-void

    .line 617
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private noteOn_internal(III)V
    .locals 8
    .param p1, "noteNumber"    # I
    .param p2, "velocity"    # I
    .param p3, "delay"    # I

    .line 427
    if-nez p2, :cond_0

    .line 428
    const/16 v0, 0x40

    invoke-direct {p0, p1, v0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->noteOff_internal(II)V

    .line 429
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_0
    iget-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->sustain:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 434
    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->sustain:Z

    .line 435
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 436
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->sustain:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v1

    iget v4, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v1

    iget v4, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->note:I

    if-ne v4, p1, :cond_2

    .line 439
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v1

    iput-boolean v2, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->sustain:Z

    .line 440
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v1

    iput-boolean v3, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    .line 441
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->noteOff(I)V

    .line 435
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v1    # "i":I
    :cond_3
    iput-boolean v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->sustain:Z

    .line 447
    :cond_4
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->activity()V

    .line 449
    iget-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mono:Z

    if-eqz v1, :cond_a

    .line 450
    iget-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento:Z

    if-eqz v1, :cond_7

    .line 451
    const/4 v1, 0x0

    .line 452
    .local v1, "n_found":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v5, v5

    if-ge v4, v5, :cond_6

    .line 453
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v5, v5, v4

    iget-boolean v5, v5, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v5, v5, v4

    iget v5, v5, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v5, v5, v4

    iget-boolean v5, v5, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v5, v5, v4

    iget-boolean v5, v5, Lcn/sherlock/com/sun/media/sound/SoftVoice;->releaseTriggered:Z

    if-nez v5, :cond_5

    .line 456
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v5, v5, v4

    iput-boolean v3, v5, Lcn/sherlock/com/sun/media/sound/SoftVoice;->portamento:Z

    .line 457
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->setNote(I)V

    .line 458
    const/4 v1, 0x1

    .line 452
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 461
    .end local v4    # "i":I
    :cond_6
    if-eqz v1, :cond_7

    .line 462
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote:[I

    aput p1, v3, v2

    .line 463
    monitor-exit v0

    return-void

    .line 467
    .end local v1    # "n_found":Z
    :cond_7
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controller:[I

    const/16 v4, 0x54

    aget v1, v1, v4

    if-eqz v1, :cond_a

    .line 468
    const/4 v1, 0x0

    .line 469
    .restart local v1    # "n_found":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v6, v6

    if-ge v5, v6, :cond_9

    .line 470
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v6, v6, v5

    iget-boolean v6, v6, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v6, v6, v5

    iget v6, v6, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    iget v7, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v6, v6, v5

    iget-boolean v6, v6, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v6, v6, v5

    iget v6, v6, Lcn/sherlock/com/sun/media/sound/SoftVoice;->note:I

    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controller:[I

    aget v7, v7, v4

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v6, v6, v5

    iget-boolean v6, v6, Lcn/sherlock/com/sun/media/sound/SoftVoice;->releaseTriggered:Z

    if-nez v6, :cond_8

    .line 474
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v6, v6, v5

    iput-boolean v3, v6, Lcn/sherlock/com/sun/media/sound/SoftVoice;->portamento:Z

    .line 475
    iget-object v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v6, v6, v5

    invoke-virtual {v6, p1}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->setNote(I)V

    .line 476
    const/4 v1, 0x1

    .line 469
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 479
    .end local v5    # "i":I
    :cond_9
    invoke-virtual {p0, v4, v2}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 480
    if-eqz v1, :cond_a

    .line 481
    monitor-exit v0

    return-void

    .line 485
    .end local v1    # "n_found":Z
    :cond_a
    iget-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mono:Z

    if-eqz v1, :cond_b

    .line 486
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->allNotesOff()V

    .line 488
    :cond_b
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    if-nez v1, :cond_f

    .line 489
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->program:I

    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->bank:I

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    .line 490
    invoke-virtual {v1, v4, v5, v6}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->findInstrument(III)Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    move-result-object v1

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 491
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    if-nez v1, :cond_c

    .line 492
    monitor-exit v0

    return-void

    .line 493
    :cond_c
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-eqz v1, :cond_d

    .line 494
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-virtual {v1, v4}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->stopMixer(Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;)V

    .line 495
    :cond_d
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->getSourceInstrument()Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    move-result-object v1

    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    .line 496
    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v4

    invoke-virtual {v1, p0, v4}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getChannelMixer(Ljp/kshoji/javax/sound/midi/MidiChannel;Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    move-result-object v1

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    .line 497
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-eqz v1, :cond_e

    .line 498
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-virtual {v1, v4}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->registerMixer(Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;)V

    .line 499
    :cond_e
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    invoke-virtual {v1, p0, p0}, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->getDirector(Ljp/kshoji/javax/sound/midi/MidiChannel;Lcn/sherlock/com/sun/media/sound/ModelDirectedPlayer;)Lcn/sherlock/com/sun/media/sound/ModelDirector;

    move-result-object v1

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_director:Lcn/sherlock/com/sun/media/sound/ModelDirector;

    .line 500
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->applyInstrumentCustomization()V

    .line 502
    :cond_f
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget v4, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voiceIDCounter:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->voiceIDCounter:I

    iput v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->prevVoiceID:I

    .line 503
    iput-boolean v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->firstVoice:Z

    .line 504
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voiceNo:I

    .line 506
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftTuning;->getTuning()[D

    move-result-object v1

    aget-wide v3, v1, p1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v1, v3

    .line 507
    .local v1, "tunedKey":I
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->play_noteNumber:I

    .line 508
    iput p2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->play_velocity:I

    .line 509
    iput p3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->play_delay:I

    .line 510
    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->play_releasetriggered:Z

    .line 511
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->lastVelocity:[I

    aput p2, v2, p1

    .line 512
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_director:Lcn/sherlock/com/sun/media/sound/ModelDirector;

    invoke-interface {v2, v1, p2}, Lcn/sherlock/com/sun/media/sound/ModelDirector;->noteOn(II)V

    .line 544
    .end local v1    # "tunedKey":I
    monitor-exit v0

    .line 545
    return-void

    .line 544
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static restrict14Bit(I)I
    .locals 1
    .param p0, "value"    # I

    .line 206
    if-gez p0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 207
    :cond_0
    const/16 v0, 0x3f80

    if-le p0, v0, :cond_1

    return v0

    .line 208
    :cond_1
    return p0
.end method

.method private static restrict7Bit(I)I
    .locals 1
    .param p0, "value"    # I

    .line 199
    if-gez p0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 200
    :cond_0
    const/16 v0, 0x7f

    if-le p0, v0, :cond_1

    return v0

    .line 201
    :cond_1
    return p0
.end method

.method private setSoloMute(Z)V
    .locals 4
    .param p1, "mute"    # Z

    .line 1564
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1565
    :try_start_0
    iget-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->solomute:Z

    if-ne v1, p1, :cond_0

    .line 1566
    monitor-exit v0

    return-void

    .line 1567
    :cond_0
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->solomute:Z

    .line 1568
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1569
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    if-ne v2, v3, :cond_1

    .line 1570
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget-boolean v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->solomute:Z

    invoke-virtual {v2, v3}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->setSoloMute(Z)V

    .line 1568
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1571
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 1572
    return-void

    .line 1571
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public allNotesOff()V
    .locals 4

    .line 1467
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-interface {v0}, Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;->allNotesOff()V

    .line 1469
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1470
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1471
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->releaseTriggered:Z

    if-nez v2, :cond_1

    .line 1473
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->noteOff(I)V

    .line 1470
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1475
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 1476
    return-void

    .line 1475
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public allSoundOff()V
    .locals 4

    .line 1479
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-interface {v0}, Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;->allSoundOff()V

    .line 1481
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1482
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1483
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    if-ne v2, v3, :cond_1

    .line 1484
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->soundOff()V

    .line 1482
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1485
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 1486
    return-void

    .line 1485
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected applyInstrumentCustomization()V
    .locals 17

    .line 711
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_control_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_channelpressure_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_polypressure_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    if-nez v1, :cond_0

    .line 714
    return-void

    .line 717
    :cond_0
    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->getSourceInstrument()Lcn/sherlock/com/sun/media/sound/ModelInstrument;

    move-result-object v1

    .line 718
    .local v1, "src_instrument":Lcn/sherlock/com/sun/media/sound/ModelInstrument;
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/ModelInstrument;->getPerformers()[Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    move-result-object v2

    .line 719
    .local v2, "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    array-length v3, v2

    new-array v3, v3, [Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    .line 720
    .local v3, "new_performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_12

    .line 721
    aget-object v5, v2, v4

    .line 722
    .local v5, "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    new-instance v6, Lcn/sherlock/com/sun/media/sound/ModelPerformer;

    invoke-direct {v6}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;-><init>()V

    .line 723
    .local v6, "new_performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setName(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getExclusiveClass()I

    move-result v7

    invoke-virtual {v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setExclusiveClass(I)V

    .line 725
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyFrom()I

    move-result v7

    invoke-virtual {v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setKeyFrom(I)V

    .line 726
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getKeyTo()I

    move-result v7

    invoke-virtual {v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setKeyTo(I)V

    .line 727
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getVelFrom()I

    move-result v7

    invoke-virtual {v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setVelFrom(I)V

    .line 728
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getVelTo()I

    move-result v7

    invoke-virtual {v6, v7}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->setVelTo(I)V

    .line 729
    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 730
    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v7

    .line 731
    invoke-virtual {v5}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v8

    .line 730
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 732
    aput-object v6, v3, v4

    .line 734
    nop

    .line 735
    invoke-virtual {v6}, Lcn/sherlock/com/sun/media/sound/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v7

    .line 737
    .local v7, "connblocks":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;>;"
    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_control_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    if-eqz v8, :cond_6

    .line 738
    iget v8, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_control_number:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 739
    .local v8, "cc":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 740
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 741
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 742
    .local v10, "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v11

    .line 743
    .local v11, "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    const/4 v12, 0x0

    .line 744
    .local v12, "removeok":Z
    if-eqz v11, :cond_3

    .line 745
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    array-length v14, v11

    if-ge v13, v14, :cond_2

    .line 746
    aget-object v14, v11, v13

    .line 747
    .local v14, "src":Lcn/sherlock/com/sun/media/sound/ModelSource;
    invoke-virtual {v14}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v15

    invoke-virtual {v15}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v2

    .end local v2    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .local v16, "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    const-string v2, "midi_cc"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 748
    invoke-virtual {v14}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 749
    const/4 v12, 0x1

    .line 745
    .end local v14    # "src":Lcn/sherlock/com/sun/media/sound/ModelSource;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v16

    goto :goto_2

    .end local v16    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .restart local v2    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    :cond_2
    move-object/from16 v16, v2

    .end local v2    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .restart local v16    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    goto :goto_3

    .line 744
    .end local v13    # "j":I
    .end local v16    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .restart local v2    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    :cond_3
    move-object/from16 v16, v2

    .line 753
    .end local v2    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .restart local v16    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    :goto_3
    if-eqz v12, :cond_4

    .line 754
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 755
    .end local v10    # "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .end local v11    # "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .end local v12    # "removeok":Z
    :cond_4
    move-object/from16 v2, v16

    goto :goto_1

    .line 756
    .end local v16    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .restart local v2    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    :cond_5
    move-object/from16 v16, v2

    .end local v2    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .restart local v16    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4
    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_control_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    array-length v10, v10

    if-ge v2, v10, :cond_7

    .line 757
    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_control_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    aget-object v10, v10, v2

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 737
    .end local v8    # "cc":Ljava/lang/String;
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;>;"
    .end local v16    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .local v2, "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    :cond_6
    move-object/from16 v16, v2

    .line 760
    .end local v2    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .restart local v16    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    :cond_7
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_polypressure_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    const-string v8, "midi"

    if-eqz v2, :cond_c

    .line 761
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 762
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;>;"
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 763
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 764
    .local v9, "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v10

    .line 765
    .local v10, "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    const/4 v11, 0x0

    .line 766
    .local v11, "removeok":Z
    if-eqz v10, :cond_9

    .line 767
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_6
    array-length v13, v10

    if-ge v12, v13, :cond_9

    .line 768
    aget-object v13, v10, v12

    .line 769
    .local v13, "src":Lcn/sherlock/com/sun/media/sound/ModelSource;
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v14

    invoke-virtual {v14}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 771
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v14

    invoke-virtual {v14}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v14

    .line 770
    const-string/jumbo v15, "poly_pressure"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 772
    const/4 v11, 0x1

    .line 767
    .end local v13    # "src":Lcn/sherlock/com/sun/media/sound/ModelSource;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 776
    .end local v12    # "j":I
    :cond_9
    if-eqz v11, :cond_a

    .line 777
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 778
    .end local v9    # "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .end local v10    # "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .end local v11    # "removeok":Z
    :cond_a
    goto :goto_5

    .line 779
    :cond_b
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_7
    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_polypressure_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    array-length v10, v10

    if-ge v9, v10, :cond_c

    .line 780
    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_polypressure_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    aget-object v10, v10, v9

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 784
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;>;"
    .end local v9    # "j":I
    :cond_c
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_channelpressure_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    if-eqz v2, :cond_11

    .line 785
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 786
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;>;"
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 787
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 788
    .local v9, "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    invoke-virtual {v9}, Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;->getSources()[Lcn/sherlock/com/sun/media/sound/ModelSource;

    move-result-object v10

    .line 789
    .restart local v10    # "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    const/4 v11, 0x0

    .line 790
    .restart local v11    # "removeok":Z
    if-eqz v10, :cond_e

    .line 791
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_9
    array-length v13, v10

    if-ge v12, v13, :cond_e

    .line 792
    aget-object v13, v10, v12

    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/ModelSource;->getIdentifier()Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    move-result-object v13

    .line 793
    .local v13, "srcid":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 794
    invoke-virtual {v13}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v14

    const-string v15, "channel_pressure"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 795
    const/4 v11, 0x1

    .line 791
    .end local v13    # "srcid":Lcn/sherlock/com/sun/media/sound/ModelIdentifier;
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 799
    .end local v12    # "j":I
    :cond_e
    if-eqz v11, :cond_f

    .line 800
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 801
    .end local v9    # "conn":Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .end local v10    # "sources":[Lcn/sherlock/com/sun/media/sound/ModelSource;
    .end local v11    # "removeok":Z
    :cond_f
    goto :goto_8

    .line 802
    :cond_10
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_a
    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_channelpressure_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    array-length v9, v9

    if-ge v8, v9, :cond_11

    .line 803
    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_channelpressure_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    aget-object v9, v9, v8

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 720
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;>;"
    .end local v5    # "performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v6    # "new_performer":Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v7    # "connblocks":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;>;"
    .end local v8    # "j":I
    :cond_11
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v16

    goto/16 :goto_0

    .end local v16    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .local v2, "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    :cond_12
    move-object/from16 v16, v2

    .line 808
    .end local v2    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    .end local v4    # "i":I
    .restart local v16    # "performers":[Lcn/sherlock/com/sun/media/sound/ModelPerformer;
    new-instance v2, Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    invoke-direct {v2, v1, v3}, Lcn/sherlock/com/sun/media/sound/SoftInstrument;-><init>(Lcn/sherlock/com/sun/media/sound/ModelInstrument;[Lcn/sherlock/com/sun/media/sound/ModelPerformer;)V

    iput-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 810
    return-void
.end method

.method public controlChange(II)V
    .locals 9
    .param p1, "controller"    # I
    .param p2, "value"    # I

    .line 1059
    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->restrict7Bit(I)I

    move-result p1

    .line 1060
    invoke-static {p2}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->restrict7Bit(I)I

    move-result p2

    .line 1061
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-interface {v0, p1, p2}, Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;->controlChange(II)V

    .line 1064
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1065
    const/16 v1, 0x7f

    const/16 v2, 0x40

    const/16 v3, 0x3fff

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_a

    .line 1214
    :sswitch_0
    :try_start_0
    invoke-virtual {p0, v5}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->setMono(Z)V

    .line 1215
    goto/16 :goto_a

    .line 1210
    :sswitch_1
    if-ne p2, v4, :cond_19

    .line 1211
    invoke-virtual {p0, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->setMono(Z)V

    goto/16 :goto_a

    .line 1207
    :sswitch_2
    invoke-virtual {p0, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->setOmni(Z)V

    .line 1208
    goto/16 :goto_a

    .line 1204
    :sswitch_3
    invoke-virtual {p0, v5}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->setOmni(Z)V

    .line 1205
    goto/16 :goto_a

    .line 1201
    :sswitch_4
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->allNotesOff()V

    .line 1202
    goto/16 :goto_a

    .line 1198
    :sswitch_5
    if-lt p2, v2, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual {p0, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->localControl(Z)Z

    .line 1199
    goto/16 :goto_a

    .line 1195
    :sswitch_6
    if-ne p2, v1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    invoke-virtual {p0, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->resetAllControllers(Z)V

    .line 1196
    goto/16 :goto_a

    .line 1192
    :sswitch_7
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->allSoundOff()V

    .line 1193
    goto/16 :goto_a

    .line 1188
    :sswitch_8
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpn_control:I

    and-int/2addr v1, v2

    shl-int/lit8 v2, p2, 0x7

    add-int/2addr v1, v2

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpn_control:I

    .line 1189
    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->nrpn_control:I

    .line 1190
    goto/16 :goto_a

    .line 1184
    :sswitch_9
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpn_control:I

    and-int/lit16 v1, v1, 0x3f80

    add-int/2addr v1, p2

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpn_control:I

    .line 1185
    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->nrpn_control:I

    .line 1186
    goto/16 :goto_a

    .line 1180
    :sswitch_a
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->nrpn_control:I

    and-int/2addr v1, v2

    shl-int/lit8 v2, p2, 0x7

    add-int/2addr v1, v2

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->nrpn_control:I

    .line 1181
    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpn_control:I

    .line 1182
    goto/16 :goto_a

    .line 1176
    :sswitch_b
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->nrpn_control:I

    and-int/lit16 v1, v1, 0x3f80

    add-int/2addr v1, p2

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->nrpn_control:I

    .line 1177
    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpn_control:I

    .line 1178
    goto/16 :goto_a

    .line 1153
    :sswitch_c
    if-lt p2, v2, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v5

    .line 1154
    .local v1, "on":Z
    :goto_2
    if-eqz v1, :cond_5

    .line 1155
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 1156
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iget v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    if-ne v3, v6, :cond_4

    .line 1158
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iput-boolean v4, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->sostenuto:Z

    .line 1155
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1162
    .end local v2    # "i":I
    :cond_5
    if-nez v1, :cond_19

    .line 1163
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 1164
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->sostenuto:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iget v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    if-ne v3, v6, :cond_6

    .line 1166
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iput-boolean v5, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->sostenuto:Z

    .line 1167
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    if-nez v3, :cond_6

    .line 1168
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iput-boolean v4, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    .line 1169
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    invoke-virtual {v3, v5}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->noteOff(I)V

    .line 1163
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v2    # "i":I
    :cond_7
    goto/16 :goto_a

    .line 1144
    .end local v1    # "on":Z
    :sswitch_d
    if-lt p2, v2, :cond_8

    goto :goto_5

    :cond_8
    move v4, v5

    :goto_5
    iput-boolean v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento:Z

    .line 1145
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote:[I

    const/4 v2, -0x1

    aput v2, v1, v5

    .line 1150
    iput v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote_ix:I

    .line 1151
    goto/16 :goto_a

    .line 1121
    :sswitch_e
    if-lt p2, v2, :cond_9

    move v1, v4

    goto :goto_6

    :cond_9
    move v1, v5

    .line 1122
    .restart local v1    # "on":Z
    :goto_6
    iget-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->sustain:Z

    if-eq v2, v1, :cond_19

    .line 1123
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->sustain:Z

    .line 1124
    if-nez v1, :cond_c

    .line 1125
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v3, v3

    if-ge v2, v3, :cond_b

    .line 1126
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->sustain:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iget v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    if-ne v3, v6, :cond_a

    .line 1128
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iput-boolean v5, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->sustain:Z

    .line 1129
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    if-nez v3, :cond_a

    .line 1130
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iput-boolean v4, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->on:Z

    .line 1131
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    invoke-virtual {v3, v5}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->noteOff(I)V

    .line 1125
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .end local v2    # "i":I
    :cond_b
    goto/16 :goto_a

    .line 1136
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v3, v3

    if-ge v2, v3, :cond_e

    .line 1137
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iget v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    if-ne v3, v4, :cond_d

    .line 1138
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->redamp()V

    .line 1136
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .end local v2    # "i":I
    :cond_e
    goto/16 :goto_a

    .line 1088
    .end local v1    # "on":Z
    :sswitch_f
    const/4 v1, 0x0

    .line 1089
    .local v1, "val":I
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->nrpn_control:I

    if-eq v2, v3, :cond_f

    .line 1090
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_nrpn_nrpn_i:Ljava/util/Map;

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->nrpn_control:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1091
    .local v2, "val_i":[I
    if-eqz v2, :cond_f

    .line 1092
    aget v4, v2, v5

    move v1, v4

    .line 1094
    .end local v2    # "val_i":[I
    :cond_f
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpn_control:I

    if-eq v2, v3, :cond_10

    .line 1095
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_rpn_rpn_i:Ljava/util/Map;

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpn_control:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1096
    .restart local v2    # "val_i":[I
    if-eqz v2, :cond_10

    .line 1097
    aget v4, v2, v5

    move v1, v4

    .line 1100
    .end local v2    # "val_i":[I
    :cond_10
    const/4 v2, 0x6

    if-ne p1, v2, :cond_11

    .line 1101
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v4, p2, 0x7

    add-int v1, v2, v4

    goto :goto_9

    .line 1102
    :cond_11
    const/16 v2, 0x26

    if-ne p1, v2, :cond_12

    .line 1103
    and-int/lit16 v2, v1, 0x3f80

    add-int v1, v2, p2

    goto :goto_9

    .line 1104
    :cond_12
    const/16 v2, 0x61

    const/16 v4, 0x60

    if-eq p1, v4, :cond_13

    if-ne p1, v2, :cond_17

    .line 1105
    :cond_13
    const/4 v6, 0x1

    .line 1106
    .local v6, "step":I
    iget v7, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpn_control:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_14

    iget v7, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpn_control:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_14

    iget v7, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpn_control:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_15

    .line 1107
    :cond_14
    const/16 v6, 0x80

    .line 1108
    :cond_15
    if-ne p1, v4, :cond_16

    .line 1109
    add-int/2addr v1, v6

    .line 1110
    :cond_16
    if-ne p1, v2, :cond_17

    .line 1111
    sub-int/2addr v1, v6

    .line 1114
    .end local v6    # "step":I
    :cond_17
    :goto_9
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->nrpn_control:I

    if-eq v2, v3, :cond_18

    .line 1115
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->nrpn_control:I

    invoke-virtual {p0, v2, v1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->nrpnChange(II)V

    .line 1116
    :cond_18
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpn_control:I

    if-eq v2, v3, :cond_19

    .line 1117
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpn_control:I

    invoke-virtual {p0, v2, v1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpnChange(II)V

    goto :goto_a

    .line 1076
    .end local v1    # "val":I
    :sswitch_10
    int-to-double v1, p2

    const-wide/high16 v3, 0x4060000000000000L    # 128.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    neg-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    .line 1077
    .local v1, "x":D
    const-wide v3, 0x40f86a0000000000L    # 100000.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v6

    .line 1079
    .end local v1    # "x":D
    .local v3, "x":D
    div-double/2addr v3, v6

    .line 1080
    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v1

    .line 1081
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getControlRate()F

    move-result v1

    float-to-double v1, v1

    div-double/2addr v3, v1

    .line 1082
    iput-wide v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_time:D

    .line 1083
    nop

    .line 1221
    .end local v3    # "x":D
    :cond_19
    :goto_a
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_cc_cc:[[D

    aget-object v1, v1, p1

    int-to-double v2, p2

    const-wide/high16 v6, 0x3f80000000000000L    # 0.0078125

    mul-double/2addr v2, v6

    aput-wide v2, v1, v5

    .line 1223
    if-nez p1, :cond_1a

    .line 1224
    shl-int/lit8 v1, p2, 0x7

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->bank:I

    .line 1225
    monitor-exit v0

    return-void

    .line 1228
    :cond_1a
    const/16 v1, 0x20

    if-ne p1, v1, :cond_1b

    .line 1229
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->bank:I

    and-int/lit16 v1, v1, 0x3f80

    add-int/2addr v1, p2

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->bank:I

    .line 1230
    monitor-exit v0

    return-void

    .line 1233
    :cond_1b
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controller:[I

    aput p2, v2, p1

    .line 1234
    if-ge p1, v1, :cond_1c

    .line 1235
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controller:[I

    add-int/lit8 v2, p1, 0x20

    aput v5, v1, v2

    .line 1237
    :cond_1c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v2, v2

    if-ge v1, v2, :cond_1e

    .line 1238
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v2, :cond_1d

    .line 1239
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->controlChange(II)V

    .line 1237
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1241
    .end local v1    # "i":I
    :cond_1e
    monitor-exit v0

    .line 1242
    return-void

    .line 1241
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_10
        0x6 -> :sswitch_f
        0x26 -> :sswitch_f
        0x40 -> :sswitch_e
        0x41 -> :sswitch_d
        0x42 -> :sswitch_c
        0x60 -> :sswitch_f
        0x61 -> :sswitch_f
        0x62 -> :sswitch_b
        0x63 -> :sswitch_a
        0x64 -> :sswitch_9
        0x65 -> :sswitch_8
        0x78 -> :sswitch_7
        0x79 -> :sswitch_6
        0x7a -> :sswitch_5
        0x7b -> :sswitch_4
        0x7c -> :sswitch_3
        0x7d -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method public controlChangePerNote(III)V
    .locals 7
    .param p1, "noteNumber"    # I
    .param p2, "controller"    # I
    .param p3, "value"    # I

    .line 1014
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    const/16 v1, 0x80

    if-nez v0, :cond_0

    .line 1015
    new-array v0, v1, [[Z

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    .line 1016
    new-array v0, v1, [[D

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_value:[[D

    .line 1018
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    aget-object v0, v0, p1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    new-array v3, v1, [Z

    aput-object v3, v0, p1

    .line 1020
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    aget-object v0, v0, p1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1021
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_value:[[D

    new-array v1, v1, [D

    aput-object v1, v0, p1

    .line 1022
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_value:[[D

    aget-object v0, v0, p1

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([DD)V

    .line 1025
    :cond_1
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p3, v0, :cond_2

    .line 1026
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    aget-object v3, v3, p1

    aput-boolean v2, v3, p2

    goto :goto_0

    .line 1028
    :cond_2
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    aget-object v2, v2, p1

    aput-boolean v1, v2, p2

    .line 1029
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_value:[[D

    aget-object v2, v2, p1

    int-to-double v3, p3

    const-wide/high16 v5, 0x4060000000000000L    # 128.0

    div-double/2addr v3, v5

    aput-wide v3, v2, p2

    .line 1032
    :goto_0
    const/16 v2, 0x78

    if-ge p2, v2, :cond_5

    .line 1033
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 1034
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v2, :cond_3

    .line 1035
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2, v0}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->controlChange(II)V

    .line 1033
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_4
    goto :goto_4

    .line 1036
    :cond_5
    if-ne p2, v2, :cond_8

    .line 1037
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 1038
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v3, :cond_6

    .line 1039
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1, v0}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->rpnChange(II)V

    .line 1037
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    :cond_7
    goto :goto_4

    .line 1040
    :cond_8
    const/16 v1, 0x79

    if-ne p2, v1, :cond_a

    .line 1041
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    .line 1042
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v2, :cond_9

    .line 1043
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->rpnChange(II)V

    .line 1041
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1046
    .end local v1    # "i":I
    :cond_a
    :goto_4
    return-void
.end method

.method public getChannelPressure()I
    .locals 2

    .line 705
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 706
    :try_start_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channelpressure:I

    monitor-exit v0

    return v1

    .line 707
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getControlPerNote(II)I
    .locals 5
    .param p1, "noteNumber"    # I
    .param p2, "controller"    # I

    .line 1049
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1050
    return v1

    .line 1051
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 1052
    return v1

    .line 1053
    :cond_1
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    if-nez v0, :cond_2

    .line 1054
    return v1

    .line 1055
    :cond_2
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_value:[[D

    aget-object v0, v0, p1

    aget-wide v1, v0, p2

    const-wide/high16 v3, 0x4060000000000000L    # 128.0

    mul-double/2addr v1, v3

    double-to-int v0, v1

    return v0
.end method

.method public getController(I)I
    .locals 2
    .param p1, "controller"    # I

    .line 1245
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1248
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controller:[I

    aget v1, v1, p1

    and-int/lit8 v1, v1, 0x7f

    monitor-exit v0

    return v1

    .line 1249
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMono()Z
    .locals 2

    .line 1502
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1503
    :try_start_0
    iget-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mono:Z

    monitor-exit v0

    return v1

    .line 1504
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMute()Z
    .locals 2

    .line 1530
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1531
    :try_start_0
    iget-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mute:Z

    monitor-exit v0

    return v1

    .line 1532
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOmni()Z
    .locals 1

    .line 1515
    const/4 v0, 0x0

    return v0
.end method

.method public getPitchBend()I
    .locals 2

    .line 1301
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1302
    :try_start_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->pitchbend:I

    monitor-exit v0

    return v1

    .line 1303
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPolyPressure(I)I
    .locals 2
    .param p1, "noteNumber"    # I

    .line 684
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->polypressure:[I

    aget v1, v1, p1

    monitor-exit v0

    return v1

    .line 686
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProgram()I
    .locals 2

    .line 1281
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1282
    :try_start_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->program:I

    monitor-exit v0

    return v1

    .line 1283
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSolo()Z
    .locals 2

    .line 1575
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1576
    :try_start_0
    iget-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->solo:Z

    monitor-exit v0

    return v1

    .line 1577
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected initVoice(Lcn/sherlock/com/sun/media/sound/SoftVoice;Lcn/sherlock/com/sun/media/sound/SoftPerformer;IIII[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;Z)V
    .locals 18
    .param p1, "voice"    # Lcn/sherlock/com/sun/media/sound/SoftVoice;
    .param p2, "p"    # Lcn/sherlock/com/sun/media/sound/SoftPerformer;
    .param p3, "voiceID"    # I
    .param p4, "noteNumber"    # I
    .param p5, "velocity"    # I
    .param p6, "delay"    # I
    .param p7, "connectionBlocks"    # [Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;
    .param p8, "channelmixer"    # Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;
    .param p9, "releaseTriggered"    # Z

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    iget-boolean v9, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v9, :cond_2

    .line 344
    iput-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    .line 345
    iput-object v2, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    .line 346
    iput v3, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_voiceID:I

    .line 347
    iput v4, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_noteNumber:I

    .line 348
    iput v5, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_velocity:I

    .line 349
    iput-object v6, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_extendedConnectionBlocks:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 350
    iput-object v7, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_channelmixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    .line 351
    iput-boolean v8, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->stealer_releaseTriggered:Z

    .line 352
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v10, v10

    if-ge v9, v10, :cond_1

    .line 353
    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v10, v10, v9

    iget-boolean v10, v10, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v10, :cond_0

    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v10, v10, v9

    iget v10, v10, Lcn/sherlock/com/sun/media/sound/SoftVoice;->voiceID:I

    iget v11, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->voiceID:I

    if-ne v10, v11, :cond_0

    .line 354
    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->soundOff()V

    .line 352
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 355
    .end local v9    # "i":I
    :cond_1
    return-void

    .line 358
    :cond_2
    iput-object v6, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->extendedConnectionBlocks:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 359
    iput-object v7, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channelmixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    .line 360
    iput-boolean v8, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->releaseTriggered:Z

    .line 361
    iput v3, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->voiceID:I

    .line 362
    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    iput-object v9, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    .line 363
    iget v9, v2, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->exclusiveClass:I

    iput v9, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->exclusiveClass:I

    .line 364
    iput-object v0, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->softchannel:Lcn/sherlock/com/sun/media/sound/SoftChannel;

    .line 365
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    iput v9, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    .line 366
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->bank:I

    iput v9, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->bank:I

    .line 367
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->program:I

    iput v9, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->program:I

    .line 368
    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    iput-object v9, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 369
    iput-object v2, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->performer:Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    .line 370
    iget-object v9, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->objects:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 371
    iget-object v9, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->objects:Ljava/util/Map;

    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi:[Lcn/sherlock/com/sun/media/sound/SoftControl;

    aget-object v10, v10, v4

    const-string v11, "midi"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v9, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->objects:Ljava/util/Map;

    const-string v10, "midi_cc"

    iget-object v11, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_cc:Lcn/sherlock/com/sun/media/sound/SoftControl;

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v9, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->objects:Ljava/util/Map;

    const-string v10, "midi_rpn"

    iget-object v11, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_rpn:Lcn/sherlock/com/sun/media/sound/SoftControl;

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v9, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->objects:Ljava/util/Map;

    const-string v10, "midi_nrpn"

    iget-object v11, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_nrpn:Lcn/sherlock/com/sun/media/sound/SoftControl;

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    move/from16 v9, p6

    invoke-virtual {v1, v4, v5, v9}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->noteOn(III)V

    .line 376
    iget-boolean v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mute:Z

    invoke-virtual {v1, v10}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->setMute(Z)V

    .line 377
    iget-boolean v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->solomute:Z

    invoke-virtual {v1, v10}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->setSoloMute(Z)V

    .line 378
    if-eqz v8, :cond_3

    .line 379
    return-void

    .line 380
    :cond_3
    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controller:[I

    const/16 v11, 0x54

    aget v10, v10, v11

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    if-eqz v10, :cond_4

    .line 381
    iget-object v10, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_keynumber:[D

    iget-object v12, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    iget-object v13, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controller:[I

    aget v13, v13, v11

    .line 382
    invoke-virtual {v12, v13}, Lcn/sherlock/com/sun/media/sound/SoftTuning;->getTuning(I)D

    move-result-wide v12

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x3f80000000000000L    # 0.0078125

    mul-double/2addr v12, v14

    const/4 v14, 0x0

    aput-wide v12, v10, v14

    .line 384
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->portamento:Z

    .line 385
    invoke-virtual {v0, v11, v14}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    goto :goto_1

    .line 386
    :cond_4
    const/4 v10, 0x0

    iget-boolean v12, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento:Z

    if-eqz v12, :cond_7

    .line 387
    iget-boolean v12, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mono:Z

    if-eqz v12, :cond_6

    .line 388
    iget-object v12, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote:[I

    aget v12, v12, v10

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    .line 389
    iget-object v12, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_keynumber:[D

    iget-object v13, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    iget-object v11, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote:[I

    aget v11, v11, v10

    .line 390
    invoke-virtual {v13, v11}, Lcn/sherlock/com/sun/media/sound/SoftTuning;->getTuning(I)D

    move-result-wide v16

    div-double v16, v16, v14

    const-wide/high16 v13, 0x3f80000000000000L    # 0.0078125

    mul-double v16, v16, v13

    aput-wide v16, v12, v10

    .line 392
    const/4 v11, 0x1

    iput-boolean v11, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->portamento:Z

    .line 393
    const/16 v11, 0x54

    invoke-virtual {v0, v11, v10}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 395
    :cond_5
    iget-object v11, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote:[I

    aput v4, v11, v10

    goto :goto_1

    .line 397
    :cond_6
    iget v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote_ix:I

    if-eqz v10, :cond_7

    .line 398
    iget v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote_ix:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    iput v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote_ix:I

    .line 399
    iget-object v10, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->co_noteon_keynumber:[D

    iget-object v11, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    iget-object v12, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote:[I

    iget v13, v0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->portamento_lastnote_ix:I

    aget v12, v12, v13

    .line 400
    invoke-virtual {v11, v12}, Lcn/sherlock/com/sun/media/sound/SoftTuning;->getTuning(I)D

    move-result-wide v11

    div-double/2addr v11, v14

    const-wide/high16 v13, 0x3f80000000000000L    # 0.0078125

    mul-double/2addr v11, v13

    const/4 v13, 0x0

    aput-wide v11, v10, v13

    .line 404
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcn/sherlock/com/sun/media/sound/SoftVoice;->portamento:Z

    .line 408
    :cond_7
    :goto_1
    return-void
.end method

.method public localControl(Z)Z
    .locals 1
    .param p1, "on"    # Z

    .line 1489
    const/4 v0, 0x0

    return v0
.end method

.method public mapChannelPressureToDestination([I[I)V
    .locals 3
    .param p1, "destination"    # [I
    .param p2, "range"    # [I

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 962
    array-length v1, p1

    if-nez v1, :cond_0

    .line 963
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_channelpressure_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 964
    return-void

    .line 966
    :cond_0
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v1, "midi"

    const-string v2, "channel_pressure"

    invoke-direct {v0, v1, v2}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-direct {p0, v0, p1, p2}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->createModelConnections(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;[I[I)[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_channelpressure_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 970
    return-void
.end method

.method public mapControlToDestination(I[I[I)V
    .locals 3
    .param p1, "control"    # I
    .param p2, "destination"    # [I
    .param p3, "range"    # [I

    .line 974
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_3

    const/16 v0, 0x5f

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 980
    :cond_1
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 981
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_control_number:I

    .line 982
    array-length v0, p2

    if-nez v0, :cond_2

    .line 983
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_control_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 984
    return-void

    .line 986
    :cond_2
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    .line 988
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "midi_cc"

    invoke-direct {v0, v2, v1}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-direct {p0, v0, p2, p3}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->createModelConnections(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;[I[I)[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_control_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 990
    return-void

    .line 976
    :cond_3
    :goto_0
    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_control_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 977
    return-void
.end method

.method public mapPolyPressureToDestination([I[I)V
    .locals 3
    .param p1, "destination"    # [I
    .param p2, "range"    # [I

    .line 949
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 950
    array-length v1, p1

    if-nez v1, :cond_0

    .line 951
    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_polypressure_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 952
    return-void

    .line 954
    :cond_0
    new-instance v0, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;

    const-string v1, "midi"

    const-string/jumbo v2, "poly_pressure"

    invoke-direct {v0, v1, v2}, Lcn/sherlock/com/sun/media/sound/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    invoke-direct {p0, v0, p1, p2}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->createModelConnections(Lcn/sherlock/com/sun/media/sound/ModelIdentifier;[I[I)[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    move-result-object v0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->cds_polypressure_connections:[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 958
    return-void
.end method

.method public noteOff(I)V
    .locals 1
    .param p1, "noteNumber"    # I

    .line 661
    if-ltz p1, :cond_1

    const/16 v0, 0x7f

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 662
    :cond_0
    const/16 v0, 0x40

    invoke-direct {p0, p1, v0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->noteOff_internal(II)V

    .line 663
    return-void

    .line 661
    :cond_1
    :goto_0
    return-void
.end method

.method public noteOff(II)V
    .locals 1
    .param p1, "noteNumber"    # I
    .param p2, "velocity"    # I

    .line 548
    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->restrict7Bit(I)I

    move-result p1

    .line 549
    invoke-static {p2}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->restrict7Bit(I)I

    move-result p2

    .line 550
    invoke-direct {p0, p1, p2}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->noteOff_internal(II)V

    .line 552
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-interface {v0, p1, p2}, Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;->noteOff(II)V

    .line 554
    :cond_0
    return-void
.end method

.method public noteOn(II)V
    .locals 1
    .param p1, "noteNumber"    # I
    .param p2, "velocity"    # I

    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->noteOn(III)V

    .line 412
    return-void
.end method

.method protected noteOn(III)V
    .locals 1
    .param p1, "noteNumber"    # I
    .param p2, "velocity"    # I
    .param p3, "delay"    # I

    .line 418
    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->restrict7Bit(I)I

    move-result p1

    .line 419
    invoke-static {p2}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->restrict7Bit(I)I

    move-result p2

    .line 420
    invoke-direct {p0, p1, p2, p3}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->noteOn_internal(III)V

    .line 421
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-interface {v0, p1, p2}, Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;->noteOn(II)V

    .line 423
    :cond_0
    return-void
.end method

.method public nrpnChange(II)V
    .locals 7
    .param p1, "controller"    # I
    .param p2, "value"    # I

    .line 1316
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getGeneralMidiMode()I

    move-result v0

    if-nez v0, :cond_c

    .line 1317
    const/16 v0, 0x88

    if-ne p1, v0, :cond_0

    .line 1318
    shr-int/lit8 v0, p2, 0x7

    const/16 v1, 0x4c

    invoke-virtual {p0, v1, v0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1319
    :cond_0
    const/16 v0, 0x89

    if-ne p1, v0, :cond_1

    .line 1320
    shr-int/lit8 v0, p2, 0x7

    const/16 v1, 0x4d

    invoke-virtual {p0, v1, v0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1321
    :cond_1
    const/16 v0, 0x8a

    if-ne p1, v0, :cond_2

    .line 1322
    shr-int/lit8 v0, p2, 0x7

    const/16 v1, 0x4e

    invoke-virtual {p0, v1, v0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1323
    :cond_2
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_3

    .line 1324
    shr-int/lit8 v0, p2, 0x7

    const/16 v1, 0x4a

    invoke-virtual {p0, v1, v0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1325
    :cond_3
    const/16 v0, 0xa1

    if-ne p1, v0, :cond_4

    .line 1326
    shr-int/lit8 v0, p2, 0x7

    const/16 v1, 0x47

    invoke-virtual {p0, v1, v0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1327
    :cond_4
    const/16 v0, 0xe3

    if-ne p1, v0, :cond_5

    .line 1328
    shr-int/lit8 v0, p2, 0x7

    const/16 v1, 0x49

    invoke-virtual {p0, v1, v0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1329
    :cond_5
    const/16 v0, 0xe4

    if-ne p1, v0, :cond_6

    .line 1330
    shr-int/lit8 v0, p2, 0x7

    const/16 v1, 0x4b

    invoke-virtual {p0, v1, v0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1331
    :cond_6
    const/16 v0, 0xe6

    if-ne p1, v0, :cond_7

    .line 1332
    shr-int/lit8 v0, p2, 0x7

    const/16 v1, 0x48

    invoke-virtual {p0, v1, v0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1334
    :cond_7
    shr-int/lit8 v0, p1, 0x7

    const/16 v1, 0x18

    if-ne v0, v1, :cond_8

    .line 1335
    rem-int/lit16 v0, p1, 0x80

    shr-int/lit8 v1, p2, 0x7

    const/16 v2, 0x78

    invoke-virtual {p0, v0, v2, v1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChangePerNote(III)V

    .line 1336
    :cond_8
    shr-int/lit8 v0, p1, 0x7

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_9

    .line 1337
    rem-int/lit16 v0, p1, 0x80

    shr-int/lit8 v1, p2, 0x7

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v2, v1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChangePerNote(III)V

    .line 1338
    :cond_9
    shr-int/lit8 v0, p1, 0x7

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_a

    .line 1339
    rem-int/lit16 v0, p1, 0x80

    shr-int/lit8 v1, p2, 0x7

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChangePerNote(III)V

    .line 1340
    :cond_a
    shr-int/lit8 v0, p1, 0x7

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_b

    .line 1341
    rem-int/lit16 v0, p1, 0x80

    shr-int/lit8 v1, p2, 0x7

    const/16 v2, 0x5b

    invoke-virtual {p0, v0, v2, v1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChangePerNote(III)V

    .line 1342
    :cond_b
    shr-int/lit8 v0, p1, 0x7

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_c

    .line 1343
    rem-int/lit16 v0, p1, 0x80

    shr-int/lit8 v1, p2, 0x7

    const/16 v2, 0x5d

    invoke-virtual {p0, v0, v2, v1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChangePerNote(III)V

    .line 1346
    :cond_c
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_nrpn_nrpn_i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1347
    .local v0, "val_i":[I
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_nrpn_nrpn:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 1348
    .local v1, "val_d":[D
    const/4 v2, 0x1

    if-nez v0, :cond_d

    .line 1349
    new-array v0, v2, [I

    .line 1350
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_nrpn_nrpn_i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    :cond_d
    if-nez v1, :cond_e

    .line 1353
    new-array v1, v2, [D

    .line 1354
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_nrpn_nrpn:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    :cond_e
    const/4 v2, 0x0

    aput p2, v0, v2

    .line 1357
    aget v3, v0, v2

    int-to-double v3, v3

    const-wide/high16 v5, 0x3f10000000000000L    # 6.103515625E-5

    mul-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 1359
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v4, v4

    if-ge v3, v4, :cond_10

    .line 1360
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v3

    iget-boolean v4, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v4, :cond_f

    .line 1361
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v3

    aget v5, v0, v2

    invoke-virtual {v4, p1, v5}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->nrpnChange(II)V

    .line 1359
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1363
    .end local v3    # "i":I
    :cond_10
    return-void
.end method

.method public play(I[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;)V
    .locals 16
    .param p1, "performerIndex"    # I
    .param p2, "connectionBlocks"    # [Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;

    .line 630
    move-object/from16 v10, p0

    iget v11, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->play_noteNumber:I

    .line 631
    .local v11, "noteNumber":I
    iget v12, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->play_velocity:I

    .line 632
    .local v12, "velocity":I
    iget v13, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->play_delay:I

    .line 633
    .local v13, "delay":I
    iget-boolean v14, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->play_releasetriggered:Z

    .line 635
    .local v14, "releasetriggered":Z
    iget-object v0, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftInstrument;->getPerformers()[Lcn/sherlock/com/sun/media/sound/SoftPerformer;

    move-result-object v0

    aget-object v15, v0, p1

    .line 637
    .local v15, "p":Lcn/sherlock/com/sun/media/sound/SoftPerformer;
    iget-boolean v0, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->firstVoice:Z

    if-eqz v0, :cond_2

    .line 638
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->firstVoice:Z

    .line 639
    iget v0, v15, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->exclusiveClass:I

    if-eqz v0, :cond_2

    .line 640
    iget v0, v15, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->exclusiveClass:I

    .line 641
    .local v0, "x":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 642
    iget-object v2, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v2, :cond_1

    iget-object v2, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    iget v3, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    if-ne v2, v3, :cond_1

    iget-object v2, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->exclusiveClass:I

    if-ne v2, v0, :cond_1

    .line 644
    iget-boolean v2, v15, Lcn/sherlock/com/sun/media/sound/SoftPerformer;->selfNonExclusive:Z

    if-eqz v2, :cond_0

    iget-object v2, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->note:I

    if-eq v2, v11, :cond_1

    .line 645
    :cond_0
    iget-object v2, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->shutdown()V

    .line 641
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    .end local v0    # "x":I
    .end local v1    # "j":I
    :cond_2
    iget v0, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voiceNo:I

    invoke-direct {v10, v0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->findFreeVoice(I)I

    move-result v0

    iput v0, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voiceNo:I

    .line 653
    iget v0, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voiceNo:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 654
    return-void

    .line 656
    :cond_3
    iget-object v0, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    iget v1, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voiceNo:I

    aget-object v1, v0, v1

    iget v3, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->prevVoiceID:I

    iget-object v8, v10, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    move-object/from16 v0, p0

    move-object v2, v15

    move v4, v11

    move v5, v12

    move v6, v13

    move-object/from16 v7, p2

    move v9, v14

    invoke-virtual/range {v0 .. v9}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->initVoice(Lcn/sherlock/com/sun/media/sound/SoftVoice;Lcn/sherlock/com/sun/media/sound/SoftPerformer;IIII[Lcn/sherlock/com/sun/media/sound/ModelConnectionBlock;Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;Z)V

    .line 658
    return-void
.end method

.method public programChange(I)V
    .locals 1
    .param p1, "program"    # I

    .line 1263
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->bank:I

    invoke-virtual {p0, v0, p1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->programChange(II)V

    .line 1264
    return-void
.end method

.method public programChange(II)V
    .locals 2
    .param p1, "bank"    # I
    .param p2, "program"    # I

    .line 1267
    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->restrict14Bit(I)I

    move-result p1

    .line 1268
    invoke-static {p2}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->restrict7Bit(I)I

    move-result p2

    .line 1269
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1270
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->activity()V

    .line 1271
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->bank:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->program:I

    if-eq v1, p2, :cond_1

    .line 1273
    :cond_0
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->bank:I

    .line 1274
    iput p2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->program:I

    .line 1275
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_instrument:Lcn/sherlock/com/sun/media/sound/SoftInstrument;

    .line 1277
    :cond_1
    monitor-exit v0

    .line 1278
    return-void

    .line 1277
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetAllControllers()V
    .locals 1

    .line 1402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->resetAllControllers(Z)V

    .line 1403
    return-void
.end method

.method public resetAllControllers(Z)V
    .locals 7
    .param p1, "allControls"    # Z

    .line 1406
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1407
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->activity()V

    .line 1409
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x80

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 1410
    invoke-virtual {p0, v1, v3}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->setPolyPressure(II)V

    .line 1409
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1412
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v3}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->setChannelPressure(I)V

    .line 1413
    const/16 v1, 0x2000

    invoke-virtual {p0, v1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->setPitchBend(I)V

    .line 1414
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 1415
    sget-object v5, Lcn/sherlock/com/sun/media/sound/SoftChannel;->dontResetControls:[Z

    aget-boolean v5, v5, v4

    if-nez v5, :cond_1

    .line 1416
    invoke-virtual {p0, v4, v3}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1414
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1419
    .end local v4    # "i":I
    :cond_2
    const/16 v2, 0x47

    const/16 v4, 0x40

    invoke-virtual {p0, v2, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1420
    const/16 v2, 0x48

    invoke-virtual {p0, v2, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1421
    const/16 v2, 0x49

    invoke-virtual {p0, v2, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1422
    const/16 v2, 0x4a

    invoke-virtual {p0, v2, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1423
    const/16 v2, 0x4b

    invoke-virtual {p0, v2, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1424
    const/16 v2, 0x4c

    invoke-virtual {p0, v2, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1425
    const/16 v2, 0x4d

    invoke-virtual {p0, v2, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1426
    const/16 v2, 0x4e

    invoke-virtual {p0, v2, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1428
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1429
    const/16 v2, 0xb

    const/16 v5, 0x7f

    invoke-virtual {p0, v2, v5}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1430
    const/16 v2, 0x62

    invoke-virtual {p0, v2, v5}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1431
    const/16 v2, 0x63

    invoke-virtual {p0, v2, v5}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1432
    const/16 v2, 0x64

    invoke-virtual {p0, v2, v5}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1433
    const/16 v6, 0x65

    invoke-virtual {p0, v6, v5}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1436
    if-eqz p1, :cond_6

    .line 1438
    const/4 v5, 0x0

    iput-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_active:[[Z

    .line 1439
    iput-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->keybasedcontroller_value:[[D

    .line 1441
    const/4 v5, 0x7

    invoke-virtual {p0, v5, v2}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1442
    const/16 v2, 0xa

    invoke-virtual {p0, v2, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1443
    const/16 v2, 0x5b

    const/16 v5, 0x28

    invoke-virtual {p0, v2, v5}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->controlChange(II)V

    .line 1445
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_rpn_rpn:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1447
    .local v5, "controller":I
    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    .line 1448
    invoke-virtual {p0, v5, v3}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpnChange(II)V

    .line 1449
    .end local v5    # "controller":I
    :cond_3
    goto :goto_2

    .line 1450
    :cond_4
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_nrpn_nrpn:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1451
    .restart local v5    # "controller":I
    invoke-virtual {p0, v5, v3}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->nrpnChange(II)V

    .end local v5    # "controller":I
    goto :goto_3

    .line 1452
    :cond_5
    const/16 v2, 0x100

    invoke-virtual {p0, v3, v2}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpnChange(II)V

    .line 1453
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpnChange(II)V

    .line 1454
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpnChange(II)V

    .line 1455
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->rpnChange(II)V

    .line 1457
    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning_bank:I

    .line 1458
    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning_program:I

    .line 1459
    new-instance v1, Lcn/sherlock/com/sun/media/sound/SoftTuning;

    invoke-direct {v1}, Lcn/sherlock/com/sun/media/sound/SoftTuning;-><init>()V

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    .line 1463
    :cond_6
    monitor-exit v0

    .line 1464
    return-void

    .line 1463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rpnChange(II)V
    .locals 7
    .param p1, "controller"    # I
    .param p2, "value"    # I

    .line 1375
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1376
    shr-int/lit8 v0, p2, 0x7

    and-int/lit8 v0, v0, 0x7f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning_program:I

    .line 1377
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning_bank:I

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning_program:I

    invoke-virtual {p0, v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuningChange(II)V

    .line 1379
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1380
    shr-int/lit8 v0, p2, 0x7

    and-int/lit8 v0, v0, 0x7f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning_bank:I

    .line 1383
    :cond_1
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_rpn_rpn_i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1384
    .local v0, "val_i":[I
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_rpn_rpn:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 1385
    .local v1, "val_d":[D
    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1386
    new-array v0, v2, [I

    .line 1387
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_rpn_rpn_i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    :cond_2
    if-nez v1, :cond_3

    .line 1390
    new-array v1, v2, [D

    .line 1391
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_rpn_rpn:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    :cond_3
    const/4 v2, 0x0

    aput p2, v0, v2

    .line 1394
    aget v3, v0, v2

    int-to-double v3, v3

    const-wide/high16 v5, 0x3f10000000000000L    # 6.103515625E-5

    mul-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 1396
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 1397
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v3

    iget-boolean v4, v4, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v4, :cond_4

    .line 1398
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v4, v4, v3

    aget v5, v0, v2

    invoke-virtual {v4, p1, v5}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->rpnChange(II)V

    .line 1396
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1399
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method public setChannelPressure(I)V
    .locals 6
    .param p1, "pressure"    # I

    .line 690
    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->restrict7Bit(I)I

    move-result p1

    .line 691
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-interface {v0, p1}, Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;->setChannelPressure(I)V

    .line 693
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 694
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->activity()V

    .line 695
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_channel_pressure:[D

    int-to-double v2, p1

    const-wide/high16 v4, 0x3f80000000000000L    # 0.0078125

    mul-double/2addr v2, v4

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 696
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channelpressure:I

    .line 697
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 698
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v2, :cond_1

    .line 699
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->setChannelPressure(I)V

    .line 697
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 701
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 702
    return-void

    .line 701
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMono(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 1493
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-interface {v0, p1}, Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;->setMono(Z)V

    .line 1495
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1496
    :try_start_0
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->allNotesOff()V

    .line 1497
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mono:Z

    .line 1498
    monitor-exit v0

    .line 1499
    return-void

    .line 1498
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMute(Z)V
    .locals 4
    .param p1, "mute"    # Z

    .line 1519
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-interface {v0, p1}, Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;->setMute(Z)V

    .line 1521
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1522
    :try_start_0
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mute:Z

    .line 1523
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1524
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->channel:I

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->channel:I

    if-ne v2, v3, :cond_1

    .line 1525
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->setMute(Z)V

    .line 1523
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1526
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 1527
    return-void

    .line 1526
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOmni(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 1508
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-interface {v0, p1}, Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;->setOmni(Z)V

    .line 1510
    :cond_0
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->allNotesOff()V

    .line 1512
    return-void
.end method

.method public setPitchBend(I)V
    .locals 6
    .param p1, "bend"    # I

    .line 1287
    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->restrict14Bit(I)I

    move-result p1

    .line 1288
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-interface {v0, p1}, Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;->setPitchBend(I)V

    .line 1290
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1291
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->activity()V

    .line 1292
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi_pitch:[D

    int-to-double v2, p1

    const-wide/high16 v4, 0x3f10000000000000L    # 6.103515625E-5

    mul-double/2addr v2, v4

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 1293
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->pitchbend:I

    .line 1294
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1295
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v2, :cond_1

    .line 1296
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->setPitchBend(I)V

    .line 1294
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1297
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 1298
    return-void

    .line 1297
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPolyPressure(II)V
    .locals 8
    .param p1, "noteNumber"    # I
    .param p2, "pressure"    # I

    .line 666
    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->restrict7Bit(I)I

    move-result p1

    .line 667
    invoke-static {p2}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->restrict7Bit(I)I

    move-result p2

    .line 669
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-interface {v0, p1, p2}, Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;->setPolyPressure(II)V

    .line 672
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 673
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->mainmixer:Lcn/sherlock/com/sun/media/sound/SoftMainMixer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftMainMixer;->activity()V

    .line 674
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->co_midi:[Lcn/sherlock/com/sun/media/sound/SoftControl;

    aget-object v1, v1, p1

    const-string/jumbo v2, "poly_pressure"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcn/sherlock/com/sun/media/sound/SoftControl;->get(ILjava/lang/String;)[D

    move-result-object v1

    int-to-double v4, p2

    const-wide/high16 v6, 0x3f80000000000000L    # 0.0078125

    mul-double/2addr v4, v6

    aput-wide v4, v1, v3

    .line 675
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->polypressure:[I

    aput p2, v1, p1

    .line 676
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 677
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->active:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    iget v2, v2, Lcn/sherlock/com/sun/media/sound/SoftVoice;->note:I

    if-ne v2, p1, :cond_1

    .line 678
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->voices:[Lcn/sherlock/com/sun/media/sound/SoftVoice;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2}, Lcn/sherlock/com/sun/media/sound/SoftVoice;->setPolyPressure(I)V

    .line 676
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 680
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 681
    return-void

    .line 680
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSolo(Z)V
    .locals 8
    .param p1, "soloState"    # Z

    .line 1536
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    if-eqz v0, :cond_0

    .line 1537
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->current_mixer:Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;

    invoke-interface {v0, p1}, Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;->setSolo(Z)V

    .line 1539
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1540
    :try_start_0
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->solo:Z

    .line 1542
    const/4 v1, 0x0

    .line 1543
    .local v1, "soloinuse":Z
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 1544
    .local v6, "c":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    iget-boolean v7, v6, Lcn/sherlock/com/sun/media/sound/SoftChannel;->solo:Z

    if-eqz v7, :cond_1

    .line 1545
    const/4 v1, 0x1

    .line 1546
    goto :goto_1

    .line 1543
    .end local v6    # "c":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1550
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 1551
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    array-length v3, v2

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 1552
    .restart local v6    # "c":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    invoke-direct {v6, v4}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->setSoloMute(Z)V

    .line 1551
    .end local v6    # "c":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1553
    :cond_3
    monitor-exit v0

    return-void

    .line 1556
    :cond_4
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    iget-object v2, v2, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->channels:[Lcn/sherlock/com/sun/media/sound/SoftChannel;

    array-length v3, v2

    move v5, v4

    :goto_3
    if-ge v5, v3, :cond_6

    aget-object v6, v2, v5

    .line 1557
    .restart local v6    # "c":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    iget-boolean v7, v6, Lcn/sherlock/com/sun/media/sound/SoftChannel;->solo:Z

    if-nez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    move v7, v4

    :goto_4
    invoke-direct {v6, v7}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->setSoloMute(Z)V

    .line 1556
    .end local v6    # "c":Lcn/sherlock/com/sun/media/sound/SoftChannel;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1559
    .end local v1    # "soloinuse":Z
    :cond_6
    monitor-exit v0

    .line 1561
    return-void

    .line 1559
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tuningChange(I)V
    .locals 1
    .param p1, "program"    # I

    .line 1253
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuningChange(II)V

    .line 1254
    return-void
.end method

.method public tuningChange(II)V
    .locals 3
    .param p1, "bank"    # I
    .param p2, "program"    # I

    .line 1257
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1258
    :try_start_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->synthesizer:Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;

    new-instance v2, Ljp/kshoji/javax/sound/midi/Patch;

    invoke-direct {v2, p1, p2}, Ljp/kshoji/javax/sound/midi/Patch;-><init>(II)V

    invoke-virtual {v1, v2}, Lcn/sherlock/com/sun/media/sound/SoftSynthesizer;->getTuning(Ljp/kshoji/javax/sound/midi/Patch;)Lcn/sherlock/com/sun/media/sound/SoftTuning;

    move-result-object v1

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannel;->tuning:Lcn/sherlock/com/sun/media/sound/SoftTuning;

    .line 1259
    monitor-exit v0

    .line 1260
    return-void

    .line 1259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
