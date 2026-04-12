.class public Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;
.super Ljava/lang/Object;
.source "MultiReadOnlySeekableByteChannel.java"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# instance fields
.field private final channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/channels/SeekableByteChannel;",
            ">;"
        }
    .end annotation
.end field

.field private currentChannelIdx:I

.field private globalPosition:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/channels/SeekableByteChannel;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/SeekableByteChannel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    .line 59
    const-string v1, "channels must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channels:Ljava/util/List;

    .line 60
    return-void
.end method

.method public static varargs forFiles([Ljava/io/File;)Ljava/nio/channels/SeekableByteChannel;
    .locals 9
    .param p0, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/SeekableByteChannel;>;"
    const-string v1, "files must not be null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 246
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    new-array v5, v5, [Ljava/nio/file/OpenOption;

    sget-object v8, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v8, v5, v3

    invoke-static {v7, v5}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v6    # "f":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 248
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 249
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SeekableByteChannel;

    return-object v1

    .line 251
    :cond_1
    new-instance v1, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static varargs forSeekableByteChannels([Ljava/nio/channels/SeekableByteChannel;)Ljava/nio/channels/SeekableByteChannel;
    .locals 2
    .param p0, "channels"    # [Ljava/nio/channels/SeekableByteChannel;

    .line 229
    const-string v0, "channels must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/channels/SeekableByteChannel;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 230
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0

    .line 232
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "first":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SeekableByteChannel;

    .line 98
    .local v2, "ch":Ljava/nio/channels/SeekableByteChannel;
    :try_start_0
    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_1

    .line 99
    :catch_0
    move-exception v3

    .line 100
    .local v3, "ex":Ljava/io/IOException;
    if-nez v0, :cond_0

    .line 101
    move-object v0, v3

    .line 104
    .end local v2    # "ch":Ljava/nio/channels/SeekableByteChannel;
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 105
    :cond_1
    if-nez v0, :cond_2

    .line 108
    return-void

    .line 106
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "failed to close wrapped channel"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isOpen()Z
    .locals 3

    .line 112
    iget-object v0, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SeekableByteChannel;

    .line 113
    .local v1, "ch":Ljava/nio/channels/SeekableByteChannel;
    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    const/4 v0, 0x0

    return v0

    .line 116
    .end local v1    # "ch":Ljava/nio/channels/SeekableByteChannel;
    :cond_0
    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public position()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->globalPosition:J

    return-wide v0
.end method

.method public declared-synchronized position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 8
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 182
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iput-wide p1, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->globalPosition:J

    .line 191
    move-wide v0, p1

    .line 193
    .local v0, "pos":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 194
    iget-object v3, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SeekableByteChannel;

    .line 195
    .local v3, "currentChannel":Ljava/nio/channels/SeekableByteChannel;
    invoke-interface {v3}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v4

    .line 198
    .local v4, "size":J
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    .line 201
    const-wide/16 v6, 0x0

    .local v6, "newChannelPos":J
    goto :goto_1

    .line 202
    .end local v6    # "newChannelPos":J
    :cond_0
    cmp-long v6, v0, v4

    if-gtz v6, :cond_1

    .line 204
    iput v2, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->currentChannelIdx:I

    .line 205
    move-wide v6, v0

    .line 206
    .local v6, "tmp":J
    const-wide/16 v0, -0x1

    .line 207
    nop

    .line 208
    .local v6, "newChannelPos":J
    goto :goto_1

    .line 212
    .end local v6    # "newChannelPos":J
    .end local p0    # "this":Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;
    :cond_1
    sub-long/2addr v0, v4

    .line 213
    move-wide v6, v4

    .line 216
    .restart local v6    # "newChannelPos":J
    :goto_1
    invoke-interface {v3, v6, v7}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    nop

    .end local v3    # "currentChannel":Ljava/nio/channels/SeekableByteChannel;
    .end local v4    # "size":J
    .end local v6    # "newChannelPos":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v2    # "i":I
    :cond_2
    monitor-exit p0

    return-object p0

    .line 186
    .end local v0    # "pos":J
    :cond_3
    :try_start_1
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 181
    .end local p1    # "newPosition":J
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 183
    .restart local p1    # "newPosition":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    .end local p1    # "newPosition":J
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized position(JJ)Ljava/nio/channels/SeekableByteChannel;
    .locals 5
    .param p1, "channelNumber"    # J
    .param p3, "relativeOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    move-wide v0, p3

    .line 145
    .local v0, "globalPosition":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    int-to-long v3, v2

    cmp-long v3, v3, p1

    if-gez v3, :cond_0

    .line 146
    iget-object v3, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v3}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "i":I
    .end local p0    # "this":Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 142
    .end local v0    # "globalPosition":J
    :cond_1
    :try_start_1
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 140
    .end local p1    # "channelNumber":J
    .end local p3    # "relativeOffset":J
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 68
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 72
    .local v0, "totalBytesRead":I
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->currentChannelIdx:I

    iget-object v3, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 73
    iget-object v1, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channels:Ljava/util/List;

    iget v3, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->currentChannelIdx:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SeekableByteChannel;

    .line 74
    .local v1, "currentChannel":Ljava/nio/channels/SeekableByteChannel;
    invoke-interface {v1, p1}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 75
    .local v3, "newBytesRead":I
    if-ne v3, v2, :cond_1

    .line 77
    iget v2, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->currentChannelIdx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->currentChannelIdx:I

    .line 78
    goto :goto_0

    .line 80
    .end local p0    # "this":Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;
    :cond_1
    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v4

    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    .line 82
    iget v2, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->currentChannelIdx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->currentChannelIdx:I

    .line 84
    :cond_2
    add-int/2addr v0, v3

    .line 85
    .end local v1    # "currentChannel":Ljava/nio/channels/SeekableByteChannel;
    .end local v3    # "newBytesRead":I
    goto :goto_0

    .line 86
    :cond_3
    if-lez v0, :cond_4

    .line 87
    iget-wide v1, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->globalPosition:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->globalPosition:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    monitor-exit p0

    return v0

    .line 90
    :cond_4
    monitor-exit p0

    return v2

    .line 65
    .end local v0    # "totalBytesRead":I
    :cond_5
    :try_start_2
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 63
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public size()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    const-wide/16 v0, 0x0

    .line 158
    .local v0, "acc":J
    iget-object v2, p0, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;->channels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SeekableByteChannel;

    .line 159
    .local v3, "ch":Ljava/nio/channels/SeekableByteChannel;
    invoke-interface {v3}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 160
    .end local v3    # "ch":Ljava/nio/channels/SeekableByteChannel;
    goto :goto_0

    .line 161
    :cond_0
    return-wide v0

    .line 155
    .end local v0    # "acc":J
    :cond_1
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .param p1, "size"    # J

    .line 169
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 177
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0
.end method
