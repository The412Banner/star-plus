.class Lorg/apache/commons/compress/archivers/cpio/CpioUtil;
.super Ljava/lang/Object;
.source "CpioUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteArray2long([BZ)J
    .locals 8
    .param p0, "number"    # [B
    .param p1, "swapHalfWord"    # Z

    .line 47
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 51
    const-wide/16 v0, 0x0

    .line 52
    .local v0, "ret":J
    const/4 v2, 0x0

    .line 53
    .local v2, "pos":I
    array-length v3, p0

    new-array v3, v3, [B

    .line 54
    .local v3, "tmp_number":[B
    array-length v4, p0

    const/4 v5, 0x0

    invoke-static {p0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    if-nez p1, :cond_0

    .line 57
    const/4 v4, 0x0

    .line 58
    .local v4, "tmp":B
    const/4 v2, 0x0

    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_0

    .line 59
    aget-byte v4, v3, v2

    .line 60
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .local v6, "pos":I
    aget-byte v7, v3, v6

    aput-byte v7, v3, v2

    .line 61
    aput-byte v4, v3, v6

    .line 58
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    goto :goto_0

    .line 65
    .end local v4    # "tmp":B
    :cond_0
    aget-byte v4, v3, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v0, v4

    .line 66
    const/4 v2, 0x1

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 67
    const/16 v4, 0x8

    shl-long/2addr v0, v4

    .line 68
    aget-byte v4, v3, v2

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 70
    :cond_1
    return-wide v0

    .line 48
    .end local v0    # "ret":J
    .end local v2    # "pos":I
    .end local v3    # "tmp_number":[B
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static fileType(J)J
    .locals 2
    .param p0, "mode"    # J

    .line 32
    const-wide/32 v0, 0xf000

    and-long/2addr v0, p0

    return-wide v0
.end method

.method static long2byteArray(JIZ)[B
    .locals 7
    .param p0, "number"    # J
    .param p2, "length"    # I
    .param p3, "swapHalfWord"    # Z

    .line 89
    new-array v0, p2, [B

    .line 90
    .local v0, "ret":[B
    const/4 v1, 0x0

    .line 91
    .local v1, "pos":I
    const-wide/16 v2, 0x0

    .line 93
    .local v2, "tmp_number":J
    rem-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_2

    const/4 v4, 0x2

    if-lt p2, v4, :cond_2

    .line 97
    move-wide v2, p0

    .line 98
    add-int/lit8 v1, p2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 99
    const-wide/16 v4, 0xff

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 100
    const/16 v4, 0x8

    shr-long/2addr v2, v4

    .line 98
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 103
    :cond_0
    if-nez p3, :cond_1

    .line 104
    const/4 v4, 0x0

    .line 105
    .local v4, "tmp":B
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    .line 106
    aget-byte v4, v0, v1

    .line 107
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "pos":I
    .local v5, "pos":I
    aget-byte v6, v0, v5

    aput-byte v6, v0, v1

    .line 108
    aput-byte v4, v0, v5

    .line 105
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_1

    .line 112
    .end local v4    # "tmp":B
    :cond_1
    return-object v0

    .line 94
    :cond_2
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method
