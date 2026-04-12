.class public Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;
.super Ljava/lang/Object;
.source "SoftChannelProxy.java"

# interfaces
.implements Ljp/kshoji/javax/sound/midi/MidiChannel;


# instance fields
.field private channel:Ljp/kshoji/javax/sound/midi/MidiChannel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    return-void
.end method


# virtual methods
.method public allNotesOff()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 49
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0}, Ljp/kshoji/javax/sound/midi/MidiChannel;->allNotesOff()V

    .line 51
    return-void
.end method

.method public allSoundOff()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 55
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0}, Ljp/kshoji/javax/sound/midi/MidiChannel;->allSoundOff()V

    .line 57
    return-void
.end method

.method public controlChange(II)V
    .locals 1
    .param p1, "controller"    # I
    .param p2, "value"    # I

    .line 60
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 61
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0, p1, p2}, Ljp/kshoji/javax/sound/midi/MidiChannel;->controlChange(II)V

    .line 63
    return-void
.end method

.method public getChannel()Ljp/kshoji/javax/sound/midi/MidiChannel;
    .locals 1

    .line 40
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    return-object v0
.end method

.method public getChannelPressure()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0}, Ljp/kshoji/javax/sound/midi/MidiChannel;->getChannelPressure()I

    move-result v0

    return v0
.end method

.method public getController(I)I
    .locals 1
    .param p1, "controller"    # I

    .line 72
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0, p1}, Ljp/kshoji/javax/sound/midi/MidiChannel;->getController(I)I

    move-result v0

    return v0
.end method

.method public getMono()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0}, Ljp/kshoji/javax/sound/midi/MidiChannel;->getMono()Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0}, Ljp/kshoji/javax/sound/midi/MidiChannel;->getMute()Z

    move-result v0

    return v0
.end method

.method public getOmni()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0}, Ljp/kshoji/javax/sound/midi/MidiChannel;->getOmni()Z

    move-result v0

    return v0
.end method

.method public getPitchBend()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 97
    const/16 v0, 0x2000

    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0}, Ljp/kshoji/javax/sound/midi/MidiChannel;->getPitchBend()I

    move-result v0

    return v0
.end method

.method public getPolyPressure(I)I
    .locals 1
    .param p1, "noteNumber"    # I

    .line 102
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0, p1}, Ljp/kshoji/javax/sound/midi/MidiChannel;->getPolyPressure(I)I

    move-result v0

    return v0
.end method

.method public getProgram()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    return v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0}, Ljp/kshoji/javax/sound/midi/MidiChannel;->getProgram()I

    move-result v0

    return v0
.end method

.method public getSolo()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    return v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0}, Ljp/kshoji/javax/sound/midi/MidiChannel;->getSolo()Z

    move-result v0

    return v0
.end method

.method public localControl(Z)Z
    .locals 1
    .param p1, "on"    # Z

    .line 120
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0, p1}, Ljp/kshoji/javax/sound/midi/MidiChannel;->localControl(Z)Z

    move-result v0

    return v0
.end method

.method public noteOff(I)V
    .locals 1
    .param p1, "noteNumber"    # I

    .line 126
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 127
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0, p1}, Ljp/kshoji/javax/sound/midi/MidiChannel;->noteOff(I)V

    .line 129
    return-void
.end method

.method public noteOff(II)V
    .locals 1
    .param p1, "noteNumber"    # I
    .param p2, "velocity"    # I

    .line 132
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 133
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0, p1, p2}, Ljp/kshoji/javax/sound/midi/MidiChannel;->noteOff(II)V

    .line 135
    return-void
.end method

.method public noteOn(II)V
    .locals 1
    .param p1, "noteNumber"    # I
    .param p2, "velocity"    # I

    .line 138
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 139
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0, p1, p2}, Ljp/kshoji/javax/sound/midi/MidiChannel;->noteOn(II)V

    .line 141
    return-void
.end method

.method public programChange(I)V
    .locals 1
    .param p1, "program"    # I

    .line 144
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 145
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0, p1}, Ljp/kshoji/javax/sound/midi/MidiChannel;->programChange(I)V

    .line 147
    return-void
.end method

.method public programChange(II)V
    .locals 1
    .param p1, "bank"    # I
    .param p2, "program"    # I

    .line 150
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 151
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0, p1, p2}, Ljp/kshoji/javax/sound/midi/MidiChannel;->programChange(II)V

    .line 153
    return-void
.end method

.method public resetAllControllers()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0}, Ljp/kshoji/javax/sound/midi/MidiChannel;->resetAllControllers()V

    .line 159
    return-void
.end method

.method public setChannel(Ljp/kshoji/javax/sound/midi/MidiChannel;)V
    .locals 0
    .param p1, "channel"    # Ljp/kshoji/javax/sound/midi/MidiChannel;

    .line 44
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    .line 45
    return-void
.end method

.method public setChannelPressure(I)V
    .locals 1
    .param p1, "pressure"    # I

    .line 162
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0, p1}, Ljp/kshoji/javax/sound/midi/MidiChannel;->setChannelPressure(I)V

    .line 165
    return-void
.end method

.method public setMono(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 168
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 169
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0, p1}, Ljp/kshoji/javax/sound/midi/MidiChannel;->setMono(Z)V

    .line 171
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .line 174
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0, p1}, Ljp/kshoji/javax/sound/midi/MidiChannel;->setMute(Z)V

    .line 177
    return-void
.end method

.method public setOmni(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 180
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 181
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0, p1}, Ljp/kshoji/javax/sound/midi/MidiChannel;->setOmni(Z)V

    .line 183
    return-void
.end method

.method public setPitchBend(I)V
    .locals 1
    .param p1, "bend"    # I

    .line 186
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 187
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0, p1}, Ljp/kshoji/javax/sound/midi/MidiChannel;->setPitchBend(I)V

    .line 189
    return-void
.end method

.method public setPolyPressure(II)V
    .locals 1
    .param p1, "noteNumber"    # I
    .param p2, "pressure"    # I

    .line 192
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 193
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0, p1, p2}, Ljp/kshoji/javax/sound/midi/MidiChannel;->setPolyPressure(II)V

    .line 195
    return-void
.end method

.method public setSolo(Z)V
    .locals 1
    .param p1, "soloState"    # Z

    .line 198
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    if-nez v0, :cond_0

    .line 199
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChannelProxy;->channel:Ljp/kshoji/javax/sound/midi/MidiChannel;

    invoke-interface {v0, p1}, Ljp/kshoji/javax/sound/midi/MidiChannel;->setSolo(Z)V

    .line 201
    return-void
.end method
