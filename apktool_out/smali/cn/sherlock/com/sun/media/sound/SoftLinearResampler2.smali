.class public Lcn/sherlock/com/sun/media/sound/SoftLinearResampler2;
.super Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;
.source "SoftLinearResampler2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;-><init>()V

    return-void
.end method


# virtual methods
.method public getPadding()I
    .locals 1

    .line 37
    const/4 v0, 0x2

    return v0
.end method

.method public interpolate([F[FF[FF[F[II)V
    .locals 17
    .param p1, "in"    # [F
    .param p2, "in_offset"    # [F
    .param p3, "in_end"    # F
    .param p4, "startpitch"    # [F
    .param p5, "pitchstep"    # F
    .param p6, "out"    # [F
    .param p7, "out_offset"    # [I
    .param p8, "out_end"    # I

    .line 44
    const/4 v0, 0x0

    aget v1, p4, v0

    .line 45
    .local v1, "pitch":F
    aget v2, p2, v0

    .line 46
    .local v2, "ix":F
    aget v3, p7, v0

    .line 47
    .local v3, "ox":I
    move/from16 v4, p3

    .line 48
    .local v4, "ix_end":F
    move/from16 v5, p8

    .line 51
    .local v5, "ox_end":I
    cmpg-float v6, v2, v4

    if-gez v6, :cond_6

    if-lt v3, v5, :cond_0

    goto :goto_3

    .line 56
    :cond_0
    const/high16 v6, 0x47000000    # 32768.0f

    mul-float v7, v2, v6

    float-to-int v7, v7

    .line 57
    .local v7, "p_ix":I
    mul-float v8, v4, v6

    float-to-int v8, v8

    .line 58
    .local v8, "p_ix_end":I
    mul-float v9, v1, v6

    float-to-int v9, v9

    .line 61
    .local v9, "p_pitch":I
    int-to-float v10, v9

    const/high16 v11, 0x38000000

    mul-float/2addr v10, v11

    .line 63
    .end local v1    # "pitch":F
    .local v10, "pitch":F
    const/4 v1, 0x0

    cmpl-float v1, p5, v1

    if-nez v1, :cond_4

    .line 70
    sub-int v1, v8, v7

    .line 71
    .local v1, "p_ix_len":I
    rem-int v6, v1, v9

    .line 72
    .local v6, "p_mod":I
    if-eqz v6, :cond_1

    .line 73
    sub-int v11, v9, v6

    add-int/2addr v1, v11

    .line 74
    :cond_1
    div-int v11, v1, v9

    add-int/2addr v11, v3

    .line 75
    .local v11, "ox_end2":I
    if-ge v11, v5, :cond_2

    .line 76
    move v5, v11

    .line 78
    :cond_2
    :goto_0
    if-ge v3, v5, :cond_3

    .line 79
    shr-int/lit8 v12, v7, 0xf

    .line 80
    .local v12, "iix":I
    int-to-float v13, v12

    sub-float v13, v2, v13

    .line 81
    .local v13, "fix":F
    aget v14, p1, v12

    .line 82
    .local v14, "i":F
    add-int/lit8 v15, v3, 0x1

    .end local v3    # "ox":I
    .local v15, "ox":I
    add-int/lit8 v16, v12, 0x1

    aget v16, p1, v16

    sub-float v16, v16, v14

    mul-float v16, v16, v13

    add-float v16, v14, v16

    aput v16, p6, v3

    .line 83
    add-int/2addr v7, v9

    .line 84
    add-float/2addr v2, v10

    .line 85
    .end local v12    # "iix":I
    .end local v13    # "fix":F
    .end local v14    # "i":F
    move v3, v15

    goto :goto_0

    .line 87
    .end local v1    # "p_ix_len":I
    .end local v6    # "p_mod":I
    .end local v11    # "ox_end2":I
    .end local v15    # "ox":I
    .restart local v3    # "ox":I
    :cond_3
    move/from16 v6, p5

    goto :goto_2

    .line 89
    :cond_4
    mul-float v6, v6, p5

    float-to-int v1, v6

    .line 90
    .local v1, "p_pitchstep":I
    int-to-float v6, v1

    mul-float/2addr v6, v11

    .line 92
    .end local p5    # "pitchstep":F
    .local v6, "pitchstep":F
    :goto_1
    if-ge v7, v8, :cond_5

    if-ge v3, v5, :cond_5

    .line 93
    shr-int/lit8 v11, v7, 0xf

    .line 94
    .local v11, "iix":I
    int-to-float v12, v11

    sub-float v12, v2, v12

    .line 95
    .local v12, "fix":F
    aget v13, p1, v11

    .line 96
    .local v13, "i":F
    add-int/lit8 v14, v3, 0x1

    .end local v3    # "ox":I
    .local v14, "ox":I
    add-int/lit8 v15, v11, 0x1

    aget v15, p1, v15

    sub-float/2addr v15, v13

    mul-float/2addr v15, v12

    add-float/2addr v15, v13

    aput v15, p6, v3

    .line 97
    add-float/2addr v2, v10

    .line 98
    add-int/2addr v7, v9

    .line 99
    add-float/2addr v10, v6

    .line 100
    add-int/2addr v9, v1

    .line 101
    .end local v11    # "iix":I
    .end local v12    # "fix":F
    .end local v13    # "i":F
    move v3, v14

    goto :goto_1

    .line 103
    .end local v1    # "p_pitchstep":I
    .end local v14    # "ox":I
    .restart local v3    # "ox":I
    :cond_5
    :goto_2
    aput v2, p2, v0

    .line 104
    aput v3, p7, v0

    .line 105
    aput v10, p4, v0

    .line 107
    return-void

    .line 52
    .end local v6    # "pitchstep":F
    .end local v7    # "p_ix":I
    .end local v8    # "p_ix_end":I
    .end local v9    # "p_pitch":I
    .end local v10    # "pitch":F
    .local v1, "pitch":F
    .restart local p5    # "pitchstep":F
    :cond_6
    :goto_3
    return-void
.end method
