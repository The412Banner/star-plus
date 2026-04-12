.class public Lcn/sherlock/com/sun/media/sound/SoftLinearResampler;
.super Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;
.source "SoftLinearResampler.java"


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
    const/4 v0, 0x2

    return v0
.end method

.method public interpolate([F[FF[FF[F[II)V
    .locals 11
    .param p1, "in"    # [F
    .param p2, "in_offset"    # [F
    .param p3, "in_end"    # F
    .param p4, "startpitch"    # [F
    .param p5, "pitchstep"    # F
    .param p6, "out"    # [F
    .param p7, "out_offset"    # [I
    .param p8, "out_end"    # I

    .line 42
    const/4 v0, 0x0

    aget v1, p4, v0

    .line 43
    .local v1, "pitch":F
    aget v2, p2, v0

    .line 44
    .local v2, "ix":F
    aget v3, p7, v0

    .line 45
    .local v3, "ox":I
    move v4, p3

    .line 46
    .local v4, "ix_end":F
    move/from16 v5, p8

    .line 47
    .local v5, "ox_end":I
    const/4 v6, 0x0

    cmpl-float v6, p5, v6

    if-nez v6, :cond_0

    .line 48
    :goto_0
    cmpg-float v6, v2, v4

    if-gez v6, :cond_1

    if-ge v3, v5, :cond_1

    .line 49
    float-to-int v6, v2

    .line 50
    .local v6, "iix":I
    int-to-float v7, v6

    sub-float v7, v2, v7

    .line 51
    .local v7, "fix":F
    aget v8, p1, v6

    .line 52
    .local v8, "i":F
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "ox":I
    .local v9, "ox":I
    add-int/lit8 v10, v6, 0x1

    aget v10, p1, v10

    sub-float/2addr v10, v8

    mul-float/2addr v10, v7

    add-float/2addr v10, v8

    aput v10, p6, v3

    .line 53
    add-float/2addr v2, v1

    .line 54
    .end local v6    # "iix":I
    .end local v7    # "fix":F
    .end local v8    # "i":F
    move v3, v9

    goto :goto_0

    .line 56
    .end local v9    # "ox":I
    .restart local v3    # "ox":I
    :cond_0
    :goto_1
    cmpg-float v6, v2, v4

    if-gez v6, :cond_1

    if-ge v3, v5, :cond_1

    .line 57
    float-to-int v6, v2

    .line 58
    .restart local v6    # "iix":I
    int-to-float v7, v6

    sub-float v7, v2, v7

    .line 59
    .restart local v7    # "fix":F
    aget v8, p1, v6

    .line 60
    .restart local v8    # "i":F
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "ox":I
    .restart local v9    # "ox":I
    add-int/lit8 v10, v6, 0x1

    aget v10, p1, v10

    sub-float/2addr v10, v8

    mul-float/2addr v10, v7

    add-float/2addr v10, v8

    aput v10, p6, v3

    .line 61
    add-float/2addr v2, v1

    .line 62
    add-float v1, v1, p5

    .line 63
    .end local v6    # "iix":I
    .end local v7    # "fix":F
    .end local v8    # "i":F
    move v3, v9

    goto :goto_1

    .line 65
    .end local v9    # "ox":I
    .restart local v3    # "ox":I
    :cond_1
    aput v2, p2, v0

    .line 66
    aput v3, p7, v0

    .line 67
    aput v1, p4, v0

    .line 69
    return-void
.end method
