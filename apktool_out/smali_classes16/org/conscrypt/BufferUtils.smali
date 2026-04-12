.class final Lorg/conscrypt/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkNotNull([Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;

    .line 31
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 32
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_0

    .line 31
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .restart local v2    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null buffer in array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method static consume([Ljava/nio/ByteBuffer;I)V
    .locals 5
    .param p0, "sourceBuffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "toConsume"    # I

    .line 55
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 56
    .local v2, "sourceBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 57
    .local v3, "amount":I
    if-lez v3, :cond_0

    .line 58
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    sub-int/2addr p1, v3

    .line 60
    if-nez p1, :cond_0

    .line 61
    goto :goto_1

    .line 55
    .end local v2    # "sourceBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "amount":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    if-gtz p1, :cond_2

    .line 68
    return-void

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toConsume > data size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static copyNoConsume([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "maxAmount"    # I

    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Destination buffer too small"

    invoke-static {v0, v2}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 104
    move v0, p2

    .line 105
    .local v0, "needed":I
    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, p0, v1

    .line 106
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 107
    .local v4, "remaining":I
    if-lez v4, :cond_2

    .line 110
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 111
    .local v5, "oldPosition":I
    if-gt v4, v0, :cond_1

    .line 112
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 113
    sub-int/2addr v0, v4

    goto :goto_2

    .line 115
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    .line 116
    .local v6, "oldLimit":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 117
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 119
    const/4 v0, 0x0

    .line 123
    .end local v6    # "oldLimit":I
    :goto_2
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    if-nez v0, :cond_2

    .line 125
    goto :goto_3

    .line 105
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "remaining":I
    .end local v5    # "oldPosition":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    :cond_3
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 130
    return-object p1
.end method

.method static getBufferLargerThan([Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "minSize"    # I

    .line 75
    array-length v0, p0

    .line 76
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_4

    .line 77
    aget-object v3, p0, v1

    .line 78
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 79
    .local v4, "remaining":I
    if-lez v4, :cond_3

    .line 80
    if-lt v4, p1, :cond_0

    .line 81
    return-object v3

    .line 83
    :cond_0
    add-int/lit8 v5, v1, 0x1

    .local v5, "j":I
    :goto_1
    if-ge v5, v0, :cond_2

    .line 84
    aget-object v6, p0, v5

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lez v6, :cond_1

    .line 85
    return-object v2

    .line 83
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 88
    .end local v5    # "j":I
    :cond_2
    return-object v3

    .line 76
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "remaining":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_4
    return-object v2
.end method

.method static remaining([Ljava/nio/ByteBuffer;)J
    .locals 7
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;

    .line 42
    const-wide/16 v0, 0x0

    .line 43
    .local v0, "size":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 44
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 43
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-wide v0
.end method
