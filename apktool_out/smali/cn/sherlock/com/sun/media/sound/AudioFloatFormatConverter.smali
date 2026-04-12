.class public Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter;
.super Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;
.source "AudioFloatFormatConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;,
        Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;
    }
.end annotation


# instance fields
.field private formats:[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;-><init>()V

    .line 471
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    const/4 v1, 0x0

    sget-object v2, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter;->formats:[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    return-void
.end method


# virtual methods
.method public getAudioInputStream(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .locals 16
    .param p1, "targetEncoding"    # Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    .param p2, "sourceStream"    # Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 476
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p2 .. p2}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getEncoding()Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    return-object v9

    .line 478
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v10

    .line 479
    .local v10, "format":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    invoke-virtual {v10}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v11

    .line 480
    .local v11, "channels":I
    move-object/from16 v1, p1

    .line 481
    .local v1, "encoding":Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    invoke-virtual {v10}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v12

    .line 482
    .local v12, "samplerate":F
    invoke-virtual {v10}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    .line 483
    .local v0, "bits":I
    invoke-virtual {v10}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->isBigEndian()Z

    move-result v13

    .line 484
    .local v13, "bigendian":Z
    sget-object v2, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    invoke-virtual {v8, v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    const/16 v0, 0x20

    move v14, v0

    goto :goto_0

    .line 484
    :cond_1
    move v14, v0

    .line 486
    .end local v0    # "bits":I
    .local v14, "bits":I
    :goto_0
    new-instance v15, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    mul-int v0, v11, v14

    div-int/lit8 v5, v0, 0x8

    move-object v0, v15

    move v2, v12

    move v3, v14

    move v4, v11

    move v6, v12

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    .line 488
    .local v0, "targetFormat":Lcn/sherlock/javax/sound/sampled/AudioFormat;
    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v9}, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter;->getAudioInputStream(Lcn/sherlock/javax/sound/sampled/AudioFormat;Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v3

    return-object v3
.end method

.method public getAudioInputStream(Lcn/sherlock/javax/sound/sampled/AudioFormat;Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .locals 4
    .param p1, "targetFormat"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .param p2, "sourceStream"    # Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    .line 504
    invoke-virtual {p2}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter;->isConversionSupported(Lcn/sherlock/javax/sound/sampled/AudioFormat;Lcn/sherlock/javax/sound/sampled/AudioFormat;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v0

    invoke-virtual {p2}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v1

    .line 509
    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 510
    new-instance v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;

    .line 511
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;I)V

    move-object p2, v0

    .line 512
    :cond_0
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v0

    .line 513
    invoke-virtual {p2}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v1

    sub-float/2addr v0, v1

    .line 512
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 514
    new-instance v0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;

    invoke-direct {v0, p2, p1}, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatInputStreamResampler;-><init>(Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;Lcn/sherlock/javax/sound/sampled/AudioFormat;)V

    move-object p2, v0

    .line 516
    :cond_1
    new-instance v0, Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;

    invoke-direct {v1, p1, p2}, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat;Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;)V

    .line 518
    invoke-virtual {p2}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->getFrameLength()J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcn/sherlock/javax/sound/sampled/AudioFormat;J)V

    .line 516
    return-object v0

    .line 505
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported conversion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 506
    invoke-virtual {p2}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 507
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAudioInputStream(Lcn/sherlock/javax/sound/sampled/AudioFormat;Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .locals 3
    .param p1, "targetFormat"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .param p2, "sourceStream"    # Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 493
    invoke-virtual {p2}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter;->isConversionSupported(Lcn/sherlock/javax/sound/sampled/AudioFormat;Lcn/sherlock/javax/sound/sampled/AudioFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    nop

    .line 498
    invoke-static {p2}, Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;->getInputStream(Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;

    move-result-object v0

    .line 497
    invoke-virtual {p0, p1, v0}, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter;->getAudioInputStream(Lcn/sherlock/javax/sound/sampled/AudioFormat;Lcn/sherlock/com/sun/media/sound/AudioFloatInputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v0

    return-object v0

    .line 494
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported conversion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 495
    invoke-virtual {p2}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 496
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSourceEncodings()[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    .locals 3

    .line 522
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    const/4 v1, 0x0

    sget-object v2, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTargetEncodings()[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    .locals 3

    .line 527
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    const/4 v1, 0x0

    sget-object v2, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTargetEncodings(Lcn/sherlock/javax/sound/sampled/AudioFormat;)[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    .locals 3
    .param p1, "sourceFormat"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 532
    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->getConverter(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 533
    new-array v0, v1, [Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    return-object v0

    .line 534
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    sget-object v2, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTargetFormats(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;Lcn/sherlock/javax/sound/sampled/AudioFormat;)[Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .locals 12
    .param p1, "targetEncoding"    # Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    .param p2, "sourceFormat"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 540
    invoke-static {p2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->getConverter(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 541
    const/4 v0, 0x0

    new-array v0, v0, [Lcn/sherlock/javax/sound/sampled/AudioFormat;

    return-object v0

    .line 542
    :cond_0
    invoke-virtual {p2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v0

    .line 544
    .local v0, "channels":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 546
    .local v9, "formats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sherlock/javax/sound/sampled/AudioFormat;>;"
    sget-object v1, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    invoke-virtual {p1, v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    new-instance v10, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    sget-object v2, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x8

    move-object v1, v10

    move v5, v0

    move v6, v0

    invoke-direct/range {v1 .. v8}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_1
    sget-object v1, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    invoke-virtual {p1, v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    new-instance v10, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    sget-object v2, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x8

    move-object v1, v10

    move v5, v0

    move v6, v0

    invoke-direct/range {v1 .. v8}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_2
    const/16 v1, 0x10

    move v10, v1

    .local v10, "bits":I
    :goto_0
    const/16 v1, 0x20

    if-ge v10, v1, :cond_5

    .line 556
    sget-object v1, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    invoke-virtual {p1, v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 557
    new-instance v11, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    sget-object v2, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    mul-int v1, v0, v10

    div-int/lit8 v6, v1, 0x8

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v1, v11

    move v4, v10

    move v5, v0

    invoke-direct/range {v1 .. v8}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v11, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    sget-object v2, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    mul-int v1, v0, v10

    div-int/lit8 v6, v1, 0x8

    const/4 v8, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_3
    sget-object v1, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    invoke-virtual {p1, v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 565
    new-instance v11, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    sget-object v2, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    mul-int v1, v0, v10

    div-int/lit8 v6, v1, 0x8

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    move-object v1, v11

    move v4, v10

    move v5, v0

    invoke-direct/range {v1 .. v8}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v11, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    sget-object v2, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    mul-int v1, v0, v10

    div-int/lit8 v6, v1, 0x8

    const/4 v8, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_4
    add-int/lit8 v10, v10, 0x8

    goto :goto_0

    .line 574
    .end local v10    # "bits":I
    :cond_5
    sget-object v1, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    invoke-virtual {p1, v1}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 575
    new-instance v10, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    sget-object v2, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    mul-int/lit8 v6, v0, 0x4

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x20

    move-object v1, v10

    move v5, v0

    invoke-direct/range {v1 .. v8}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v10, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    sget-object v2, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    mul-int/lit8 v6, v0, 0x4

    const/4 v8, 0x1

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v10, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    sget-object v2, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    mul-int/lit8 v6, v0, 0x8

    const/4 v8, 0x0

    const/16 v4, 0x40

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    new-instance v10, Lcn/sherlock/javax/sound/sampled/AudioFormat;

    sget-object v2, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->PCM_FLOAT:Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    mul-int/lit8 v6, v0, 0x8

    const/4 v8, 0x1

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lcn/sherlock/javax/sound/sampled/AudioFormat;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcn/sherlock/javax/sound/sampled/AudioFormat;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcn/sherlock/javax/sound/sampled/AudioFormat;

    return-object v1
.end method

.method public isConversionSupported(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;Lcn/sherlock/javax/sound/sampled/AudioFormat;)Z
    .locals 3
    .param p1, "targetEncoding"    # Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    .param p2, "sourceFormat"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 607
    invoke-static {p2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->getConverter(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 608
    return v1

    .line 609
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter;->formats:[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 610
    iget-object v2, p0, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter;->formats:[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 611
    const/4 v1, 0x1

    return v1

    .line 609
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public isConversionSupported(Lcn/sherlock/javax/sound/sampled/AudioFormat;Lcn/sherlock/javax/sound/sampled/AudioFormat;)Z
    .locals 2
    .param p1, "targetFormat"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .param p2, "sourceFormat"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 594
    invoke-static {p2}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->getConverter(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 595
    return v1

    .line 596
    :cond_0
    invoke-static {p1}, Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;->getConverter(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/com/sun/media/sound/AudioFloatConverter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 597
    return v1

    .line 598
    :cond_1
    invoke-virtual {p2}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v0

    if-gtz v0, :cond_2

    .line 599
    return v1

    .line 600
    :cond_2
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->getChannels()I

    move-result v0

    if-gtz v0, :cond_3

    .line 601
    return v1

    .line 602
    :cond_3
    const/4 v0, 0x1

    return v0
.end method
