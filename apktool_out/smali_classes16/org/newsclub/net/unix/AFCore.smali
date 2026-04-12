.class Lorg/newsclub/net/unix/AFCore;
.super Lorg/newsclub/net/unix/CleanableState;
.source "AFCore.java"


# static fields
.field private static final PROP_TL_BUFFER_MAX_CAPACITY:Ljava/lang/String; = "org.newsclub.net.unix.thread-local-buffer.max-capacity"

.field private static final TL_BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TL_BUFFER_MAX_CAPACITY:I

.field private static final TL_BUFFER_MIN_CAPACITY:I = 0x2000


# instance fields
.field final ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

.field private blocking:Z

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final datagramMode:Z

.field final fd:Ljava/io/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/newsclub/net/unix/AFCore;->TL_BUFFER:Ljava/lang/ThreadLocal;

    .line 39
    nop

    .line 40
    const/high16 v0, 0x100000

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v1, "org.newsclub.net.unix.thread-local-buffer.max-capacity"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/newsclub/net/unix/AFCore;->TL_BUFFER_MAX_CAPACITY:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "observed"    # Ljava/lang/Object;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/newsclub/net/unix/AFCore;-><init>(Ljava/lang/Object;Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AncillaryDataSupport;Z)V

    .line 61
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AncillaryDataSupport;Z)V
    .locals 2
    .param p1, "observed"    # Ljava/lang/Object;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "ancillaryDataSupport"    # Lorg/newsclub/net/unix/AncillaryDataSupport;
    .param p4, "datagramMode"    # Z

    .line 53
    invoke-direct {p0, p1}, Lorg/newsclub/net/unix/CleanableState;-><init>(Ljava/lang/Object;)V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFCore;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/newsclub/net/unix/AFCore;->blocking:Z

    .line 54
    iput-boolean p4, p0, Lorg/newsclub/net/unix/AFCore;->datagramMode:Z

    .line 55
    if-nez p2, :cond_0

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/newsclub/net/unix/AFCore;->fd:Ljava/io/FileDescriptor;

    .line 56
    iput-object p3, p0, Lorg/newsclub/net/unix/AFCore;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    .line 57
    return-void
.end method


# virtual methods
.method protected doClean()V
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/newsclub/net/unix/AFCore;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/newsclub/net/unix/AFCore;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFCore;->doClose()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 72
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFCore;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lorg/newsclub/net/unix/AFCore;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AncillaryDataSupport;->close()V

    .line 75
    :cond_1
    return-void
.end method

.method doClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/newsclub/net/unix/AFCore;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->close(Ljava/io/FileDescriptor;)V

    .line 83
    iget-object v0, p0, Lorg/newsclub/net/unix/AFCore;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    return-void
.end method

.method getThreadLocalDirectByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "capacity"    # I

    .line 222
    sget v0, Lorg/newsclub/net/unix/AFCore;->TL_BUFFER_MAX_CAPACITY:I

    if-le p1, v0, :cond_0

    sget v0, Lorg/newsclub/net/unix/AFCore;->TL_BUFFER_MAX_CAPACITY:I

    if-lez v0, :cond_0

    .line 226
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 228
    :cond_0
    const/16 v0, 0x2000

    if-ge p1, v0, :cond_1

    .line 229
    const/16 p1, 0x2000

    .line 231
    :cond_1
    sget-object v0, Lorg/newsclub/net/unix/AFCore;->TL_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 232
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-le p1, v1, :cond_3

    .line 233
    :cond_2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 234
    sget-object v1, Lorg/newsclub/net/unix/AFCore;->TL_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 236
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 237
    return-object v0
.end method

.method implConfigureBlocking(Z)V
    .locals 1
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFCore;->validFdOrException()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/newsclub/net/unix/NativeUnixSocket;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 242
    iput-boolean p1, p0, Lorg/newsclub/net/unix/AFCore;->blocking:Z

    .line 243
    return-void
.end method

.method isBlocking()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lorg/newsclub/net/unix/AFCore;->blocking:Z

    return v0
.end method

