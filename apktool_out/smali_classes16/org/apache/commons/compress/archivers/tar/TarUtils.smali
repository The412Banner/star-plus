.class public Lorg/apache/commons/compress/archivers/tar/TarUtils;
.super Ljava/lang/Object;
.source "TarUtils.java"


# static fields
.field private static final BYTE_MASK:I = 0xff

.field static final DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

.field static final FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    nop

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 49
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarUtils$1;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils$1;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static computeCheckSum([B)J
    .locals 7
    .param p0, "buf"    # [B

    .line 580
    const-wide/16 v0, 0x0

    .line 582
    .local v0, "sum":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, p0, v3

    .line 583
    .local v4, "element":B
    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 582
    .end local v4    # "element":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 586
    :cond_0
    return-wide v0
.end method

.method private static exceptionMessage([BIIIB)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "current"    # I
    .param p4, "currentByte"    # B

    .line 247
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 249
    .local v0, "string":Ljava/lang/String;
    const-string v1, "\u0000"

    const-string v2, "{NUL}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p3, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatBigIntegerBinary(J[BIIZ)V
    .locals 6
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "negative"    # Z

    .line 533
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 534
    .local v0, "val":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 535
    .local v1, "b":[B
    array-length v2, v1

    .line 536
    .local v2, "len":I
    add-int/lit8 v3, p4, -0x1

    if-gt v2, v3, :cond_2

    .line 540
    add-int v3, p3, p4

    sub-int/2addr v3, v2

    .line 541
    .local v3, "off":I
    const/4 v4, 0x0

    invoke-static {v1, v4, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    if-eqz p5, :cond_0

    const/16 v4, 0xff

    :cond_0
    int-to-byte v4, v4

    .line 543
    .local v4, "fill":B
    add-int/lit8 v5, p3, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 544
    aput-byte v4, p2, v5

    .line 543
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 546
    .end local v5    # "i":I
    :cond_1
    return-void

    .line 537
    .end local v3    # "off":I
    .end local v4    # "fill":B
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is too large for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " byte field."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static formatCheckSumOctalBytes(J[BII)I
    .locals 3
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 564
    add-int/lit8 v0, p4, -0x2

    .line 565
    .local v0, "idx":I
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 567
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .local v1, "idx":I
    add-int/2addr v0, p3

    const/4 v2, 0x0

    aput-byte v2, p2, v0

    .line 568
    add-int v0, p3, v1

    const/16 v2, 0x20

    aput-byte v2, p2, v0

    .line 570
    add-int v0, p3, p4

    return v0
.end method

.method private static formatLongBinary(J[BIIZ)V
    .locals 10
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "negative"    # Z

    .line 511
    add-int/lit8 v0, p4, -0x1

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    .line 512
    .local v0, "bits":I
    const-wide/16 v2, 0x1

    shl-long v4, v2, v0

    .line 513
    .local v4, "max":J
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 514
    .local v6, "val":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_2

    cmp-long v8, v6, v4

    if-gez v8, :cond_2

    .line 518
    if-eqz p5, :cond_0

    .line 519
    sub-long v8, v4, v2

    xor-long/2addr v6, v8

    .line 520
    add-long/2addr v6, v2

    .line 521
    const-wide/16 v2, 0xff

    shl-long/2addr v2, v0

    or-long/2addr v6, v2

    .line 523
    :cond_0
    add-int v2, p3, p4

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-lt v2, p3, :cond_1

    .line 524
    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 525
    shr-long/2addr v6, v1

    .line 523
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 527
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 515
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is too large for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " byte field."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static formatLongOctalBytes(J[BII)I
    .locals 3
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 462
    add-int/lit8 v0, p4, -0x1

    .line 464
    .local v0, "idx":I
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 465
    add-int v1, p3, v0

    const/16 v2, 0x20

    aput-byte v2, p2, v1

    .line 467
    add-int v1, p3, p4

    return v1
.end method

.method public static formatLongOctalOrBinaryBytes(J[BII)I
    .locals 9
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 491
    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    const-wide/32 v0, 0x1fffff

    goto :goto_0

    :cond_0
    const-wide v0, 0x1ffffffffL

    .line 493
    .local v0, "maxAsOctalChar":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 494
    .local v2, "negative":Z
    :goto_1
    if-nez v2, :cond_2

    cmp-long v3, p0, v0

    if-gtz v3, :cond_2

    .line 495
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongOctalBytes(J[BII)I

    move-result v3

    return v3

    .line 498
    :cond_2
    const/16 v3, 0x9

    if-ge p4, v3, :cond_3

    .line 499
    move-wide v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, v2

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongBinary(J[BIIZ)V

    goto :goto_2

    .line 501
    :cond_3
    move-wide v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, v2

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatBigIntegerBinary(J[BIIZ)V

    .line 504
    :goto_2
    if-eqz v2, :cond_4

    const/16 v3, 0xff

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    :goto_3
    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 505
    add-int v3, p3, p4

    return v3
.end method

.method public static formatNameBytes(Ljava/lang/String;[BII)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 337
    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 338
    :catch_0
    move-exception v0

    .line 340
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    sget-object v1, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, p3, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 342
    :catch_1
    move-exception v1

    .line 344
    .local v1, "ex2":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 372
    .local v0, "len":I
    invoke-interface {p4, p0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 373
    .local v1, "b":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, p3, :cond_0

    if-lez v0, :cond_0

    .line 374
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v2, v4

    .line 377
    .local v2, "limit":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-static {v4, v5, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    move v4, v2

    .local v4, "i":I
    :goto_1
    if-ge v4, p3, :cond_1

    .line 381
    add-int v5, p2, v4

    aput-byte v3, p1, v5

    .line 380
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 384
    .end local v4    # "i":I
    :cond_1
    add-int v3, p2, p3

    return v3
.end method

.method public static formatOctalBytes(J[BII)I
    .locals 3
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 437
    add-int/lit8 v0, p4, -0x2

    .line 438
    .local v0, "idx":I
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 440
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .local v1, "idx":I
    add-int/2addr v0, p3

    const/16 v2, 0x20

    aput-byte v2, p2, v0

    .line 441
    add-int v0, p3, v1

    const/4 v2, 0x0

    aput-byte v2, p2, v0

    .line 443
    add-int v0, p3, p4

    return v0
.end method

.method public static formatUnsignedOctalString(J[BII)V
    .locals 9
    .param p0, "value"    # J
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 398
    move v0, p4

    .line 399
    .local v0, "remaining":I
    add-int/lit8 v0, v0, -0x1

    .line 400
    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    const/16 v4, 0x30

    if-nez v3, :cond_0

    .line 401
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "remaining":I
    .local v1, "remaining":I
    add-int/2addr v0, p3

    aput-byte v4, p2, v0

    goto :goto_1

    .line 403
    .end local v1    # "remaining":I
    .restart local v0    # "remaining":I
    :cond_0
    move-wide v5, p0

    .line 404
    .local v5, "val":J
    :goto_0
    if-ltz v0, :cond_1

    cmp-long v3, v5, v1

    if-eqz v3, :cond_1

    .line 406
    add-int v3, p3, v0

    const-wide/16 v7, 0x7

    and-long/2addr v7, v5

    long-to-int v7, v7

    int-to-byte v7, v7

    add-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p2, v3

    .line 407
    const/4 v3, 0x3

    ushr-long/2addr v5, v3

    .line 404
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 410
    :cond_1
    cmp-long v1, v5, v1

    if-nez v1, :cond_3

    move v1, v0

    .line 416
    .end local v0    # "remaining":I
    .end local v5    # "val":J
    .restart local v1    # "remaining":I
    :goto_1
    if-ltz v1, :cond_2

    .line 417
    add-int v0, p3, v1

    aput-byte v4, p2, v0

    .line 416
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 419
    :cond_2
    return-void

    .line 411
    .end local v1    # "remaining":I
    .restart local v0    # "remaining":I
    .restart local v5    # "val":J
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    invoke-static {p0, p1}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will not fit in octal number buffer of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseBinaryBigInteger([BIIZ)J
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "negative"    # Z

    .line 207
    add-int/lit8 v0, p2, -0x1

    new-array v0, v0, [B

    .line 208
    .local v0, "remainder":[B
    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 210
    .local v1, "val":Ljava/math/BigInteger;
    if-eqz p3, :cond_0

    .line 212
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v1

    .line 214
    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x3f

    if-gt v2, v3, :cond_2

    .line 220
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    if-eqz p3, :cond_1

    neg-long v2, v2

    :cond_1
    return-wide v2

    .line 215
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "At offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " byte binary number exceeds maximum signed long value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseBinaryLong([BIIZ)J
    .locals 8
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "negative"    # Z

    .line 185
    const/16 v0, 0x9

    if-ge p2, v0, :cond_3

    .line 191
    const-wide/16 v0, 0x0

    .line 192
    .local v0, "val":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 193
    const/16 v3, 0x8

    shl-long v3, v0, v3

    add-int v5, p1, v2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long v0, v3, v5

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v2    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    .line 197
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 198
    add-int/lit8 v4, p2, -0x1

    int-to-double v4, v4

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    sub-long/2addr v4, v2

    xor-long/2addr v0, v4

    .line 200
    :cond_1
    if-eqz p3, :cond_2

    neg-long v2, v0

    goto :goto_1

    :cond_2
    move-wide v2, v0

    :goto_1
    return-wide v2

    .line 186
    .end local v0    # "val":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "At offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " byte binary number exceeds maximum signed long value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseBoolean([BI)Z
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I

    .line 234
    aget-byte v0, p0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static parseName([BII)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 265
    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 266
    :catch_0
    move-exception v0

    .line 268
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    sget-object v1, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 269
    :catch_1
    move-exception v1

    .line 271
    .local v1, "ex2":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "len":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    .line 296
    add-int/lit8 v0, v0, 0x1

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "i":I
    :cond_0
    if-lez v0, :cond_1

    .line 299
    new-array v1, v0, [B

    .line 300
    .local v1, "b":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    invoke-interface {p3, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 303
    .end local v1    # "b":[B
    :cond_1
    const-string v1, ""

    return-object v1
.end method

.method public static parseOctal([BII)J
    .locals 10
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 107
    const-wide/16 v0, 0x0

    .line 108
    .local v0, "result":J
    add-int v2, p1, p2

    .line 109
    .local v2, "end":I
    move v3, p1

    .line 111
    .local v3, "start":I
    const/4 v4, 0x2

    if-lt p2, v4, :cond_6

    .line 115
    aget-byte v4, p0, v3

    if-nez v4, :cond_0

    .line 116
    const-wide/16 v4, 0x0

    return-wide v4

    .line 120
    :cond_0
    :goto_0
    const/16 v4, 0x20

    if-ge v3, v2, :cond_1

    .line 121
    aget-byte v5, p0, v3

    if-ne v5, v4, :cond_1

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_1
    add-int/lit8 v5, v2, -0x1

    aget-byte v5, p0, v5

    .line 133
    .local v5, "trailer":B
    :goto_1
    if-ge v3, v2, :cond_3

    if-eqz v5, :cond_2

    if-ne v5, v4, :cond_3

    .line 134
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 135
    add-int/lit8 v6, v2, -0x1

    aget-byte v5, p0, v6

    goto :goto_1

    .line 138
    :cond_3
    :goto_2
    if-ge v3, v2, :cond_5

    .line 139
    aget-byte v4, p0, v3

    .line 141
    .local v4, "currentByte":B
    const/16 v6, 0x30

    if-lt v4, v6, :cond_4

    const/16 v6, 0x37

    if-gt v4, v6, :cond_4

    .line 145
    const/4 v6, 0x3

    shl-long v6, v0, v6

    add-int/lit8 v8, v4, -0x30

    int-to-long v8, v8

    add-long v0, v6, v8

    .line 138
    .end local v4    # "currentByte":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 142
    .restart local v4    # "currentByte":B
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 143
    invoke-static {p0, p1, p2, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->exceptionMessage([BIIIB)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 149
    .end local v4    # "currentByte":B
    :cond_5
    return-wide v0

    .line 112
    .end local v5    # "trailer":B
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must be at least 2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static parseOctalOrBinary([BII)J
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 172
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 173
    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v0

    return-wide v0

    .line 175
    :cond_0
    aget-byte v0, p0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 176
    .local v0, "negative":Z
    :goto_0
    const/16 v1, 0x9

    if-ge p2, v1, :cond_2

    .line 177
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBinaryLong([BIIZ)J

    move-result-wide v1

    return-wide v1

    .line 179
    :cond_2
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBinaryBigInteger([BIIZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public static parseSparse([BI)Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I

    .line 314
    const/16 v0, 0xc

    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v1

    .line 315
    .local v1, "sparseOffset":J
    add-int/lit8 v3, p1, 0xc

    invoke-static {p0, v3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v3

    .line 317
    .local v3, "sparseNumbytes":J
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;-><init>(JJ)V

    return-object v0
.end method

.method public static verifyCheckSum([B)Z
    .locals 11
    .param p0, "header"    # [B

    .line 615
    const/16 v0, 0x8

    const/16 v1, 0x94

    invoke-static {p0, v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v2

    .line 616
    .local v2, "storedSum":J
    const-wide/16 v4, 0x0

    .line 617
    .local v4, "unsignedSum":J
    const-wide/16 v6, 0x0

    .line 619
    .local v6, "signedSum":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v8, p0

    if-ge v0, v8, :cond_1

    .line 620
    aget-byte v8, p0, v0

    .line 621
    .local v8, "b":B
    if-gt v1, v0, :cond_0

    const/16 v9, 0x9c

    if-ge v0, v9, :cond_0

    .line 622
    const/16 v8, 0x20

    .line 624
    :cond_0
    and-int/lit16 v9, v8, 0xff

    int-to-long v9, v9

    add-long/2addr v4, v9

    .line 625
    int-to-long v9, v8

    add-long/2addr v6, v9

    .line 619
    .end local v8    # "b":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 627
    .end local v0    # "i":I
    :cond_1
    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method
