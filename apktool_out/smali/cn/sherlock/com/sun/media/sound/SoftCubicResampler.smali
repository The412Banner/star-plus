.class public Lcn/sherlock/com/sun/media/sound/SoftCubicResampler;
.super Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;
.source "SoftCubicResampler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;-><init>()V

    return-void
.end method


# virtual methods
.method public getPadding()I
    .locals 1

    .line 35
    const/4 v0, 0x3

    return v0
.end method

.method public interpolate([F[FF[FF[F[II)V
    .locals 18
    .param p1, "in"    # [F
    .param p2, "in_offset"    # [F
    .param p3, "in_end"    # F
    .param p4, "startpitch"    # [F
    .param p5, "pitchstep"    # F
    .param p6, "out"    # [F
    .param p7, "out_offset"    # [I
    .param p8, "out_end"    # I

    .line 41
    const/4 v0, 0x0

    aget v1, p4, v0

    .line 42
    .local v1, "pitch":F
    aget v2, p2, v0

    .line 43
    .local v2, "ix":F
    aget v3, p7, v0

    .line 44
    .local v3, "ox":I
    move/from16 v4, p3

    .line 45
    .local v4, "ix_end":F
    move/from16 v5, p8

    .line 46
    .local v5, "ox_end":I
    const/4 v6, 0x0

    cmpl-float v6, p5, v6

    if-nez v6, :cond_0

    .line 47
    :goto_0
    cmpg-float v6, v2, v4

    if-gez v6, :cond_1

    if-ge v3, v5, :cond_1

    .line 48
    float-to-int v6, v2

    .line 49
    .local v6, "iix":I
    int-to-float v7, v6

    sub-float v7, v2, v7

    .line 50
    .local v7, "fix":F
    add-int/lit8 v8, v6, -0x1

    aget v8, p1, v8

    .line 51
    .local v8, "y0":F
    aget v9, p1, v6

    .line 52
    .local v9, "y1":F
    add-int/lit8 v10, v6, 0x1

    aget v10, p1, v10

    .line 53
    .local v10, "y2":F
    add-int/lit8 v11, v6, 0x2

    aget v11, p1, v11

    .line 54
    .local v11, "y3":F
    sub-float v12, v11, v10

    add-float/2addr v12, v9

    sub-float/2addr v12, v8

    .line 55
    .local v12, "a0":F
    sub-float v13, v8, v9

    sub-float/2addr v13, v12

    .line 56
    .local v13, "a1":F
    sub-float v14, v10, v8

    .line 57
    .local v14, "a2":F
    move v15, v9

    .line 60
    .local v15, "a3":F
    add-int/lit8 v16, v3, 0x1

    .end local v3    # "ox":I
    .local v16, "ox":I
    mul-float v17, v12, v7

    add-float v17, v17, v13

    mul-float v17, v17, v7

    add-float v17, v17, v14

    mul-float v17, v17, v7

    add-float v17, v17, v15

    aput v17, p6, v3

    .line 61
    add-float/2addr v2, v1

    .line 62
    .end local v6    # "iix":I
    .end local v7    # "fix":F
    .end local v8    # "y0":F
    .end local v9    # "y1":F
    .end local v10    # "y2":F
    .end local v11    # "y3":F
    .end local v12    # "a0":F
    .end local v13    # "a1":F
    .end local v14    # "a2":F
    .end local v15    # "a3":F
    move/from16 v3, v16

    goto :goto_0

    .line 64
    .end local v16    # "ox":I
    .restart local v3    # "ox":I
    :cond_0
    :goto_1
    cmpg-float v6, v2, v4

    if-gez v6, :cond_1

    if-ge v3, v5, :cond_1

    .line 65
    float-to-int v6, v2

    .line 66
    .restart local v6    # "iix":I
    int-to-float v7, v6

    sub-float v7, v2, v7

    .line 67
    .restart local v7    # "fix":F
    add-int/lit8 v8, v6, -0x1

    aget v8, p1, v8

    .line 68
    .restart local v8    # "y0":F
    aget v9, p1, v6

    .line 69
    .restart local v9    # "y1":F
    add-int/lit8 v10, v6, 0x1

    aget v10, p1, v10

    .line 70
    .restart local v10    # "y2":F
    add-int/lit8 v11, v6, 0x2

    aget v11, p1, v11

    .line 71
    .restart local v11    # "y3":F
    sub-float v12, v11, v10

    add-float/2addr v12, v9

    sub-float/2addr v12, v8

    .line 72
    .restart local v12    # "a0":F
    sub-float v13, v8, v9

    sub-float/2addr v13, v12

    .line 73
    .restart local v13    # "a1":F
    sub-float v14, v10, v8

    .line 74
    .restart local v14    # "a2":F
    move v15, v9

    .line 77
    .restart local v15    # "a3":F
    add-int/lit8 v16, v3, 0x1

    .end local v3    # "ox":I
    .restart local v16    # "ox":I
    mul-float v17, v12, v7

    add-float v17, v17, v13

    mul-float v17, v17, v7

    add-float v17, v17, v14

    mul-float v17, v17, v7

    add-float v17, v17, v15

    aput v17, p6, v3

    .line 78
    add-float/2addr v2, v1

    .line 79
    add-float v1, v1, p5

    .line 80
    .end local v6    # "iix":I
    .end local v7    # "fix":F
    .end local v8    # "y0":F
    .end local v9    # "y1":F
    .end local v10    # "y2":F
    .end local v11    # "y3":F
    .end local v12    # "a0":F
    .end local v13    # "a1":F
    .end local v14    # "a2":F
    .end local v15    # "a3":F
    move/from16 v3, v16

    goto :goto_1

    .line 82
    .end local v16    # "ox":I
    .restart local v3    # "ox":I
    :cond_1
    aput v2, p2, v0

    .line 83
    aput v3, p7, v0

    .line 84
    aput v1, p4, v0

    .line 86
    return-void
.end method
