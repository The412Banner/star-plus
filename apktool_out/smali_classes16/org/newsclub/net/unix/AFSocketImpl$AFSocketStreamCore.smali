.class final Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;
.super Lorg/newsclub/net/unix/AFSocketCore;
.source "AFSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AFSocketStreamCore"
.end annotation


# instance fields
.field private final pendingAccepts:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lorg/newsclub/net/unix/AFSocketImpl;Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AncillaryDataSupport;Lorg/newsclub/net/unix/AFAddressFamily;)V
    .locals 6
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "ancillaryDataSupport"    # Lorg/newsclub/net/unix/AncillaryDataSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/AFSocketImpl<",
            "*>;",
            "Ljava/io/FileDescriptor;",
            "Lorg/newsclub/net/unix/AncillaryDataSupport;",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "*>;)V"
        }
    .end annotation

    .line 86
    .local p1, "observed":Lorg/newsclub/net/unix/AFSocketImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<*>;"
    .local p4, "af":Lorg/newsclub/net/unix/AFAddressFamily;, "Lorg/newsclub/net/unix/AFAddressFamily<*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/newsclub/net/unix/AFSocketCore;-><init>(Ljava/lang/Object;Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AncillaryDataSupport;Lorg/newsclub/net/unix/AFAddressFamily;Z)V

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->pendingAccepts:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    return-void
.end method

.method static synthetic access$200(Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;)V
    .locals 0
    .param p0, "x0"    # Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->incPendingAccepts()V

    return-void
.end method

.method static synthetic access$300(Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;)V
    .locals 0
    .param p0, "x0"    # Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->decPendingAccepts()V

    return-void
.end method

.method private decPendingAccepts()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->pendingAccepts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 97
    return-void
.end method

.method private incPendingAccepts()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->pendingAccepts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    .line 93
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Too many pending accepts"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createSocket(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFSocketType;)V
    .locals 2
    .param p1, "fdTarget"    # Ljava/io/FileDescriptor;
    .param p2, "type"    # Lorg/newsclub/net/unix/AFSocketType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFAddressFamily;->getDomain()I

    move-result v0

    invoke-virtual {p2}, Lorg/newsclub/net/unix/AFSocketType;->getId()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/newsclub/net/unix/NativeUnixSocket;->createSocket(Ljava/io/FileDescriptor;II)V

    .line 101
    return-void
.end method

.method protected unblockAccepts()V
    .locals 5

    .line 109
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->socketAddress:Lorg/newsclub/net/unix/AFSocketAddress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->socketAddress:Lorg/newsclub/net/unix/AFSocketAddress;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketAddress;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->inode:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_5

    .line 113
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->pendingAccepts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    .line 115
    :try_start_0
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 118
    .local v0, "tmpFd":Ljava/io/FileDescriptor;
    :try_start_1
    sget-object v1, Lorg/newsclub/net/unix/AFSocketType;->SOCK_STREAM:Lorg/newsclub/net/unix/AFSocketType;

    invoke-virtual {p0, v0, v1}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->createSocket(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFSocketType;)V

    .line 119
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->socketAddress:Lorg/newsclub/net/unix/AFSocketAddress;

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocketAddress;->getNativeAddressDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 120
    .local v1, "ab":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget-object v3, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->inode:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-static {v1, v2, v0, v3, v4}, Lorg/newsclub/net/unix/NativeUnixSocket;->connect(Ljava/nio/ByteBuffer;ILjava/io/FileDescriptor;J)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 125
    nop

    .line 127
    .end local v1    # "ab":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    :try_start_2
    invoke-static {v0, v1}, Lorg/newsclub/net/unix/NativeUnixSocket;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 130
    goto :goto_1

    .line 128
    :catch_0
    move-exception v1

    .line 132
    :goto_1
    :try_start_3
    invoke-static {v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 135
    goto :goto_2

    .line 133
    :catch_1
    move-exception v1

    .line 138
    .end local v0    # "tmpFd":Ljava/io/FileDescriptor;
    :goto_2
    goto :goto_3

    .line 121
    .restart local v0    # "tmpFd":Ljava/io/FileDescriptor;
    :catch_2
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/IOException;
    return-void

    .line 136
    .end local v0    # "tmpFd":Ljava/io/FileDescriptor;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 142
    :goto_3
    const-wide/16 v0, 0x5

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 145
    :goto_4
    goto :goto_0

    .line 143
    :catch_4
    move-exception v0

    goto :goto_4

    .line 147
    :cond_1
    return-void

    .line 110
    :cond_2
    :goto_5
    return-void
.end method
