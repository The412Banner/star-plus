.class public abstract Lorg/newsclub/net/unix/AFSelectorProvider;
.super Ljava/nio/channels/spi/SelectorProvider;
.source "AFSelectorProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lorg/newsclub/net/unix/AFSocketAddress;",
        ">",
        "Ljava/nio/channels/spi/SelectorProvider;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 39
    .local p0, "this":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    invoke-direct {p0}, Ljava/nio/channels/spi/SelectorProvider;-><init>()V

    .line 40
    return-void
.end method

.method private newPipe(Z)Lorg/newsclub/net/unix/AFPipe;
    .locals 1
    .param p1, "selectable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    new-instance v0, Lorg/newsclub/net/unix/AFPipe;

    invoke-direct {v0, p0, p1}, Lorg/newsclub/net/unix/AFPipe;-><init>(Lorg/newsclub/net/unix/AFSelectorProvider;Z)V

    return-object v0
.end method


# virtual methods
.method protected abstract addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "TA;>;"
        }
    .end annotation
.end method

.method protected final domainId()I
    .locals 1

    .line 91
    .local p0, "this":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;->addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFAddressFamily;->getDomain()I

    move-result v0

    return v0
.end method

.method protected abstract newSocket()Lorg/newsclub/net/unix/AFSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocket<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract newSocketPair(Lorg/newsclub/net/unix/AFSomeSocket;Lorg/newsclub/net/unix/AFSomeSocket;)Lorg/newsclub/net/unix/AFSocketPair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lorg/newsclub/net/unix/AFSomeSocket;",
            ">(TY;TY;)",
            "Lorg/newsclub/net/unix/AFSocketPair<",
            "TY;>;"
        }
    .end annotation
.end method

