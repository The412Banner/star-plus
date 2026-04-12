.class public final Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;
.super Ljava/lang/Object;
.source "MidiChannelImpl.java"

# interfaces
.implements Ljp/kshoji/javax/sound/midi/MidiChannel;


# instance fields
.field private final channel:I

.field private channelPressure:I

.field private controller:Landroid/util/SparseIntArray;

.field private localControl:Z

.field private mono:Z

.field private mute:Z

.field private omni:Z

.field private pitchbend:I

.field private polyPressure:Landroid/util/SparseIntArray;

.field private program:I

.field private final receiver:Ljp/kshoji/javax/sound/midi/Receiver;

.field private solo:Z

.field private final voiceStatus:Ljp/kshoji/javax/sound/midi/VoiceStatus;


# direct methods
.method public constructor <init>(ILjp/kshoji/javax/sound/midi/Receiver;Ljp/kshoji/javax/sound/midi/VoiceStatus;)V
    .locals 2
    .param p1, "channel"    # I
    .param p2, "receiver"    # Ljp/kshoji/javax/sound/midi/Receiver;
    .param p3, "voiceStatus"    # Ljp/kshoji/javax/sound/midi/VoiceStatus;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x7f

    iput v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channelPressure:I

    .line 23
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->controller:Landroid/util/SparseIntArray;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->program:I

    .line 25
    iput-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->mono:Z

    .line 26
    iput-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->mute:Z

    .line 27
    iput-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->omni:Z

    .line 28
    const/16 v1, 0x2000

    iput v1, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->pitchbend:I

    .line 29
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->polyPressure:Landroid/util/SparseIntArray;

    .line 30
    iput-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->solo:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->localControl:Z

    .line 40
    iget v0, p3, Ljp/kshoji/javax/sound/midi/VoiceStatus;->channel:I

    iput v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    .line 41
    iput-object p2, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    .line 42
    iput-object p3, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->voiceStatus:Ljp/kshoji/javax/sound/midi/VoiceStatus;

    .line 43
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->voiceStatus:Ljp/kshoji/javax/sound/midi/VoiceStatus;

    iput p1, v0, Ljp/kshoji/javax/sound/midi/VoiceStatus;->channel:I

    .line 44
    return-void
.end method


# virtual methods
.method public allNotesOff()V
    .locals 5

    .line 49
    :try_start_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v2, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v2, v2, 0xb0

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 52
    :goto_0
    return-void
.end method

.method public allSoundOff()V
    .locals 5

    .line 57
    :try_start_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v2, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v2, v2, 0xb0

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 60
    :goto_0
    return-void
.end method

.method public controlChange(II)V
    .locals 4
    .param p1, "controller"    # I
    .param p2, "value"    # I

    .line 132
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->controller:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    :try_start_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v2, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v2, v2, 0xb0

    invoke-direct {v1, v2, p1, p2}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    :goto_0
    return-void
.end method

.method public getChannelPressure()I
    .locals 1

    .line 112
    iget v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channelPressure:I

    return v0
.end method

.method public getController(I)I
    .locals 2
    .param p1, "controller"    # I

    .line 127
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->controller:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getMono()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->mono:Z

    return v0
.end method

.method public getMute()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->mute:Z

    return v0
.end method

.method public getOmni()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->omni:Z

    return v0
.end method

.method public getPitchBend()I
    .locals 1

    .line 225
    iget v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->pitchbend:I

    return v0
.end method

.method public getPolyPressure(I)I
    .locals 2
    .param p1, "noteNumber"    # I

    .line 240
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->polyPressure:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getProgram()I
    .locals 1

    .line 142
    iget v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->program:I

    return v0
.end method

.method public getSolo()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->solo:Z

    return v0
.end method

.method public localControl(Z)Z
    .locals 7
    .param p1, "on"    # Z

    .line 265
    iput-boolean p1, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->localControl:Z

    .line 267
    iget-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->localControl:Z

    const-wide/16 v1, 0x0

    const/16 v3, 0x7a

    if-eqz v0, :cond_0

    .line 269
    :try_start_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v4, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v5, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v5, v5, 0xb0

    const/16 v6, 0x7f

    invoke-direct {v4, v5, v3, v6}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    invoke-interface {v0, v4, v1, v2}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    :goto_0
    goto :goto_1

    .line 274
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v4, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v5, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v5, v5, 0xb0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v6}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    invoke-interface {v0, v4, v1, v2}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_1
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_1 .. :try_end_1} :catch_1

    .line 276
    goto :goto_1

    .line 275
    :catch_1
    move-exception v0

    .line 279
    :goto_1
    iget-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->localControl:Z

    return v0
