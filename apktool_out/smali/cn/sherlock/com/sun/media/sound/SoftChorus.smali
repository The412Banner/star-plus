.class public Lcn/sherlock/com/sun/media/sound/SoftChorus;
.super Ljava/lang/Object;
.source "SoftChorus.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;,
        Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;
    }
.end annotation


# instance fields
.field private controlrate:F

.field private dirty:Z

.field private dirty_vdelay1L_depth:D

.field private dirty_vdelay1L_feedback:F

.field private dirty_vdelay1L_rate:D

.field private dirty_vdelay1L_reverbsendgain:F

.field private dirty_vdelay1R_depth:D

.field private dirty_vdelay1R_feedback:F

.field private dirty_vdelay1R_rate:D

.field private dirty_vdelay1R_reverbsendgain:F

.field private inputA:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

.field private left:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

.field private mix:Z

.field private reverb:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

.field private rgain:F

.field private right:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

.field silentcounter:D

.field private vdelay1L:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

.field private vdelay1R:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->mix:Z

    .line 181
    const/4 v1, 0x0

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->rgain:F

    .line 182
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty:Z

    .line 287
    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->silentcounter:D

    return-void
.end method


# virtual methods
.method public globalParameterControlChange([IJJ)V
    .locals 11
    .param p1, "slothpath"    # [I
    .param p2, "param"    # J
    .param p4, "value"    # J

    .line 207
    move-object v6, p0

    move-object v7, p1

    move-wide v8, p4

    array-length v0, v7

    const/4 v10, 0x1

    if-ne v0, v10, :cond_4

    .line 208
    const/4 v0, 0x0

    aget v0, v7, v0

    const/16 v1, 0x82

    if-ne v0, v1, :cond_4

    .line 209
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 210
    long-to-int v0, v8

    packed-switch v0, :pswitch_data_0

    .line 248
    goto/16 :goto_0

    .line 242
    :pswitch_0
    const-wide/16 v2, 0x3

    const-wide/16 v4, 0x70

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 243
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 244
    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x5

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 245
    const-wide/16 v2, 0x4

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 246
    goto/16 :goto_0

    .line 236
    :pswitch_1
    const-wide/16 v2, 0x3

    const-wide/16 v4, 0x40

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 237
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x2

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 238
    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x18

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 239
    const-wide/16 v2, 0x4

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 240
    goto/16 :goto_0

    .line 230
    :pswitch_2
    const-wide/16 v2, 0x3

    const-wide/16 v4, 0x10

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 231
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x9

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 232
    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x10

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 233
    const-wide/16 v2, 0x4

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 234
    goto/16 :goto_0

    .line 224
    :pswitch_3
    const-wide/16 v2, 0x3

    const-wide/16 v4, 0x8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 225
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 226
    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x13

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 227
    const-wide/16 v2, 0x4

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 228
    goto/16 :goto_0

    .line 218
    :pswitch_4
    const-wide/16 v2, 0x3

    const-wide/16 v4, 0x5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 219
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x9

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 220
    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x13

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 221
    const-wide/16 v2, 0x4

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 222
    goto :goto_0

    .line 212
    :pswitch_5
    const-wide/16 v2, 0x3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 213
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 214
    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x5

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 215
    const-wide/16 v2, 0x4

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 216
    goto :goto_0

    .line 250
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    .line 251
    long-to-double v0, v8

    const-wide v2, 0x3fbf3b645a1cac08L    # 0.122

    mul-double/2addr v0, v2

    iput-wide v0, v6, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty_vdelay1L_rate:D

    .line 252
    long-to-double v0, v8

    mul-double/2addr v0, v2

    iput-wide v0, v6, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty_vdelay1R_rate:D

    .line 253
    iput-boolean v10, v6, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty:Z

    goto :goto_0

    .line 254
    :cond_1
    const-wide/16 v2, 0x2

    cmp-long v2, p2, v2

    if-nez v2, :cond_2

    .line 255
    add-long v2, v8, v0

    long-to-double v2, v2

    const-wide/high16 v4, 0x40a9000000000000L    # 3200.0

    div-double/2addr v2, v4

    iput-wide v2, v6, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty_vdelay1L_depth:D

    .line 256
    add-long/2addr v0, v8

    long-to-double v0, v0

    div-double/2addr v0, v4

    iput-wide v0, v6, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty_vdelay1R_depth:D

    .line 257
    iput-boolean v10, v6, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty:Z

    goto :goto_0

    .line 258
    :cond_2
    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-nez v0, :cond_3

    .line 259
    long-to-float v0, v8

    const v1, 0x3bfa0514    # 0.00763f

    mul-float/2addr v0, v1

    iput v0, v6, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty_vdelay1L_feedback:F

    .line 260
    long-to-float v0, v8

    mul-float/2addr v0, v1

    iput v0, v6, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty_vdelay1R_feedback:F

    .line 261
    iput-boolean v10, v6, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty:Z

    .line 263
    :cond_3
    :goto_0
    const-wide/16 v0, 0x4

    cmp-long v0, p2, v0

    if-nez v0, :cond_4

    .line 264
    long-to-float v0, v8

    const v1, 0x3c00f12c    # 0.00787f

    mul-float/2addr v0, v1

    iput v0, v6, Lcn/sherlock/com/sun/media/sound/SoftChorus;->rgain:F

    .line 265
    long-to-float v0, v8

    mul-float/2addr v0, v1

    iput v0, v6, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty_vdelay1L_reverbsendgain:F

    .line 266
    long-to-float v0, v8

    mul-float/2addr v0, v1

    iput v0, v6, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty_vdelay1R_reverbsendgain:F

    .line 267
    iput-boolean v10, v6, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty:Z

    .line 272
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(FF)V
    .locals 7
    .param p1, "samplerate"    # F
    .param p2, "controlrate"    # F

    .line 194
    iput p2, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->controlrate:F

    .line 195
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    float-to-double v1, p1

    float-to-double v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;-><init>(DD)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1L:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    .line 196
    new-instance v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    float-to-double v1, p1

    float-to-double v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;-><init>(DD)V

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1R:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    .line 197
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1L:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->setGain(F)V

    .line 198
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1R:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->setGain(F)V

    .line 199
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1L:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual {v0, v1, v2}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->setPhase(D)V

    .line 200
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1R:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->setPhase(D)V

    .line 202
    const/16 v0, 0x82

    filled-new-array {v0}, [I

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x2

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcn/sherlock/com/sun/media/sound/SoftChorus;->globalParameterControlChange([IJJ)V

    .line 203
    return-void
.end method

.method public processAudio()V
    .locals 6

    .line 291
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->inputA:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->isSilent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->silentcounter:D

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->controlrate:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->silentcounter:D

    .line 294
    iget-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->silentcounter:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 295
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->mix:Z

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->left:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->clear()V

    .line 297
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->right:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->clear()V

    .line 299
    :cond_0
    return-void

    .line 302
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->silentcounter:D

    .line 304
    :cond_2
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->inputA:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v0

    .line 305
    .local v0, "inputA":[F
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->left:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v1

    .line 306
    .local v1, "left":[F
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->right:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->right:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v2

    .line 307
    .local v2, "right":[F
    :goto_0
    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->rgain:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->reverb:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v3

    .line 309
    .local v3, "reverb":[F
    :cond_4
    iget-boolean v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->mix:Z

    if-eqz v4, :cond_5

    .line 310
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1L:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    invoke-virtual {v4, v0, v1, v3}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->processMix([F[F[F)V

    .line 311
    if-eqz v2, :cond_6

    .line 312
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1R:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    invoke-virtual {v4, v0, v2, v3}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->processMix([F[F[F)V

    goto :goto_1

    .line 314
    :cond_5
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1L:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    invoke-virtual {v4, v0, v1, v3}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->processReplace([F[F[F)V

    .line 315
    if-eqz v2, :cond_6

    .line 316
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1R:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    invoke-virtual {v4, v0, v2, v3}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->processReplace([F[F[F)V

    .line 318
    :cond_6
    :goto_1
    return-void
.end method

.method public processControlLogic()V
    .locals 3

    .line 275
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty:Z

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty:Z

    .line 277
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1L:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty_vdelay1L_rate:D

    invoke-virtual {v0, v1, v2}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->setRate(D)V

    .line 278
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1R:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty_vdelay1R_rate:D

    invoke-virtual {v0, v1, v2}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->setRate(D)V

    .line 279
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1L:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty_vdelay1L_depth:D

    invoke-virtual {v0, v1, v2}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->setDepth(D)V

    .line 280
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1R:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    iget-wide v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty_vdelay1R_depth:D

    invoke-virtual {v0, v1, v2}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->setDepth(D)V

    .line 281
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1L:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty_vdelay1L_feedback:F

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->setFeedBack(F)V

    .line 282
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1R:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty_vdelay1R_feedback:F

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->setFeedBack(F)V

    .line 283
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1L:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty_vdelay1L_reverbsendgain:F

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->setReverbSendGain(F)V

    .line 284
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->vdelay1R:Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->dirty_vdelay1R_reverbsendgain:F

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/SoftChorus$LFODelay;->setReverbSendGain(F)V

    .line 286
    :cond_0
    return-void
.end method

.method public setInput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V
    .locals 0
    .param p1, "pin"    # I
    .param p2, "input"    # Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 321
    if-nez p1, :cond_0

    .line 322
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->inputA:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 323
    :cond_0
    return-void
.end method

.method public setMixMode(Z)V
    .locals 0
    .param p1, "mix"    # Z

    .line 326
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->mix:Z

    .line 327
    return-void
.end method

.method public setOutput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V
    .locals 1
    .param p1, "pin"    # I
    .param p2, "output"    # Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 330
    if-nez p1, :cond_0

    .line 331
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->left:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 332
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 333
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->right:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 334
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 335
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus;->reverb:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 336
    :cond_2
    return-void
.end method
