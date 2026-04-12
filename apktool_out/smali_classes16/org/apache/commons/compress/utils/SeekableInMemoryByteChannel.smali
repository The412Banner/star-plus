.class public Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;
.super Ljava/lang/Object;
.source "SeekableInMemoryByteChannel.java"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# static fields
.field private static final NAIVE_RESIZE_LIMIT:I = 0x3fffffff


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private data:[B

.field private position:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;-><init>([B)V

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 75
    new-array v0, p1, [B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;-><init>([B)V

    .line 76
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    iput-object p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    .line 57
    array-length v0, p1

    iput v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 58
    return-void
.end method

.method private ensureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method private resize(I)V
    .locals 2
    .param p1, "newLength"    # I

    .line 193
    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    array-length v0, v0

    .line 194
    .local v0, "len":I
    if-gtz v0, :cond_0

    .line 195
    const/4 v0, 0x1

    .line 197
    :cond_0
    const v1, 0x3fffffff    # 1.9999999f

    if-ge p1, v1, :cond_1

    .line 198
    :goto_0
    if-ge v0, p1, :cond_2

    .line 199
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    move v0, p1

    .line 204
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    .line 205
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 149
    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 150
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public position()J
    .locals 2

    .line 87
    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 2
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->ensureOpen()V

    .line 93
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 96
    long-to-int v0, p1

    iput v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 97
    return-object p0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position has to be in range 0.. 2147483647"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->ensureOpen()V

    .line 134
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 135
    .local v0, "wanted":I
    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    sub-int/2addr v1, v2

    .line 136
    .local v1, "possible":I
    if-gtz v1, :cond_0

    .line 137
    const/4 v2, -0x1

    return v2

    .line 139
    :cond_0
    if-le v0, v1, :cond_1

    .line 140
    move v0, v1

    .line 142
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    iget v3, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 143
    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 144
    return v0
.end method

.method public size()J
    .locals 2

    .line 108
    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 2
    .param p1, "newSize"    # J

    .line 119
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    .line 122
    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 123
    long-to-int v0, p1

    iput v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 125
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_1

    .line 126
    long-to-int v0, p1

    iput v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 128
    :cond_1
    return-object p0

    .line 120
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size has to be in range 0.. 2147483647"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->ensureOpen()V

    .line 160
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 161
    .local v0, "wanted":I
    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    sub-int/2addr v1, v2

    .line 162
    .local v1, "possibleWithoutResize":I
    if-le v0, v1, :cond_1

    .line 163
    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    add-int/2addr v2, v0

    .line 164
    .local v2, "newSize":I
    if-gez v2, :cond_0

    .line 165
    const v3, 0x7fffffff

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->resize(I)V

    .line 166
    iget v4, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    sub-int v0, v3, v4

    goto :goto_0

    .line 168
    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->resize(I)V

    .line 171
    .end local v2    # "newSize":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    iget v3, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 172
    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 173
    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    iget v3, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    if-ge v2, v3, :cond_2

    .line 174
    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    iput v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 176
    :cond_2
    return v0
.end method