.end method

.method public noteOff(I)V
    .locals 5
    .param p1, "noteNumber"    # I

    .line 72
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->voiceStatus:Ljp/kshoji/javax/sound/midi/VoiceStatus;

    iget-boolean v0, v0, Ljp/kshoji/javax/sound/midi/VoiceStatus;->active:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->voiceStatus:Ljp/kshoji/javax/sound/midi/VoiceStatus;

    iget v0, v0, Ljp/kshoji/javax/sound/midi/VoiceStatus;->note:I

    if-ne v0, p1, :cond_0

    .line 73
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->voiceStatus:Ljp/kshoji/javax/sound/midi/VoiceStatus;

    iput-boolean v1, v0, Ljp/kshoji/javax/sound/midi/VoiceStatus;->active:Z

    .line 77
    :cond_0
    :try_start_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v2, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v3, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v3, v3, 0x80

    invoke-direct {v2, v3, p1, v1}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    :goto_0
    return-void
.end method

.method public noteOff(II)V
    .locals 4
    .param p1, "noteNumber"    # I
    .param p2, "velocity"    # I

    .line 85
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->voiceStatus:Ljp/kshoji/javax/sound/midi/VoiceStatus;

    iget-boolean v0, v0, Ljp/kshoji/javax/sound/midi/VoiceStatus;->active:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->voiceStatus:Ljp/kshoji/javax/sound/midi/VoiceStatus;

    iget v0, v0, Ljp/kshoji/javax/sound/midi/VoiceStatus;->note:I

    if-ne v0, p1, :cond_0

    .line 86
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->voiceStatus:Ljp/kshoji/javax/sound/midi/VoiceStatus;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljp/kshoji/javax/sound/midi/VoiceStatus;->active:Z

    .line 90
    :cond_0
    :try_start_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v2, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v2, v2, 0x80

    invoke-direct {v1, v2, p1, p2}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 93
    :goto_0
    return-void
.end method

.method public noteOn(II)V
    .locals 4
    .param p1, "noteNumber"    # I
    .param p2, "velocity"    # I

    .line 98
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->voiceStatus:Ljp/kshoji/javax/sound/midi/VoiceStatus;

    iget-boolean v0, v0, Ljp/kshoji/javax/sound/midi/VoiceStatus;->active:Z

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->voiceStatus:Ljp/kshoji/javax/sound/midi/VoiceStatus;

    iput p1, v0, Ljp/kshoji/javax/sound/midi/VoiceStatus;->note:I

    .line 100
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->voiceStatus:Ljp/kshoji/javax/sound/midi/VoiceStatus;

    iput p2, v0, Ljp/kshoji/javax/sound/midi/VoiceStatus;->volume:I

    .line 101
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->voiceStatus:Ljp/kshoji/javax/sound/midi/VoiceStatus;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljp/kshoji/javax/sound/midi/VoiceStatus;->active:Z

    .line 105
    :cond_0
    :try_start_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v2, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v2, v2, 0x90

    invoke-direct {v1, v2, p1, p2}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    :goto_0
    return-void
.end method

.method public programChange(I)V
    .locals 4
    .param p1, "program"    # I

    .line 147
    iput p1, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->program:I

    .line 150
    :try_start_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v2, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v2, v2, 0xc0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 153
    :goto_0
    return-void
.end method

.method public programChange(II)V
    .locals 8
    .param p1, "bank"    # I
    .param p2, "program"    # I

    .line 157
    iput p2, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->program:I

    .line 158
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->voiceStatus:Ljp/kshoji/javax/sound/midi/VoiceStatus;

    iput p1, v0, Ljp/kshoji/javax/sound/midi/VoiceStatus;->bank:I

    .line 159
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->voiceStatus:Ljp/kshoji/javax/sound/midi/VoiceStatus;

    iput p2, v0, Ljp/kshoji/javax/sound/midi/VoiceStatus;->program:I

    .line 162
    :try_start_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v2, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v2, v2, 0xb0

    shr-int/lit8 v3, p1, 0x7

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V

    .line 163
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v5, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v5, v5, 0xb0

    and-int/lit8 v6, p1, 0x7f

    const/16 v7, 0x20

    invoke-direct {v1, v5, v7, v6}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    invoke-interface {v0, v1, v2, v3}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V

    .line 164
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v5, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v5, v5, 0xc0

    invoke-direct {v1, v5, p2, v4}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    invoke-interface {v0, v1, v2, v3}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 167
    :goto_0
    return-void
