.class public abstract Lorg/newsclub/net/unix/AFDatagramChannel;
.super Ljava/nio/channels/DatagramChannel;
.source "AFDatagramChannel.java"

# interfaces
.implements Lorg/newsclub/net/unix/AFSomeSocket;
.implements Lorg/newsclub/net/unix/AFSocketExtensions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lorg/newsclub/net/unix/AFSocketAddress;",
        ">",
        "Ljava/nio/channels/DatagramChannel;",
        "Lorg/newsclub/net/unix/AFSomeSocket;",
        "Lorg/newsclub/net/unix/AFSocketExtensions;"
    }
.end annotation


# instance fields
.field private final afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFDatagramSocket<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/newsclub/net/unix/AFSelectorProvider;Lorg/newsclub/net/unix/AFDatagramSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/newsclub/net/unix/AFSelectorProvider<",
            "TA;>;",
            "Lorg/newsclub/net/unix/AFDatagramSocket<",
            "TA;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    .local p1, "selectorProvider":Lorg/newsclub/net/unix/AFSelectorProvider;, "Lorg/newsclub/net/unix/AFSelectorProvider<TA;>;"
    .local p2, "socket":Lorg/newsclub/net/unix/AFDatagramSocket;, "Lorg/newsclub/net/unix/AFDatagramSocket<TA;>;"
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 55
    iput-object p2, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    .line 56
    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFDatagramChannel;->bind(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFDatagramChannel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFDatagramChannel;->bind(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFDatagramChannel;

    move-result-object p1

    return-object p1
.end method

.method public final bind(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFDatagramChannel;
    .locals 1
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
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

    .line 82
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFDatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 83
    return-object p0
.end method

.method public bridge synthetic connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFDatagramChannel;->connect(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFDatagramChannel;

    move-result-object p1

    return-object p1
.end method

.method public final connect(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFDatagramChannel;
    .locals 1
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
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

    .line 108
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFDatagramSocket;->connect(Ljava/net/SocketAddress;)V

    .line 109
    return-object p0
.end method

.method public bridge synthetic disconnect()Ljava/nio/channels/DatagramChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramChannel;->disconnect()Lorg/newsclub/net/unix/AFDatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public final disconnect()Lorg/newsclub/net/unix/AFDatagramChannel;
    .locals 1
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

    .line 114
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->disconnect()V

    .line 115
    return-object p0
.end method

.method public final ensureAncillaryReceiveBufferSize(I)V
    .locals 1
    .param p1, "minSize"    # I

    .line 198
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFDatagramSocket;->ensureAncillaryReceiveBufferSize(I)V

    .line 199
    return-void
.end method

.method final getAFCore()Lorg/newsclub/net/unix/AFSocketCore;
    .locals 1

    .line 237
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    return-object v0
.end method

.method protected final getAFSocket()Lorg/newsclub/net/unix/AFDatagramSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFDatagramSocket<",
            "TA;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    return-object v0
.end method

.method public final getAncillaryReceiveBufferSize()I
    .locals 1

    .line 188
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAncillaryReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public final getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

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

    .line 43
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramChannel;->getLocalAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramChannel;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 43
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramChannel;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getLocalSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
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

    .line 220
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    instance-of v0, p1, Lorg/newsclub/net/unix/AFSocketOption;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramChannel;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/newsclub/net/unix/AFSocketOption;

    invoke-virtual {v0, v1}, Lorg/newsclub/net/unix/AFSocketCore;->getOption(Lorg/newsclub/net/unix/AFSocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 223
    :cond_0
    invoke-static {p1}, Lorg/newsclub/net/unix/SocketOptionsMapper;->resolve(Ljava/net/SocketOption;)Ljava/lang/Integer;

    move-result-object v0

    .line 224
    .local v0, "optionId":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 227
    iget-object v1, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 225
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "unsupported option"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramChannel;->getRemoteAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getRemoteAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramChannel;->getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 43
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramChannel;->getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getRemoteSocketAddress()Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected final implCloseSelectableChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramChannel;->getAFSocket()Lorg/newsclub/net/unix/AFDatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->close()V

    .line 179
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

    .line 183
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramChannel;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFSocketCore;->implConfigureBlocking(Z)V

    .line 184
    return-void
.end method

.method public final isBound()Z
    .locals 1

    .line 98
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->isBound()Z

    move-result v0

    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .line 103
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final isDeleteOnClose()Z
    .locals 1

    .line 254
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->isDeleteOnClose()Z

    move-result v0

    return v0
.end method

.method public final join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Ljava/nio/channels/MembershipKey;
    .locals 1
    .param p1, "group"    # Ljava/net/InetAddress;
    .param p2, "interf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .locals 1
    .param p1, "group"    # Ljava/net/InetAddress;
    .param p2, "interf"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->read(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final read([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    if-nez p3, :cond_0

    .line 156
    const-wide/16 v0, 0x0

    return-wide v0

    .line 159
    :cond_0
    aget-object v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFDatagramChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFDatagramChannel;->receive(Ljava/nio/ByteBuffer;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public final receive(Ljava/nio/ByteBuffer;)Lorg/newsclub/net/unix/AFSocketAddress;
    .locals 1
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

    .line 140
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->receive(Ljava/nio/ByteBuffer;)Lorg/newsclub/net/unix/AFSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "target"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result v0

    return v0
.end method

.method public final setAncillaryReceiveBufferSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 193
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFDatagramSocket;->setAncillaryReceiveBufferSize(I)V

    .line 194
    return-void
.end method

.method public final setDeleteOnClose(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 266
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFDatagramSocket;->setDeleteOnClose(Z)V

    .line 267
    return-void
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFDatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Lorg/newsclub/net/unix/AFDatagramChannel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFDatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Lorg/newsclub/net/unix/AFDatagramChannel;

    move-result-object p1

    return-object p1
.end method

.method public final setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Lorg/newsclub/net/unix/AFDatagramChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Lorg/newsclub/net/unix/AFDatagramChannel<",
            "TA;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Lorg/newsclub/net/unix/AFSocketOption;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramChannel;->getAFCore()Lorg/newsclub/net/unix/AFSocketCore;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/newsclub/net/unix/AFSocketOption;

    invoke-virtual {v0, v1, p2}, Lorg/newsclub/net/unix/AFSocketCore;->setOption(Lorg/newsclub/net/unix/AFSocketOption;Ljava/lang/Object;)V

    .line 206
    return-object p0

    .line 208
    :cond_0
    invoke-static {p1}, Lorg/newsclub/net/unix/SocketOptionsMapper;->resolve(Ljava/net/SocketOption;)Ljava/lang/Integer;

    move-result-object v0

    .line 209
    .local v0, "optionId":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 212
    iget-object v1, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 214
    return-object p0

    .line 210
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "unsupported option"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic socket()Ljava/net/DatagramSocket;
    .locals 1

    .line 43
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFDatagramChannel;->socket()Lorg/newsclub/net/unix/AFDatagramSocket;

    move-result-object v0

    return-object v0
.end method

.method public final socket()Lorg/newsclub/net/unix/AFDatagramSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFDatagramSocket<",
            "TA;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

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

    .line 233
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    sget-object v0, Lorg/newsclub/net/unix/SocketOptionsMapper;->SUPPORTED_SOCKET_OPTIONS:Ljava/util/Set;

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFDatagramChannel;->afSocket:Lorg/newsclub/net/unix/AFDatagramSocket;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final write([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/newsclub/net/unix/AFDatagramChannel;, "Lorg/newsclub/net/unix/AFDatagramChannel<TA;>;"
    if-nez p3, :cond_0

    .line 170
    const-wide/16 v0, 0x0

    return-wide v0

    .line 173
    :cond_0
    aget-object v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFDatagramChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