.method isClosed()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/newsclub/net/unix/AFCore;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method read(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/newsclub/net/unix/AFCore;->read(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method read(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I
    .locals 12
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "socketAddressBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 114
    .local v0, "remaining":I
    if-nez v0, :cond_0

    .line 115
    const/4 v1, 0x0

    return v1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFCore;->validFdOrException()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 120
    .local v1, "fdesc":Ljava/io/FileDescriptor;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    move-object v2, p1

    move-object v10, v2

    .local v2, "buf":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 123
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFCore;->getThreadLocalDirectByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 124
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move-object v10, v2

    .line 127
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .local v10, "buf":Ljava/nio/ByteBuffer;
    :goto_0
    iget-boolean v2, p0, Lorg/newsclub/net/unix/AFCore;->blocking:Z

    if-nez v2, :cond_2

    .line 128
    or-int/lit8 p3, p3, 0x4

    .line 131
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 133
    .local v11, "pos":I
    iget-object v8, p0, Lorg/newsclub/net/unix/AFCore;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    const/4 v9, 0x0

    move-object v2, v1

    move-object v3, v10

    move v4, v11

    move v5, v0

    move-object v6, p2

    move v7, p3

    invoke-static/range {v2 .. v9}, Lorg/newsclub/net/unix/NativeUnixSocket;->receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;ILorg/newsclub/net/unix/AncillaryDataSupport;I)I

    move-result v2

    .line 135
    .local v2, "count":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 136
    return v2

    .line 138
    :cond_3
    if-eq v10, p1, :cond_4

    .line 139
    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 140
    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 142
    :cond_4
    if-ltz v2, :cond_5

    .line 145
    add-int v3, v11, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    :goto_1
    return v2

    .line 143
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method declared-synchronized validFd()Ljava/io/FileDescriptor;
    .locals 3

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFCore;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    monitor-exit p0

    return-object v1

    .line 99
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/newsclub/net/unix/AFCore;->fd:Ljava/io/FileDescriptor;

    .line 100
    .local v0, "descriptor":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 102
    monitor-exit p0

    return-object v0

    .line 105
    .end local p0    # "this":Lorg/newsclub/net/unix/AFCore;
    :cond_1
    monitor-exit p0

    return-object v1

    .line 95
    .end local v0    # "descriptor":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method validFdOrException()Ljava/io/FileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFCore;->validFd()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 88
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    .line 92
    return-object v0

    .line 89
    :cond_0
    iget-object v1, p0, Lorg/newsclub/net/unix/AFCore;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 90
    new-instance v1, Lorg/newsclub/net/unix/SocketClosedException;

    const-string v2, "Not open"

    invoke-direct {v1, v2}, Lorg/newsclub/net/unix/SocketClosedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/newsclub/net/unix/AFCore;->write(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;I)I

    move-result v0

    return v0
.end method

.method write(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;I)I
    .locals 19
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "target"    # Ljava/net/SocketAddress;
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 157
    .local v3, "remaining":I
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 158
    return v4

    .line 161
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/newsclub/net/unix/AFCore;->validFdOrException()Ljava/io/FileDescriptor;

    move-result-object v13

    .line 164
    .local v13, "fdesc":Ljava/io/FileDescriptor;
    if-nez v2, :cond_1

    .line 165
    const/4 v5, 0x0

    .line 166
    .local v5, "addressTo":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    move-object v14, v5

    move v15, v6

    .local v6, "addressToLen":I
    goto :goto_0

    .line 168
    .end local v5    # "addressTo":Ljava/nio/ByteBuffer;
    .end local v6    # "addressToLen":I
    :cond_1
    sget-object v5, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKETADDRESS_BUFFER_TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 169
    .restart local v5    # "addressTo":Ljava/nio/ByteBuffer;
    invoke-static {v5, v2}, Lorg/newsclub/net/unix/AFSocketAddress;->unwrapAddressDirectBufferInternal(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result v6

    move-object v14, v5

    move v15, v6

    .line 174
    .end local v5    # "addressTo":Ljava/nio/ByteBuffer;
    .local v14, "addressTo":Ljava/nio/ByteBuffer;
    .local v15, "addressToLen":I
    :goto_0
    iget-boolean v5, v0, Lorg/newsclub/net/unix/AFCore;->blocking:Z

    if-nez v5, :cond_2

    .line 175
    or-int/lit8 v5, p3, 0x4

    .end local p3    # "options":I
    .local v5, "options":I
    goto :goto_1

    .line 174
    .end local v5    # "options":I
    .restart local p3    # "options":I
    :cond_2
    move/from16 v5, p3

    .line 178
    .end local p3    # "options":I
    .restart local v5    # "options":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    .line 180
    .local v16, "pos":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v17

    .line 182
    .local v17, "isDirect":Z
    if-eqz v17, :cond_3

    .line 183
    move-object/from16 v4, p1

    .local v4, "buf":Ljava/nio/ByteBuffer;
    goto :goto_3

    .line 185
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    :cond_3
    invoke-virtual {v0, v3}, Lorg/newsclub/net/unix/AFCore;->getThreadLocalDirectByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 186
    .local v6, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 189
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    .line 190
    .local v7, "limit":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    if-le v7, v8, :cond_4

    .line 191
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 192
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 193
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 195
    :cond_4
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 198
    :goto_2
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v4, v6

    .line 200
    .end local v6    # "buf":Ljava/nio/ByteBuffer;
    .end local v7    # "limit":I
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    :goto_3
    iget-boolean v6, v0, Lorg/newsclub/net/unix/AFCore;->datagramMode:Z

    if-eqz v6, :cond_5

    .line 201
    or-int/lit8 v5, v5, 0x10

    move/from16 v18, v5

    goto :goto_4

    .line 200
    :cond_5
    move/from16 v18, v5

    .line 204
    .end local v5    # "options":I
    .local v18, "options":I
    :goto_4
    iget-object v12, v0, Lorg/newsclub/net/unix/AFCore;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    move-object v5, v13

    move-object v6, v4

    move/from16 v7, v16

    move v8, v3

    move-object v9, v14

    move v10, v15

    move/from16 v11, v18

    invoke-static/range {v5 .. v12}, Lorg/newsclub/net/unix/NativeUnixSocket;->send(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILorg/newsclub/net/unix/AncillaryDataSupport;)I

    move-result v5

    .line 206
    .local v5, "written":I
    add-int v6, v16, v5

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 208
    return v5
.end method
