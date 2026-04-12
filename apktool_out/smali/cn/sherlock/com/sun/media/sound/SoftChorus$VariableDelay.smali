.class Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;
.super Ljava/lang/Object;
.source "SoftChorus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftChorus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableDelay"
.end annotation


# instance fields
.field private delay:F

.field private delaybuffer:[F

.field private feedback:F

.field private gain:F

.field private lastdelay:F

.field private rgain:F

.field private rovepos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxbuffersize"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->rovepos:I

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->gain:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->rgain:F

    .line 43
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->delay:F

    .line 44
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->lastdelay:F

    .line 45
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->feedback:F

    .line 48
    new-array v0, p1, [F

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->delaybuffer:[F

    .line 49
    return-void
.end method


# virtual methods
.method public processMix([F[F[F)V
    .locals 21
    .param p1, "in"    # [F
    .param p2, "out"    # [F
    .param p3, "rout"    # [F

    .line 68
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->gain:F

    .line 69
    .local v2, "gain":F
    iget v3, v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->delay:F

    .line 70
    .local v3, "delay":F
    iget v4, v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->feedback:F

    .line 72
    .local v4, "feedback":F
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->delaybuffer:[F

    .line 73
    .local v5, "delaybuffer":[F
    array-length v6, v1

    .line 74
    .local v6, "len":I
    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->lastdelay:F

    sub-float v7, v3, v7

    int-to-float v8, v6

    div-float/2addr v7, v8

    .line 75
    .local v7, "delaydelta":F
    array-length v8, v5

    .line 76
    .local v8, "rnlen":I
    iget v9, v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->rovepos:I

    .line 78
    .local v9, "rovepos":I
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    if-nez p3, :cond_1

    .line 79
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v6, :cond_0

    .line 80
    int-to-float v13, v9

    iget v14, v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->lastdelay:F

    add-float/2addr v14, v11

    sub-float/2addr v13, v14

    int-to-float v14, v8

    add-float/2addr v13, v14

    .line 81
    .local v13, "r":F
    float-to-int v14, v13

    .line 82
    .local v14, "ri":I
    int-to-float v15, v14

    sub-float v15, v13, v15

    .line 83
    .local v15, "s":F
    rem-int v16, v14, v8

    aget v16, v5, v16

    .line 84
    .local v16, "a":F
    add-int/lit8 v17, v14, 0x1

    rem-int v17, v17, v8

    aget v17, v5, v17

    .line 85
    .local v17, "b":F
    sub-float v18, v10, v15

    mul-float v18, v18, v16

    mul-float v19, v17, v15

    add-float v18, v18, v19

    .line 86
    .local v18, "o":F
    aget v19, p2, v12

    mul-float v20, v18, v2

    add-float v19, v19, v20

    aput v19, p2, v12

    .line 87
    aget v19, v1, v12

    mul-float v20, v18, v4

    add-float v19, v19, v20

    aput v19, v5, v9

    .line 88
    add-int/lit8 v19, v9, 0x1

    rem-int v9, v19, v8

    .line 89
    iget v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->lastdelay:F

    add-float/2addr v10, v7

    iput v10, v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->lastdelay:F

    .line 79
    .end local v13    # "r":F
    .end local v14    # "ri":I
    .end local v15    # "s":F
    .end local v16    # "a":F
    .end local v17    # "b":F
    .end local v18    # "o":F
    add-int/lit8 v12, v12, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_0

    .end local v12    # "i":I
    :cond_0
    goto :goto_2

    .line 92
    :cond_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_2

    .line 93
    int-to-float v12, v9

    iget v13, v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->lastdelay:F

    add-float/2addr v13, v11

    sub-float/2addr v12, v13

    int-to-float v13, v8

    add-float/2addr v12, v13

    .line 94
    .local v12, "r":F
    float-to-int v13, v12

    .line 95
    .local v13, "ri":I
    int-to-float v14, v13

    sub-float v14, v12, v14

    .line 96
    .local v14, "s":F
    rem-int v15, v13, v8

    aget v15, v5, v15

    .line 97
    .local v15, "a":F
    add-int/lit8 v16, v13, 0x1

    rem-int v16, v16, v8

    aget v16, v5, v16

    .line 98
    .local v16, "b":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v18, v17, v14

    mul-float v18, v18, v15

    mul-float v19, v16, v14

    add-float v18, v18, v19

    .line 99
    .restart local v18    # "o":F
    aget v19, p2, v10

    mul-float v20, v18, v2

    add-float v19, v19, v20

    aput v19, p2, v10

    .line 100
    aget v19, p3, v10

    iget v11, v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->rgain:F

    mul-float v11, v11, v18

    add-float v19, v19, v11

    aput v19, p3, v10

    .line 101
    aget v11, v1, v10

    mul-float v19, v18, v4

    add-float v11, v11, v19

    aput v11, v5, v9

    .line 102
    add-int/lit8 v11, v9, 0x1

    rem-int v9, v11, v8

    .line 103
    iget v11, v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->lastdelay:F

    add-float/2addr v11, v7

    iput v11, v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->lastdelay:F

    .line 92
    .end local v12    # "r":F
    .end local v13    # "ri":I
    .end local v14    # "s":F
    .end local v15    # "a":F
    .end local v16    # "b":F
    .end local v18    # "o":F
    add-int/lit8 v10, v10, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_1

    .line 105
    .end local v10    # "i":I
    :cond_2
    :goto_2
    iput v9, v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->rovepos:I

    .line 106
    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->lastdelay:F

    .line 107
    return-void
.end method

.method public processReplace([F[F[F)V
    .locals 1
    .param p1, "in"    # [F
    .param p2, "out"    # [F
    .param p3, "rout"    # [F

    .line 110
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 111
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 112
    invoke-virtual {p0, p1, p2, p3}, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->processMix([F[F[F)V

    .line 113
    return-void
.end method

.method public setDelay(F)V
    .locals 0
    .param p1, "delay"    # F

    .line 52
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->delay:F

    .line 53
    return-void
.end method

.method public setFeedBack(F)V
    .locals 0
    .param p1, "feedback"    # F

    .line 56
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->feedback:F

    .line 57
    return-void
.end method

.method public setGain(F)V
    .locals 0
    .param p1, "gain"    # F

    .line 60
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->gain:F

    .line 61
    return-void
.end method

.method public setReverbSendGain(F)V
    .locals 0
    .param p1, "rgain"    # F

    .line 64
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftChorus$VariableDelay;->rgain:F

    .line 65
    return-void
.end method
