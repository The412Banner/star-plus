.class final Lorg/newsclub/net/unix/AFSelector;
.super Ljava/nio/channels/spi/AbstractSelector;
.source "AFSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/AFSelector$PollFd;,
        Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;
    }
.end annotation


# instance fields
.field private final keysRegistered:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/newsclub/net/unix/AFSelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final keysSelected:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final pipeMsgReceiveBuffer:Ljava/nio/ByteBuffer;

.field private final pipeMsgWakeUp:Ljava/nio/ByteBuffer;

.field private pollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;

.field private final selectorPipe:Lorg/newsclub/net/unix/AFPipe;

.field private final selectorPipePollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;


# direct methods
.method protected constructor <init>(Lorg/newsclub/net/unix/AFSelectorProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/AFSelectorProvider<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    .local p1, "provider":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<*>;"
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelector;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelector;->pipeMsgWakeUp:Ljava/nio/ByteBuffer;

    .line 43
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelector;->pipeMsgReceiveBuffer:Ljava/nio/ByteBuffer;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelector;->keysRegistered:Ljava/util/Set;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelector;->pollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelector;->keysSelected:Ljava/util/Set;

    .line 53
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->getInstance()Lorg/newsclub/net/unix/AFUNIXSelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openSelectablePipe()Lorg/newsclub/net/unix/AFPipe;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelector;->selectorPipe:Lorg/newsclub/net/unix/AFPipe;

    .line 54
    new-instance v0, Lorg/newsclub/net/unix/AFSelector$PollFd;

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector;->selectorPipe:Lorg/newsclub/net/unix/AFPipe;

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFPipe;->sourceFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/newsclub/net/unix/AFSelector$PollFd;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelector;->selectorPipePollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;

    .line 55
    return-void
.end method

.method private declared-synchronized consumeAllBytesAfterPoll()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, v1, Lorg/newsclub/net/unix/AFSelector;->pollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v0, :cond_0

    .line 152
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    :try_start_1
    iget-object v0, v1, Lorg/newsclub/net/unix/AFSelector;->pollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;

    iget-object v0, v0, Lorg/newsclub/net/unix/AFSelector$PollFd;->rops:[I

    const/4 v2, 0x0

    aget v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 155
    monitor-exit p0

    return-void

    .line 160
    :cond_1
    :try_start_2
    iget-object v0, v1, Lorg/newsclub/net/unix/AFSelector;->selectorPipe:Lorg/newsclub/net/unix/AFPipe;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFPipe;->getOptions()I

    move-result v8

    .line 162
    .local v8, "options":I
    iget-object v11, v1, Lorg/newsclub/net/unix/AFSelector;->pipeMsgReceiveBuffer:Ljava/nio/ByteBuffer;

    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 163
    :try_start_3
    iget-object v0, v1, Lorg/newsclub/net/unix/AFSelector;->pipeMsgReceiveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 164
    iget-object v0, v1, Lorg/newsclub/net/unix/AFSelector;->pipeMsgReceiveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v15, v0

    .line 165
    .local v15, "maxReceive":I
    iget-object v0, v1, Lorg/newsclub/net/unix/AFSelector;->pollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;

    iget-object v0, v0, Lorg/newsclub/net/unix/AFSelector$PollFd;->fds:[Ljava/io/FileDescriptor;

    aget-object v3, v0, v2

    iget-object v4, v1, Lorg/newsclub/net/unix/AFSelector;->pipeMsgReceiveBuffer:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, v15

    invoke-static/range {v3 .. v10}, Lorg/newsclub/net/unix/NativeUnixSocket;->receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;ILorg/newsclub/net/unix/AncillaryDataSupport;I)I

    move-result v0

    move v3, v0

    .line 167
    .local v3, "bytesReceived":I
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 169
    if-ne v3, v15, :cond_4

    if-lez v15, :cond_4

    .line 173
    :goto_0
    :try_start_4
    iget-object v0, v1, Lorg/newsclub/net/unix/AFSelector;->selectorPipePollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;

    invoke-static {v0, v2}, Lorg/newsclub/net/unix/NativeUnixSocket;->poll(Lorg/newsclub/net/unix/AFSelector$PollFd;I)I

    move-result v0

    move v4, v0

    .local v4, "read":I
    if-lez v0, :cond_2

    .line 174
    iget-object v5, v1, Lorg/newsclub/net/unix/AFSelector;->pipeMsgReceiveBuffer:Ljava/nio/ByteBuffer;

    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 175
    :try_start_5
    iget-object v0, v1, Lorg/newsclub/net/unix/AFSelector;->pipeMsgReceiveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 176
    iget-object v0, v1, Lorg/newsclub/net/unix/AFSelector;->selectorPipePollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;

    iget-object v0, v0, Lorg/newsclub/net/unix/AFSelector$PollFd;->fds:[Ljava/io/FileDescriptor;

    aget-object v12, v0, v2

    iget-object v13, v1, Lorg/newsclub/net/unix/AFSelector;->pipeMsgReceiveBuffer:Ljava/nio/ByteBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    move v6, v15

    .end local v15    # "maxReceive":I
    .local v6, "maxReceive":I
    move/from16 v17, v8

    :try_start_6
    invoke-static/range {v12 .. v19}, Lorg/newsclub/net/unix/NativeUnixSocket;->receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;ILorg/newsclub/net/unix/AncillaryDataSupport;I)I

    move-result v0

    move v4, v0

    .line 178
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    .end local v6    # "maxReceive":I
    .restart local v15    # "maxReceive":I
    :catchall_1
    move-exception v0

    move v6, v15

    .end local v15    # "maxReceive":I
    .restart local v6    # "maxReceive":I
    :goto_1
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .end local p0    # "this":Lorg/newsclub/net/unix/AFSelector;
    :catchall_2
    move-exception v0

    goto :goto_1

    .line 173
    .end local v6    # "maxReceive":I
    .restart local v15    # "maxReceive":I
    :cond_2
    move v6, v15

    .line 180
    .end local v15    # "maxReceive":I
    .restart local v6    # "maxReceive":I
    :goto_2
    if-ne v4, v6, :cond_5

    if-gtz v4, :cond_3

    goto :goto_3

    :cond_3
    move v15, v6

    goto :goto_0

    .line 169
    .end local v4    # "read":I
    .end local v6    # "maxReceive":I
    .restart local v15    # "maxReceive":I
    :cond_4
    move v6, v15

    .line 182
    .end local v15    # "maxReceive":I
    .restart local v6    # "maxReceive":I
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    .line 167
    .end local v3    # "bytesReceived":I
    .end local v6    # "maxReceive":I
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0

    .line 150
    .end local v8    # "options":I
    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0
.end method

.method private deregister(Lorg/newsclub/net/unix/AFSelectionKey;)V
    .locals 1
    .param p1, "key"    # Lorg/newsclub/net/unix/AFSelectionKey;

    .line 304
    :try_start_0
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-static {v0, p1}, Lorg/newsclub/net/unix/NativeUnixSocket;->deregisterSelectionKey(Ljava/nio/channels/spi/AbstractSelectableChannel;Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 309
    :goto_0
    return-void
.end method

.method private initPollFd(Lorg/newsclub/net/unix/AFSelector$PollFd;)Lorg/newsclub/net/unix/AFSelector$PollFd;
    .locals 8
    .param p1, "existingPollFd"    # Lorg/newsclub/net/unix/AFSelector$PollFd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector;->keysRegistered:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/newsclub/net/unix/AFSelectionKey;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/newsclub/net/unix/AFSelectionKey;

    .line 206
    .local v1, "key":Lorg/newsclub/net/unix/AFSelectionKey;
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSelectionKey;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v2

    iget-object v2, v2, Lorg/newsclub/net/unix/AFSocketCore;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSelectionKey;->cancelNoRemove()V

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 209
    const/4 p1, 0x0

    .line 211
    .end local v1    # "key":Lorg/newsclub/net/unix/AFSelectionKey;
    :cond_0
    goto :goto_0

    .line 213
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/newsclub/net/unix/AFSelectionKey;>;"
    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    iget-object v1, p1, Lorg/newsclub/net/unix/AFSelector$PollFd;->keys:[Lorg/newsclub/net/unix/AFSelectionKey;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lorg/newsclub/net/unix/AFSelector$PollFd;->keys:[Lorg/newsclub/net/unix/AFSelectionKey;

    array-length v1, v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/newsclub/net/unix/AFSelector;->keysRegistered:Ljava/util/Set;

    .line 215
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, "needsUpdate":Z
    const/4 v2, 0x1

    .line 218
    .local v2, "i":I
    iget-object v3, p0, Lorg/newsclub/net/unix/AFSelector;->keysRegistered:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/newsclub/net/unix/AFSelectionKey;

    .line 219
    .local v4, "key":Lorg/newsclub/net/unix/AFSelectionKey;
    iget-object v5, p1, Lorg/newsclub/net/unix/AFSelector$PollFd;->keys:[Lorg/newsclub/net/unix/AFSelectionKey;

    aget-object v5, v5, v2

    if-ne v5, v4, :cond_3

    invoke-virtual {v4}, Lorg/newsclub/net/unix/AFSelectionKey;->isValid()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 223
    :cond_2
    iget-object v5, p1, Lorg/newsclub/net/unix/AFSelector$PollFd;->ops:[I

    invoke-virtual {v4}, Lorg/newsclub/net/unix/AFSelectionKey;->interestOps()I

    move-result v6

    aput v6, v5, v2

    .line 225
    nop

    .end local v4    # "key":Lorg/newsclub/net/unix/AFSelectionKey;
    add-int/lit8 v2, v2, 0x1

    .line 226
    goto :goto_1

    .line 220
    .restart local v4    # "key":Lorg/newsclub/net/unix/AFSelectionKey;
    :cond_3
    :goto_2
    const/4 v1, 0x1

    .line 221
    nop

    .line 228
    .end local v4    # "key":Lorg/newsclub/net/unix/AFSelectionKey;
    :cond_4
    if-nez v1, :cond_5

    .line 229
    monitor-exit p0

    return-object p1

    .line 233
    .end local v1    # "needsUpdate":Z
    .end local v2    # "i":I
    :cond_5
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector;->keysRegistered:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 234
    .local v1, "size":I
    new-array v2, v1, [Ljava/io/FileDescriptor;

    .line 235
    .local v2, "fds":[Ljava/io/FileDescriptor;
    new-array v3, v1, [I

    .line 237
    .local v3, "ops":[I
    new-array v4, v1, [Lorg/newsclub/net/unix/AFSelectionKey;

    .line 238
    .local v4, "keys":[Lorg/newsclub/net/unix/AFSelectionKey;
    iget-object v5, p0, Lorg/newsclub/net/unix/AFSelector;->selectorPipe:Lorg/newsclub/net/unix/AFPipe;

    invoke-virtual {v5}, Lorg/newsclub/net/unix/AFPipe;->sourceFD()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 239
    aput v0, v3, v6

    .line 241
    const/4 v0, 0x1

    .line 242
    .local v0, "i":I
    iget-object v5, p0, Lorg/newsclub/net/unix/AFSelector;->keysRegistered:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/newsclub/net/unix/AFSelectionKey;

    .line 243
    .local v6, "key":Lorg/newsclub/net/unix/AFSelectionKey;
    aput-object v6, v4, v0

    .line 244
    invoke-virtual {v6}, Lorg/newsclub/net/unix/AFSelectionKey;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v7

    iget-object v7, v7, Lorg/newsclub/net/unix/AFSocketCore;->fd:Ljava/io/FileDescriptor;

    aput-object v7, v2, v0

    .line 245
    invoke-virtual {v6}, Lorg/newsclub/net/unix/AFSelectionKey;->interestOps()I

    move-result v7

    aput v7, v3, v0

    .line 246
    nop

    .end local v6    # "key":Lorg/newsclub/net/unix/AFSelectionKey;
    add-int/lit8 v0, v0, 0x1

    .line 247
    goto :goto_3

    .line 248
    :cond_6
    new-instance v5, Lorg/newsclub/net/unix/AFSelector$PollFd;

    invoke-direct {v5, v4, v2, v3}, Lorg/newsclub/net/unix/AFSelector$PollFd;-><init>([Lorg/newsclub/net/unix/AFSelectionKey;[Ljava/io/FileDescriptor;[I)V

    monitor-exit p0

    return-object v5

    .line 249
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "fds":[Ljava/io/FileDescriptor;
    .end local v3    # "ops":[I
    .end local v4    # "keys":[Lorg/newsclub/net/unix/AFSelectionKey;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private select0(I)I
    .locals 8
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector;->pollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;

    invoke-direct {p0, v0}, Lorg/newsclub/net/unix/AFSelector;->initPollFd(Lorg/newsclub/net/unix/AFSelector$PollFd;)Lorg/newsclub/net/unix/AFSelector$PollFd;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelector;->pollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;

    .line 114
    .local v0, "pfd":Lorg/newsclub/net/unix/AFSelector$PollFd;
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector;->keysSelected:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 115
    :try_start_1
    iget-object v2, p0, Lorg/newsclub/net/unix/AFSelector;->keysSelected:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 116
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 117
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 120
    :try_start_3
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelector;->begin()V

    .line 121
    invoke-static {v0, p1}, Lorg/newsclub/net/unix/NativeUnixSocket;->poll(Lorg/newsclub/net/unix/AFSelector$PollFd;I)I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 123
    .local v1, "num":I
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelector;->end()V

    .line 124
    nop

    .line 125
    monitor-enter p0

    .line 126
    :try_start_4
    iget-object v2, p0, Lorg/newsclub/net/unix/AFSelector;->pollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;

    move-object v0, v2

    .line 127
    if-eqz v0, :cond_1

    .line 128
    iget-object v2, v0, Lorg/newsclub/net/unix/AFSelector$PollFd;->keys:[Lorg/newsclub/net/unix/AFSelectionKey;

    .line 129
    .local v2, "keys":[Lorg/newsclub/net/unix/AFSelectionKey;
    if-eqz v2, :cond_1

    .line 130
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 131
    .local v5, "key":Lorg/newsclub/net/unix/AFSelectionKey;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/newsclub/net/unix/AFSelectionKey;->hasOpInvalid()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 132
    invoke-virtual {v5}, Lorg/newsclub/net/unix/AFSelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    .line 133
    .local v6, "ch":Ljava/nio/channels/SelectableChannel;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 134
    invoke-virtual {v6}, Ljava/nio/channels/SelectableChannel;->close()V

    .line 130
    .end local v5    # "key":Lorg/newsclub/net/unix/AFSelectionKey;
    .end local v6    # "ch":Ljava/nio/channels/SelectableChannel;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "keys":[Lorg/newsclub/net/unix/AFSelectionKey;
    :cond_1
    if-lez v1, :cond_2

    .line 141
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSelector;->consumeAllBytesAfterPoll()V

    .line 142
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSelector;->setOpsReady()V

    .line 144
    :cond_2
    iget-object v2, p0, Lorg/newsclub/net/unix/AFSelector;->keysSelected:Ljava/util/Set;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 145
    :try_start_5
    iget-object v3, p0, Lorg/newsclub/net/unix/AFSelector;->keysSelected:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return v3

    .line 146
    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v0    # "pfd":Lorg/newsclub/net/unix/AFSelector$PollFd;
    .end local v1    # "num":I
    .end local p1    # "timeout":I
    :try_start_8
    throw v3

    .line 147
    .restart local v0    # "pfd":Lorg/newsclub/net/unix/AFSelector$PollFd;
    .restart local v1    # "num":I
    .restart local p1    # "timeout":I
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 123
    .end local v1    # "num":I
    :catchall_2
    move-exception v1

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelector;->end()V

    .line 124
    throw v1

    .line 116
    :catchall_3
    move-exception v2

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .end local p1    # "timeout":I
    :try_start_a
    throw v2

    .line 111
    .end local v0    # "pfd":Lorg/newsclub/net/unix/AFSelector$PollFd;
    .restart local p1    # "timeout":I
    :cond_3
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    .end local p1    # "timeout":I
    throw v0

    .line 117
    .restart local p1    # "timeout":I
    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0
.end method

.method private declared-synchronized setOpsReady()V
    .locals 5

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector;->pollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 186
    monitor-exit p0

    return-void

    .line 188
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector;->pollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;

    iget-object v1, v1, Lorg/newsclub/net/unix/AFSelector$PollFd;->rops:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 189
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector;->pollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;

    iget-object v1, v1, Lorg/newsclub/net/unix/AFSelector$PollFd;->rops:[I

    aget v1, v1, v0

    .line 190
    .local v1, "rops":I
    if-nez v1, :cond_1

    .line 191
    goto :goto_1

    .line 193
    :cond_1
    iget-object v2, p0, Lorg/newsclub/net/unix/AFSelector;->pollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;

    iget-object v2, v2, Lorg/newsclub/net/unix/AFSelector$PollFd;->keys:[Lorg/newsclub/net/unix/AFSelectionKey;

    aget-object v2, v2, v0

    .line 194
    .local v2, "key":Lorg/newsclub/net/unix/AFSelectionKey;
    invoke-virtual {v2, v1}, Lorg/newsclub/net/unix/AFSelectionKey;->setOpsReady(I)V

    .line 195
    iget-object v3, p0, Lorg/newsclub/net/unix/AFSelector;->keysSelected:Ljava/util/Set;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 196
    :try_start_2
    iget-object v4, p0, Lorg/newsclub/net/unix/AFSelector;->keysSelected:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    .end local v1    # "rops":I
    .end local v2    # "key":Lorg/newsclub/net/unix/AFSelectionKey;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .restart local v1    # "rops":I
    .restart local v2    # "key":Lorg/newsclub/net/unix/AFSelectionKey;
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local p0    # "this":Lorg/newsclub/net/unix/AFSelector;
    :catchall_1
    move-exception v4

    goto :goto_2

    .line 199
    .end local v0    # "i":I
    .end local v1    # "rops":I
    .end local v2    # "key":Lorg/newsclub/net/unix/AFSelectionKey;
    :cond_2
    monitor-exit p0

    return-void

    .line 184
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method


# virtual methods
.method protected implCloseSelector()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelector;->wakeup()Ljava/nio/channels/Selector;

    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelector;->keys()Ljava/util/Set;

    move-result-object v0

    .line 258
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector;->keysRegistered:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 259
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 261
    .local v2, "key":Ljava/nio/channels/SelectionKey;
    move-object v3, v2

    check-cast v3, Lorg/newsclub/net/unix/AFSelectionKey;

    invoke-virtual {v3}, Lorg/newsclub/net/unix/AFSelectionKey;->cancelNoRemove()V

    .line 262
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    goto :goto_0

    .line 263
    :cond_0
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector;->selectorPipe:Lorg/newsclub/net/unix/AFPipe;

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFPipe;->close()V

    .line 264
    return-void

    .line 259
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public keys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector;->keysRegistered:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .locals 2
    .param p1, "ch"    # Ljava/nio/channels/spi/AbstractSelectableChannel;
    .param p2, "ops"    # I
    .param p3, "att"    # Ljava/lang/Object;

    .line 59
    new-instance v0, Lorg/newsclub/net/unix/AFSelectionKey;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/newsclub/net/unix/AFSelectionKey;-><init>(Lorg/newsclub/net/unix/AFSelector;Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)V

    .line 60
    .local v0, "key":Lorg/newsclub/net/unix/AFSelectionKey;
    monitor-enter p0

    .line 61
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lorg/newsclub/net/unix/AFSelector;->pollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;

    .line 62
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector;->keysRegistered:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    monitor-exit p0

    .line 64
    return-object v0

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method declared-synchronized remove(Lorg/newsclub/net/unix/AFSelectionKey;)V
    .locals 2
    .param p1, "key"    # Lorg/newsclub/net/unix/AFSelectionKey;

    monitor-enter p0

    .line 291
    :try_start_0
    invoke-direct {p0, p1}, Lorg/newsclub/net/unix/AFSelector;->deregister(Lorg/newsclub/net/unix/AFSelectionKey;)V

    .line 292
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector;->keysRegistered:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector;->keysSelected:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 294
    :try_start_1
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector;->keysSelected:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 295
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/newsclub/net/unix/AFSelector;->pollFd:Lorg/newsclub/net/unix/AFSelector$PollFd;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 297
    monitor-exit p0

    return-void

    .line 295
    .end local p0    # "this":Lorg/newsclub/net/unix/AFSelector;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 290
    .end local p1    # "key":Lorg/newsclub/net/unix/AFSelectionKey;
    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public select()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, v0}, Lorg/newsclub/net/unix/AFSelector;->select0(I)I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/net/SocketTimeoutException;
    const/4 v1, 0x0

    return v1
.end method

.method public select(J)I
    .locals 2
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 89
    const-wide/32 p1, 0x7fffffff

    goto :goto_0

    .line 90
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 94
    :goto_0
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lorg/newsclub/net/unix/AFSelector;->select0(I)I

    move-result v0

    return v0

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectNow()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/newsclub/net/unix/AFSelector;->select0(I)I

    move-result v0

    return v0
.end method

.method public selectedKeys()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector;->keysSelected:Ljava/util/Set;

    monitor-enter v0

    .line 77
    :try_start_0
    new-instance v1, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;

    iget-object v2, p0, Lorg/newsclub/net/unix/AFSelector;->keysSelected:Ljava/util/Set;

    invoke-direct {v1, v2}, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;-><init>(Ljava/util/Set;)V

    monitor-exit v0

    return-object v1

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public wakeup()Ljava/nio/channels/Selector;
    .locals 3

    .line 268
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector;->pipeMsgWakeUp:Ljava/nio/ByteBuffer;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    :try_start_1
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector;->pipeMsgWakeUp:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :try_start_2
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector;->selectorPipe:Lorg/newsclub/net/unix/AFPipe;

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFPipe;->sink()Lorg/newsclub/net/unix/AFPipe$SinkChannel;

    move-result-object v1

    iget-object v2, p0, Lorg/newsclub/net/unix/AFSelector;->pipeMsgWakeUp:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Lorg/newsclub/net/unix/AFPipe$SinkChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    goto :goto_0

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Ljava/net/SocketException;
    :try_start_3
    iget-object v2, p0, Lorg/newsclub/net/unix/AFSelector;->selectorPipe:Lorg/newsclub/net/unix/AFPipe;

    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFPipe;->sinkFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    .end local v1    # "e":Ljava/net/SocketException;
    :goto_0
    monitor-exit v0

    .line 285
    goto :goto_1

    .line 276
    .restart local v1    # "e":Ljava/net/SocketException;
    :cond_0
    throw v1

    .line 281
    .end local v1    # "e":Ljava/net/SocketException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 282
    :catch_1
    move-exception v0

    .line 284
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 287
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-object p0
.end method