.end method

.method public resetAllControllers()V
    .locals 5

    .line 65
    :try_start_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v2, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v2, v2, 0xb0

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 68
    :goto_0
    return-void
.end method

.method public setChannelPressure(I)V
    .locals 5
    .param p1, "pressure"    # I

    .line 117
    iput p1, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channelPressure:I

    .line 120
    :try_start_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v2, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v2, v2, 0xd0

    shr-int/lit8 v3, p1, 0x7

    and-int/lit8 v4, p1, 0x7f

    invoke-direct {v1, v2, v3, v4}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    :goto_0
    return-void
.end method

.method public setMono(Z)V
    .locals 7
    .param p1, "on"    # Z

    .line 176
    iput-boolean p1, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->mono:Z

    .line 178
    iget-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->mono:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v4, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v5, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v5, v5, 0xb0

    const/16 v6, 0x7e

    invoke-direct {v4, v5, v6, v3}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    invoke-interface {v0, v4, v1, v2}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    :goto_0
    goto :goto_1

    .line 185
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v4, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v5, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v5, v5, 0xb0

    const/16 v6, 0x7f

    invoke-direct {v4, v5, v6, v3}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    invoke-interface {v0, v4, v1, v2}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_1
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    goto :goto_1

    .line 186
    :catch_1
    move-exception v0

    .line 189
    :goto_1
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .line 198
    iput-boolean p1, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->mute:Z

    .line 199
    return-void
.end method

.method public setOmni(Z)V
    .locals 7
    .param p1, "on"    # Z

    .line 208
    iput-boolean p1, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->omni:Z

    .line 210
    iget-boolean v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->omni:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 212
    :try_start_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v4, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v5, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v5, v5, 0xb0

    const/16 v6, 0x7d

    invoke-direct {v4, v5, v6, v3}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    invoke-interface {v0, v4, v1, v2}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    :goto_0
    goto :goto_1

    .line 217
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v4, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v5, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v5, v5, 0xb0

    const/16 v6, 0x7c

    invoke-direct {v4, v5, v6, v3}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    invoke-interface {v0, v4, v1, v2}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_1
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    goto :goto_1

    .line 218
    :catch_1
    move-exception v0

    .line 221
    :goto_1
    return-void
.end method

.method public setPitchBend(I)V
    .locals 5
    .param p1, "bend"    # I

    .line 230
    iput p1, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->pitchbend:I

    .line 233
    :try_start_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v2, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v2, v2, 0xe0

    shr-int/lit8 v3, p1, 0x7

    and-int/lit8 v4, p1, 0x7f

    invoke-direct {v1, v2, v3, v4}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 236
    :goto_0
    return-void
.end method

.method public setPolyPressure(II)V
    .locals 5
    .param p1, "noteNumber"    # I
    .param p2, "pressure"    # I

    .line 245
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->polyPressure:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 248
    :try_start_0
    iget-object v0, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->receiver:Ljp/kshoji/javax/sound/midi/Receiver;

    new-instance v1, Ljp/kshoji/javax/sound/midi/ShortMessage;

    iget v2, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->channel:I

    or-int/lit16 v2, v2, 0xe0

    shr-int/lit8 v3, p2, 0x7

    and-int/lit8 v4, p2, 0x7f

    invoke-direct {v1, v2, v3, v4}, Ljp/kshoji/javax/sound/midi/ShortMessage;-><init>(III)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljp/kshoji/javax/sound/midi/Receiver;->send(Ljp/kshoji/javax/sound/midi/MidiMessage;J)V
    :try_end_0
    .catch Ljp/kshoji/javax/sound/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 251
    :goto_0
    return-void
.end method

.method public setSolo(Z)V
    .locals 0
    .param p1, "soloState"    # Z

    .line 260
    iput-boolean p1, p0, Ljp/kshoji/javax/sound/midi/impl/MidiChannelImpl;->solo:Z

    .line 261
    return-void
.end method
