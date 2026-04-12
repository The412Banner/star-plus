.class final Lorg/newsclub/net/unix/AncillaryDataSupport;
.super Ljava/lang/Object;
.source "AncillaryDataSupport.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;

.field private static final MIN_ANCBUF_LEN:I

.field private static final NO_FILE_DESCRIPTORS:[Ljava/io/FileDescriptor;


# instance fields
.field private ancillaryReceiveBuffer:Ljava/nio/ByteBuffer;

.field private final openReceivedFileDescriptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field pendingFileDescriptors:[I

.field private final receivedFileDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/io/FileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private tipcDestName:[I

.field private tipcErrorInfo:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lorg/newsclub/net/unix/AncillaryDataSupport;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 35
    new-array v1, v0, [Ljava/io/FileDescriptor;

    sput-object v1, Lorg/newsclub/net/unix/AncillaryDataSupport;->NO_FILE_DESCRIPTORS:[Ljava/io/FileDescriptor;

    .line 37
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-static {}, Lorg/newsclub/net/unix/NativeUnixSocket;->ancillaryBufMinLen()I

    move-result v0

    goto :goto_0

    :cond_0
    nop

    :goto_0
    sput v0, Lorg/newsclub/net/unix/AncillaryDataSupport;->MIN_ANCBUF_LEN:I

    .line 37
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->openReceivedFileDescriptors:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->receivedFileDescriptors:Ljava/util/List;

    .line 47
    sget-object v0, Lorg/newsclub/net/unix/AncillaryDataSupport;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->ancillaryReceiveBuffer:Ljava/nio/ByteBuffer;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->pendingFileDescriptors:[I

    .line 53
    iput-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->tipcErrorInfo:[I

    .line 55
    iput-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->tipcDestName:[I

    return-void
.end method

.method static synthetic access$000(Lorg/newsclub/net/unix/AncillaryDataSupport;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/newsclub/net/unix/AncillaryDataSupport;

    .line 33
    iget-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->openReceivedFileDescriptors:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method clearReceivedFileDescriptors()V
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->receivedFileDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    return-void
.end method

.method public close()V
    .locals 4

    .line 194
    iget-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->openReceivedFileDescriptors:Ljava/util/Map;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->openReceivedFileDescriptors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .local v2, "desc":Ljava/io/FileDescriptor;
    :try_start_1
    invoke-static {v2}, Lorg/newsclub/net/unix/NativeUnixSocket;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    goto :goto_1

    .line 198
    :catch_0
    move-exception v3

    .line 201
    .end local v2    # "desc":Ljava/io/FileDescriptor;
    :goto_1
    goto :goto_0

    .line 202
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public ensureAncillaryReceiveBufferSize(I)V
    .locals 1
    .param p1, "minSize"    # I

    .line 105
    if-gtz p1, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->ancillaryReceiveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 109
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AncillaryDataSupport;->setAncillaryReceiveBufferSize(I)V

    .line 111
    :cond_1
    return-void
.end method

.method getAncillaryReceiveBufferSize()I
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->ancillaryReceiveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method getReceivedFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 8

    .line 145
    iget-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->receivedFileDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lorg/newsclub/net/unix/AncillaryDataSupport;->NO_FILE_DESCRIPTORS:[Ljava/io/FileDescriptor;

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->receivedFileDescriptors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 149
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<[Ljava/io/FileDescriptor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    sget-object v1, Lorg/newsclub/net/unix/AncillaryDataSupport;->NO_FILE_DESCRIPTORS:[Ljava/io/FileDescriptor;

    return-object v1

    .line 152
    :cond_1
    iget-object v1, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->receivedFileDescriptors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/io/FileDescriptor;

    .line 155
    .local v3, "fds":[Ljava/io/FileDescriptor;
    array-length v4, v3

    add-int/2addr v1, v4

    .line 156
    .end local v3    # "fds":[Ljava/io/FileDescriptor;
    goto :goto_0

    .line 157
    :cond_2
    if-nez v1, :cond_3

    .line 158
    sget-object v2, Lorg/newsclub/net/unix/AncillaryDataSupport;->NO_FILE_DESCRIPTORS:[Ljava/io/FileDescriptor;

    return-object v2

    .line 160
    :cond_3
    new-array v2, v1, [Ljava/io/FileDescriptor;

    .line 161
    .local v2, "oneArray":[Ljava/io/FileDescriptor;
    const/4 v3, 0x0

    .line 162
    .local v3, "offset":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/io/FileDescriptor;

    .line 163
    .local v5, "fds":[Ljava/io/FileDescriptor;
    const/4 v6, 0x0

    array-length v7, v5

    invoke-static {v5, v6, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    array-length v6, v5

    add-int/2addr v3, v6

    .line 165
    .end local v5    # "fds":[Ljava/io/FileDescriptor;
    goto :goto_1

    .line 166
    :cond_4
    return-object v2
.end method

.method getTIPCDestName()[I
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->tipcDestName:[I

    .line 82
    .local v0, "addr":[I
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->tipcDestName:[I

    .line 83
    return-object v0
.end method

.method getTIPCErrorInfo()[I
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->tipcErrorInfo:[I

    .line 68
    .local v0, "info":[I
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->tipcErrorInfo:[I

    .line 69
    return-object v0
.end method

.method hasOutboundFileDescriptors()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->pendingFileDescriptors:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method receiveFileDescriptors([I)V
    .locals 6
    .param p1, "fds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    array-length v0, p1

    .line 119
    .local v0, "fdsLength":I
    new-array v1, v0, [Ljava/io/FileDescriptor;

    .line 120
    .local v1, "descriptors":[Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 121
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 122
    .local v3, "fdesc":Ljava/io/FileDescriptor;
    aget v4, p1, v2

    invoke-static {v3, v4}, Lorg/newsclub/net/unix/NativeUnixSocket;->initFD(Ljava/io/FileDescriptor;I)V

    .line 123
    aput-object v3, v1, v2

    .line 125
    iget-object v4, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->openReceivedFileDescriptors:Ljava/util/Map;

    aget v5, p1, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v4, Lorg/newsclub/net/unix/AncillaryDataSupport$1;

    invoke-direct {v4, p0, v3}, Lorg/newsclub/net/unix/AncillaryDataSupport$1;-><init>(Lorg/newsclub/net/unix/AncillaryDataSupport;Ljava/io/FileDescriptor;)V

    .line 134
    .local v4, "cleanup":Ljava/io/Closeable;
    invoke-static {v3, v4}, Lorg/newsclub/net/unix/NativeUnixSocket;->attachCloseable(Ljava/io/FileDescriptor;Ljava/io/Closeable;)V

    .line 120
    .end local v3    # "fdesc":Ljava/io/FileDescriptor;
    .end local v4    # "cleanup":Ljava/io/Closeable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->receivedFileDescriptors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-void

    .line 116
    .end local v0    # "fdsLength":I
    .end local v1    # "descriptors":[Ljava/io/FileDescriptor;
    :cond_2
    :goto_1
    return-void
.end method

.method setAncillaryReceiveBufferSize(I)V
    .locals 2
    .param p1, "size"    # I

    .line 91
    iget-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->ancillaryReceiveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 92
    return-void

    .line 93
    :cond_0
    if-gtz p1, :cond_1

    .line 94
    sget-object v0, Lorg/newsclub/net/unix/AncillaryDataSupport;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->ancillaryReceiveBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 96
    :cond_1
    sget v0, Lorg/newsclub/net/unix/AncillaryDataSupport;->MIN_ANCBUF_LEN:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x100

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AncillaryDataSupport;->setAncillaryReceiveBufferSize0(I)V

    .line 98
    :goto_0
    return-void
.end method

.method setAncillaryReceiveBufferSize0(I)V
    .locals 1
    .param p1, "size"    # I

    .line 101
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->ancillaryReceiveBuffer:Ljava/nio/ByteBuffer;

    .line 102
    return-void
.end method

.method setOutboundFileDescriptors([I)V
    .locals 1
    .param p1, "fds"    # [I

    .line 170
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->pendingFileDescriptors:[I

    .line 171
    return-void
.end method

.method varargs setOutboundFileDescriptors([Ljava/io/FileDescriptor;)V
    .locals 5
    .param p1, "fdescs"    # [Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    array-length v0, p1

    .line 183
    .local v0, "numFdescs":I
    new-array v1, v0, [I

    .line 184
    .local v1, "fds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 185
    aget-object v3, p1, v2

    .line 186
    .local v3, "fdesc":Ljava/io/FileDescriptor;
    invoke-static {v3}, Lorg/newsclub/net/unix/NativeUnixSocket;->getFD(Ljava/io/FileDescriptor;)I

    move-result v4

    aput v4, v1, v2

    .line 184
    .end local v3    # "fdesc":Ljava/io/FileDescriptor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "numFdescs":I
    .end local v1    # "fds":[I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 189
    .restart local v1    # "fds":[I
    :cond_2
    invoke-virtual {p0, v1}, Lorg/newsclub/net/unix/AncillaryDataSupport;->setOutboundFileDescriptors([I)V

    .line 190
    return-void
.end method

.method setTipcDestName(III)V
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    .line 73
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->tipcDestName:[I

    goto :goto_0

    .line 76
    :cond_0
    filled-new-array {p1, p2, p3}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->tipcDestName:[I

    .line 78
    :goto_0
    return-void
.end method

.method setTipcErrorInfo(II)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "dataLength"    # I

    .line 59
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->tipcErrorInfo:[I

    goto :goto_0

    .line 62
    :cond_0
    filled-new-array {p1, p2}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AncillaryDataSupport;->tipcErrorInfo:[I

    .line 64
    :goto_0
    return-void
.end method
