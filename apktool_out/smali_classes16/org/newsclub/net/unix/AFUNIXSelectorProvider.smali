.class public final Lorg/newsclub/net/unix/AFUNIXSelectorProvider;
.super Lorg/newsclub/net/unix/AFSelectorProvider;
.source "AFUNIXSelectorProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/newsclub/net/unix/AFSelectorProvider<",
        "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
        ">;"
    }
.end annotation


# static fields
.field static final AF_UNIX:Lorg/newsclub/net/unix/AFAddressFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANCE:Lorg/newsclub/net/unix/AFUNIXSelectorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;-><init>()V

    sput-object v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->INSTANCE:Lorg/newsclub/net/unix/AFUNIXSelectorProvider;

    .line 35
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->AF_UNIX:Lorg/newsclub/net/unix/AFAddressFamily;

    new-instance v1, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1;

    invoke-direct {v1}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1;-><init>()V

    .line 36
    const-string v2, "un"

    invoke-static {v2, v0, v1}, Lorg/newsclub/net/unix/AFAddressFamily;->registerAddressFamilyImpl(Ljava/lang/String;Lorg/newsclub/net/unix/AFAddressFamily;Lorg/newsclub/net/unix/AFAddressFamilyConfig;)Lorg/newsclub/net/unix/AFAddressFamily;

    move-result-object v0

    sput-object v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->AF_UNIX:Lorg/newsclub/net/unix/AFAddressFamily;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;-><init>()V

    .line 87
    return-void
.end method

.method public static getInstance()Lorg/newsclub/net/unix/AFUNIXSelectorProvider;
    .locals 1

    .line 96
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->INSTANCE:Lorg/newsclub/net/unix/AFUNIXSelectorProvider;

    return-object v0
.end method

.method public static provider()Lorg/newsclub/net/unix/AFUNIXSelectorProvider;
    .locals 1

    .line 105
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->getInstance()Lorg/newsclub/net/unix/AFUNIXSelectorProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addressFamily()Lorg/newsclub/net/unix/AFAddressFamily;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFAddressFamily<",
            "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
            ">;"
        }
    .end annotation

    .line 167
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->AF_UNIX:Lorg/newsclub/net/unix/AFAddressFamily;

    return-object v0
.end method

.method protected bridge synthetic newSocket()Lorg/newsclub/net/unix/AFSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->newSocket()Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object v0

    return-object v0
.end method

.method protected newSocket()Lorg/newsclub/net/unix/AFUNIXSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSocket;->newInstance()Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object v0

    return-object v0
.end method

.method protected newSocketPair(Lorg/newsclub/net/unix/AFSomeSocket;Lorg/newsclub/net/unix/AFSomeSocket;)Lorg/newsclub/net/unix/AFSocketPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lorg/newsclub/net/unix/AFSomeSocket;",
            ">(TP;TP;)",
            "Lorg/newsclub/net/unix/AFSocketPair<",
            "TP;>;"
        }
    .end annotation

    .line 110
    .local p1, "s1":Lorg/newsclub/net/unix/AFSomeSocket;, "TP;"
    .local p2, "s2":Lorg/newsclub/net/unix/AFSomeSocket;, "TP;"
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocketPair;

    invoke-direct {v0, p1, p2}, Lorg/newsclub/net/unix/AFUNIXSocketPair;-><init>(Lorg/newsclub/net/unix/AFSomeSocket;Lorg/newsclub/net/unix/AFSomeSocket;)V

    return-object v0
.end method

.method public bridge synthetic openDatagramChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openDatagramChannel()Lorg/newsclub/net/unix/AFUNIXDatagramChannel;

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

    .line 31
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openDatagramChannel(Ljava/net/ProtocolFamily;)Lorg/newsclub/net/unix/AFUNIXDatagramChannel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic openDatagramChannel()Lorg/newsclub/net/unix/AFDatagramChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openDatagramChannel()Lorg/newsclub/net/unix/AFUNIXDatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic openDatagramChannel(Ljava/net/ProtocolFamily;)Lorg/newsclub/net/unix/AFDatagramChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openDatagramChannel(Ljava/net/ProtocolFamily;)Lorg/newsclub/net/unix/AFUNIXDatagramChannel;

    move-result-object p1

    return-object p1
