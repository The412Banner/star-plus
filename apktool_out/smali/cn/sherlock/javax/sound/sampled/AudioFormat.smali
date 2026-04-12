.class public Lcn/sherlock/javax/sound/sampled/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    }
.end annotation


# instance fields
.field protected bigEndian:Z

.field protected channels:I

.field protected encoding:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

.field protected frameRate:F

.field protected frameSize:I

.field private properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected sampleRate:F

.field protected sampleSizeInBits:I


# direct methods
.method public constructor <init>(FIIZZ)V
    .locals 9
    .param p1, "sampleRate"    # F
    .param p2, "sampleSizeInBits"    # I
    .param p3, "channels"    # I
    .param p4, "signed"    # Z
    .param p5, "bigEndian"    # Z

    .line 226
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    sget-object v0, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    :goto_0
    move-object v2, v0

    .line 230
    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    if-ne p2, v0, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    add-int/lit8 v0, p2, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/2addr v0, p3

    move v6, v0

    goto :goto_2

    .line 231
    :cond_2
    :goto_1
    move v6, v0

    .line 226
    :goto_2
    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p1

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    .line 235
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V
    .locals 1
    .param p1, "encoding"    # Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    .param p2, "sampleRate"    # F
    .param p3, "sampleSizeInBits"    # I
    .param p4, "channels"    # I
    .param p5, "frameSize"    # I
    .param p6, "frameRate"    # F
    .param p7, "bigEndian"    # Z

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->encoding:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    .line 169
    iput p2, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->sampleRate:F

    .line 170
    iput p3, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->sampleSizeInBits:I

    .line 171
    iput p4, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->channels:I

    .line 172
    iput p5, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->frameSize:I

    .line 173
    iput p6, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->frameRate:F

    .line 174
    iput-boolean p7, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->bigEndian:Z

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->properties:Ljava/util/HashMap;

    .line 176
    return-void
.end method

.method public constructor <init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZLjava/util/Map;)V
    .locals 1
    .param p1, "encoding"    # Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    .param p2, "sampleRate"    # F
    .param p3, "sampleSizeInBits"    # I
    .param p4, "channels"    # I
    .param p5, "frameSize"    # I
    .param p6, "frameRate"    # F
    .param p7, "bigEndian"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;",
            "FIIIFZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p8, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p7}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->properties:Ljava/util/HashMap;

    .line 206
    return-void
.end method


# virtual methods
.method public getChannels()I
    .locals 1

    .line 310
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->channels:I

    return v0
.end method

.method public getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    .locals 1

    .line 248
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->encoding:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    return-object v0
.end method

.method public getFrameRate()F
    .locals 1

    .line 350
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->frameRate:F

    return v0
.end method

.method public getFrameSize()I
    .locals 1

    .line 330
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->frameSize:I

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->properties:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 408
    const/4 v0, 0x0

    return-object v0

    .line 410
    :cond_0
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRate()F
    .locals 1

    .line 270
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->sampleRate:F

    return v0
.end method

.method public getSampleSizeInBits()I
    .locals 1

    .line 292
    iget v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->sampleSizeInBits:I

    return v0
.end method

.method public isBigEndian()Z
    .locals 1

    .line 363
    iget-boolean v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->bigEndian:Z

    return v0
.end method

.method public matches(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Z
    .locals 4
    .param p1, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 430
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v0

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 431
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 432
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v0

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 433
    :cond_0
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v0

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v0

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_6

    .line 435
    :cond_1
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 436
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 437
    :cond_2
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameRate()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    .line 438
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameRate()F

    move-result v0

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameRate()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    .line 439
    :cond_3
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 440
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 441
    :cond_4
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_5

    .line 442
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->isBigEndian()Z

    move-result v0

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->isBigEndian()Z

    move-result v1

    if-ne v0, v1, :cond_6

    .line 443
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 445
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public properties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->properties:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 384
    .end local v0    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v0, p0, Lcn/sherlock/javax/sound/sampled/AudioFormat;->properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 386
    .restart local v0    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 457
    const-string v0, ""

    .line 458
    .local v0, "sEncoding":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    const-string v3, ""

    if-nez v1, :cond_1

    .line 464
    const-string/jumbo v1, "unknown sample rate, "

    .local v1, "sSampleRate":Ljava/lang/String;
    goto :goto_0

    .line 466
    .end local v1    # "sSampleRate":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Hz, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    .restart local v1    # "sSampleRate":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_2

    .line 471
    const-string/jumbo v4, "unknown bits per sample, "

    .local v4, "sSampleSizeInBits":Ljava/lang/String;
    goto :goto_1

    .line 473
    .end local v4    # "sSampleSizeInBits":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bit, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 477
    .restart local v4    # "sSampleSizeInBits":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-ne v5, v6, :cond_3

    .line 478
    const-string v5, "mono, "

    .local v5, "sChannels":Ljava/lang/String;
    goto :goto_2

    .line 480
    .end local v5    # "sChannels":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 481
    const-string/jumbo v5, "stereo, "

    .restart local v5    # "sChannels":Ljava/lang/String;
    goto :goto_2

    .line 483
    .end local v5    # "sChannels":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 484
    const-string v5, " unknown number of channels, "

    .restart local v5    # "sChannels":Ljava/lang/String;
    goto :goto_2

    .line 486
    .end local v5    # "sChannels":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " channels, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 491
    .restart local v5    # "sChannels":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v2

    if-nez v6, :cond_6

    .line 492
    const-string/jumbo v3, "unknown frame size, "

    .local v3, "sFrameSize":Ljava/lang/String;
    goto :goto_3

    .line 494
    .end local v3    # "sFrameSize":Ljava/lang/String;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameSize()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " bytes/frame, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    .restart local v3    # "sFrameSize":Ljava/lang/String;
    :goto_3
    const-string v6, ""

    .line 498
    .local v6, "sFrameRate":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v8

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameRate()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v8, v8, v10

    if-lez v8, :cond_8

    .line 499
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameRate()F

    move-result v8

    cmpl-float v2, v8, v2

    if-nez v2, :cond_7

    .line 500
    const-string/jumbo v6, "unknown frame rate, "

    goto :goto_4

    .line 502
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getFrameRate()F

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " frames/second, "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 506
    :cond_8
    :goto_4
    const-string v2, ""

    .line 507
    .local v2, "sEndian":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v8

    sget-object v9, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    invoke-virtual {v8, v9}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 508
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v8

    sget-object v9, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    invoke-virtual {v8, v9}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 509
    :cond_9
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v8

    const/16 v9, 0x8

    if-gt v8, v9, :cond_a

    .line 510
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v8

    if-ne v8, v7, :cond_c

    .line 511
    :cond_a
    invoke-virtual {p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->isBigEndian()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 512
    const-string v2, "big-endian"

    goto :goto_5

    .line 514
    :cond_b
    const-string v2, "little-endian"

    .line 518
    :cond_c
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
