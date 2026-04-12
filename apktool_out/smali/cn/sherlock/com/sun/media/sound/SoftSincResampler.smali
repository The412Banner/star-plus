.class public Lcn/sherlock/com/sun/media/sound/SoftSincResampler;
.super Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;
.source "SoftSincResampler.java"


# instance fields
.field sinc_scale_size:I

.field sinc_table:[[[F

.field sinc_table_center:I

.field sinc_table_fsize:I

.field sinc_table_size:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 43
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;-><init>()V

    .line 37
    const/16 v0, 0x64

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_scale_size:I

    .line 38
    const/16 v0, 0x320

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table_fsize:I

    .line 39
    const/16 v0, 0x1e

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table_size:I

    .line 40
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table_size:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table_center:I

    .line 44
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_scale_size:I

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table_fsize:I

    new-array v1, v1, [I

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x0

    aput v0, v1, v2

    const-class v0, [F

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table:[[[F

    .line 45
    const/4 v0, 0x0

    .local v0, "s":I
    :goto_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_scale_size:I

    if-ge v0, v1, :cond_1

    .line 46
    int-to-double v1, v0

    const-wide v3, 0x3ff199999999999aL    # 1.1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    div-double/2addr v3, v1

    double-to-float v1, v3

    .line 47
    .local v1, "scale":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table_fsize:I

    if-ge v2, v3, :cond_0

    .line 48
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table:[[[F

    aget-object v3, v3, v0

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table_size:I

    neg-int v5, v2

    int-to-float v5, v5

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table_fsize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5, v1}, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sincTable(IFF)[F

    move-result-object v4

    aput-object v4, v3, v2

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 45
    .end local v1    # "scale":F
    .end local v2    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "s":I
    :cond_1
    return-void
.end method

.method public static sinc(D)D
    .locals 4
    .param p0, "x"    # D

    .line 56
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, p0

    div-double v0, v2, v0

    :goto_0
    return-wide v0
.end method

.method public static sincTable(IFF)[F
    .locals 9
    .param p0, "size"    # I
    .param p1, "offset"    # F
    .param p2, "scale"    # F

    .line 72
    div-int/lit8 v0, p0, 0x2

    .line 73
    .local v0, "center":I
    invoke-static {p0, p1}, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->wHanning(IF)[F

    move-result-object v1

    .line 74
    .local v1, "w":[F
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 75
    aget v3, v1, v2

    float-to-double v3, v3

    neg-int v5, v0

    add-int/2addr v5, v2

    int-to-float v5, v5

    add-float/2addr v5, p1

    mul-float/2addr v5, p2

    float-to-double v5, v5

    invoke-static {v5, v6}, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc(D)D

    move-result-wide v5

    float-to-double v7, p2

    mul-double/2addr v5, v7

    mul-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v1, v2

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "k":I
    :cond_0
    return-object v1
.end method

.method public static wHanning(IF)[F
    .locals 6
    .param p0, "size"    # I
    .param p1, "offset"    # F

    .line 61
    new-array v0, p0, [F

    .line 62
    .local v0, "window_table":[F
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 63
    int-to-float v2, v1

    add-float/2addr v2, p1

    float-to-double v2, v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, v4

    int-to-double v4, p0

    div-double/2addr v2, v4

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "k":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getPadding()I
    .locals 1

    .line 81
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table_size:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

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

    .line 87
    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p4, v1

    .line 88
    .local v2, "pitch":F
    aget v3, p2, v1

    .line 89
    .local v3, "ix":F
    aget v4, p7, v1

    .line 90
    .local v4, "ox":I
    move/from16 v5, p3

    .line 91
    .local v5, "ix_end":F
    move/from16 v6, p8

    .line 92
    .local v6, "ox_end":I
    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_scale_size:I

    add-int/lit8 v7, v7, -0x1

    .line 93
    .local v7, "max_p":I
    const/4 v8, 0x0

    cmpl-float v8, p5, v8

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x3f800000    # 1.0f

    if-nez v8, :cond_4

    .line 95
    sub-float v8, v2, v10

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 96
    .local v8, "p":I
    if-gez v8, :cond_0

    .line 97
    const/4 v8, 0x0

    goto :goto_0

    .line 98
    :cond_0
    if-le v8, v7, :cond_1

    .line 99
    move v8, v7

    .line 100
    :cond_1
    :goto_0
    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table:[[[F

    aget-object v9, v9, v8

    .line 101
    .local v9, "sinc_table_f":[[F
    :goto_1
    cmpg-float v10, v3, v5

    if-gez v10, :cond_3

    if-ge v4, v6, :cond_3

    .line 102
    float-to-int v10, v3

    .line 103
    .local v10, "iix":I
    int-to-float v11, v10

    sub-float v11, v3, v11

    iget v12, v0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table_fsize:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    aget-object v11, v9, v11

    .line 105
    .local v11, "sinc_table":[F
    iget v12, v0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table_center:I

    sub-int v12, v10, v12

    .line 106
    .local v12, "xx":I
    const/4 v13, 0x0

    .line 107
    .local v13, "y":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    iget v15, v0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table_size:I

    if-ge v14, v15, :cond_2

    .line 108
    aget v15, p1, v12

    aget v16, v11, v14

    mul-float v15, v15, v16

    add-float/2addr v13, v15

    .line 107
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 109
    .end local v14    # "i":I
    :cond_2
    add-int/lit8 v14, v4, 0x1

    .end local v4    # "ox":I
    .local v14, "ox":I
    aput v13, p6, v4

    .line 110
    add-float/2addr v3, v2

    .line 111
    .end local v10    # "iix":I
    .end local v11    # "sinc_table":[F
    .end local v12    # "xx":I
    .end local v13    # "y":F
    move v4, v14

    goto :goto_1

    .line 112
    .end local v8    # "p":I
    .end local v9    # "sinc_table_f":[[F
    .end local v14    # "ox":I
    .restart local v4    # "ox":I
    :cond_3
    goto :goto_6

    .line 113
    :cond_4
    :goto_3
    cmpg-float v8, v3, v5

    if-gez v8, :cond_8

    if-ge v4, v6, :cond_8

    .line 114
    float-to-int v8, v3

    .line 115
    .local v8, "iix":I
    sub-float v11, v2, v10

    mul-float/2addr v11, v9

    float-to-int v11, v11

    .line 116
    .local v11, "p":I
    if-gez v11, :cond_5

    .line 117
    const/4 v11, 0x0

    goto :goto_4

    .line 118
    :cond_5
    if-le v11, v7, :cond_6

    .line 119
    move v11, v7

    .line 120
    :cond_6
    :goto_4
    iget-object v12, v0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table:[[[F

    aget-object v12, v12, v11

    .line 122
    .local v12, "sinc_table_f":[[F
    int-to-float v13, v8

    sub-float v13, v3, v13

    iget v14, v0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table_fsize:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    aget-object v13, v12, v13

    .line 124
    .local v13, "sinc_table":[F
    iget v14, v0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table_center:I

    sub-int v14, v8, v14

    .line 125
    .local v14, "xx":I
    const/4 v15, 0x0

    .line 126
    .local v15, "y":F
    const/16 v16, 0x0

    move/from16 v9, v16

    .local v9, "i":I
    :goto_5
    iget v10, v0, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;->sinc_table_size:I

    if-ge v9, v10, :cond_7

    .line 127
    aget v10, p1, v14

    aget v17, v13, v9

    mul-float v10, v10, v17

    add-float/2addr v15, v10

    .line 126
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v14, v14, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_5

    .line 128
    .end local v9    # "i":I
    :cond_7
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ox":I
    .local v9, "ox":I
    aput v15, p6, v4

    .line 130
    add-float/2addr v3, v2

    .line 131
    add-float v2, v2, p5

    .line 132
    .end local v8    # "iix":I
    .end local v11    # "p":I
    .end local v12    # "sinc_table_f":[[F
    .end local v13    # "sinc_table":[F
    .end local v14    # "xx":I
    .end local v15    # "y":F
    move v4, v9

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_3

    .line 134
    .end local v9    # "ox":I
    .restart local v4    # "ox":I
    :cond_8
    :goto_6
    aput v3, p2, v1

    .line 135
    aput v4, p7, v1

    .line 136
    aput v2, p4, v1

    .line 138
    return-void
.end method