.end method

.method public openDatagramChannel()Lorg/newsclub/net/unix/AFUNIXDatagramChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;->newInstance()Lorg/newsclub/net/unix/AFUNIXDatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;->getChannel()Lorg/newsclub/net/unix/AFUNIXDatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public openDatagramChannel(Ljava/net/ProtocolFamily;)Lorg/newsclub/net/unix/AFUNIXDatagramChannel;
    .locals 1
    .param p1, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-super {p0, p1}, Lorg/newsclub/net/unix/AFSelectorProvider;->openDatagramChannel(Ljava/net/ProtocolFamily;)Lorg/newsclub/net/unix/AFDatagramChannel;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXDatagramChannel;

    return-object v0
.end method

.method public bridge synthetic openDatagramChannelPair()Lorg/newsclub/net/unix/AFSocketPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openDatagramChannelPair()Lorg/newsclub/net/unix/AFUNIXSocketPair;

    move-result-object v0

    return-object v0
.end method

.method public openDatagramChannelPair()Lorg/newsclub/net/unix/AFUNIXSocketPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFUNIXSocketPair<",
            "Lorg/newsclub/net/unix/AFUNIXDatagramChannel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-super {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;->openDatagramChannelPair()Lorg/newsclub/net/unix/AFSocketPair;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketPair;

    return-object v0
.end method

.method public bridge synthetic openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openServerSocketChannel()Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic openServerSocketChannel()Lorg/newsclub/net/unix/AFServerSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openServerSocketChannel()Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic openServerSocketChannel(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFServerSocketChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openServerSocketChannel(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public openServerSocketChannel()Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXServerSocket;->newInstance()Lorg/newsclub/net/unix/AFUNIXServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXServerSocket;->getChannel()Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public openServerSocketChannel(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;
    .locals 1
    .param p1, "sa"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-static {p1}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->unwrap(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v0

    invoke-static {v0}, Lorg/newsclub/net/unix/AFUNIXServerSocket;->bindOn(Lorg/newsclub/net/unix/AFUNIXSocketAddress;)Lorg/newsclub/net/unix/AFUNIXServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXServerSocket;->getChannel()Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic openSocketChannel()Ljava/nio/channels/SocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openSocketChannel()Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic openSocketChannel()Lorg/newsclub/net/unix/AFSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openSocketChannel()Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic openSocketChannel(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFSocketChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openSocketChannel(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public openSocketChannel()Lorg/newsclub/net/unix/AFUNIXSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-super {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;->openSocketChannel()Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    return-object v0
.end method

.method public openSocketChannel(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFUNIXSocketChannel;
    .locals 1
    .param p1, "sa"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-static {p1}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->unwrap(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v0

    invoke-static {v0}, Lorg/newsclub/net/unix/AFUNIXSocket;->connectTo(Lorg/newsclub/net/unix/AFUNIXSocketAddress;)Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSocket;->getChannel()Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic openSocketChannelPair()Lorg/newsclub/net/unix/AFSocketPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openSocketChannelPair()Lorg/newsclub/net/unix/AFUNIXSocketPair;

    move-result-object v0

    return-object v0
.end method

.method public openSocketChannelPair()Lorg/newsclub/net/unix/AFUNIXSocketPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/newsclub/net/unix/AFUNIXSocketPair<",
            "Lorg/newsclub/net/unix/AFUNIXSocketChannel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-super {p0}, Lorg/newsclub/net/unix/AFSelectorProvider;->openSocketChannelPair()Lorg/newsclub/net/unix/AFSocketPair;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketPair;

    return-object v0
.end method

.method protected protocolFamily()Ljava/net/ProtocolFamily;
    .locals 1

    .line 162
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXProtocolFamily;->UNIX:Lorg/newsclub/net/unix/AFUNIXProtocolFamily;

    return-object v0
.end method
