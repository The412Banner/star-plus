.class public abstract Lorg/newsclub/net/unix/AFServerSocketChannel;
.super Ljava/nio/channels/ServerSocketChannel;
.source "AFServerSocketChannel.java"

# interfaces
.implements Lorg/newsclub/net/unix/FileDescriptorAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lorg/newsclub/net/unix/AFSocketAddress;",
        ">",
        "Ljava/nio/channels/ServerSocketChannel;",
        "Lorg/newsclub/net/unix/FileDescriptorAccess;"
    }
.end annotation


# instance fields
.field private final afSocket:Lorg/newsclub/net/unix/AFServerSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFServerSocket<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/newsclub/net/unix/AFServerSocket;Lorg/newsclub/net/unix/AFSelectorProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/AFServerSocket<",
            "TA;>;",
            "Lorg/newsclub/net/unix/AFSelectorProvider<",
            "TA;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    .local p1, "socket":Lorg/newsclub/net/unix/AFServerSocket;, "Lorg/newsclub/net/unix/AFServerSocket<TA;>;"
    .local p2, "sp":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    invoke-direct {p0, p2}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFServerSocket;

    iput-object v0, p0, Lorg/newsclub/net/unix/AFServerSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFServerSocket;

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic accept()Ljava/nio/channels/SocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocketChannel;->accept()Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public accept()Lorg/newsclub/net/unix/AFSocketChannel;
    .locals 2
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

    .line 108
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFServerSocket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/newsclub/net/unix/AFServerSocket;->accept1(Z)Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    .line 109
    .local v0, "socket":Lorg/newsclub/net/unix/AFSocket;, "Lorg/newsclub/net/unix/AFSocket<TA;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocket;->getChannel()Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFServerSocketChannel;->bind(Ljava/net/SocketAddress;I)Lorg/newsclub/net/unix/AFServerSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public final bind(Ljava/net/SocketAddress;I)Lorg/newsclub/net/unix/AFServerSocketChannel;
    .locals 1
    .param p1, "local"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "I)",
            "Lorg/newsclub/net/unix/AFServerSocketChannel<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFServerSocket;

    invoke-virtual {v0, p1, p2}, Lorg/newsclub/net/unix/AFServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 97
    return-object p0
.end method

.method final getAFCore()Lorg/newsclub/net/unix/AFSocketCore;
    .locals 1

    .line 140
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFServerSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFServerSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    return-object v0
.end method

.method public final getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFServerSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocketChannel;->getLocalAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFServerSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFServerSocket;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    instance-of v0, p1, Lorg/newsclub/net/unix/AFSocketOption;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocketChannel;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/newsclub/net/unix/AFSocketOption;

    invoke-virtual {v0, v1}, Lorg/newsclub/net/unix/AFSocketCore;->getOption(Lorg/newsclub/net/unix/AFSocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    invoke-static {p1}, Lorg/newsclub/net/unix/SocketOptionsMapper;->resolve(Ljava/net/SocketOption;)Ljava/lang/Integer;

    move-result-object v0

    .line 65
    .local v0, "optionId":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lorg/newsclub/net/unix/AFServerSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFServerSocket;

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFServerSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/newsclub/net/unix/AFSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 66
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "unsupported option"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final implCloseSelectableChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFServerSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFServerSocket;->close()V

    .line 132
    return-void
.end method

.method protected final implConfigureBlocking(Z)V
    .locals 1
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocketChannel;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFSocketCore;->implConfigureBlocking(Z)V

    .line 137
    return-void
.end method

.method public final isDeleteOnClose()Z
    .locals 1

    .line 157
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocketChannel;->socket()Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFServerSocket;->isDeleteOnClose()Z

    move-result v0

    return v0
.end method

.method public final isLocalSocketAddressValid()Z
    .locals 1

    .line 126
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFServerSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFServerSocket;->isLocalSocketAddressValid()Z

    move-result v0

    return v0
.end method

.method public final setDeleteOnClose(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 170
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocketChannel;->socket()Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFServerSocket;->setDeleteOnClose(Z)V

    .line 171
    return-void
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFServerSocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Lorg/newsclub/net/unix/AFServerSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFServerSocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Lorg/newsclub/net/unix/AFServerSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Lorg/newsclub/net/unix/AFServerSocketChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Lorg/newsclub/net/unix/AFServerSocketChannel<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Lorg/newsclub/net/unix/AFSocketOption;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocketChannel;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/newsclub/net/unix/AFSocketOption;

    invoke-virtual {v0, v1, p2}, Lorg/newsclub/net/unix/AFSocketCore;->setOption(Lorg/newsclub/net/unix/AFSocketOption;Ljava/lang/Object;)V

    .line 76
    return-object p0

    .line 78
    :cond_0
    invoke-static {p1}, Lorg/newsclub/net/unix/SocketOptionsMapper;->resolve(Ljava/net/SocketOption;)Ljava/lang/Integer;

    move-result-object v0

    .line 79
    .local v0, "optionId":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 82
    iget-object v1, p0, Lorg/newsclub/net/unix/AFServerSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFServerSocket;

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFServerSocket;->getAFImpl()Lorg/newsclub/net/unix/AFSocketImpl;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lorg/newsclub/net/unix/AFSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 84
    return-object p0

    .line 80
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "unsupported option"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic socket()Ljava/net/ServerSocket;
    .locals 1

    .line 40
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFServerSocketChannel;->socket()Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public final socket()Lorg/newsclub/net/unix/AFServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFServerSocket<",
            "TA;>;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFServerSocketChannel;->afSocket:Lorg/newsclub/net/unix/AFServerSocket;

    return-object v0
.end method

.method public final supportedOptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/newsclub/net/unix/AFServerSocketChannel;, "Lorg/newsclub/net/unix/AFServerSocketChannel<TA;>;"
    sget-object v0, Lorg/newsclub/net/unix/SocketOptionsMapper;->SUPPORTED_SOCKET_OPTIONS:Ljava/util/Set;

    return-object v0
.end method
