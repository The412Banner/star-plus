.class Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;
.super Ljava/lang/Object;
.source "SoftAbstractResampler.java"

# interfaces
.implements Lcn/sherlock/com/sun/media/sound/SoftResamplerStreamer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelAbstractResamplerStream"
.end annotation


# instance fields
.field current_pitch:[F

.field eof:Z

.field ibuffer:[[F

.field ibuffer_order:Z

.field ix:[F

.field loopdirection:Z

.field looplen:F

.field loopmode:I

.field loopstart:F

.field marklimit:I

.field markset:Z

.field noteOff_flag:Z

.field nrofchannels:I

.field ox:[I

.field pad:I

.field pad2:I

.field pitchcorrection:F

.field samplerateconv:F

.field sbuffer:[F

.field sector_loopstart:I

.field sector_pos:I

.field sector_size:I

.field started:Z

.field stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

.field stream_eof:Z

.field streampos:I

.field target_pitch:F

.field final synthetic this$0:Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;


# direct methods
.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;)V
    .locals 4

    .line 70
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->this$0:Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->stream_eof:Z

    .line 45
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopdirection:Z

    .line 49
    new-array v2, v1, [F

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->current_pitch:[F

    .line 52
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    .line 53
    const/16 v2, 0x190

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    .line 54
    const/4 v2, -0x1

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_loopstart:I

    .line 55
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->markset:Z

    .line 56
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->marklimit:I

    .line 57
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    .line 58
    const/4 v2, 0x2

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    .line 59
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->noteOff_flag:Z

    .line 61
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer_order:Z

    .line 65
    new-array v3, v1, [F

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    .line 66
    new-array v3, v1, [I

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ox:[I

    .line 67
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->samplerateconv:F

    .line 68
    const/4 v3, 0x0

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pitchcorrection:F

    .line 71
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;->getPadding()I

    move-result v3

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    .line 72
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;->getPadding()I

    move-result p1

    mul-int/2addr p1, v2

    iput p1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    .line 73
    iget p1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    add-int/2addr p1, v3

    new-array v3, v2, [I

    aput p1, v3, v1

    aput v2, v3, v0

    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    .line 74
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer_order:Z

    .line 75
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->close()V

    .line 378
    return-void
.end method

.method public nextBuffer()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_0

    .line 154
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->markset:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->reset()V

    .line 157
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v3, v0, v1

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_loopstart:I

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v0, v1

    .line 158
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_loopstart:I

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    .line 159
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    mul-int/2addr v0, v3

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    .line 162
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v3, v0, v1

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v0, v1

    .line 163
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    .line 164
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    .line 165
    iput-boolean v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->stream_eof:Z

    .line 169
    :cond_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v0, v0, v1

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 170
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->stream_eof:Z

    if-eqz v0, :cond_1

    .line 171
    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->eof:Z

    .line 172
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v0, v0, v1

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    mul-int/lit8 v3, v3, 0x4

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v0, v0, v1

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    mul-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 178
    .local v0, "skips":I
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v4, v3, v1

    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    mul-int/2addr v5, v0

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v3, v1

    .line 179
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    add-int/2addr v3, v0

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    .line 180
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    .line 181
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    mul-int/2addr v4, v0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->skip(J)J

    .line 184
    .end local v0    # "skips":I
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v0, v0, v1

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_f

    .line 185
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->markset:Z

    if-nez v0, :cond_3

    .line 186
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    add-int/2addr v0, v2

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_loopstart:I

    if-ne v0, v3, :cond_3

    .line 187
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->marklimit:I

    invoke-virtual {v0, v3}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->mark(I)V

    .line 188
    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->markset:Z

    .line 191
    :cond_3
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v3, v0, v1

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    aput v3, v0, v1

    .line 192
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    .line 193
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    add-int/2addr v0, v3

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    .line 195
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    if-ge v0, v3, :cond_5

    .line 196
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v3, v3, v0

    .line 197
    .local v3, "cbuffer":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    if-ge v4, v5, :cond_4

    .line 198
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    add-int/2addr v5, v4

    aget v5, v3, v5

    aput v5, v3, v4

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 195
    .end local v3    # "cbuffer":[F
    .end local v4    # "i":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    .end local v0    # "c":I
    :cond_5
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    const/4 v3, -0x1

    if-ne v0, v2, :cond_6

    .line 203
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v4, v4, v1

    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    invoke-virtual {v0, v4, v5, v6}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->read([FII)I

    move-result v0

    .local v0, "ret":I
    goto :goto_5

    .line 205
    .end local v0    # "ret":I
    :cond_6
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    mul-int/2addr v0, v4

    .line 206
    .local v0, "slen":I
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sbuffer:[F

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sbuffer:[F

    array-length v4, v4

    if-ge v4, v0, :cond_8

    .line 207
    :cond_7
    new-array v4, v0, [F

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sbuffer:[F

    .line 208
    :cond_8
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sbuffer:[F

    invoke-virtual {v4, v5, v1, v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->read([FII)I

    move-result v4

    .line 209
    .local v4, "sret":I
    if-ne v4, v3, :cond_9

    .line 210
    const/4 v5, -0x1

    move v0, v5

    .local v5, "ret":I
    goto :goto_5

    .line 212
    .end local v5    # "ret":I
    :cond_9
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    div-int v5, v4, v5

    .line 213
    .restart local v5    # "ret":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    iget v7, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    if-ge v6, v7, :cond_b

    .line 214
    iget-object v7, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v7, v7, v6

    .line 215
    .local v7, "buff":[F
    move v8, v6

    .line 216
    .local v8, "ix":I
    iget v9, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    .line 217
    .local v9, "ix_step":I
    iget v10, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    .line 218
    .local v10, "ox":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    if-ge v11, v5, :cond_a

    .line 219
    iget-object v12, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sbuffer:[F

    aget v12, v12, v8

    aput v12, v7, v10

    .line 218
    add-int/lit8 v11, v11, 0x1

    add-int/2addr v8, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 213
    .end local v7    # "buff":[F
    .end local v8    # "ix":I
    .end local v9    # "ix_step":I
    .end local v10    # "ox":I
    .end local v11    # "j":I
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    move v0, v5

    .line 225
    .end local v4    # "sret":I
    .end local v5    # "ret":I
    .end local v6    # "i":I
    .local v0, "ret":I
    :goto_5
    const/4 v4, 0x0

    if-ne v0, v3, :cond_d

    .line 226
    const/4 v0, 0x0

    .line 227
    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->stream_eof:Z

    .line 228
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    if-ge v1, v2, :cond_c

    .line 229
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v2, v2, v1

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    add-int/2addr v5, v6

    invoke-static {v2, v3, v5, v4}, Ljava/util/Arrays;->fill([FIIF)V

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 230
    .end local v1    # "i":I
    :cond_c
    return-void

    .line 232
    :cond_d
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    if-eq v0, v3, :cond_e

    .line 233
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    if-ge v3, v5, :cond_e

    .line 234
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v5, v5, v3

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    add-int/2addr v6, v0

    iget v7, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    iget v8, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    add-int/2addr v7, v8

    invoke-static {v5, v6, v7, v4}, Ljava/util/Arrays;->fill([FIIF)V

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 237
    .end local v3    # "i":I
    :cond_e
    iput-boolean v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer_order:Z

    .line 239
    .end local v0    # "ret":I
    goto/16 :goto_0

    .line 241
    :cond_f
    return-void
.end method

.method public noteOff(I)V
    .locals 1
    .param p1, "velocity"    # I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->noteOff_flag:Z

    .line 83
    return-void
.end method

.method public noteOn(Ljp/kshoji/javax/sound/midi/MidiChannel;Ljp/kshoji/javax/sound/midi/VoiceStatus;II)V
    .locals 0
    .param p1, "channel"    # Ljp/kshoji/javax/sound/midi/MidiChannel;
    .param p2, "voice"    # Ljp/kshoji/javax/sound/midi/VoiceStatus;
    .param p3, "noteNumber"    # I
    .param p4, "velocity"    # I

    .line 79
    return-void
.end method

.method public open(Lcn/sherlock/com/sun/media/sound/ModelWavetable;F)V
    .locals 6
    .param p1, "osc"    # Lcn/sherlock/com/sun/media/sound/ModelWavetable;
    .param p2, "outputsamplerate"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->eof:Z

    .line 89
    invoke-interface {p1}, Lcn/sherlock/com/sun/media/sound/ModelWavetable;->getChannels()I

    move-result v1

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    .line 90
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    array-length v1, v1

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 91
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    add-int/2addr v2, v4

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v3

    aput v1, v4, v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    .line 94
    :cond_0
    invoke-interface {p1}, Lcn/sherlock/com/sun/media/sound/ModelWavetable;->openStream()Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    move-result-object v1

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    .line 95
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    .line 96
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->stream_eof:Z

    .line 97
    invoke-interface {p1}, Lcn/sherlock/com/sun/media/sound/ModelWavetable;->getPitchcorrection()F

    move-result v1

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pitchcorrection:F

    .line 98
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->stream:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    .line 99
    invoke-virtual {v1}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v1

    div-float/2addr v1, p2

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->samplerateconv:F

    .line 100
    invoke-interface {p1}, Lcn/sherlock/com/sun/media/sound/ModelWavetable;->getLoopLength()F

    move-result v1

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->looplen:F

    .line 101
    invoke-interface {p1}, Lcn/sherlock/com/sun/media/sound/ModelWavetable;->getLoopStart()F

    move-result v1

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopstart:F

    .line 102
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopstart:F

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_loopstart:I

    .line 103
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_loopstart:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_loopstart:I

    .line 105
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    .line 107
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_loopstart:I

    if-gez v1, :cond_1

    .line 108
    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_loopstart:I

    .line 109
    :cond_1
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->started:Z

    .line 110
    invoke-interface {p1}, Lcn/sherlock/com/sun/media/sound/ModelWavetable;->getLoopType()I

    move-result v1

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopmode:I

    .line 112
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopmode:I

    if-eqz v1, :cond_2

    .line 113
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->markset:Z

    .line 114
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->looplen:F

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    float-to-int v2, v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->marklimit:I

    goto :goto_0

    .line 116
    :cond_2
    iput-boolean v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->markset:Z

    .line 119
    :goto_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->samplerateconv:F

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->target_pitch:F

    .line 120
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->current_pitch:[F

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->samplerateconv:F

    aput v2, v1, v0

    .line 122
    iput-boolean v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer_order:Z

    .line 123
    iput-boolean v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopdirection:Z

    .line 124
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->noteOff_flag:Z

    .line 126
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    if-ge v1, v2, :cond_3

    .line 127
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v2, v2, v1

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v5, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    add-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/util/Arrays;->fill([FIIF)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    int-to-float v2, v2

    aput v2, v1, v0

    .line 129
    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->eof:Z

    .line 131
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v3, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v0

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    .line 133
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    neg-int v0, v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    .line 135
    invoke-virtual {p0}, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nextBuffer()V

    .line 136
    return-void
.end method

.method public read([[FII)I
    .locals 23
    .param p1, "buffer"    # [[F
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-boolean v2, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->eof:Z

    if-eqz v2, :cond_0

    .line 261
    const/4 v2, -0x1

    return v2

    .line 263
    :cond_0
    iget-boolean v2, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->noteOff_flag:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 264
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopmode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 265
    iget-boolean v2, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopdirection:Z

    if-eqz v2, :cond_1

    .line 266
    iput v3, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopmode:I

    .line 269
    :cond_1
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->target_pitch:F

    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->current_pitch:[F

    aget v4, v4, v3

    sub-float/2addr v2, v4

    int-to-float v4, v1

    div-float/2addr v2, v4

    .line 270
    .local v2, "pitchstep":F
    iget-object v4, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->current_pitch:[F

    .line 271
    .local v4, "current_pitch":[F
    const/4 v14, 0x1

    iput-boolean v14, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->started:Z

    .line 273
    iget-object v15, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ox:[I

    .line 274
    .local v15, "ox":[I
    aput p2, v15, v3

    .line 275
    add-int v13, v1, p2

    .line 277
    .local v13, "ox_end":I
    iget v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 278
    .local v5, "ixend":F
    iget-boolean v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopdirection:Z

    if-nez v6, :cond_2

    .line 279
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    int-to-float v5, v6

    .line 280
    :cond_2
    :goto_0
    aget v6, v15, v3

    if-eq v6, v13, :cond_12

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nextBuffer()V

    .line 282
    iget-boolean v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopdirection:Z

    if-nez v6, :cond_9

    .line 286
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    int-to-float v6, v6

    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopstart:F

    iget v8, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 287
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopstart:F

    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    int-to-float v7, v7

    add-float v5, v6, v7

    .line 288
    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v6, v6, v3

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_4

    .line 289
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopmode:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_3

    .line 291
    iput-boolean v14, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopdirection:Z

    .line 292
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    add-int/2addr v6, v7

    int-to-float v5, v6

    .line 293
    goto :goto_0

    .line 296
    :cond_3
    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v7, v6, v3

    iget v8, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->looplen:F

    add-float/2addr v7, v8

    aput v7, v6, v3

    .line 297
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    int-to-float v5, v6

    .line 298
    goto :goto_0

    .line 302
    :cond_4
    iget-boolean v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer_order:Z

    iget-boolean v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopdirection:Z

    if-eq v6, v7, :cond_5

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->reverseBuffers()V

    .line 305
    :cond_5
    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v8, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v8, v8, v3

    sub-float/2addr v7, v8

    aput v7, v6, v3

    .line 306
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v6, v5

    .line 307
    .end local v5    # "ixend":F
    .local v6, "ixend":F
    const/high16 v16, 0x3f800000    # 1.0f

    add-float v17, v6, v16

    .line 309
    .end local v6    # "ixend":F
    .local v17, "ixend":F
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v18, v5, v3

    .line 310
    .local v18, "bak_ix":F
    aget v19, v15, v3

    .line 311
    .local v19, "bak_ox":I
    aget v20, v4, v3

    .line 312
    .local v20, "bak_pitch":F
    const/4 v5, 0x0

    move v12, v5

    .local v12, "i":I
    :goto_1
    iget v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    if-ge v12, v5, :cond_7

    .line 313
    aget-object v5, p1, v12

    if-eqz v5, :cond_6

    .line 314
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aput v18, v5, v3

    .line 315
    aput v19, v15, v3

    .line 316
    aput v20, v4, v3

    .line 317
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->this$0:Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;

    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v6, v6, v12

    iget-object v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget-object v11, p1, v12

    move/from16 v8, v17

    move-object v9, v4

    move v10, v2

    move/from16 v21, v12

    .end local v12    # "i":I
    .local v21, "i":I
    move-object v12, v15

    move/from16 v22, v13

    .end local v13    # "ox_end":I
    .local v22, "ox_end":I
    invoke-virtual/range {v5 .. v13}, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;->interpolate([F[FF[FF[F[II)V

    goto :goto_2

    .line 313
    .end local v21    # "i":I
    .end local v22    # "ox_end":I
    .restart local v12    # "i":I
    .restart local v13    # "ox_end":I
    :cond_6
    move/from16 v21, v12

    move/from16 v22, v13

    .line 312
    .end local v12    # "i":I
    .end local v13    # "ox_end":I
    .restart local v21    # "i":I
    .restart local v22    # "ox_end":I
    :goto_2
    add-int/lit8 v12, v21, 0x1

    move/from16 v13, v22

    .end local v21    # "i":I
    .restart local v12    # "i":I
    goto :goto_1

    .end local v22    # "ox_end":I
    .restart local v13    # "ox_end":I
    :cond_7
    move/from16 v21, v12

    move/from16 v22, v13

    .line 322
    .end local v12    # "i":I
    .end local v13    # "ox_end":I
    .restart local v22    # "ox_end":I
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v7, v7, v3

    sub-float/2addr v6, v7

    aput v6, v5, v3

    .line 323
    sub-float v17, v17, v16

    .line 324
    iget v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    sub-float v5, v5, v17

    .line 326
    .end local v17    # "ixend":F
    .restart local v5    # "ixend":F
    iget-boolean v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->eof:Z

    if-eqz v6, :cond_8

    .line 327
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->target_pitch:F

    aput v6, v4, v3

    .line 328
    aget v3, v15, v3

    sub-int v3, v3, p2

    return v3

    .line 326
    :cond_8
    move/from16 v13, v22

    goto/16 :goto_0

    .line 333
    .end local v18    # "bak_ix":F
    .end local v19    # "bak_ox":I
    .end local v20    # "bak_pitch":F
    .end local v22    # "ox_end":I
    .restart local v13    # "ox_end":I
    :cond_9
    move/from16 v22, v13

    .end local v13    # "ox_end":I
    .restart local v22    # "ox_end":I
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopmode:I

    if-eqz v6, :cond_d

    .line 334
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->looplen:F

    iget v8, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopstart:F

    add-float/2addr v7, v8

    iget v8, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_d

    .line 335
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopstart:F

    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->looplen:F

    add-float/2addr v6, v7

    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 336
    .end local v5    # "ixend":F
    .restart local v6    # "ixend":F
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v5, v5, v3

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_c

    .line 337
    iget v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopmode:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_b

    iget v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopmode:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_a

    goto :goto_3

    .line 343
    :cond_a
    iget v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    .line 344
    .end local v6    # "ixend":F
    .restart local v5    # "ixend":F
    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v7, v6, v3

    iget v8, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->looplen:F

    sub-float/2addr v7, v8

    aput v7, v6, v3

    .line 345
    move/from16 v13, v22

    goto/16 :goto_0

    .line 339
    .end local v5    # "ixend":F
    .restart local v6    # "ixend":F
    :cond_b
    :goto_3
    iput-boolean v3, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopdirection:Z

    .line 340
    iget v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    int-to-float v5, v5

    .line 341
    .end local v6    # "ixend":F
    .restart local v5    # "ixend":F
    move/from16 v13, v22

    goto/16 :goto_0

    .line 336
    .end local v5    # "ixend":F
    .restart local v6    # "ixend":F
    :cond_c
    move/from16 v16, v6

    goto :goto_4

    .line 350
    .end local v6    # "ixend":F
    .restart local v5    # "ixend":F
    :cond_d
    move/from16 v16, v5

    .end local v5    # "ixend":F
    .local v16, "ixend":F
    :goto_4
    iget-boolean v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer_order:Z

    iget-boolean v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->loopdirection:Z

    if-eq v5, v6, :cond_e

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->reverseBuffers()V

    .line 353
    :cond_e
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v17, v5, v3

    .line 354
    .local v17, "bak_ix":F
    aget v18, v15, v3

    .line 355
    .local v18, "bak_ox":I
    aget v19, v4, v3

    .line 356
    .local v19, "bak_pitch":F
    const/4 v5, 0x0

    move v13, v5

    .local v13, "i":I
    :goto_5
    iget v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    if-ge v13, v5, :cond_10

    .line 357
    aget-object v5, p1, v13

    if-eqz v5, :cond_f

    .line 358
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aput v17, v5, v3

    .line 359
    aput v18, v15, v3

    .line 360
    aput v19, v4, v3

    .line 361
    iget-object v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->this$0:Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;

    iget-object v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v6, v6, v13

    iget-object v7, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget-object v11, p1, v13

    move/from16 v8, v16

    move-object v9, v4

    move v10, v2

    move-object v12, v15

    move/from16 v20, v13

    .end local v13    # "i":I
    .local v20, "i":I
    move/from16 v13, v22

    invoke-virtual/range {v5 .. v13}, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;->interpolate([F[FF[FF[F[II)V

    goto :goto_6

    .line 357
    .end local v20    # "i":I
    .restart local v13    # "i":I
    :cond_f
    move/from16 v20, v13

    .line 356
    .end local v13    # "i":I
    .restart local v20    # "i":I
    :goto_6
    add-int/lit8 v13, v20, 0x1

    .end local v20    # "i":I
    .restart local v13    # "i":I
    goto :goto_5

    :cond_10
    move/from16 v20, v13

    .line 366
    .end local v13    # "i":I
    iget-boolean v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->eof:Z

    if-eqz v5, :cond_11

    .line 367
    iget v5, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->target_pitch:F

    aput v5, v4, v3

    .line 368
    aget v3, v15, v3

    sub-int v3, v3, p2

    return v3

    .line 370
    .end local v17    # "bak_ix":F
    .end local v18    # "bak_ox":I
    .end local v19    # "bak_pitch":F
    :cond_11
    move/from16 v5, v16

    move/from16 v13, v22

    goto/16 :goto_0

    .line 372
    .end local v16    # "ixend":F
    .end local v22    # "ox_end":I
    .restart local v5    # "ixend":F
    .local v13, "ox_end":I
    :cond_12
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->target_pitch:F

    aput v6, v4, v3

    .line 373
    return v1
.end method

.method public reverseBuffers()V
    .locals 7

    .line 244
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer_order:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer_order:Z

    .line 245
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    if-ge v0, v1, :cond_1

    .line 246
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v1, v1, v0

    .line 247
    .local v1, "cbuff":[F
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 248
    .local v2, "len":I
    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 249
    .local v3, "len2":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 250
    aget v5, v1, v4

    .line 251
    .local v5, "x":F
    sub-int v6, v2, v4

    aget v6, v1, v6

    aput v6, v1, v4

    .line 252
    sub-int v6, v2, v4

    aput v5, v1, v6

    .line 249
    .end local v5    # "x":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 245
    .end local v1    # "cbuff":[F
    .end local v2    # "len":I
    .end local v3    # "len2":I
    .end local v4    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    .end local v0    # "c":I
    :cond_1
    return-void
.end method

.method public setPitch(F)V
    .locals 6
    .param p1, "pitch"    # F

    .line 144
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->pitchcorrection:F

    add-float/2addr v0, p1

    float-to-double v0, v0

    .line 145
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x4092c00000000000L    # 1200.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 144
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->samplerateconv:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->target_pitch:F

    .line 148
    iget-boolean v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->started:Z

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->current_pitch:[F

    const/4 v1, 0x0

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler$ModelAbstractResamplerStream;->target_pitch:F

    aput v2, v0, v1

    .line 150
    :cond_0
    return-void
.end method
