.class public Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;
.super Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;
.source "SoftLanczosResampler.java"


# instance fields
.field sinc_table:[[F

.field sinc_table_center:I

.field sinc_table_fsize:I

.field sinc_table_size:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 40
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;-><init>()V

    .line 35
    const/16 v0, 0x7d0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table_fsize:I

    .line 36
    const/4 v0, 0x5

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table_size:I

    .line 37
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table_size:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table_center:I

    .line 41
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table_fsize:I

    new-array v0, v0, [[F

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table:[[F

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table_fsize:I

    if-ge v0, v1, :cond_0

    .line 43
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table:[[F

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table_size:I

    neg-int v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table_fsize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sincTable(IF)[F

    move-result-object v2

    aput-object v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static sinc(D)D
    .locals 4
    .param p0, "x"    # D

    .line 50
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

.method public static sincTable(IF)[F
    .locals 12
    .param p0, "size"    # I
    .param p1, "offset"    # F

    .line 55
    div-int/lit8 v0, p0, 0x2

    .line 56
    .local v0, "center":I
    new-array v1, p0, [F

    .line 57
    .local v1, "w":[F
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, p0, :cond_3

    .line 58
    neg-int v3, v0

    add-int/2addr v3, v2

    int-to-float v3, v3

    add-float/2addr v3, p1

    .line 59
    .local v3, "x":F
    const/high16 v4, -0x40000000    # -2.0f

    cmpg-float v4, v3, v4

    const/4 v5, 0x0

    if-ltz v4, :cond_2

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    cmpl-float v4, v3, v5

    if-nez v4, :cond_1

    .line 62
    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    goto :goto_2

    .line 64
    :cond_1
    float-to-double v4, v3

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v8

    float-to-double v10, v3

    mul-double/2addr v10, v6

    div-double/2addr v10, v8

    .line 65
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    float-to-double v8, v3

    mul-double/2addr v8, v6

    float-to-double v10, v3

    mul-double/2addr v10, v6

    mul-double/2addr v8, v10

    div-double/2addr v4, v8

    double-to-float v4, v4

    aput v4, v1, v2

    goto :goto_2

    .line 60
    :cond_2
    :goto_1
    aput v5, v1, v2

    .line 57
    .end local v3    # "x":F
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "k":I
    :cond_3
    return-object v1
.end method


# virtual methods
.method public getPadding()I
    .locals 1

    .line 74
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table_size:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public interpolate([F[FF[FF[F[II)V
    .locals 14
    .param p1, "in"    # [F
    .param p2, "in_offset"    # [F
    .param p3, "in_end"    # F
    .param p4, "startpitch"    # [F
    .param p5, "pitchstep"    # F
    .param p6, "out"    # [F
    .param p7, "out_offset"    # [I
    .param p8, "out_end"    # I

    .line 80
    move-object v0, p0

    const/4 v1, 0x0

    aget v2, p4, v1

    .line 81
    .local v2, "pitch":F
    aget v3, p2, v1

    .line 82
    .local v3, "ix":F
    aget v4, p7, v1

    .line 83
    .local v4, "ox":I
    move/from16 v5, p3

    .line 84
    .local v5, "ix_end":F
    move/from16 v6, p8

    .line 86
    .local v6, "ox_end":I
    const/4 v7, 0x0

    cmpl-float v7, p5, v7

    if-nez v7, :cond_1

    .line 87
    :goto_0
    cmpg-float v7, v3, v5

    if-gez v7, :cond_3

    if-ge v4, v6, :cond_3

    .line 88
    float-to-int v7, v3

    .line 89
    .local v7, "iix":I
    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table:[[F

    int-to-float v9, v7

    sub-float v9, v3, v9

    iget v10, v0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table_fsize:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    aget-object v8, v8, v9

    .line 91
    .local v8, "sinc_table":[F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table_center:I

    sub-int v9, v7, v9

    .line 92
    .local v9, "xx":I
    const/4 v10, 0x0

    .line 93
    .local v10, "y":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    iget v12, v0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table_size:I

    if-ge v11, v12, :cond_0

    .line 94
    aget v12, p1, v9

    aget v13, v8, v11

    mul-float/2addr v12, v13

    add-float/2addr v10, v12

    .line 93
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 95
    .end local v11    # "i":I
    :cond_0
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "ox":I
    .local v11, "ox":I
    aput v10, p6, v4

    .line 96
    add-float/2addr v3, v2

    .line 97
    .end local v7    # "iix":I
    .end local v8    # "sinc_table":[F
    .end local v9    # "xx":I
    .end local v10    # "y":F
    move v4, v11

    goto :goto_0

    .line 99
    .end local v11    # "ox":I
    .restart local v4    # "ox":I
    :cond_1
    :goto_2
    cmpg-float v7, v3, v5

    if-gez v7, :cond_3

    if-ge v4, v6, :cond_3

    .line 100
    float-to-int v7, v3

    .line 101
    .restart local v7    # "iix":I
    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table:[[F

    int-to-float v9, v7

    sub-float v9, v3, v9

    iget v10, v0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table_fsize:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    aget-object v8, v8, v9

    .line 103
    .restart local v8    # "sinc_table":[F
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table_center:I

    sub-int v9, v7, v9

    .line 104
    .restart local v9    # "xx":I
    const/4 v10, 0x0

    .line 105
    .restart local v10    # "y":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    iget v12, v0, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;->sinc_table_size:I

    if-ge v11, v12, :cond_2

    .line 106
    aget v12, p1, v9

    aget v13, v8, v11

    mul-float/2addr v12, v13

    add-float/2addr v10, v12

    .line 105
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 107
    .end local v11    # "i":I
    :cond_2
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "ox":I
    .local v11, "ox":I
    aput v10, p6, v4

    .line 109
    add-float/2addr v3, v2

    .line 110
    add-float v2, v2, p5

    .line 111
    .end local v7    # "iix":I
    .end local v8    # "sinc_table":[F
    .end local v9    # "xx":I
    .end local v10    # "y":F
    move v4, v11

    goto :goto_2

    .line 113
    .end local v11    # "ox":I
    .restart local v4    # "ox":I
    :cond_3
    aput v3, p2, v1

    .line 114
    aput v4, p7, v1

    .line 115
    aput v2, p4, v1

    .line 117
    return-void
.end method
