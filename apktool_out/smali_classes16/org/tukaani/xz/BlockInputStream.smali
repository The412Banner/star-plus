.class Lorg/tukaani/xz/BlockInputStream;
.super Ljava/io/InputStream;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final check:Lorg/tukaani/xz/check/Check;

.field private compressedSizeInHeader:J

.field private compressedSizeLimit:J

.field private endReached:Z

.field private filterChain:Ljava/io/InputStream;

.field private final headerSize:I

.field private final inCounted:Lorg/tukaani/xz/CountingInputStream;

.field private final inData:Ljava/io/DataInputStream;

.field private final tempBuf:[B

.field private uncompressedSize:J

.field private uncompressedSizeInHeader:J

.field private final verifyCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/check/Check;ZIJJLorg/tukaani/xz/ArrayCache;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/tukaani/xz/IndexIndicatorException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p4

    move-wide/from16 v3, p7

    invoke-direct/range {p0 .. p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v5, -0x1

    iput-wide v5, v1, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    iput-wide v5, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    const/4 v9, 0x0

    iput-boolean v9, v1, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    const/4 v10, 0x1

    new-array v11, v10, [B

    iput-object v11, v1, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    move-object/from16 v11, p2

    iput-object v11, v1, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    move/from16 v12, p3

    iput-boolean v12, v1, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v12, v1, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    const/16 v12, 0x400

    new-array v12, v12, [B

    iget-object v13, v1, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v13, v12, v9, v10}, Ljava/io/DataInputStream;->readFully([BII)V

    aget-byte v13, v12, v9

    if-eqz v13, :cond_17

    aget-byte v13, v12, v9

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v13, v10

    mul-int/lit8 v13, v13, 0x4

    iput v13, v1, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    iget-object v13, v1, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    iget v14, v1, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    sub-int/2addr v14, v10

    invoke-virtual {v13, v12, v10, v14}, Ljava/io/DataInputStream;->readFully([BII)V

    iget v13, v1, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    add-int/lit8 v13, v13, -0x4

    iget v14, v1, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    add-int/lit8 v14, v14, -0x4

    invoke-static {v12, v9, v13, v14}, Lorg/tukaani/xz/common/DecoderUtil;->isCRC32Valid([BIII)Z

    move-result v13

    const-string v14, "XZ Block Header is corrupt"

    if-eqz v13, :cond_16

    aget-byte v13, v12, v10

    and-int/lit8 v13, v13, 0x3c

    const-string v15, "Unsupported options in XZ Block Header"

    if-nez v13, :cond_15

    aget-byte v13, v12, v10

    and-int/lit8 v13, v13, 0x3

    add-int/2addr v13, v10

    new-array v9, v13, [J

    new-array v5, v13, [[B

    new-instance v6, Ljava/io/ByteArrayInputStream;

    iget v7, v1, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    add-int/lit8 v7, v7, -0x6

    const/4 v8, 0x2

    invoke-direct {v6, v12, v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    :try_start_0
    iget v7, v1, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    int-to-long v7, v7

    const-wide v18, 0x7ffffffffffffffcL

    sub-long v18, v18, v7

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v7

    int-to-long v7, v7

    sub-long v7, v18, v7

    iput-wide v7, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    aget-byte v7, v12, v10

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_1

    invoke-static {v6}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v7

    iput-wide v7, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    iget-wide v7, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v16, 0x0

    cmp-long v7, v7, v16

    if-eqz v7, :cond_0

    iget-wide v7, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    iget-wide v10, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long v7, v7, v10

    if-gtz v7, :cond_0

    iget-wide v7, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    iput-wide v7, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_1
    move v7, v10

    :goto_0
    aget-byte v8, v12, v7

    and-int/lit16 v7, v8, 0x80

    if-eqz v7, :cond_2

    invoke-static {v6}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v7

    iput-wide v7, v1, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v13, :cond_4

    invoke-static {v6}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v10

    aput-wide v10, v9, v7

    invoke-static {v6}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v10

    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    move-object v12, v9

    int-to-long v8, v8

    cmp-long v8, v10, v8

    if-gtz v8, :cond_3

    long-to-int v8, v10

    new-array v8, v8, [B

    aput-object v8, v5, v7

    aget-object v8, v5, v7

    invoke-virtual {v6, v8}, Ljava/io/ByteArrayInputStream;->read([B)I

    add-int/lit8 v7, v7, 0x1

    move-object v9, v12

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v12, v9

    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    :goto_2
    if-lez v7, :cond_6

    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    if-nez v8, :cond_5

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v0, v15}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-wide/16 v6, -0x1

    cmp-long v8, p5, v6

    if-eqz v8, :cond_c

    iget v6, v1, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v7

    add-int/2addr v6, v7

    int-to-long v6, v6

    cmp-long v8, v6, p5

    const-string v9, "XZ Index does not match a Block Header"

    if-gez v8, :cond_b

    sub-long v6, p5, v6

    iget-wide v10, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long v8, v6, v10

    if-gtz v8, :cond_a

    iget-wide v10, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v14, -0x1

    cmp-long v8, v10, v14

    if-eqz v8, :cond_7

    iget-wide v10, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    cmp-long v8, v10, v6

    if-nez v8, :cond_a

    :cond_7
    iget-wide v10, v1, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v8, v10, v14

    if-eqz v8, :cond_9

    iget-wide v10, v1, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v8, v10, v3

    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v9}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_3
    iput-wide v6, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    iput-wide v6, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    iput-wide v3, v1, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    goto :goto_4

    :cond_a
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v9}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v9}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_4
    new-array v3, v13, [Lorg/tukaani/xz/FilterDecoder;

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v13, :cond_10

    aget-wide v6, v12, v4

    const-wide/16 v8, 0x21

    cmp-long v6, v6, v8

    if-nez v6, :cond_d

    new-instance v6, Lorg/tukaani/xz/LZMA2Decoder;

    aget-object v7, v5, v4

    invoke-direct {v6, v7}, Lorg/tukaani/xz/LZMA2Decoder;-><init>([B)V

    aput-object v6, v3, v4

    goto :goto_6

    :cond_d
    aget-wide v6, v12, v4

    const-wide/16 v8, 0x3

    cmp-long v6, v6, v8

    if-nez v6, :cond_e

    new-instance v6, Lorg/tukaani/xz/DeltaDecoder;

    aget-object v7, v5, v4

    invoke-direct {v6, v7}, Lorg/tukaani/xz/DeltaDecoder;-><init>([B)V

    aput-object v6, v3, v4

    goto :goto_6

    :cond_e
    aget-wide v6, v12, v4

    invoke-static {v6, v7}, Lorg/tukaani/xz/BCJDecoder;->isBCJFilterID(J)Z

    move-result v6

    if-eqz v6, :cond_f

    new-instance v6, Lorg/tukaani/xz/BCJDecoder;

    aget-wide v7, v12, v4

    aget-object v9, v5, v4

    invoke-direct {v6, v7, v8, v9}, Lorg/tukaani/xz/BCJDecoder;-><init>(J[B)V

    aput-object v6, v3, v4

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_f
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    aget-wide v2, v12, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Filter ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-static {v3}, Lorg/tukaani/xz/RawCoder;->validate([Lorg/tukaani/xz/FilterCoder;)V

    if-ltz v2, :cond_13

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v13, :cond_11

    aget-object v5, v3, v9

    invoke-interface {v5}, Lorg/tukaani/xz/FilterDecoder;->getMemoryUsage()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_11
    if-gt v4, v2, :cond_12

    goto :goto_8

    :cond_12
    new-instance v0, Lorg/tukaani/xz/MemoryLimitException;

    invoke-direct {v0, v4, v2}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v0

    :cond_13
    :goto_8
    new-instance v2, Lorg/tukaani/xz/CountingInputStream;

    invoke-direct {v2, v0}, Lorg/tukaani/xz/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v1, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    iget-object v0, v1, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    iput-object v0, v1, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    const/4 v0, 0x1

    sub-int/2addr v13, v0

    :goto_9
    if-ltz v13, :cond_14

    aget-object v0, v3, v13

    iget-object v2, v1, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    move-object/from16 v4, p9

    invoke-interface {v0, v2, v4}, Lorg/tukaani/xz/FilterDecoder;->getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    add-int/lit8 v13, v13, -0x1

    goto :goto_9

    :cond_14
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v14}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v0, v15}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v14}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Lorg/tukaani/xz/IndexIndicatorException;

    invoke-direct {v0}, Lorg/tukaani/xz/IndexIndicatorException;-><init>()V

    throw v0
.end method

.method private validate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    :cond_0
    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    iget-wide v4, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_2
    :goto_0
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_3

    move-wide v0, v2

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    iget-boolean v1, p0, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v1}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    iget-object v1, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v1}, Lorg/tukaani/xz/check/Check;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Integrity check ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not match"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
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

    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getUncompressedSize()J
    .locals 2

    iget-wide v0, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    return-wide v0
.end method

.method public getUnpaddedSize()J
    .locals 4

    iget v0, p0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    int-to-long v0, v0

    iget-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v2}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/BlockInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_6

    iget-boolean v3, p0, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v3, p1, p2, v0}, Lorg/tukaani/xz/check/Check;->update([BII)V

    :cond_1
    iget-wide p1, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    int-to-long v3, v0

    add-long/2addr p1, v3

    iput-wide p1, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    iget-object p1, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {p1}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-ltz v5, :cond_5

    iget-wide v5, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long p1, p1, v5

    if-gtz p1, :cond_5

    iget-wide p1, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    cmp-long p1, p1, v3

    if-ltz p1, :cond_5

    iget-wide p1, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    const-wide/16 v3, -0x1

    cmp-long p1, p1, v3

    if-eqz p1, :cond_2

    iget-wide p1, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    iget-wide v3, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long p1, p1, v3

    if-gtz p1, :cond_5

    :cond_2
    if-lt v0, p3, :cond_3

    iget-wide p1, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    iget-wide v3, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long p1, p1, v3

    if-nez p1, :cond_7

    :cond_3
    iget-object p1, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p1

    :cond_5
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p1

    :cond_6
    if-ne v0, v1, :cond_7

    :goto_0
    invoke-direct {p0}, Lorg/tukaani/xz/BlockInputStream;->validate()V

    iput-boolean v2, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    :cond_7
    return v0
.end method
