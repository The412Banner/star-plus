.class public abstract Lcn/sherlock/com/sun/media/sound/ModelAbstractChannelMixer;
.super Ljava/lang/Object;
.source "ModelAbstractChannelMixer.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/ModelChannelMixer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allNotesOff()V
    .locals 0

    .line 40
    return-void
.end method

.method public allSoundOff()V
    .locals 0

    .line 43
    return-void
.end method

.method public controlChange(II)V
    .locals 0
    .param p1, "controller"    # I
    .param p2, "value"    # I

    .line 46
    return-void
.end method

.method public getChannelPressure()I
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getController(I)I
    .locals 1
    .param p1, "controller"    # I

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getMono()Z
    .locals 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getOmni()Z
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getPitchBend()I
    .locals 1

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getPolyPressure(I)I
    .locals 1
    .param p1, "noteNumber"    # I

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getProgram()I
    .locals 1

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getSolo()Z
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public localControl(Z)Z
    .locals 1
    .param p1, "on"    # Z

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public noteOff(I)V
    .locals 0
    .param p1, "noteNumber"    # I

    .line 89
    return-void
.end method

.method public noteOff(II)V
    .locals 0
    .param p1, "noteNumber"    # I
    .param p2, "velocity"    # I

    .line 92
    return-void
.end method

.method public noteOn(II)V
    .locals 0
    .param p1, "noteNumber"    # I
    .param p2, "velocity"    # I

    .line 95
    return-void
.end method

.method public abstract process([[FII)Z
.end method

.method public programChange(I)V
    .locals 0
    .param p1, "program"    # I

    .line 98
    return-void
.end method

.method public programChange(II)V
    .locals 0
    .param p1, "bank"    # I
    .param p2, "program"    # I

    .line 101
    return-void
.end method

.method public resetAllControllers()V
    .locals 0

    .line 104
    return-void
.end method

.method public setChannelPressure(I)V
    .locals 0
    .param p1, "pressure"    # I

    .line 107
    return-void
.end method

.method public setMono(Z)V
    .locals 0
    .param p1, "on"    # Z

    .line 110
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .line 113
    return-void
.end method

.method public setOmni(Z)V
    .locals 0
    .param p1, "on"    # Z

    .line 116
    return-void
.end method

.method public setPitchBend(I)V
    .locals 0
    .param p1, "bend"    # I

    .line 119
    return-void
.end method

.method public setPolyPressure(II)V
    .locals 0
    .param p1, "noteNumber"    # I
    .param p2, "pressure"    # I

    .line 122
    return-void
.end method

.method public setSolo(Z)V
    .locals 0
    .param p1, "soloState"    # Z

    .line 125
    return-void
.end method

.method public abstract stop()V
.end method
