.class Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;
.super Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
.source "LZMADecoder.java"


# direct methods
.method constructor <init>()V
    .locals 3

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/tukaani/xz/LZMA2Options;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Number;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;-><init>([Ljava/lang/Class;)V

    .line 34
    return-void
.end method

.method private getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I
    .locals 3
    .param p1, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 98
    iget-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([BII)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
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
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->numberOptionOrDefault(Ljava/lang/Object;)I

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

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->numberOptionOrDefault(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[BI)Ljava/io/InputStream;
    .locals 13
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
    move-object/from16 v0, p5

    move/from16 v1, p7

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    if-eqz v2, :cond_3

    .line 42
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    .line 45
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    .line 46
    .local v2, "propsByte":B
    move-object v3, p0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    move-result v10

    .line 47
    .local v10, "dictSize":I
    const v4, 0x7ffffff0

    if-gt v10, v4, :cond_1

    .line 50
    invoke-static {v10, v2}, Lorg/tukaani/xz/LZMAInputStream;->getMemoryUsage(IB)I

    move-result v11

    .line 51
    .local v11, "memoryUsageInKb":I
    if-gt v11, v1, :cond_0

    .line 54
    new-instance v12, Lorg/tukaani/xz/LZMAInputStream;

    move-object v4, v12

    move-object v5, p2

    move-wide/from16 v6, p3

    move v8, v2

    move v9, v10

    invoke-direct/range {v4 .. v9}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;JBI)V

    return-object v12

    .line 52
    :cond_0
    new-instance v4, Lorg/apache/commons/compress/MemoryLimitException;

    int-to-long v5, v11

    invoke-direct {v4, v5, v6, v1}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JI)V

    throw v4

    .line 48
    .end local v11    # "memoryUsageInKb":I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dictionary larger than 4GiB maximum size used in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 43
    .end local v2    # "propsByte":B
    .end local v10    # "dictSize":I
    :cond_2
    move-object v3, p0

    move-object v6, p1

    new-instance v2, Ljava/io/IOException;

    const-string v4, "LZMA properties too short"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_3
    move-object v3, p0

    move-object v6, p1

    new-instance v2, Ljava/io/IOException;

    const-string v4, "Missing LZMA properties"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method encode(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "opts"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/apache/commons/compress/utils/FlushShieldFilterOutputStream;

    new-instance v1, Lorg/tukaani/xz/LZMAOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->getOptions(Ljava/lang/Object;)Lorg/tukaani/xz/LZMA2Options;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;Z)V

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/utils/FlushShieldFilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method getOptionsAsProperties(Ljava/lang/Object;)[B
    .locals 8
    .param p1, "opts"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->getOptions(Ljava/lang/Object;)Lorg/tukaani/xz/LZMA2Options;

    move-result-object v0

    .line 68
    .local v0, "options":Lorg/tukaani/xz/LZMA2Options;
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getPb()I

    move-result v1

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getLp()I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x9

    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getLc()I

    move-result v3

    add-int/2addr v1, v3

    int-to-byte v1, v1

    .line 69
    .local v1, "props":B
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    move-result v3

    .line 70
    .local v3, "dictSize":I
    new-array v2, v2, [B

    .line 71
    .local v2, "o":[B
    const/4 v4, 0x0

    aput-byte v1, v2, v4

    .line 72
    int-to-long v4, v3

    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-static {v2, v4, v5, v6, v7}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian([BJII)V

    .line 73
    return-object v2
.end method

.method getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 7
    .param p1, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 84
    iget-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    .line 85
    .local v0, "propsByte":B
    and-int/lit16 v1, v0, 0xff

    .line 86
    .local v1, "props":I
    div-int/lit8 v2, v1, 0x2d

    .line 87
    .local v2, "pb":I
    mul-int/lit8 v3, v2, 0x9

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v1, v3

    .line 88
    div-int/lit8 v3, v1, 0x9

    .line 89
    .local v3, "lp":I
    mul-int/lit8 v4, v3, 0x9

    sub-int v4, v1, v4

    .line 90
    .local v4, "lc":I
    new-instance v5, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v5}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    .line 91
    .local v5, "opts":Lorg/tukaani/xz/LZMA2Options;
    invoke-virtual {v5, v2}, Lorg/tukaani/xz/LZMA2Options;->setPb(I)V

    .line 92
    invoke-virtual {v5, v4, v3}, Lorg/tukaani/xz/LZMA2Options;->setLcLp(II)V

    .line 93
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/tukaani/xz/LZMA2Options;->setDictSize(I)V

    .line 94
    return-object v5

    .line 82
    .end local v0    # "propsByte":B
    .end local v1    # "props":I
    .end local v2    # "pb":I
    .end local v3    # "lp":I
    .end local v4    # "lc":I
    .end local v5    # "opts":Lorg/tukaani/xz/LZMA2Options;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "LZMA properties too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing LZMA properties"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