.method public bridge synthetic openDatagramChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;->openDatagramChannel()Lorg/newsclub/net/unix/AFDatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic openDatagramChannel(Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFSelectorProvider;->openDatagramChannel(Ljava/net/ProtocolFamily;)Lorg/newsclub/net/unix/AFDatagramChannel;

    move-result-object p1

    return-object p1
.end method

.method public abstract openDatagramChannel()Lorg/newsclub/net/unix/AFDatagramChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFDatagramChannel<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public openDatagramChannel(Ljava/net/ProtocolFamily;)Lorg/newsclub/net/unix/AFDatagramChannel;
    .locals 2
    .param p1, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/ProtocolFamily;",
            ")",
            "Lorg/newsclub/net/unix/AFDatagramChannel<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    .local p0, "this":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;->protocolFamily()Ljava/net/ProtocolFamily;

    move-result-object v0

    invoke-interface {v0}, Ljava/net/ProtocolFamily;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/net/ProtocolFamily;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;->openDatagramChannel()Lorg/newsclub/net/unix/AFDatagramChannel;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported protocol family"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openDatagramChannelPair()Lorg/newsclub/net/unix/AFSocketPair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketPair<",
            "+",
            "Lorg/newsclub/net/unix/AFDatagramChannel<",
            "TA;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;->protocolFamily()Ljava/net/ProtocolFamily;

    move-result-object v0

    .line 123
    .local v0, "pf":Ljava/net/ProtocolFamily;
    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFSelectorProvider;->openDatagramChannel(Ljava/net/ProtocolFamily;)Lorg/newsclub/net/unix/AFDatagramChannel;

    move-result-object v1

    .line 124
    .local v1, "s1":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFSelectorProvider;->openDatagramChannel(Ljava/net/ProtocolFamily;)Lorg/newsclub/net/unix/AFDatagramChannel;

    move-result-object v2

    .line 126
    .local v2, "s2":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;->domainId()I

    move-result v3

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFDatagramChannel;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v4

    iget-object v4, v4, Lorg/newsclub/net/unix/AFSocketCore;->fd:Ljava/io/FileDescriptor;

    .line 127
    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFDatagramChannel;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v5

    iget-object v5, v5, Lorg/newsclub/net/unix/AFSocketCore;->fd:Ljava/io/FileDescriptor;

    .line 126
    const/4 v6, 0x1

    invoke-static {v3, v6, v4, v5}, Lorg/newsclub/net/unix/NativeUnixSocket;->socketPair(IILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 129
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFDatagramChannel;->socket()Lorg/newsclub/net/unix/AFDatagramSocket;

    move-result-object v3

    invoke-virtual {v3}, Lorg/newsclub/net/unix/AFDatagramSocket;->internalDummyBind()V

    .line 130
    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFDatagramChannel;->socket()Lorg/newsclub/net/unix/AFDatagramSocket;

    move-result-object v3

    invoke-virtual {v3}, Lorg/newsclub/net/unix/AFDatagramSocket;->internalDummyBind()V

    .line 131
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFDatagramChannel;->socket()Lorg/newsclub/net/unix/AFDatagramSocket;

    move-result-object v3

    invoke-virtual {v3}, Lorg/newsclub/net/unix/AFDatagramSocket;->internalDummyConnect()V

    .line 132
    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFDatagramChannel;->socket()Lorg/newsclub/net/unix/AFDatagramSocket;

    move-result-object v3

    invoke-virtual {v3}, Lorg/newsclub/net/unix/AFDatagramSocket;->internalDummyConnect()V

    .line 134
    invoke-virtual {p0, v1, v2}, Lorg/newsclub/net/unix/AFSelectorProvider;->newSocketPair(Lorg/newsclub/net/unix/AFSomeSocket;Lorg/newsclub/net/unix/AFSomeSocket;)Lorg/newsclub/net/unix/AFSocketPair;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic openPipe()Ljava/nio/channels/Pipe;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;->openPipe()Lorg/newsclub/net/unix/AFPipe;

    move-result-object v0

    return-object v0
.end method

.method public final openPipe()Lorg/newsclub/net/unix/AFPipe;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/newsclub/net/unix/AFSelectorProvider;->newPipe(Z)Lorg/newsclub/net/unix/AFPipe;

    move-result-object v0

    return-object v0
.end method

.method final openSelectablePipe()Lorg/newsclub/net/unix/AFPipe;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/newsclub/net/unix/AFSelectorProvider;->newPipe(Z)Lorg/newsclub/net/unix/AFPipe;

    move-result-object v0

    return-object v0
.end method

.method public final openSelector()Ljava/nio/channels/spi/AbstractSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    .local p0, "this":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    new-instance v0, Lorg/newsclub/net/unix/AFSelector;

    invoke-direct {v0, p0}, Lorg/newsclub/net/unix/AFSelector;-><init>(Lorg/newsclub/net/unix/AFSelectorProvider;)V

    return-object v0
.end method

.method public bridge synthetic openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;->openServerSocketChannel()Lorg/newsclub/net/unix/AFServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public abstract openServerSocketChannel()Lorg/newsclub/net/unix/AFServerSocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFServerSocketChannel<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openServerSocketChannel(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFServerSocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")",
            "Lorg/newsclub/net/unix/AFServerSocketChannel<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic openSocketChannel()Ljava/nio/channels/SocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;->openSocketChannel()Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public openSocketChannel()Lorg/newsclub/net/unix/AFSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketChannel<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    .local p0, "this":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;->newSocket()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->getChannel()Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public abstract openSocketChannel(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFSocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")",
            "Lorg/newsclub/net/unix/AFSocketChannel<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public openSocketChannelPair()Lorg/newsclub/net/unix/AFSocketPair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFSocketPair<",
            "+",
            "Lorg/newsclub/net/unix/AFSocketChannel<",
            "TA;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;->openSocketChannel()Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    .line 103
    .local v0, "s1":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;->openSocketChannel()Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v1

    .line 105
    .local v1, "s2":Lorg/newsclub/net/unix/AFSocketChannel;, "Lorg/newsclub/net/unix/AFSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;->domainId()I

    move-result v2

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketChannel;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v3

    iget-object v3, v3, Lorg/newsclub/net/unix/AFSocketCore;->fd:Ljava/io/FileDescriptor;

    .line 106
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocketChannel;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v4

    iget-object v4, v4, Lorg/newsclub/net/unix/AFSocketCore;->fd:Ljava/io/FileDescriptor;

    .line 105
    const/4 v5, 0x1

    invoke-static {v2, v5, v3, v4}, Lorg/newsclub/net/unix/NativeUnixSocket;->socketPair(IILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 108
    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketChannel;->socket()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v2

    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFSocket;->internalDummyConnect()V

    .line 109
    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocketChannel;->socket()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v2

    invoke-virtual {v2}, Lorg/newsclub/net/unix/AFSocket;->internalDummyConnect()V

    .line 111
    invoke-virtual {p0, v0, v1}, Lorg/newsclub/net/unix/AFSelectorProvider;->newSocketPair(Lorg/newsclub/net/unix/AFSomeSocket;Lorg/newsclub/net/unix/AFSomeSocket;)Lorg/newsclub/net/unix/AFSocketPair;

    move-result-object v2

    return-object v2
.end method

.method protected abstract protocolFamily()Ljava/net/ProtocolFamily;
.end method
