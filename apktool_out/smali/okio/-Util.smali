.class public final Lokio/-Util;
.super Ljava/lang/Object;
.source "-Util.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n-Util.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -Util.kt\nokio/-Util\n*L\n1#1,153:1\n60#1:154\n66#1:155\n*E\n*S KotlinDebug\n*F\n+ 1 -Util.kt\nokio/-Util\n*L\n95#1:154\n96#1:155\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H\u0000\u001a \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\u000cH\u0000\u001a\u0019\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000cH\u0080\u0008\u001a\u0019\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010\u000f\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\u000c\u001a\u0015\u0010\u000f\u001a\u00020\u000c*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000cH\u0080\u000c\u001a\u0015\u0010\u000f\u001a\u00020\u000c*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000cH\u0080\u000c\u001a\u000c\u0010\u0012\u001a\u00020\u0005*\u00020\u0005H\u0000\u001a\u000c\u0010\u0012\u001a\u00020\u000c*\u00020\u000cH\u0000\u001a\u000c\u0010\u0012\u001a\u00020\u0013*\u00020\u0013H\u0000\u001a\u0015\u0010\u0014\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\u000c\u001a\u0015\u0010\u0015\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\u000c\u001a\u000c\u0010\u0016\u001a\u00020\u0017*\u00020\u0010H\u0000\u001a\u000c\u0010\u0016\u001a\u00020\u0017*\u00020\u0005H\u0000\u001a\u000c\u0010\u0016\u001a\u00020\u0017*\u00020\u000cH\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "arrayRangeEquals",
        "",
        "a",
        "",
        "aOffset",
        "",
        "b",
        "bOffset",
        "byteCount",
        "checkOffsetAndCount",
        "",
        "size",
        "",
        "offset",
        "minOf",
        "and",
        "",
        "other",
        "reverseBytes",
        "",
        "shl",
        "shr",
        "toHexString",
        "",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public static final and(BI)I
    .locals 2
    .param p0, "$this$and"    # B
    .param p1, "other"    # I

    const/4 v0, 0x0

    .line 66
    .local v0, "$i$f$and":I
    and-int v1, p0, p1

    return v1
.end method

.method public static final and(BJ)J
    .locals 3
    .param p0, "$this$and"    # B
    .param p1, "other"    # J

    const/4 v0, 0x0

    .line 69
    .local v0, "$i$f$and":I
    int-to-long v1, p0

    and-long/2addr v1, p1

    return-wide v1
.end method

.method public static final and(IJ)J
    .locals 3
    .param p0, "$this$and"    # I
    .param p1, "other"    # J

    const/4 v0, 0x0

    .line 72
    .local v0, "$i$f$and":I
    int-to-long v1, p0

    and-long/2addr v1, p1

    return-wide v1
.end method

