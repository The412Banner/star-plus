.class Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;
.super Ljava/lang/Object;
.source "SoftChorus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftChorus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LFODelay"
.end annotation


# instance fields
.field private controlrate:D

.field private depth:D

.field private phase:D

.field private phase_step:D

.field private samplerate:D

.field private vdelay:Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;


# direct methods
.method public constructor <init>(DD)V
    .locals 5
    .param p1, "samplerate"    # D
    .param p3, "controlrate"    # D

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase:D

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase_step:D

    .line 120
    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->depth:D

    .line 126
    iput-wide p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->samplerate:D

    .line 127
    iput-wide p3, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->controlrate:D

    .line 129
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;

    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->depth:D

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;-><init>(I)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->vdelay:Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;

    .line 131
    return-void
.end method


# virtual methods
.method public processMix([F[F[F)V
    .locals 7
    .param p1, "in"    # [F
    .param p2, "out"    # [F
    .param p3, "rout"    # [F

    .line 160
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase:D

    iget-wide v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase_step:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase:D

    .line 161
    :goto_0
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase:D

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase:D

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->vdelay:Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;

    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->depth:D

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    iget-wide v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase:D

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    add-double/2addr v3, v5

    mul-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->setDelay(F)V

    .line 163
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->vdelay:Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;

    invoke-virtual {v0, p1, p2, p3}, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->processMix([F[F[F)V

    .line 164
    return-void
.end method

.method public processReplace([F[F[F)V
    .locals 7
    .param p1, "in"    # [F
    .param p2, "out"    # [F
    .param p3, "rout"    # [F

    .line 167
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase:D

    iget-wide v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase_step:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase:D

    .line 168
    :goto_0
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase:D

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase:D

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->vdelay:Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;

    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->depth:D

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    iget-wide v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase:D

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    add-double/2addr v3, v5

    mul-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->setDelay(F)V

    .line 170
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->vdelay:Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;

    invoke-virtual {v0, p1, p2, p3}, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->processReplace([F[F[F)V

    .line 172
    return-void
.end method

.method public setDepth(D)V
    .locals 5
    .param p1, "depth"    # D

    .line 134
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->samplerate:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->depth:D

    .line 135
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;

    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->depth:D

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;-><init>(I)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->vdelay:Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;

    .line 136
    return-void
.end method

.method public setFeedBack(F)V
    .locals 1
    .param p1, "feedback"    # F

    .line 148
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->vdelay:Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;

    invoke-virtual {v0, p1}, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->setFeedBack(F)V

    .line 149
    return-void
.end method

.method public setGain(F)V
    .locals 1
    .param p1, "gain"    # F

    .line 152
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->vdelay:Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;

    invoke-virtual {v0, p1}, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->setGain(F)V

    .line 153
    return-void
.end method

.method public setPhase(D)V
    .locals 0
    .param p1, "phase"    # D

    .line 144
    iput-wide p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase:D

    .line 145
    return-void
.end method

.method public setRate(D)V
    .locals 4
    .param p1, "rate"    # D

    .line 139
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->controlrate:D

    div-double v0, p1, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v2

    .line 140
    .local v0, "g":D
    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->phase_step:D

    .line 141
    return-void
.end method

.method public setReverbSendGain(F)V
    .locals 1
    .param p1, "rgain"    # F

    .line 156
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->vdelay:Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;

    invoke-virtual {v0, p1}, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->setReverbSendGain(F)V

    .line 157
    return-void
.end method
