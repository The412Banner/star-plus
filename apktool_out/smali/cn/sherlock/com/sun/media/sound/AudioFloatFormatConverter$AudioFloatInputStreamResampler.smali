.class Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;
.super Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;
.source "AudioFloatFormatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatInputStreamResampler"
.end annotation


# instance fields
.field private ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

.field private buffer_len:I

.field private cbuffer:[[F

.field private ibuffer:[[F

.field private ibuffer2:[F

.field private ibuffer_index:F

.field private ibuffer_len:I

.field private ix:[F

.field private mark_ibuffer:[[F

.field private mark_ibuffer_index:F

.field private mark_ibuffer_len:I

.field private nrofchannels:I

.field private ox:[I

.field private pad:I

.field private pad2:I

.field private pitch:[F

.field private resampler:Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;

.field private skipbuffer:[F

.field private targetFormat:Lcn/sherlock/javax/sound/sampled/AudioFormat;


# direct methods
.method public constructor <init>(Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;Lcn/sherlock/javax/sound/sampled/AudioFormat;)V
    .locals 12
    .param p1, "ais"    # Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;
    .param p2, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 268
    invoke-direct {p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;-><init>()V

    .line 237
    const/4 v0, 0x1

    new-array v1, v0, [F

    iput-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pitch:[F

    .line 243
    const/4 v1, 0x0

    iput v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    .line 245
    const/4 v2, 0x0

    iput v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    .line 247
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    .line 251
    const/16 v3, 0x200

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->buffer_len:I

    .line 257
    new-array v3, v0, [F

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ix:[F

    .line 259
    new-array v3, v0, [I

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ox:[I

    .line 261
    const/4 v3, 0x0

    iput-object v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer:[[F

    .line 263
    iput v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer_index:F

    .line 265
    iput v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer_len:I

    .line 269
    iput-object p1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    .line 270
    invoke-virtual {p1}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v1

    .line 271
    .local v1, "sourceFormat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    new-instance v11, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v4

    .line 272
    invoke-virtual {p2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v5

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v6

    .line 273
    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v7

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v8

    .line 274
    invoke-virtual {p2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v9

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->isBigEndian()Z

    move-result v10

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    iput-object v11, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->targetFormat:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 275
    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->targetFormat:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v3}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v3

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    .line 276
    const-string v3, "interpolation"

    invoke-virtual {p2, v3}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 277
    .local v3, "interpolation":Ljava/lang/Object;
    if-eqz v3, :cond_6

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 278
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 279
    .local v4, "resamplerType":Ljava/lang/String;
    const-string/jumbo v5, "point"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 280
    new-instance v5, Lcn/sherlock/com/sun/media/sound/SoftPointResampler;

    invoke-direct {v5}, Lcn/sherlock/com/sun/media/sound/SoftPointResampler;-><init>()V

    iput-object v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;

    .line 281
    :cond_0
    const-string v5, "linear"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 282
    new-instance v5, Lcn/sherlock/com/sun/media/sound/SoftLinearResampler2;

    invoke-direct {v5}, Lcn/sherlock/com/sun/media/sound/SoftLinearResampler2;-><init>()V

    iput-object v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;

    .line 283
    :cond_1
    const-string v5, "linear1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 284
    new-instance v5, Lcn/sherlock/com/sun/media/sound/SoftLinearResampler;

    invoke-direct {v5}, Lcn/sherlock/com/sun/media/sound/SoftLinearResampler;-><init>()V

    iput-object v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;

    .line 285
    :cond_2
    const-string v5, "linear2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 286
    new-instance v5, Lcn/sherlock/com/sun/media/sound/SoftLinearResampler2;

    invoke-direct {v5}, Lcn/sherlock/com/sun/media/sound/SoftLinearResampler2;-><init>()V

    iput-object v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;

    .line 287
    :cond_3
    const-string v5, "cubic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 288
    new-instance v5, Lcn/sherlock/com/sun/media/sound/SoftCubicResampler;

    invoke-direct {v5}, Lcn/sherlock/com/sun/media/sound/SoftCubicResampler;-><init>()V

    iput-object v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;

    .line 289
    :cond_4
    const-string v5, "lanczos"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 290
    new-instance v5, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;

    invoke-direct {v5}, Lcn/sherlock/com/sun/media/sound/SoftLanczosResampler;-><init>()V

    iput-object v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;

    .line 291
    :cond_5
    const-string/jumbo v5, "sinc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 292
    new-instance v5, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;

    invoke-direct {v5}, Lcn/sherlock/com/sun/media/sound/SoftSincResampler;-><init>()V

    iput-object v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;

    .line 294
    .end local v4    # "resamplerType":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;

    if-nez v4, :cond_7

    .line 295
    new-instance v4, Lcn/sherlock/com/sun/media/sound/SoftLinearResampler2;

    invoke-direct {v4}, Lcn/sherlock/com/sun/media/sound/SoftLinearResampler2;-><init>()V

    iput-object v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;

    .line 297
    :cond_7
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pitch:[F

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v5

    invoke-virtual {p2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v6

    div-float/2addr v5, v6

    aput v5, v4, v2

    .line 298
    iget-object v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;

    invoke-virtual {v4}, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;->getPadding()I

    move-result v4

    iput v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad:I

    .line 299
    iget v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad:I

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    iput v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad2:I

    .line 300
    iget v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->buffer_len:I

    iget v7, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad2:I

    add-int/2addr v6, v7

    new-array v5, v5, [I

    aput v6, v5, v0

    aput v4, v5, v2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    .line 301
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->buffer_len:I

    mul-int/2addr v0, v2

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    .line 302
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->buffer_len:I

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    .line 303
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->buffer_len:I

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    .line 304
    return-void
.end method

.method private readNextBuffer()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 345
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    if-ge v0, v2, :cond_2

    .line 348
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    aget-object v2, v2, v0

    .line 349
    .local v2, "buff":[F
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad2:I

    add-int/2addr v3, v4

    .line 350
    .local v3, "buffer_len_pad":I
    iget v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "ix":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 351
    aget v6, v2, v4

    aput v6, v2, v5

    .line 350
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 347
    .end local v2    # "buff":[F
    .end local v3    # "buffer_len_pad":I
    .end local v4    # "i":I
    .end local v5    # "ix":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "c":I
    :cond_2
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    .line 357
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    invoke-virtual {v0, v2}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->read([F)I

    move-result v0

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    .line 358
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    const/4 v2, 0x0

    if-ltz v0, :cond_5

    .line 359
    :goto_2
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 360
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    iget v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    array-length v5, v5

    iget v6, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v5}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->read([FII)I

    move-result v0

    .line 362
    .local v0, "ret":I
    if-ne v0, v1, :cond_3

    .line 363
    goto :goto_3

    .line 364
    :cond_3
    iget v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    add-int/2addr v3, v0

    iput v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    .line 365
    .end local v0    # "ret":I
    goto :goto_2

    .line 366
    :cond_4
    :goto_3
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    iget-object v3, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    array-length v3, v3

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([FIIF)V

    .line 367
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    iget v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    div-int/2addr v0, v1

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    goto :goto_4

    .line 369
    :cond_5
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    array-length v1, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([FIIF)V

    .line 372
    :goto_4
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    array-length v0, v0

    .line 373
    .local v0, "ibuffer2_len":I
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_5
    iget v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    if-ge v1, v2, :cond_7

    .line 374
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    aget-object v2, v2, v1

    .line 375
    .restart local v2    # "buff":[F
    move v3, v1

    .local v3, "i":I
    iget v4, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad2:I

    .local v4, "ix":I
    :goto_6
    if-ge v3, v0, :cond_6

    .line 376
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    aget v5, v5, v3

    aput v5, v2, v4

    .line 375
    iget v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 373
    .end local v2    # "buff":[F
    .end local v3    # "i":I
    .end local v4    # "ix":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 380
    .end local v1    # "c":I
    :cond_7
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->close()V

    .line 312
    return-void
.end method

.method public getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .locals 1

    .line 315
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->targetFormat:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    return-object v0
.end method

.method public getFrameLength()J
    .locals 2

    .line 319
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public mark(I)V
    .locals 5
    .param p1, "readlimit"    # I

    .line 323
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    int-to-float v1, p1

    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pitch:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->mark(I)V

    .line 324
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer_index:F

    .line 325
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer_len:I

    .line 326
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer:[[F

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    array-length v0, v0

    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    aget-object v1, v1, v3

    array-length v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v4, 0x1

    aput v1, v2, v4

    aput v0, v2, v3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer:[[F

    .line 329
    :cond_0
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 330
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    aget-object v1, v1, v0

    .line 331
    .local v1, "from":[F
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer:[[F

    aget-object v2, v2, v0

    .line 332
    .local v2, "to":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 333
    aget v4, v1, v3

    aput v4, v2, v3

    .line 332
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 329
    .end local v1    # "from":[F
    .end local v2    # "to":[F
    .end local v3    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    .end local v0    # "c":I
    :cond_2
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 339
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read([FII)I
    .locals 19
    .param p1, "b"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->cbuffer:[[F

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->cbuffer:[[F

    aget-object v1, v1, v2

    array-length v1, v1

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    div-int v3, p3, v3

    if-ge v1, v3, :cond_1

    .line 385
    :cond_0
    iget v1, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    iget v3, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    div-int v3, p3, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v1, v4, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->cbuffer:[[F

    .line 387
    :cond_1
    iget v1, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 388
    return v3

    .line 389
    :cond_2
    if-gez p3, :cond_3

    .line 390
    return v2

    .line 391
    :cond_3
    add-int v1, p2, p3

    .line 392
    .local v1, "offlen":I
    iget v3, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    div-int v3, p3, v3

    .line 393
    .local v3, "remain":I
    const/4 v4, 0x0

    .line 394
    .local v4, "destPos":I
    iget v5, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    .line 395
    .local v5, "in_end":I
    :goto_0
    if-lez v3, :cond_9

    .line 396
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    if-ltz v6, :cond_5

    .line 397
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    iget v7, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    iget v8, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    .line 398
    invoke-direct/range {p0 .. p0}, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->readNextBuffer()V

    .line 399
    :cond_4
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    iget v7, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad:I

    add-int v5, v6, v7

    .line 402
    :cond_5
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    if-gez v6, :cond_6

    .line 403
    iget v5, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad2:I

    .line 404
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    int-to-float v7, v5

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    .line 405
    goto :goto_2

    .line 408
    :cond_6
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 409
    goto :goto_2

    .line 410
    :cond_7
    move v6, v4

    .line 411
    .local v6, "preDestPos":I
    const/4 v7, 0x0

    .local v7, "c":I
    :goto_1
    iget v8, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    if-ge v7, v8, :cond_8

    .line 412
    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ix:[F

    iget v9, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    aput v9, v8, v2

    .line 413
    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ox:[I

    aput v4, v8, v2

    .line 414
    iget-object v8, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    aget-object v8, v8, v7

    .line 415
    .local v8, "buff":[F
    iget-object v9, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;

    iget-object v11, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ix:[F

    int-to-float v12, v5

    iget-object v13, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pitch:[F

    iget-object v10, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->cbuffer:[[F

    aget-object v15, v10, v7

    iget-object v14, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ox:[I

    iget v10, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    div-int v17, p3, v10

    const/16 v16, 0x0

    move-object v10, v8

    move-object/from16 v18, v14

    move/from16 v14, v16

    move-object/from16 v16, v18

    invoke-virtual/range {v9 .. v17}, Lcn/sherlock/com/sun/media/sound/SoftAbstractResampler;->interpolate([F[FF[FF[F[II)V

    .line 411
    .end local v8    # "buff":[F
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 418
    .end local v7    # "c":I
    :cond_8
    iget-object v7, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ix:[F

    aget v7, v7, v2

    iput v7, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    .line 419
    iget-object v7, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ox:[I

    aget v4, v7, v2

    .line 420
    sub-int v7, v4, v6

    sub-int/2addr v3, v7

    .line 421
    .end local v6    # "preDestPos":I
    goto :goto_0

    .line 422
    :cond_9
    :goto_2
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_3
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    if-ge v2, v6, :cond_b

    .line 423
    const/4 v6, 0x0

    .line 424
    .local v6, "ix":I
    iget-object v7, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->cbuffer:[[F

    aget-object v7, v7, v2

    .line 425
    .local v7, "buff":[F
    add-int v8, v2, p2

    .local v8, "i":I
    :goto_4
    if-ge v8, v1, :cond_a

    .line 426
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "ix":I
    .local v9, "ix":I
    aget v6, v7, v6

    aput v6, p1, v8

    .line 425
    iget v6, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    add-int/2addr v8, v6

    move v6, v9

    goto :goto_4

    .line 422
    .end local v7    # "buff":[F
    .end local v8    # "i":I
    .end local v9    # "ix":I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 429
    .end local v2    # "c":I
    :cond_b
    iget v2, v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    mul-int/2addr v2, v3

    sub-int v2, p3, v2

    return v2
.end method

.method public reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ais:Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    invoke-virtual {v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->reset()V

    .line 434
    iget-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer:[[F

    if-nez v0, :cond_0

    .line 435
    return-void

    .line 436
    :cond_0
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer_index:F

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    .line 437
    iget v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer_len:I

    iput v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    .line 438
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 439
    iget-object v1, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer:[[F

    aget-object v1, v1, v0

    .line 440
    .local v1, "from":[F
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    aget-object v2, v2, v0

    .line 441
    .local v2, "to":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 442
    aget v4, v1, v3

    aput v4, v2, v3

    .line 441
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 438
    .end local v1    # "from":[F
    .end local v2    # "to":[F
    .end local v3    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    .end local v0    # "c":I
    :cond_2
    return-void
.end method

.method public skip(J)J
    .locals 8
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 450
    return-wide v0

    .line 451
    :cond_0
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->skipbuffer:[F

    if-nez v2, :cond_1

    .line 452
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->targetFormat:Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    new-array v2, v2, [F

    iput-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->skipbuffer:[F

    .line 453
    :cond_1
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->skipbuffer:[F

    .line 454
    .local v2, "l_skipbuffer":[F
    move-wide v3, p1

    .line 455
    .local v3, "remain":J
    :goto_0
    cmp-long v5, v3, v0

    if-lez v5, :cond_3

    .line 456
    iget-object v5, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->skipbuffer:[F

    array-length v5, v5

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6, v5}, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->read([FII)I

    move-result v5

    .line 458
    .local v5, "ret":I
    if-gez v5, :cond_2

    .line 459
    cmp-long v0, v3, p1

    if-nez v0, :cond_3

    .line 460
    int-to-long v0, v5

    return-wide v0

    .line 463
    :cond_2
    int-to-long v6, v5

    sub-long/2addr v3, v6

    .line 464
    .end local v5    # "ret":I
    goto :goto_0

    .line 465
    :cond_3
    sub-long v0, p1, v3

    return-wide v0
.end method
