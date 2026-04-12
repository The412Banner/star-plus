.class public final Lorg/apache/commons/compress/utils/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/utils/ByteUtils$OutputStreamByteConsumer;,
        Lorg/apache/commons/compress/utils/ByteUtils$InputStreamByteSupplier;,
        Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;,
        Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final checkReadLength(I)V
    .locals 2
    .param p0, "length"    # I

    .line 257
    const/16 v0, 0x8

    if-gt p0, v0, :cond_0

    .line 260
    return-void

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t read more than eight bytes into a long value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromLittleEndian(Ljava/io/DataInput;I)J
    .locals 7
    .param p0, "in"    # Ljava/io/DataInput;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-static {p1}, Lorg/apache/commons/compress/utils/ByteUtils;->checkReadLength(I)V

    .line 149
    const-wide/16 v0, 0x0

    .line 150
    .local v0, "l":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 151
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    int-to-long v3, v3

    .line 152
    .local v3, "b":J
    mul-int/lit8 v5, v2, 0x8

    shl-long v5, v3, v5

    or-long/2addr v0, v5

    .line 150
    .end local v3    # "b":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public static fromLittleEndian(Ljava/io/InputStream;I)J
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-static {p1}, Lorg/apache/commons/compress/utils/ByteUtils;->checkReadLength(I)V

    .line 100
    const-wide/16 v0, 0x0

    .line 101
    .local v0, "l":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 102
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-long v3, v3

    .line 103
    .local v3, "b":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 106
    mul-int/lit8 v5, v2, 0x8

    shl-long v5, v3, v5

    or-long/2addr v0, v5

    .line 101
    .end local v3    # "b":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .restart local v3    # "b":J
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Premature end of data"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 108
    .end local v2    # "i":I
    .end local v3    # "b":J
    :cond_1
    return-wide v0
.end method

.method public static fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J
    .locals 7
    .param p0, "supplier"    # Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-static {p1}, Lorg/apache/commons/compress/utils/ByteUtils;->checkReadLength(I)V

    .line 126
    const-wide/16 v0, 0x0

    .line 127
    .local v0, "l":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 128
    invoke-interface {p0}, Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;->getAsByte()I

    move-result v3

    int-to-long v3, v3

    .line 129
    .local v3, "b":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 132
    mul-int/lit8 v5, v2, 0x8

    shl-long v5, v3, v5

    or-long/2addr v0, v5

    .line 127
    .end local v3    # "b":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .restart local v3    # "b":J
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Premature end of data"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    .end local v2    # "i":I
    .end local v3    # "b":J
    :cond_1
    return-wide v0
.end method

.method public static fromLittleEndian([B)J
    .locals 2
    .param p0, "bytes"    # [B

    .line 68
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static fromLittleEndian([BII)J
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    .line 80
    invoke-static {p2}, Lorg/apache/commons/compress/utils/ByteUtils;->checkReadLength(I)V

    .line 81
    const-wide/16 v0, 0x0

    .line 82
    .local v0, "l":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 83
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public static toLittleEndian(Ljava/io/DataOutput;JI)V
    .locals 5
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "value"    # J
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    move-wide v0, p1

    .line 220
    .local v0, "num":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 221
    const-wide/16 v3, 0xff

    and-long/2addr v3, v0

    long-to-int v3, v3

    invoke-interface {p0, v3}, Ljava/io/DataOutput;->write(I)V

    .line 222
    const/16 v3, 0x8

    shr-long/2addr v0, v3

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public static toLittleEndian(Ljava/io/OutputStream;JI)V
    .locals 5
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "value"    # J
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    move-wide v0, p1

    .line 185
    .local v0, "num":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 186
    const-wide/16 v3, 0xff

    and-long/2addr v3, v0

    long-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 187
    const/16 v3, 0x8

    shr-long/2addr v0, v3

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public static toLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;JI)V
    .locals 5
    .param p0, "consumer"    # Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;
    .param p1, "value"    # J
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    move-wide v0, p1

    .line 202
    .local v0, "num":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 203
    const-wide/16 v3, 0xff

    and-long/2addr v3, v0

    long-to-int v3, v3

    invoke-interface {p0, v3}, Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;->accept(I)V

    .line 204
    const/16 v3, 0x8

    shr-long/2addr v0, v3

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public static toLittleEndian([BJII)V
    .locals 6
    .param p0, "b"    # [B
    .param p1, "value"    # J
    .param p3, "off"    # I
    .param p4, "length"    # I

    .line 166
    move-wide v0, p1

    .line 167
    .local v0, "num":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 168
    add-int v3, p3, v2

    const-wide/16 v4, 0xff

    and-long/2addr v4, v0

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 169
    const/16 v3, 0x8

    shr-long/2addr v0, v3

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
