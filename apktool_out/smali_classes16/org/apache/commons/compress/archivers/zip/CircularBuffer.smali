.class Lorg/apache/commons/compress/archivers/zip/CircularBuffer;
.super Ljava/lang/Object;
.source "CircularBuffer.java"


# instance fields
.field private final buffer:[B

.field private readIndex:I

.field private final size:I

.field private writeIndex:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->size:I

    .line 44
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->buffer:[B

    .line 45
    return-void
.end method


# virtual methods
.method public available()Z
    .locals 2

    .line 51
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->readIndex:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public copy(II)V
    .locals 8
    .param p1, "distance"    # I
    .param p2, "length"    # I

    .line 81
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    sub-int/2addr v0, p1

    .line 82
    .local v0, "pos1":I
    add-int v1, v0, p2

    .line 83
    .local v1, "pos2":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 84
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->buffer:[B

    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->buffer:[B

    iget v6, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->size:I

    add-int/2addr v6, v2

    iget v7, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->size:I

    rem-int/2addr v6, v7

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 85
    iget v3, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->size:I

    rem-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public get()I
    .locals 3

    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->available()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->buffer:[B

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->readIndex:I

    aget-byte v0, v0, v1

    .line 68
    .local v0, "value":I
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->readIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->size:I

    rem-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->readIndex:I

    .line 69
    and-int/lit16 v1, v0, 0xff

    return v1

    .line 71
    .end local v0    # "value":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public put(I)V
    .locals 3
    .param p1, "value"    # I

    .line 58
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->buffer:[B

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 59
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->size:I

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    .line 60
    return-void
.end method
