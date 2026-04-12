.class public abstract Lorg/newsclub/net/unix/AFDatagramSocketImpl;
.super Lorg/newsclub/net/unix/DatagramSocketImplShim;
.source "AFDatagramSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lorg/newsclub/net/unix/AFSocketAddress;",
        ">",
        "Lorg/newsclub/net/unix/DatagramSocketImplShim;"
    }
.end annotation


# instance fields
.field private final addressFamily:Lorg/newsclub/net/unix/AFAddressFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;"
        }
    .end annotation
.end field

.field final ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

.field private final bound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final connected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final core:Lorg/newsclub/net/unix/AFSocketCore;

.field private implExtensions:Lorg/newsclub/net/unix/AFSocketImplExtensions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFSocketImplExtensions<",
            "TA;>;"
        }
    .end annotation
.end field

.field private remotePort:I

.field private final socketTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final socketType:Lorg/newsclub/net/unix/AFSocketType;


# direct methods
.method protected constructor <init>(Lorg/newsclub/net/unix/AFAddressFamily;Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFSocketType;)V
    .locals 7
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "socketType"    # Lorg/newsclub/net/unix/AFSocketType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;",
            "Ljava/io/FileDescriptor;",
            "Lorg/newsclub/net/unix/AFSocketType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    .local p1, "addressFamily":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<TA;>;"
    invoke-direct {p0}, Lorg/newsclub/net/unix/DatagramSocketImplShim;-><init>()V

    .line 47
    new-instance v0, Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AncillaryDataSupport;-><init>()V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->socketTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    iput v1, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->remotePort:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->implExtensions:Lorg/newsclub/net/unix/AFSocketImplExtensions;

    .line 68
    iput-object p1, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->addressFamily:Lorg/newsclub/net/unix/AFAddressFamily;

    .line 70
    iput-object p3, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->socketType:Lorg/newsclub/net/unix/AFSocketType;

    .line 71
    new-instance v0, Lorg/newsclub/net/unix/AFSocketCore;

    iget-object v4, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/newsclub/net/unix/AFSocketCore;-><init>(Ljava/lang/Object;Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AncillaryDataSupport;Lorg/newsclub/net/unix/AFAddressFamily;Z)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    .line 72
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    iget-object v0, v0, Lorg/newsclub/net/unix/AFSocketCore;->fd:Ljava/io/FileDescriptor;

    iput-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 73
    return-void
.end method

