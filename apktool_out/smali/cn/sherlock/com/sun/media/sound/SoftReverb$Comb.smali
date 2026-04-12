.class final Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;
.super Ljava/lang/Object;
.source "SoftReverb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftReverb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Comb"
.end annotation


# instance fields
.field private final delaybuffer:[F

.field private final delaybuffersize:I

.field private feedback:F

.field private filtercoeff1:F

.field private filtercoeff2:F

.field private filtertemp:F

.field private rovepos:I


# direct methods
.method static bridge synthetic -$$Nest$fputfeedback(Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;F)V
    .locals 0

    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->feedback:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->rovepos:I

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->filtertemp:F

    .line 127
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->filtercoeff1:F

    .line 128
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->filtercoeff2:F

    .line 131
    new-array v0, p1, [F

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->delaybuffer:[F

    .line 132
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->delaybuffersize:I

    .line 133
    return-void
.end method


# virtual methods
.method public processMix([F[F)V
    .locals 10
    .param p1, "in"    # [F
    .param p2, "out"    # [F

    .line 141
    array-length v0, p1

    .line 142
    .local v0, "len":I
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->delaybuffersize:I

    .line 143
    .local v1, "delaybuffersize":I
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->rovepos:I

    .line 144
    .local v2, "rovepos":I
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->filtertemp:F

    .line 145
    .local v3, "filtertemp":F
    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->filtercoeff1:F

    .line 146
    .local v4, "filtercoeff1":F
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->filtercoeff2:F

    .line 147
    .local v5, "filtercoeff2":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_1

    .line 148
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->delaybuffer:[F

    aget v7, v7, v2

    .line 150
    .local v7, "delayout":F
    mul-float v8, v7, v5

    mul-float v9, v3, v4

    add-float v3, v8, v9

    .line 152
    aget v8, p2, v6

    add-float/2addr v8, v7

    aput v8, p2, v6

    .line 153
    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->delaybuffer:[F

    aget v9, p1, v6

    add-float/2addr v9, v3

    aput v9, v8, v2

    .line 154
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    .line 155
    const/4 v2, 0x0

    .line 147
    .end local v7    # "delayout":F
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 157
    .end local v6    # "i":I
    :cond_1
    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->filtertemp:F

    .line 158
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->rovepos:I

    .line 159
    return-void
.end method

.method public processReplace([F[F)V
    .locals 10
    .param p1, "in"    # [F
    .param p2, "out"    # [F

    .line 162
    array-length v0, p1

    .line 163
    .local v0, "len":I
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->delaybuffersize:I

    .line 164
    .local v1, "delaybuffersize":I
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->rovepos:I

    .line 165
    .local v2, "rovepos":I
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->filtertemp:F

    .line 166
    .local v3, "filtertemp":F
    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->filtercoeff1:F

    .line 167
    .local v4, "filtercoeff1":F
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->filtercoeff2:F

    .line 168
    .local v5, "filtercoeff2":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_1

    .line 169
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->delaybuffer:[F

    aget v7, v7, v2

    .line 171
    .local v7, "delayout":F
    mul-float v8, v7, v5

    mul-float v9, v3, v4

    add-float v3, v8, v9

    .line 173
    aput v7, p2, v6

    .line 174
    iget-object v8, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->delaybuffer:[F

    aget v9, p1, v6

    add-float/2addr v9, v3

    aput v9, v8, v2

    .line 175
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    .line 176
    const/4 v2, 0x0

    .line 168
    .end local v7    # "delayout":F
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 178
    .end local v6    # "i":I
    :cond_1
    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->filtertemp:F

    .line 179
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->rovepos:I

    .line 180
    return-void
.end method

.method public setDamp(F)V
    .locals 2
    .param p1, "val"    # F

    .line 183
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->filtercoeff1:F

    .line 184
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->filtercoeff1:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->feedback:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->filtercoeff2:F

    .line 185
    return-void
.end method

.method public setFeedBack(F)V
    .locals 2
    .param p1, "feedback"    # F

    .line 136
    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->feedback:F

    .line 137
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->filtercoeff1:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftReverb$Comb;->filtercoeff2:F

    .line 138
    return-void
.end method
