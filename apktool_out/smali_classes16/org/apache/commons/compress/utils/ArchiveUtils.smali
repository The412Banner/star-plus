.class public Lorg/apache/commons/compress/utils/ArchiveUtils;
.super Ljava/lang/Object;
.source "ArchiveUtils.java"


# static fields
.field private static final MAX_SANITIZED_NAME_LENGTH:I = 0xff


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static isArrayZero([BI)Z
    .locals 2
    .param p0, "a"    # [B
    .param p1, "size"    # I

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 255
    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    .line 256
    const/4 v1, 0x0

    return v1

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isEqual([BII[BII)Z
    .locals 7
    .param p0, "buffer1"    # [B
    .param p1, "offset1"    # I
    .param p2, "length1"    # I
    .param p3, "buffer2"    # [B
    .param p4, "offset2"    # I
    .param p5, "length2"    # I

    .line 201
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static isEqual([BII[BIIZ)Z
    .locals 5
    .param p0, "buffer1"    # [B
    .param p1, "offset1"    # I
    .param p2, "length1"    # I
    .param p3, "buffer2"    # [B
    .param p4, "offset2"    # I
    .param p5, "length2"    # I
    .param p6, "ignoreTrailingNulls"    # Z

    .line 159
    if-ge p2, p5, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p5

    .line 160
    .local v0, "minLen":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    .line 161
    add-int v3, p1, v1

    aget-byte v3, p0, v3

    add-int v4, p4, v1

    aget-byte v4, p3, v4

    if-eq v3, v4, :cond_1

    .line 162
    return v2

    .line 160
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    if-ne p2, p5, :cond_3

    .line 166
    return v1

    .line 168
    :cond_3
    if-eqz p6, :cond_9

    .line 169
    if-le p2, p5, :cond_6

    .line 170
    move v3, p5

    .local v3, "i":I
    :goto_2
    if-ge v3, p2, :cond_5

    .line 171
    add-int v4, p1, v3

    aget-byte v4, p0, v4

    if-eqz v4, :cond_4

    .line 172
    return v2

    .line 170
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3    # "i":I
    :cond_5
    goto :goto_4

    .line 176
    :cond_6
    move v3, p2

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, p5, :cond_8

    .line 177
    add-int v4, p4, v3

    aget-byte v4, p3, v4

    if-eqz v4, :cond_7

    .line 178
    return v2

    .line 176
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 182
    .end local v3    # "i":I
    :cond_8
    :goto_4
    return v1

    .line 184
    :cond_9
    return v2
.end method

.method public static isEqual([B[B)Z
    .locals 7
    .param p0, "buffer1"    # [B
    .param p1, "buffer2"    # [B

    .line 212
    array-length v2, p0

    array-length v5, p1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static isEqual([B[BZ)Z
    .locals 7
    .param p0, "buffer1"    # [B
    .param p1, "buffer2"    # [B
    .param p2, "ignoreTrailingNulls"    # Z

    .line 224
    array-length v2, p0

    const/4 v4, 0x0

    array-length v5, p1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static isEqualWithNull([BII[BII)Z
    .locals 7
    .param p0, "buffer1"    # [B
    .param p1, "offset1"    # I
    .param p2, "length1"    # I
    .param p3, "buffer2"    # [B
    .param p4, "offset2"    # I
    .param p5, "length2"    # I

    .line 241
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static matchAsciiBuffer(Ljava/lang/String;[B)Z
    .locals 2
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "buffer"    # [B

    .line 92
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    return v0
.end method

.method public static matchAsciiBuffer(Ljava/lang/String;[BII)Z
    .locals 8
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 76
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .local v0, "buffer1":[B
    nop

    .line 81
    array-length v3, v0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v1, v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v1

    return v1

    .line 77
    .end local v0    # "buffer1":[B
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 279
    .local v0, "cs":[C
    array-length v1, v0

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    .line 280
    .local v1, "chars":[C
    :goto_0
    array-length v3, v0

    if-le v3, v2, :cond_1

    .line 281
    const/16 v3, 0xfc

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 282
    const/16 v4, 0x2e

    aput-char v4, v1, v3

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 285
    .end local v3    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    aget-char v5, v1, v4

    .line 287
    .local v5, "c":C
    invoke-static {v5}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 288
    invoke-static {v5}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v6

    .line 289
    .local v6, "block":Ljava/lang/Character$UnicodeBlock;
    if-eqz v6, :cond_2

    sget-object v7, Ljava/lang/Character$UnicodeBlock;->SPECIALS:Ljava/lang/Character$UnicodeBlock;

    if-eq v6, v7, :cond_2

    .line 290
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    goto :goto_3

    .line 294
    .end local v6    # "block":Ljava/lang/Character$UnicodeBlock;
    :cond_2
    const/16 v6, 0x3f

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    .end local v5    # "c":C
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 296
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static toAsciiBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "inputString"    # Ljava/lang/String;

    .line 104
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .locals 2
    .param p0, "inputBytes"    # [B

    .line 119
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toAsciiString([BII)Ljava/lang/String;
    .locals 2
    .param p0, "inputBytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 136
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toString(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Ljava/lang/String;
    .locals 5
    .param p0, "entry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "size":Ljava/lang/String;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    const/4 v3, 0x7

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 58
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
