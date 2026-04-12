.class public Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;
.super Ljava/io/OutputStream;
.source "FixedLengthBlockOutputStream.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;
    }
.end annotation


# instance fields
.field private final blockSize:I

.field private final buffer:Ljava/nio/ByteBuffer;

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final out:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I

    .line 62
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p1

    check-cast v0, Ljava/io/FileOutputStream;

    .line 65
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    .line 66
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 67
    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$1;)V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    .line 69
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 71
    :goto_0
    iput p2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;I)V
    .locals 2
    .param p1, "out"    # Ljava/nio/channels/WritableByteChannel;
    .param p2, "blockSize"    # I

    .line 78
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    .line 80
    iput p2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    .line 81
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 82
    return-void
.end method

.method private maybeFlush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->writeBlock()V

    .line 88
    :cond_0
    return-void
.end method

.method private padBlock()V
    .locals 7

    .line 195
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 196
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 197
    .local v0, "bytesToWrite":I
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-le v0, v2, :cond_2

    .line 198
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    .line 199
    .local v3, "align":I
    if-eqz v3, :cond_1

    .line 200
    rsub-int/lit8 v4, v3, 0x8

    .line 201
    .local v4, "limit":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 202
    iget-object v6, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 201
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 204
    .end local v5    # "i":I
    :cond_0
    sub-int/2addr v0, v4

    .line 207
    .end local v4    # "limit":I
    :cond_1
    :goto_1
    if-lt v0, v2, :cond_2

    .line 208
    iget-object v4, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 209
    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    .line 212
    .end local v3    # "align":I
    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 213
    iget-object v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 215
    :cond_3
    return-void
.end method

.method private writeBlock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 92
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 93
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    .line 94
    .local v1, "hasRemaining":Z
    iget v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    if-ne v0, v2, :cond_0

    if-nez v1, :cond_0

    .line 100
    iget-object v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 101
    return-void

    .line 95
    :cond_0
    iget v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 96
    const-string v3, "Failed to write %,d bytes atomically. Only wrote  %,d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->flushBlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 190
    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 190
    throw v0

    .line 192
    :cond_0
    :goto_0
    return-void
.end method

.method public flushBlock()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->padBlock()V

    .line 179
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->writeBlock()V

    .line 181
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 2

    .line 166
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 135
    .local v0, "srcRemaining":I
    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 137
    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 139
    :cond_0
    move v1, v0

    .line 140
    .local v1, "srcLeft":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 143
    .local v2, "savedLimit":I
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 145
    .local v3, "n":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 146
    iget-object v4, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 147
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->writeBlock()V

    .line 148
    sub-int/2addr v1, v3

    .line 152
    .end local v3    # "n":I
    :cond_1
    :goto_0
    iget v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    if-lt v1, v3, :cond_2

    .line 153
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget v4, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 154
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v3, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 155
    iget v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    sub-int/2addr v1, v3

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 159
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 161
    .end local v1    # "srcLeft":I
    .end local v2    # "savedLimit":I
    :goto_1
    return v0

    .line 131
    .end local v0    # "srcRemaining":I
    :cond_3
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 109
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->maybeFlush()V

    .line 110
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    move v0, p2

    .line 118
    .local v0, "off":I
    move v1, p3

    .line 119
    .local v1, "len":I
    :goto_0
    if-lez v1, :cond_0

    .line 120
    iget-object v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 121
    .local v2, "n":I
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 122
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->maybeFlush()V

    .line 123
    sub-int/2addr v1, v2

    .line 124
    add-int/2addr v0, v2

    .line 125
    .end local v2    # "n":I
    goto :goto_0

    .line 126
    :cond_0
    return-void

    .line 115
    .end local v0    # "off":I
    .end local v1    # "len":I
    :cond_1
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method
