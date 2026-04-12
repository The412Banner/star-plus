.class public Lcn/sherlock/javax/sound/sampled/AudioSystem;
.super Ljava/lang/Object;
.source "AudioSystem.java"


# static fields
.field public static final NOT_SPECIFIED:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method public static getAudioFileFormat(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-static {}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getAudioFileReaders()Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;>;"
    const/4 v1, 0x0

    .line 230
    .local v1, "format":Lcn/sherlock/javax/sound/sampled/AudioFileFormat;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 231
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;

    .line 233
    .local v3, "reader":Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;
    :try_start_0
    invoke-virtual {v3, p0}, Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;->getAudioFileFormat(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioFileFormat;

    move-result-object v4
    :try_end_0
    .catch Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 235
    goto :goto_1

    .line 236
    :catch_0
    move-exception v4

    .line 237
    .local v4, "e":Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;
    nop

    .line 230
    .end local v3    # "reader":Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;
    .end local v4    # "e":Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    .end local v2    # "i":I
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 245
    return-object v1

    .line 242
    :cond_1
    new-instance v2, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    const-string v3, "file is not a supported file type"

    invoke-direct {v2, v3}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getAudioFileReaders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;",
            ">;"
        }
    .end annotation

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;>;"
    new-instance v1, Lcn/sherlock/com/sun/media/sound/WaveFloatFileReader;

    invoke-direct {v1}, Lcn/sherlock/com/sun/media/sound/WaveFloatFileReader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    new-instance v1, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;

    invoke-direct {v1}, Lcn/sherlock/com/sun/media/sound/WaveExtensibleFileReader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    return-object v0
.end method

.method public static getAudioInputStream(Lcn/sherlock/javax/sound/sampled/AudioFormat;Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .locals 4
    .param p0, "targetFormat"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .param p1, "sourceStream"    # Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    .line 316
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/sherlock/javax/sound/sampled/AudioFormat;->matches(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    return-object p1

    .line 320
    :cond_0
    invoke-static {}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getFormatConversionProviders()Ljava/util/List;

    move-result-object v0

    .line 322
    .local v0, "codecs":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 323
    nop

    .line 324
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;

    .line 325
    .local v2, "codec":Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;
    nop

    .line 326
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v3

    .line 325
    invoke-virtual {v2, p0, v3}, Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;->isConversionSupported(Lcn/sherlock/javax/sound/sampled/AudioFormat;Lcn/sherlock/javax/sound/sampled/AudioFormat;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    invoke-virtual {v2, p0, p1}, Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;->getAudioInputStream(Lcn/sherlock/javax/sound/sampled/AudioFormat;Lcn/sherlock/javax/sound/sampled/AudioInputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v3

    return-object v3

    .line 322
    .end local v2    # "codec":Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported conversion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 333
    invoke-virtual {p1}, Lcn/sherlock/javax/sound/sampled/AudioInputStream;->getFormat()Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAudioInputStream(Ljava/io/File;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-static {}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getAudioFileReaders()Ljava/util/List;

    move-result-object v0

    .line 394
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;>;"
    const/4 v1, 0x0

    .line 396
    .local v1, "audioStream":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 397
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;

    .line 399
    .local v3, "reader":Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;
    :try_start_0
    invoke-virtual {v3, p0}, Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;->getAudioInputStream(Ljava/io/File;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v4
    :try_end_0
    .catch Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 401
    goto :goto_1

    .line 402
    :catch_0
    move-exception v4

    .line 403
    .local v4, "e":Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;
    nop

    .line 396
    .end local v3    # "reader":Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;
    .end local v4    # "e":Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .end local v2    # "i":I
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 411
    return-object v1

    .line 408
    :cond_1
    new-instance v2, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    const-string v3, "could not get audio input stream from input file"

    invoke-direct {v2, v3}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getAudioInputStream(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-static {}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getAudioFileReaders()Ljava/util/List;

    move-result-object v0

    .line 276
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;>;"
    const/4 v1, 0x0

    .line 278
    .local v1, "audioStream":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 279
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;

    .line 281
    .local v3, "reader":Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;
    :try_start_0
    invoke-virtual {v3, p0}, Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;->getAudioInputStream(Ljava/io/InputStream;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v4
    :try_end_0
    .catch Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 283
    goto :goto_1

    .line 284
    :catch_0
    move-exception v4

    .line 285
    .local v4, "e":Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;
    nop

    .line 278
    .end local v3    # "reader":Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;
    .end local v4    # "e":Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    .end local v2    # "i":I
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 293
    return-object v1

    .line 290
    :cond_1
    new-instance v2, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    const-string v3, "could not get audio input stream from input stream"

    invoke-direct {v2, v3}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getAudioInputStream(Ljava/net/URL;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    .locals 5
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    invoke-static {}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getAudioFileReaders()Ljava/util/List;

    move-result-object v0

    .line 434
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;>;"
    const/4 v1, 0x0

    .line 436
    .local v1, "audioStream":Lcn/sherlock/javax/sound/sampled/AudioInputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 437
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;

    .line 439
    .local v3, "reader":Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;
    :try_start_0
    invoke-virtual {v3, p0}, Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;->getAudioInputStream(Ljava/net/URL;)Lcn/sherlock/javax/sound/sampled/AudioInputStream;

    move-result-object v4
    :try_end_0
    .catch Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 441
    goto :goto_1

    .line 442
    :catch_0
    move-exception v4

    .line 443
    .local v4, "e":Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;
    nop

    .line 436
    .end local v3    # "reader":Lcn/sherlock/javax/sound/sampled/spi/AudioFileReader;
    .end local v4    # "e":Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    .end local v2    # "i":I
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 451
    return-object v1

    .line 448
    :cond_1
    new-instance v2, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;

    const-string v3, "could not get audio input stream from input URL"

    invoke-direct {v2, v3}, Lcn/sherlock/javax/sound/sampled/UnsupportedAudioFileException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getFormatConversionProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;",
            ">;"
        }
    .end annotation

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;>;"
    new-instance v1, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter;

    invoke-direct {v1}, Lcn/sherlock/com/sun/media/sound/AudioFloatFormatConverter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    return-object v0
.end method

.method public static getSourceDataLine(Lcn/sherlock/javax/sound/sampled/AudioFormat;)Lcn/sherlock/javax/sound/sampled/SourceDataLine;
    .locals 1
    .param p0, "format"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sherlock/javax/sound/sampled/LineUnavailableException;
        }
    .end annotation

    .line 198
    new-instance v0, Lcn/sherlock/media/SourceDataLineImpl;

    invoke-direct {v0, p0}, Lcn/sherlock/media/SourceDataLineImpl;-><init>(Lcn/sherlock/javax/sound/sampled/AudioFormat;)V

    return-object v0
.end method

.method public static getTargetEncodings(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;)[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    .locals 7
    .param p0, "sourceEncoding"    # Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    .line 354
    invoke-static {}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getFormatConversionProviders()Ljava/util/List;

    move-result-object v0

    .line 355
    .local v0, "codecs":Ljava/util/List;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 357
    .local v1, "encodings":Ljava/util/Vector;
    const/4 v2, 0x0

    .line 360
    .local v2, "encs":[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 361
    nop

    .line 362
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;

    .line 363
    .local v4, "codec":Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;
    invoke-virtual {v4, p0}, Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;->isSourceEncodingSupported(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 364
    invoke-virtual {v4}, Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;->getTargetEncodings()[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    move-result-object v2

    .line 365
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 366
    aget-object v6, v2, v5

    invoke-virtual {v1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 365
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 360
    .end local v4    # "codec":Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 370
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    .line 371
    invoke-virtual {v1, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;

    .line 372
    .local v3, "encs2":[Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    return-object v3
.end method

.method public static getTargetFormats(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;Lcn/sherlock/javax/sound/sampled/AudioFormat;)[Lcn/sherlock/javax/sound/sampled/AudioFormat;
    .locals 10
    .param p0, "targetEncoding"    # Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;
    .param p1, "sourceFormat"    # Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 468
    invoke-static {}, Lcn/sherlock/javax/sound/sampled/AudioSystem;->getFormatConversionProviders()Ljava/util/List;

    move-result-object v0

    .line 469
    .local v0, "codecs":Ljava/util/List;, "Ljava/util/List<Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;>;"
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 471
    .local v1, "formats":Ljava/util/Vector;
    const/4 v2, 0x0

    .line 472
    .local v2, "size":I
    const/4 v3, 0x0

    .line 473
    .local v3, "index":I
    const/4 v4, 0x0

    .line 477
    .local v4, "fmts":[Lcn/sherlock/javax/sound/sampled/AudioFormat;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 478
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;

    .line 479
    .local v6, "codec":Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;
    invoke-virtual {v6, p0, p1}, Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;->getTargetFormats(Lcn/sherlock/javax/sound/sampled/AudioFormat$Encoding;Lcn/sherlock/javax/sound/sampled/AudioFormat;)[Lcn/sherlock/javax/sound/sampled/AudioFormat;

    move-result-object v4

    .line 480
    array-length v7, v4

    add-int/2addr v2, v7

    .line 481
    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 477
    .end local v6    # "codec":Lcn/sherlock/javax/sound/sampled/spi/FormatConversionProvider;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 486
    .end local v5    # "i":I
    :cond_0
    new-array v5, v2, [Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 487
    .local v5, "fmts2":[Lcn/sherlock/javax/sound/sampled/AudioFormat;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 488
    invoke-virtual {v1, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, [Lcn/sherlock/javax/sound/sampled/AudioFormat;

    .line 489
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    array-length v8, v4

    if-ge v7, v8, :cond_1

    .line 490
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "index":I
    .local v8, "index":I
    aget-object v9, v4, v7

    aput-object v9, v5, v3

    .line 489
    add-int/lit8 v7, v7, 0x1

    move v3, v8

    goto :goto_2

    .line 487
    .end local v7    # "j":I
    .end local v8    # "index":I
    .restart local v3    # "index":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 493
    .end local v6    # "i":I
    :cond_2
    return-object v5
.end method