.method private recv(Ljava/net/DatagramPacket;I)V
    .locals 12
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    .line 171
    .local v0, "len":I
    iget-object v1, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocketCore;->validFdOrException()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 173
    .local v1, "fdesc":Ljava/io/FileDescriptor;
    iget-object v2, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    invoke-virtual {v2, v0}, Lorg/newsclub/net/unix/AFSocketCore;->getThreadLocalDirectByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 174
    .local v10, "datagramPacketBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 176
    iget-object v2, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFSocketCore;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    or-int/2addr p2, v2

    .line 178
    sget-object v2, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKETADDRESS_BUFFER_TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/nio/ByteBuffer;

    .line 179
    .local v11, "socketAddressBuffer":Ljava/nio/ByteBuffer;
    iget-object v8, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    iget-object v2, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->socketTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 180
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    .line 179
    const/4 v4, 0x0

    move-object v2, v1

    move-object v3, v10

    move v5, v0

    move-object v6, v11

    move v7, p2

    invoke-static/range {v2 .. v9}, Lorg/newsclub/net/unix/NativeUnixSocket;->receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;ILorg/newsclub/net/unix/AncillaryDataSupport;I)I

    move-result v2

    .line 181
    .local v2, "count":I
    if-gt v2, v0, :cond_4

    .line 183
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 185
    if-ltz v2, :cond_2

    .line 188
    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 189
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 190
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {v10, v3, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 192
    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 194
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v3

    invoke-static {v11, v3}, Lorg/newsclub/net/unix/AFSocketAddress;->ofInternal(Ljava/nio/ByteBuffer;Lorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v3

    .line 195
    .local v3, "addr":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    if-nez v3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lorg/newsclub/net/unix/AFSocketAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    :goto_1
    invoke-virtual {p1, v4}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 196
    iget v4, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->remotePort:I

    invoke-virtual {p1, v4}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 197
    return-void

    .line 186
    .end local v3    # "addr":Lorg/newsclub/net/unix/AFSocketAddress;, "TA;"
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " < 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 184
    :cond_3
    new-instance v3, Ljava/net/SocketTimeoutException;

    invoke-direct {v3}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v3

    .line 182
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count > len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method protected final bind(ILjava/net/InetAddress;)V
    .locals 0
    .param p1, "lport"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    return-void
.end method

.method final bind(Lorg/newsclub/net/unix/AFSocketAddress;)V
    .locals 5
    .param p1, "socketAddress"    # Lorg/newsclub/net/unix/AFSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    sget-object v0, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_BIND:Lorg/newsclub/net/unix/AFSocketAddress;

    if-ne p1, v0, :cond_0

    .line 141
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 146
    :try_start_0
    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocketAddress;->getNativeAddressDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "ab":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 148
    .end local v1    # "ab":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketAddress;->getNativeAddressDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 150
    .restart local v1    # "ab":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget-object v3, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/16 v4, 0x10

    invoke-static {v1, v2, v3, v4}, Lorg/newsclub/net/unix/NativeUnixSocket;->bind(Ljava/nio/ByteBuffer;ILjava/io/FileDescriptor;I)J

    .line 151
    if-nez p1, :cond_2

    .line 152
    iput v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->localPort:I

    .line 153
    iget-object v2, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->localPort:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1    # "ab":Ljava/nio/ByteBuffer;
    :goto_1
    nop

    .line 162
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/SocketException;

    throw v1

    .line 157
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/net/SocketException;
    throw v0
.end method

.method protected final close()V
    .locals 1

    .line 93
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketCore;->runCleaner()V

    .line 94
    return-void
.end method

.method protected final connect(Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    return-void
.end method

.method final connect(Lorg/newsclub/net/unix/AFSocketAddress;)V
    .locals 5
    .param p1, "socketAddress"    # Lorg/newsclub/net/unix/AFSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    sget-object v0, Lorg/newsclub/net/unix/AFSocketAddress;->INTERNAL_DUMMY_CONNECT:Lorg/newsclub/net/unix/AFSocketAddress;

    if-ne p1, v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketAddress;->getNativeAddressDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 106
    .local v0, "ab":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v3, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Lorg/newsclub/net/unix/NativeUnixSocket;->connect(Ljava/nio/ByteBuffer;ILjava/io/FileDescriptor;J)Z

    .line 107
    invoke-virtual {p1}, Lorg/newsclub/net/unix/AFSocketAddress;->getPort()I

    move-result v1

    iput v1, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->remotePort:I

    .line 108
    return-void
.end method

.method protected final create()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    return-void

    .line 83
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v1

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFAddressFamily;->getDomain()I

    move-result v1

    iget-object v2, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->socketType:Lorg/newsclub/net/unix/AFSocketType;

    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFSocketType;->getId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/newsclub/net/unix/NativeUnixSocket;->createSocket(Ljava/io/FileDescriptor;II)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    nop

    .line 89
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/SocketException;

    throw v1

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/net/SocketException;
    throw v0

    .line 78
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final disconnect()V
    .locals 2

    .line 113
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->disconnect(Ljava/io/FileDescriptor;)V

    .line 114
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    iput v1, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->remotePort:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method protected final getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;"
        }
    .end annotation

    .line 382
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->addressFamily:Lorg/newsclub/net/unix/AFAddressFamily;

    return-object v0
.end method

.method final getCore()Lorg/newsclub/net/unix/AFSocketCore;
    .locals 1

    .line 122
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    return-object v0
.end method

.method protected final getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 127
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    iget-object v0, v0, Lorg/newsclub/net/unix/AFSocketCore;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected final declared-synchronized getImplExtensions()Lorg/newsclub/net/unix/AFSocketImplExtensions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketImplExtensions<",
            "TA;>;"
        }
    .end annotation

    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->implExtensions:Lorg/newsclub/net/unix/AFSocketImplExtensions;

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->addressFamily:Lorg/newsclub/net/unix/AFAddressFamily;

    iget-object v1, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {v0, v1}, Lorg/newsclub/net/unix/AFAddressFamily;->initImplExtensions(Lorg/newsclub/net/unix/AncillaryDataSupport;)Lorg/newsclub/net/unix/AFSocketImplExtensions;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->implExtensions:Lorg/newsclub/net/unix/AFSocketImplExtensions;

    .line 396
    .end local p0    # "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->implExtensions:Lorg/newsclub/net/unix/AFSocketImplExtensions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 392
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 367
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget v1, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->localPort:I

    .line 368
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v2

    .line 367
    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lorg/newsclub/net/unix/AFSocketAddress;->getSocketAddress(Ljava/io/FileDescriptor;ZILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 3
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 282
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketCore;->validFdOrException()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 287
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    iget-object v1, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->socketTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/newsclub/net/unix/AFSocketImpl;->getOptionDefault(Ljava/io/FileDescriptor;ILjava/util/concurrent/atomic/AtomicInteger;Lorg/newsclub/net/unix/AFAddressFamily;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 283
    .end local v0    # "fdesc":Ljava/io/FileDescriptor;
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 372
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget v1, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->remotePort:I

    .line 373
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v2

    .line 372
    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lorg/newsclub/net/unix/AFSocketAddress;->getSocketAddress(Ljava/io/FileDescriptor;ZILorg/newsclub/net/unix/AFAddressFamily;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected final getTTL()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getTimeToLive()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method protected final getTimeToLive()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    const/4 v0, 0x0

    return v0
.end method

.method final isBound()Z
    .locals 3

    .line 348
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 349
    return v1

    .line 351
    :cond_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->isClosed()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 352
    return v2

    .line 354
    :cond_1
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    invoke-virtual {v0, v1}, Lorg/newsclub/net/unix/AFSocketCore;->isConnected(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 356
    return v1

    .line 358
    :cond_2
    return v2
.end method

.method final isClosed()Z
    .locals 1

    .line 131
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketCore;->isClosed()Z

    move-result v0

    return v0
.end method

.method final isConnected()Z
    .locals 3

    .line 334
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 335
    return v1

    .line 337
    :cond_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->isClosed()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 338
    return v2

    .line 340
    :cond_1
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    invoke-virtual {v0, v2}, Lorg/newsclub/net/unix/AFSocketCore;->isConnected(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 342
    return v1

    .line 344
    :cond_2
    return v2
.end method

.method protected final join(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 2
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final leave(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 2
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final peek(Ljava/net/InetAddress;)I
    .locals 2
    .param p1, "i"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unsupported operation"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final peekData(Ljava/net/DatagramPacket;)I
    .locals 1
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->recv(Ljava/net/DatagramPacket;I)V

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method final read(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "socketAddressBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/newsclub/net/unix/AFSocketCore;->read(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v0
    :try_end_0
    .catch Lorg/newsclub/net/unix/SocketClosedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Lorg/newsclub/net/unix/SocketClosedException;
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/nio/channels/ClosedChannelException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ClosedChannelException;

    throw v1
.end method

.method final receive(Ljava/nio/ByteBuffer;)Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 2
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFSocketCore;->receive(Ljava/nio/ByteBuffer;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0
    :try_end_0
    .catch Lorg/newsclub/net/unix/SocketClosedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Lorg/newsclub/net/unix/SocketClosedException;
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/nio/channels/ClosedChannelException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ClosedChannelException;

    throw v1
.end method

.method protected final receive(Ljava/net/DatagramPacket;)V
    .locals 1
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->recv(Ljava/net/DatagramPacket;I)V

    .line 167
    return-void
.end method

.method final send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "target"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/newsclub/net/unix/AFSocketCore;->write(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;I)I

    move-result v0
    :try_end_0
    .catch Lorg/newsclub/net/unix/SocketClosedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Lorg/newsclub/net/unix/SocketClosedException;
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/nio/channels/ClosedChannelException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ClosedChannelException;

    throw v1
.end method

.method protected final send(Ljava/net/DatagramPacket;)V
    .locals 14
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 202
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v1, 0x0

    .line 203
    .local v1, "sendToBuf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 204
    .local v2, "sendToBufLen":I
    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/newsclub/net/unix/AFInetAddress;->unwrapAddress(Ljava/net/InetAddress;Lorg/newsclub/net/unix/AFAddressFamily;)[B

    move-result-object v3

    .line 206
    .local v3, "addrBytes":[B
    if-eqz v3, :cond_1

    .line 207
    sget-object v4, Lorg/newsclub/net/unix/AFSocketAddress;->SOCKETADDRESS_BUFFER_TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 208
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getAddressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v4

    invoke-virtual {v4}, Lorg/newsclub/net/unix/AFAddressFamily;->getDomain()I

    move-result v4

    invoke-static {v4, v1, v3}, Lorg/newsclub/net/unix/NativeUnixSocket;->bytesToSockAddr(ILjava/nio/ByteBuffer;[B)I

    move-result v2

    .line 210
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance v4, Ljava/net/SocketException;

    const-string v5, "Unsupported domain"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 215
    .end local v3    # "addrBytes":[B
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    invoke-virtual {v3}, Lorg/newsclub/net/unix/AFSocketCore;->validFdOrException()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 217
    .local v3, "fdesc":Ljava/io/FileDescriptor;
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    .line 219
    .local v4, "len":I
    iget-object v5, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    invoke-virtual {v5, v4}, Lorg/newsclub/net/unix/AFSocketCore;->getThreadLocalDirectByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 220
    .local v5, "datagramPacketBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 221
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v7

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 222
    const/16 v12, 0x10

    iget-object v13, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    const/4 v8, 0x0

    move-object v6, v3

    move-object v7, v5

    move v9, v4

    move-object v10, v1

    move v11, v2

    invoke-static/range {v6 .. v13}, Lorg/newsclub/net/unix/NativeUnixSocket;->send(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILorg/newsclub/net/unix/AncillaryDataSupport;)I

    .line 225
    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 2
    .param p1, "optID"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 292
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketCore;->validFdOrException()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 297
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    iget-object v1, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->socketTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, p1, p2, v1}, Lorg/newsclub/net/unix/AFSocketImpl;->setOptionDefault(Ljava/io/FileDescriptor;ILjava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 298
    return-void

    .line 293
    .end local v0    # "fdesc":Ljava/io/FileDescriptor;
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final setTTL(B)V
    .locals 0
    .param p1, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    return-void
.end method

.method protected final setTimeToLive(I)V
    .locals 0
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    return-void
.end method

.method final updatePorts(II)V
    .locals 0
    .param p1, "local"    # I
    .param p2, "remote"    # I

    .line 362
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    iput p1, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->localPort:I

    .line 363
    iput p2, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->remotePort:I

    .line 364
    return-void
.end method

.method final write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramSocketImpl;, "Lorg/newsclub/net/unix/AFDatagramSocketImpl<TA;>;"
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->core:Lorg/newsclub/net/unix/AFSocketCore;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFSocketCore;->write(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_0
    .catch Lorg/newsclub/net/unix/SocketClosedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Lorg/newsclub/net/unix/SocketClosedException;
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/nio/channels/ClosedChannelException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ClosedChannelException;

    throw v1
.end method
