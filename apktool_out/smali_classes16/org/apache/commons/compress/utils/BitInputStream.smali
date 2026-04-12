.class public Lorg/apache/commons/compress/utils/BitInputStream;
.super Ljava/lang/Object;
.source "BitInputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MASKS:[J

.field private static final MAXIMUM_CACHE_SIZE:I = 0x3f


# instance fields
.field private bitsCached:J

.field private bitsCachedSize:I

.field private final byteOrder:Ljava/nio/ByteOrder;

.field private final in:Lorg/apache/commons/compress/utils/CountingInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    const/16 v0, 0x40

    new-array v0, v0, [J

    sput-object v0, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    .line 36
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    .line 37
    sget-object v1, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    sget-object v2, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    add-int/lit8 v3, v0, -0x1

    aget-wide v3, v2, v3

    const/4 v2, 0x1

    shl-long v2, v3, v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 53
    new-instance v0, Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    .line 54
    iput-object p2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    .line 55
    return-void
.end method

.method private ensureCache(I)Z
    .locals 7
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    nop

    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    if-ge v0, p1, :cond_2

    iget v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    const/16 v1, 0x39

    if-ge v0, v1, :cond_2

    .line 188
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/CountingInputStream;->read()I

    move-result v0

    int-to-long v0, v0

    .line 189
    .local v0, "nextByte":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 190
    const/4 v2, 0x1

    return v2

    .line 192
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v4, 0x8

    if-ne v2, v3, :cond_1

    .line 193
    iget-wide v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    iget v5, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    shl-long v5, v0, v5

    or-long/2addr v2, v5

    iput-wide v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    goto :goto_1

    .line 195
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    shl-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 196
    iget-wide v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 198
    :goto_1
    iget v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 199
    .end local v0    # "nextByte":J
    goto :goto_0

    .line 200
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private processBitsGreater57(I)J
    .locals 13
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "overflowBits":I
    const-wide/16 v1, 0x0

    .line 146
    .local v1, "overflow":J
    iget v3, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    sub-int v3, p1, v3

    .line 147
    .local v3, "bitsToAddCount":I
    rsub-int/lit8 v0, v3, 0x8

    .line 148
    iget-object v4, p0, Lorg/apache/commons/compress/utils/BitInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {v4}, Lorg/apache/commons/compress/utils/CountingInputStream;->read()I

    move-result v4

    int-to-long v4, v4

    .line 149
    .local v4, "nextByte":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 150
    return-wide v4

    .line 152
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/compress/utils/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v6, v7, :cond_1

    .line 153
    sget-object v6, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    aget-wide v7, v6, v3

    and-long v6, v4, v7

    .line 154
    .local v6, "bitsToAdd":J
    iget-wide v8, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    iget v10, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    shl-long v10, v6, v10

    or-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 155
    ushr-long v8, v4, v3

    sget-object v10, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    aget-wide v11, v10, v0

    and-long v1, v8, v11

    .line 156
    .end local v6    # "bitsToAdd":J
    goto :goto_0

    .line 157
    :cond_1
    iget-wide v6, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    shl-long/2addr v6, v3

    iput-wide v6, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 158
    ushr-long v6, v4, v0

    sget-object v8, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    aget-wide v9, v8, v3

    and-long/2addr v6, v9

    .line 159
    .restart local v6    # "bitsToAdd":J
    iget-wide v8, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    or-long/2addr v8, v6

    iput-wide v8, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 160
    sget-object v8, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    aget-wide v9, v8, v0

    and-long v1, v4, v9

    .line 162
    .end local v6    # "bitsToAdd":J
    :goto_0
    iget-wide v6, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    sget-object v8, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    aget-wide v9, v8, p1

    and-long/2addr v6, v9

    .line 163
    .local v6, "bitsOut":J
    iput-wide v1, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 164
    iput v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 165
    return-wide v6
.end method

.method private readCachedBits(I)J
    .locals 5
    .param p1, "count"    # I

    .line 170
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 171
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    sget-object v2, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    aget-wide v3, v2, p1

    and-long/2addr v0, v3

    .line 172
    .local v0, "bitsOut":J
    iget-wide v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    ushr-long/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    goto :goto_0

    .line 174
    .end local v0    # "bitsOut":J
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    iget v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    sub-int/2addr v2, p1

    shr-long/2addr v0, v2

    sget-object v2, Lorg/apache/commons/compress/utils/BitInputStream;->MASKS:[J

    aget-wide v3, v2, p1

    and-long/2addr v0, v3

    .line 176
    .restart local v0    # "bitsOut":J
    :goto_0
    iget v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    sub-int/2addr v2, p1

    iput v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 177
    return-wide v0
.end method


# virtual methods
.method public alignWithByteBoundary()V
    .locals 1

    .line 122
    iget v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    rem-int/lit8 v0, v0, 0x8

    .line 123
    .local v0, "toSkip":I
    if-lez v0, :cond_0

    .line 124
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readCachedBits(I)J

    .line 126
    :cond_0
    return-void
.end method

.method public bitsAvailable()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    int-to-long v0, v0

    iget-object v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/compress/utils/CountingInputStream;->available()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bitsCached()I
    .locals 1

    .line 102
    iget v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    return v0
.end method

.method public clearBitCache()V
    .locals 2

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached:J

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    .line 69
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/CountingInputStream;->close()V

    .line 60
    return-void
.end method

.method public getBytesRead()J
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/CountingInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public readBits(I)J
    .locals 2
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    if-ltz p1, :cond_2

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_2

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/utils/BitInputStream;->ensureCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-wide/16 v0, -0x1

    return-wide v0

    .line 89
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCachedSize:I

    if-ge v0, p1, :cond_1

    .line 90
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/utils/BitInputStream;->processBitsGreater57(I)J

    move-result-wide v0

    return-wide v0

    .line 92
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/utils/BitInputStream;->readCachedBits(I)J

    move-result-wide v0

    return-wide v0

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count must not be negative or greater than 63"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
