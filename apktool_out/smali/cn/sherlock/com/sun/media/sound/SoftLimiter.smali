.class public Lcn/sherlock/com/sun/media/sound/SoftLimiter;
.super Ljava/lang/Object;
.source "SoftLimiter.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/SoftAudioProcessor;


# instance fields
.field bufferL:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

.field bufferLout:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

.field bufferR:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

.field bufferRout:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

.field controlrate:F

.field gain:F

.field lastmax:F

.field mix:Z

.field silentcounter:D

.field temp_bufferL:[F

.field temp_bufferR:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->lastmax:F

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->mix:Z

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->silentcounter:D

    return-void
.end method


# virtual methods
.method public globalParameterControlChange([IJJ)V
    .locals 0
    .param p1, "slothpath"    # [I
    .param p2, "param"    # J
    .param p4, "value"    # J

    .line 70
    return-void
.end method

.method public init(FF)V
    .locals 0
    .param p1, "samplerate"    # F
    .param p2, "controlrate"    # F

    .line 47
    iput p2, p0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->controlrate:F

    .line 48
    return-void
.end method

.method public processAudio()V
    .locals 17

    .line 75
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->bufferL:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->isSilent()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->bufferR:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->bufferR:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 76
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->isSilent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    :cond_0
    iget-wide v1, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->silentcounter:D

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->controlrate:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->silentcounter:D

    .line 79
    iget-wide v1, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->silentcounter:D

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    .line 80
    iget-boolean v1, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->mix:Z

    if-nez v1, :cond_1

    .line 81
    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->bufferLout:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->clear()V

    .line 82
    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->bufferRout:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->bufferRout:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->clear()V

    .line 84
    :cond_1
    return-void

    .line 87
    :cond_2
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->silentcounter:D

    .line 89
    :cond_3
    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->bufferL:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v1

    .line 90
    .local v1, "bufferL":[F
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->bufferR:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    const/4 v3, 0x0

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->bufferR:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v2}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v2

    .line 91
    .local v2, "bufferR":[F
    :goto_0
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->bufferLout:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v4

    .line 92
    .local v4, "bufferLout":[F
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->bufferRout:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    if-nez v5, :cond_5

    .line 93
    goto :goto_1

    :cond_5
    iget-object v3, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->bufferRout:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    invoke-virtual {v3}, Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;->array()[F

    move-result-object v3

    .line 95
    .local v3, "bufferRout":[F
    :goto_1
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferL:[F

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferL:[F

    array-length v5, v5

    array-length v6, v1

    if-ge v5, v6, :cond_7

    .line 96
    :cond_6
    array-length v5, v1

    new-array v5, v5, [F

    iput-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferL:[F

    .line 97
    :cond_7
    if-eqz v2, :cond_9

    .line 98
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferR:[F

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferR:[F

    array-length v5, v5

    array-length v6, v2

    if-ge v5, v6, :cond_9

    .line 99
    :cond_8
    array-length v5, v2

    new-array v5, v5, [F

    iput-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferR:[F

    .line 101
    :cond_9
    const/4 v5, 0x0

    .line 102
    .local v5, "max":F
    array-length v6, v1

    .line 104
    .local v6, "len":I
    if-nez v2, :cond_d

    .line 105
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_c

    .line 106
    aget v8, v1, v7

    cmpl-float v8, v8, v5

    if-lez v8, :cond_a

    .line 107
    aget v5, v1, v7

    .line 108
    :cond_a
    aget v8, v1, v7

    neg-float v8, v8

    cmpl-float v8, v8, v5

    if-lez v8, :cond_b

    .line 109
    aget v8, v1, v7

    neg-float v5, v8

    .line 105
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v7    # "i":I
    :cond_c
    goto :goto_4

    .line 112
    :cond_d
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v6, :cond_12

    .line 113
    aget v8, v1, v7

    cmpl-float v8, v8, v5

    if-lez v8, :cond_e

    .line 114
    aget v5, v1, v7

    .line 115
    :cond_e
    aget v8, v2, v7

    cmpl-float v8, v8, v5

    if-lez v8, :cond_f

    .line 116
    aget v5, v2, v7

    .line 117
    :cond_f
    aget v8, v1, v7

    neg-float v8, v8

    cmpl-float v8, v8, v5

    if-lez v8, :cond_10

    .line 118
    aget v8, v1, v7

    neg-float v5, v8

    .line 119
    :cond_10
    aget v8, v2, v7

    neg-float v8, v8

    cmpl-float v8, v8, v5

    if-lez v8, :cond_11

    .line 120
    aget v8, v2, v7

    neg-float v5, v8

    .line 112
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 124
    .end local v7    # "i":I
    :cond_12
    :goto_4
    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->lastmax:F

    .line 125
    .local v7, "lmax":F
    iput v5, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->lastmax:F

    .line 126
    cmpl-float v8, v7, v5

    if-lez v8, :cond_13

    .line 127
    move v5, v7

    .line 129
    :cond_13
    const/high16 v8, 0x3f800000    # 1.0f

    .line 130
    .local v8, "newgain":F
    const v9, 0x3f7d70a4    # 0.99f

    cmpl-float v10, v5, v9

    if-lez v10, :cond_14

    .line 131
    div-float/2addr v9, v5

    .end local v8    # "newgain":F
    .local v9, "newgain":F
    goto :goto_5

    .line 133
    .end local v9    # "newgain":F
    .restart local v8    # "newgain":F
    :cond_14
    const/high16 v9, 0x3f800000    # 1.0f

    .line 135
    .end local v8    # "newgain":F
    .restart local v9    # "newgain":F
    :goto_5
    iget v8, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    cmpl-float v8, v9, v8

    if-lez v8, :cond_15

    .line 136
    iget v8, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    const/high16 v10, 0x41100000    # 9.0f

    mul-float/2addr v8, v10

    add-float/2addr v8, v9

    const/high16 v10, 0x41200000    # 10.0f

    div-float v9, v8, v10

    .line 138
    :cond_15
    iget v8, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    sub-float v8, v9, v8

    int-to-float v10, v6

    div-float/2addr v8, v10

    .line 139
    .local v8, "gaindelta":F
    iget-boolean v10, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->mix:Z

    if-eqz v10, :cond_19

    .line 140
    if-nez v2, :cond_17

    .line 141
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    if-ge v10, v6, :cond_16

    .line 142
    iget v11, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    add-float/2addr v11, v8

    iput v11, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    .line 143
    aget v11, v1, v10

    .line 144
    .local v11, "bL":F
    iget-object v12, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferL:[F

    aget v12, v12, v10

    .line 145
    .local v12, "tL":F
    iget-object v13, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferL:[F

    aput v11, v13, v10

    .line 146
    aget v13, v4, v10

    iget v14, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    mul-float/2addr v14, v12

    add-float/2addr v13, v14

    aput v13, v4, v10

    .line 141
    .end local v11    # "bL":F
    .end local v12    # "tL":F
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_16
    move/from16 v16, v5

    .end local v10    # "i":I
    goto/16 :goto_a

    .line 149
    :cond_17
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_7
    if-ge v10, v6, :cond_18

    .line 150
    iget v11, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    add-float/2addr v11, v8

    iput v11, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    .line 151
    aget v11, v1, v10

    .line 152
    .restart local v11    # "bL":F
    aget v12, v2, v10

    .line 153
    .local v12, "bR":F
    iget-object v13, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferL:[F

    aget v13, v13, v10

    .line 154
    .local v13, "tL":F
    iget-object v14, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferR:[F

    aget v14, v14, v10

    .line 155
    .local v14, "tR":F
    iget-object v15, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferL:[F

    aput v11, v15, v10

    .line 156
    iget-object v15, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferR:[F

    aput v12, v15, v10

    .line 157
    aget v15, v4, v10

    move/from16 v16, v5

    .end local v5    # "max":F
    .local v16, "max":F
    iget v5, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    mul-float/2addr v5, v13

    add-float/2addr v15, v5

    aput v15, v4, v10

    .line 158
    aget v5, v3, v10

    iget v15, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    mul-float/2addr v15, v14

    add-float/2addr v5, v15

    aput v5, v3, v10

    .line 149
    .end local v11    # "bL":F
    .end local v12    # "bR":F
    .end local v13    # "tL":F
    .end local v14    # "tR":F
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v16

    goto :goto_7

    .end local v16    # "max":F
    .restart local v5    # "max":F
    :cond_18
    move/from16 v16, v5

    .end local v5    # "max":F
    .end local v10    # "i":I
    .restart local v16    # "max":F
    goto :goto_a

    .line 163
    .end local v16    # "max":F
    .restart local v5    # "max":F
    :cond_19
    move/from16 v16, v5

    .end local v5    # "max":F
    .restart local v16    # "max":F
    if-nez v2, :cond_1b

    .line 164
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8
    if-ge v5, v6, :cond_1a

    .line 165
    iget v10, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    add-float/2addr v10, v8

    iput v10, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    .line 166
    aget v10, v1, v5

    .line 167
    .local v10, "bL":F
    iget-object v11, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferL:[F

    aget v11, v11, v5

    .line 168
    .local v11, "tL":F
    iget-object v12, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferL:[F

    aput v10, v12, v5

    .line 169
    iget v12, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    mul-float/2addr v12, v11

    aput v12, v4, v5

    .line 164
    .end local v10    # "bL":F
    .end local v11    # "tL":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .end local v5    # "i":I
    :cond_1a
    goto :goto_a

    .line 172
    :cond_1b
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_9
    if-ge v5, v6, :cond_1c

    .line 173
    iget v10, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    add-float/2addr v10, v8

    iput v10, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    .line 174
    aget v10, v1, v5

    .line 175
    .restart local v10    # "bL":F
    aget v11, v2, v5

    .line 176
    .local v11, "bR":F
    iget-object v12, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferL:[F

    aget v12, v12, v5

    .line 177
    .local v12, "tL":F
    iget-object v13, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferR:[F

    aget v13, v13, v5

    .line 178
    .local v13, "tR":F
    iget-object v14, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferL:[F

    aput v10, v14, v5

    .line 179
    iget-object v14, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->temp_bufferR:[F

    aput v11, v14, v5

    .line 180
    iget v14, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    mul-float/2addr v14, v12

    aput v14, v4, v5

    .line 181
    iget v14, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    mul-float/2addr v14, v13

    aput v14, v3, v5

    .line 172
    .end local v10    # "bL":F
    .end local v11    # "bR":F
    .end local v12    # "tL":F
    .end local v13    # "tR":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 186
    .end local v5    # "i":I
    :cond_1c
    :goto_a
    iput v9, v0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->gain:F

    .line 187
    return-void
.end method

.method public processControlLogic()V
    .locals 0

    .line 190
    return-void
.end method

.method public setInput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V
    .locals 1
    .param p1, "pin"    # I
    .param p2, "input"    # Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 51
    if-nez p1, :cond_0

    .line 52
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->bufferL:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 53
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 54
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->bufferR:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 55
    :cond_1
    return-void
.end method

.method public setMixMode(Z)V
    .locals 0
    .param p1, "mix"    # Z

    .line 65
    iput-boolean p1, p0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->mix:Z

    .line 66
    return-void
.end method

.method public setOutput(ILcn/sherlock/com/sun/media/sound/SoftAudioBuffer;)V
    .locals 1
    .param p1, "pin"    # I
    .param p2, "output"    # Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 58
    if-nez p1, :cond_0

    .line 59
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->bufferLout:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 60
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 61
    iput-object p2, p0, Lcn/sherlock/com/sun/media/sound/SoftLimiter;->bufferRout:Lcn/sherlock/com/sun/media/sound/SoftAudioBuffer;

    .line 62
    :cond_1
    return-void
.end method
