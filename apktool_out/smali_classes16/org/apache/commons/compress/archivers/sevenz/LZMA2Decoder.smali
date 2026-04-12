.class Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;
.super Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
.source "LZMA2Decoder.java"


# direct methods
.method constructor <init>()V
    .locals 3

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/tukaani/xz/LZMA2Options;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Number;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;-><init>([Ljava/lang/Class;)V

    .line 33
    return-void
.end method

.method private getDictSize(Ljava/lang/Object;)I
    .locals 1
    .param p1, "opts"    # Ljava/lang/Object;

    .line 75
    instance-of v0, p1, Lorg/tukaani/xz/LZMA2Options;

    if-eqz v0, :cond_0

    .line 76
    move-object v0, p1

    check-cast v0, Lorg/tukaani/xz/LZMA2Options;

    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    move-result v0

    return v0

    .line 78
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;->numberOptionOrDefault(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I
    .locals 3
    .param p1, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 88
    iget-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 89
    .local v0, "dictionarySizeBits":I
    and-int/lit8 v1, v0, -0x40

    if-nez v1, :cond_2

    .line 92
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    .line 95
    if-ne v0, v1, :cond_0

    .line 96
    const/4 v1, -0x1

    return v1

    .line 98
    :cond_0
    and-int/lit8 v1, v0, 0x1

    or-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0xb

    shl-int/2addr v1, v2

    return v1

    .line 93
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Dictionary larger than 4GiB maximum size"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unsupported LZMA2 property bits"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    .end local v0    # "dictionarySizeBits":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "LZMA2 properties too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing LZMA2 properties"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getOptions(Ljava/lang/Object;)Lorg/tukaani/xz/LZMA2Options;
    .locals 2
    .param p1, "opts"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    instance-of v0, p1, Lorg/tukaani/xz/LZMA2Options;

    if-eqz v0, :cond_0

    .line 103
    move-object v0, p1

    check-cast v0, Lorg/tukaani/xz/LZMA2Options;

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v0}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    .line 106
    .local v0, "options":Lorg/tukaani/xz/LZMA2Options;
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;->numberOptionOrDefault(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/LZMA2Options;->setDictSize(I)V

    .line 107
    return-object v0
.end method

.method private numberOptionOrDefault(Ljava/lang/Object;)I
    .locals 1
    .param p1, "opts"    # Ljava/lang/Object;

    .line 111
    const/high16 v0, 0x800000

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;->numberOptionOrDefault(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[BI)Ljava/io/InputStream;
    .locals 5
    .param p1, "archiveName"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "uncompressedLength"    # J
    .param p5, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p6, "password"    # [B
    .param p7, "maxMemoryLimitInKb"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    :try_start_0
    invoke-direct {p0, p5}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;->getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    move-result v0

    .line 40
    .local v0, "dictionarySize":I
    invoke-static {v0}, Lorg/tukaani/xz/LZMA2InputStream;->getMemoryUsage(I)I

    move-result v1

    .line 41
    .local v1, "memoryUsageInKb":I
    if-gt v1, p7, :cond_0

    .line 44
    new-instance v2, Lorg/tukaani/xz/LZMA2InputStream;

    invoke-direct {v2, p2, v0}, Lorg/tukaani/xz/LZMA2InputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v2

    .line 42
    :cond_0
    new-instance v2, Lorg/apache/commons/compress/MemoryLimitException;

    int-to-long v3, v1

    invoke-direct {v2, v3, v4, p7}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JI)V

    .end local p1    # "archiveName":Ljava/lang/String;
    .end local p2    # "in":Ljava/io/InputStream;
    .end local p3    # "uncompressedLength":J
    .end local p5    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .end local p6    # "password":[B
    .end local p7    # "maxMemoryLimitInKb":I
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "dictionarySize":I
    .end local v1    # "memoryUsageInKb":I
    .restart local p1    # "archiveName":Ljava/lang/String;
    .restart local p2    # "in":Ljava/io/InputStream;
    .restart local p3    # "uncompressedLength":J
    .restart local p5    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .restart local p6    # "password":[B
    .restart local p7    # "maxMemoryLimitInKb":I
    :catch_0
    move-exception v0

    .line 46
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method encode(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "opts"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;->getOptions(Ljava/lang/Object;)Lorg/tukaani/xz/LZMA2Options;

    move-result-object v0

    .line 54
    .local v0, "options":Lorg/tukaani/xz/LZMA2Options;
    new-instance v1, Lorg/tukaani/xz/FinishableWrapperOutputStream;

    invoke-direct {v1, p1}, Lorg/tukaani/xz/FinishableWrapperOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 55
    .local v1, "wrapped":Lorg/tukaani/xz/FinishableOutputStream;
    invoke-virtual {v0, v1}, Lorg/tukaani/xz/LZMA2Options;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object v2

    return-object v2
.end method

.method getOptionsAsProperties(Ljava/lang/Object;)[B
    .locals 6
    .param p1, "opts"    # Ljava/lang/Object;

    .line 60
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;->getDictSize(Ljava/lang/Object;)I

    move-result v0

    .line 61
    .local v0, "dictSize":I
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    .line 62
    .local v1, "lead":I
    rsub-int/lit8 v2, v1, 0x1e

    ushr-int v2, v0, v2

    add-int/lit8 v2, v2, -0x2

    .line 63
    .local v2, "secondBit":I
    rsub-int/lit8 v3, v1, 0x13

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    int-to-byte v3, v3

    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v5, 0x0

    aput-byte v3, v4, v5

    return-object v4
.end method

.method getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;->getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
