.class public Lcn/sherlock/com/sun/media/sound/SoftPointResampler;
.super Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;
.source "SoftPointResampler.java"


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
    const/16 v0, 0x64

    return v0
.end method

.method public interpolate([F[FF[FF[F[II)V
    .locals 9
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
    move v4, p3

    .line 45
    .local v4, "ix_end":F
    move/from16 v5, p8

    int-to-float v6, v5

    .line 46
    .local v6, "ox_end":F
    const/4 v7, 0x0

    cmpl-float v7, p5, v7

    if-nez v7, :cond_0

    .line 47
    :goto_0
    cmpg-float v7, v2, v4

    if-gez v7, :cond_1

    int-to-float v7, v3

    cmpg-float v7, v7, v6

    if-gez v7, :cond_1

    .line 48
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "ox":I
    .local v7, "ox":I
    float-to-int v8, v2

    aget v8, p1, v8

    aput v8, p6, v3

    .line 49
    add-float/2addr v2, v1

    move v3, v7

    goto :goto_0

    .line 52
    .end local v7    # "ox":I
    .restart local v3    # "ox":I
    :cond_0
    :goto_1
    cmpg-float v7, v2, v4

    if-gez v7, :cond_1

    int-to-float v7, v3

    cmpg-float v7, v7, v6

    if-gez v7, :cond_1

    .line 53
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "ox":I
    .restart local v7    # "ox":I
    float-to-int v8, v2

    aget v8, p1, v8

    aput v8, p6, v3

    .line 54
    add-float/2addr v2, v1

    .line 55
    add-float/2addr v1, p5

    move v3, v7

    goto :goto_1

    .line 58
    .end local v7    # "ox":I
    .restart local v3    # "ox":I
    :cond_1
    aput v2, p2, v0

    .line 59
    aput v3, p7, v0

    .line 60
    aput v1, p4, v0

    .line 62
    return-void
.end method