.method public static final arrayRangeEquals([BI[BII)Z
    .locals 4
    .param p0, "a"    # [B
    .param p1, "aOffset"    # I
    .param p2, "b"    # [B
    .param p3, "bOffset"    # I
    .param p4, "byteCount"    # I

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_1

    .line 88
    .local v1, "i":I
    add-int v2, v1, p1

    aget-byte v2, p0, v2

    add-int v3, v1, p3

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_0

    return v0

    .line 87
    :cond_0
    nop

    .end local v1    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static final checkOffsetAndCount(JJJ)V
    .locals 4
    .param p0, "size"    # J
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    .line 25
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-ltz v0, :cond_0

    .line 28
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " byteCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final minOf(IJ)J
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # J

    const/4 v0, 0x0

    .line 78
    .local v0, "$i$f$minOf":I
    int-to-long v1, p0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public static final minOf(JI)J
    .locals 3
    .param p0, "a"    # J
    .param p2, "b"    # I

    const/4 v0, 0x0

    .line 75
    .local v0, "$i$f$minOf":I
    int-to-long v1, p2

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public static final reverseBytes(I)I
    .locals 2
    .param p0, "$this$reverseBytes"    # I

    .line 40
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    .line 41
    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    .line 40
    or-int/2addr v0, v1

    .line 42
    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    .line 41
    or-int/2addr v0, v1

    .line 43
    and-int/lit16 v1, p0, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 42
    or-int/2addr v0, v1

    .line 40
    return v0
.end method

.method public static final reverseBytes(J)J
    .locals 8
    .param p0, "$this$reverseBytes"    # J

    .line 47
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    const/16 v2, 0x38

    ushr-long/2addr v0, v2

    .line 48
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, p0

    const/16 v5, 0x28

    ushr-long/2addr v3, v5

    .line 47
    or-long/2addr v0, v3

    .line 49
    const-wide v3, 0xff0000000000L

    and-long/2addr v3, p0

    const/16 v6, 0x18

    ushr-long/2addr v3, v6

    .line 48
    or-long/2addr v0, v3

    .line 50
    const-wide v3, 0xff00000000L

    and-long/2addr v3, p0

    const/16 v7, 0x8

    ushr-long/2addr v3, v7

    .line 49
    or-long/2addr v0, v3

    .line 51
    const-wide v3, 0xff000000L

    and-long/2addr v3, p0

    shl-long/2addr v3, v7

    .line 50
    or-long/2addr v0, v3

    .line 52
    const-wide/32 v3, 0xff0000

    and-long/2addr v3, p0

    shl-long/2addr v3, v6

    .line 51
    or-long/2addr v0, v3

    .line 53
    const-wide/32 v3, 0xff00

    and-long/2addr v3, p0

    shl-long/2addr v3, v5

    .line 52
    or-long/2addr v0, v3

    .line 54
    const-wide/16 v3, 0xff

    and-long/2addr v3, p0

    shl-long v2, v3, v2

    .line 53
    or-long/2addr v0, v2

    .line 47
    return-wide v0
.end method

.method public static final reverseBytes(S)S
    .locals 3
    .param p0, "$this$reverseBytes"    # S

    .line 33
    const v0, 0xffff

    and-int/2addr v0, p0

    .line 34
    .local v0, "i":I
    const v1, 0xff00

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x8

    .line 35
    and-int/lit16 v2, v0, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 34
    or-int/2addr v1, v2

    .line 36
    .local v1, "reversed":I
    int-to-short v2, v1

    return v2
.end method

.method public static final shl(BI)I
    .locals 2
    .param p0, "$this$shl"    # B
    .param p1, "other"    # I

    const/4 v0, 0x0

    .line 63
    .local v0, "$i$f$shl":I
    shl-int v1, p0, p1

    return v1
.end method

.method public static final shr(BI)I
    .locals 2
    .param p0, "$this$shr"    # B
    .param p1, "other"    # I

    const/4 v0, 0x0

    .line 60
    .local v0, "$i$f$shr":I
    shr-int v1, p0, p1

    return v1
.end method

.method public static final toHexString(B)Ljava/lang/String;
    .locals 5
    .param p0, "$this$toHexString"    # B

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 95
    .local v0, "result":[C
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v1

    const/4 v2, 0x4

    .local v2, "other$iv":I
    move v3, p0

    .local v3, "$this$shr$iv":B
    const/4 v4, 0x0

    .line 154
    .local v4, "$i$f$shr":I
    shr-int v2, v3, v2

    .line 95
    .end local v2    # "other$iv":I
    .end local v3    # "$this$shr$iv":B
    .end local v4    # "$i$f$shr":I
    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 96
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v1

    const/16 v2, 0xf

    .restart local v2    # "other$iv":I
    .local v3, "$this$and$iv":B
    const/4 v4, 0x0

    .line 155
    .local v4, "$i$f$and":I
    and-int/2addr v2, v3

    .end local v2    # "other$iv":I
    .end local v3    # "$this$and$iv":B
    .end local v4    # "$i$f$and":I
    aget-char v1, v1, v2

    const/4 v2, 0x1

    aput-char v1, v0, v2

    .line 97
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static final toHexString(I)Ljava/lang/String;
    .locals 4
    .param p0, "$this$toHexString"    # I

    .line 101
    if-nez p0, :cond_0

    const-string v0, "0"

    return-object v0

    .line 103
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [C

    .line 104
    .local v0, "result":[C
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v1

    shr-int/lit8 v2, p0, 0x1c

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 105
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v1

    shr-int/lit8 v2, p0, 0x18

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x1

    aput-char v1, v0, v2

    .line 106
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v1

    shr-int/lit8 v2, p0, 0x14

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x2

    aput-char v1, v0, v2

    .line 107
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x3

    aput-char v1, v0, v2

    .line 108
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v1

    shr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x4

    aput-char v1, v0, v2

    .line 109
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x5

    aput-char v1, v0, v2

    .line 110
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v1

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x6

    aput-char v1, v0, v2

    .line 111
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v1

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x7

    aput-char v1, v0, v2

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 116
    aget-char v2, v0, v1

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 117
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 115
    goto :goto_0

    .line 120
    :cond_2
    :goto_1
    array-length v2, v0

    sub-int/2addr v2, v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.method public static final toHexString(J)Ljava/lang/String;
    .locals 10
    .param p0, "$this$toHexString"    # J

    .line 124
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "0"

    return-object v0

    .line 126
    :cond_0
    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 127
    .local v1, "result":[C
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v3, 0x3c

    shr-long v3, p0, v3

    const-wide/16 v5, 0xf

    and-long/2addr v3, v5

    long-to-int v3, v3

    aget-char v2, v2, v3

    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 128
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v3, 0x38

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    aget-char v2, v2, v3

    const/4 v3, 0x1

    aput-char v2, v1, v3

    .line 129
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v3, 0x34

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    aget-char v2, v2, v3

    const/4 v3, 0x2

    aput-char v2, v1, v3

    .line 130
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v3, 0x30

    shr-long v7, p0, v3

    and-long/2addr v7, v5

    long-to-int v4, v7

    aget-char v2, v2, v4

    const/4 v4, 0x3

    aput-char v2, v1, v4

    .line 131
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v4, 0x2c

    shr-long v7, p0, v4

    and-long/2addr v7, v5

    long-to-int v4, v7

    aget-char v2, v2, v4

    const/4 v4, 0x4

    aput-char v2, v1, v4

    .line 132
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v7, 0x28

    shr-long v7, p0, v7

    and-long/2addr v7, v5

    long-to-int v7, v7

    aget-char v2, v2, v7

    const/4 v7, 0x5

    aput-char v2, v1, v7

    .line 133
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v7, 0x24

    shr-long v7, p0, v7

    and-long/2addr v7, v5

    long-to-int v7, v7

    aget-char v2, v2, v7

    const/4 v7, 0x6

    aput-char v2, v1, v7

    .line 134
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v7, 0x20

    shr-long v7, p0, v7

    and-long/2addr v7, v5

    long-to-int v7, v7

    aget-char v2, v2, v7

    const/4 v7, 0x7

    aput-char v2, v1, v7

    .line 135
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v7, 0x1c

    shr-long v7, p0, v7

    and-long/2addr v7, v5

    long-to-int v7, v7

    aget-char v2, v2, v7

    const/16 v7, 0x8

    aput-char v2, v1, v7

    .line 136
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v8, 0x18

    shr-long v8, p0, v8

    and-long/2addr v8, v5

    long-to-int v8, v8

    aget-char v2, v2, v8

    const/16 v8, 0x9

    aput-char v2, v1, v8

    .line 137
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v8, 0x14

    shr-long v8, p0, v8

    and-long/2addr v8, v5

    long-to-int v8, v8

    aget-char v2, v2, v8

    const/16 v8, 0xa

    aput-char v2, v1, v8

    .line 138
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-long v8, p0, v0

    and-long/2addr v8, v5

    long-to-int v0, v8

    aget-char v0, v2, v0

    const/16 v2, 0xb

    aput-char v0, v1, v2

    .line 139
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v0

    const/16 v2, 0xc

    shr-long v8, p0, v2

    and-long/2addr v8, v5

    long-to-int v8, v8

    aget-char v0, v0, v8

    aput-char v0, v1, v2

    .line 140
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v0

    shr-long v7, p0, v7

    and-long/2addr v7, v5

    long-to-int v2, v7

    aget-char v0, v0, v2

    const/16 v2, 0xd

    aput-char v0, v1, v2

    .line 141
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v0

    shr-long v7, p0, v4

    and-long/2addr v7, v5

    long-to-int v2, v7

    aget-char v0, v0, v2

    const/16 v2, 0xe

    aput-char v0, v1, v2

    .line 142
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v0

    and-long v4, p0, v5

    long-to-int v2, v4

    aget-char v0, v0, v2

    const/16 v2, 0xf

    aput-char v0, v1, v2

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 147
    aget-char v2, v1, v0

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 146
    goto :goto_0

    .line 151
    :cond_2
    :goto_1
    array-length v2, v1

    sub-int/2addr v2, v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method
