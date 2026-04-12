.class public Lorg/newsclub/net/unix/AFUNIXServerSocket;
.super Lorg/newsclub/net/unix/AFServerSocket;
.source "AFUNIXServerSocket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/newsclub/net/unix/AFServerSocket<",
        "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/newsclub/net/unix/AFServerSocket;-><init>()V

    .line 40
    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lorg/newsclub/net/unix/AFServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    .line 50
    return-void
.end method

.method public static bindOn(Ljava/io/File;Z)Lorg/newsclub/net/unix/AFUNIXServerSocket;
    .locals 1
    .param p0, "path"    # Ljava/io/File;
    .param p1, "deleteOnClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/newsclub/net/unix/AFUNIXServerSocket;->bindOn(Ljava/nio/file/Path;Z)Lorg/newsclub/net/unix/AFUNIXServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public static bindOn(Ljava/nio/file/Path;Z)Lorg/newsclub/net/unix/AFUNIXServerSocket;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "deleteOnClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda0;-><init>()V

    .line 128
    invoke-static {p0}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of(Ljava/nio/file/Path;)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    move-result-object v1

    .line 127
    invoke-static {v0, v1, p1}, Lorg/newsclub/net/unix/AFServerSocket;->bindOn(Lorg/newsclub/net/unix/AFServerSocket$Constructor;Lorg/newsclub/net/unix/AFSocketAddress;Z)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXServerSocket;

    return-object v0
.end method

.method public static bindOn(Lorg/newsclub/net/unix/AFUNIXSocketAddress;)Lorg/newsclub/net/unix/AFUNIXServerSocket;
    .locals 1
    .param p0, "addr"    # Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lorg/newsclub/net/unix/AFServerSocket;->bindOn(Lorg/newsclub/net/unix/AFServerSocket$Constructor;Lorg/newsclub/net/unix/AFSocketAddress;)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXServerSocket;

    return-object v0
.end method

.method public static bindOn(Lorg/newsclub/net/unix/AFUNIXSocketAddress;Z)Lorg/newsclub/net/unix/AFUNIXServerSocket;
    .locals 1
    .param p0, "addr"    # Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .param p1, "deleteOnClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0, p1}, Lorg/newsclub/net/unix/AFServerSocket;->bindOn(Lorg/newsclub/net/unix/AFServerSocket$Constructor;Lorg/newsclub/net/unix/AFSocketAddress;Z)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXServerSocket;

    return-object v0
.end method

.method public static forceBindOn(Lorg/newsclub/net/unix/AFUNIXSocketAddress;)Lorg/newsclub/net/unix/AFUNIXServerSocket;
    .locals 1
    .param p0, "forceAddr"    # Lorg/newsclub/net/unix/AFUNIXSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lorg/newsclub/net/unix/AFServerSocket;->forceBindOn(Lorg/newsclub/net/unix/AFServerSocket$Constructor;Lorg/newsclub/net/unix/AFSocketAddress;)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXServerSocket;

    return-object v0
.end method

.method public static newInstance()Lorg/newsclub/net/unix/AFUNIXServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lorg/newsclub/net/unix/AFServerSocket;->newInstance(Lorg/newsclub/net/unix/AFServerSocket$Constructor;)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXServerSocket;

    return-object v0
.end method

.method static newInstance(Ljava/io/FileDescriptor;II)Lorg/newsclub/net/unix/AFUNIXServerSocket;
    .locals 1
    .param p0, "fdObj"    # Ljava/io/FileDescriptor;
    .param p1, "localPort"    # I
    .param p2, "remotePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lorg/newsclub/net/unix/AFServerSocket;->newInstance(Lorg/newsclub/net/unix/AFServerSocket$Constructor;Ljava/io/FileDescriptor;II)Lorg/newsclub/net/unix/AFServerSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXServerSocket;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic accept()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXServerSocket;->accept()Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic accept()Lorg/newsclub/net/unix/AFSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXServerSocket;->accept()Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object v0

    return-object v0
.end method

.method public accept()Lorg/newsclub/net/unix/AFUNIXSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-super {p0}, Lorg/newsclub/net/unix/AFServerSocket;->accept()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocket;

    return-object v0
.end method

.method public bridge synthetic getChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXServerSocket;->getChannel()Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChannel()Lorg/newsclub/net/unix/AFServerSocketChannel;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXServerSocket;->getChannel()Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;
    .locals 1

    .line 59
    invoke-super {p0}, Lorg/newsclub/net/unix/AFServerSocket;->getChannel()Lorg/newsclub/net/unix/AFServerSocketChannel;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;

    return-object v0
.end method

.method protected bridge synthetic newChannel()Lorg/newsclub/net/unix/AFServerSocketChannel;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXServerSocket;->newChannel()Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method protected newChannel()Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;
    .locals 1

    .line 54
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;

    invoke-direct {v0, p0}, Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;-><init>(Lorg/newsclub/net/unix/AFUNIXServerSocket;)V

    return-object v0
.end method

.method protected bridge synthetic newImpl(Ljava/io/FileDescriptor;)Lorg/newsclub/net/unix/AFSocketImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFUNIXServerSocket;->newImpl(Ljava/io/FileDescriptor;)Lorg/newsclub/net/unix/AFUNIXSocketImpl;

    move-result-object p1

    return-object p1
.end method

.method protected newImpl(Ljava/io/FileDescriptor;)Lorg/newsclub/net/unix/AFUNIXSocketImpl;
    .locals 1
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 146
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocketImpl;

    invoke-direct {v0, p1}, Lorg/newsclub/net/unix/AFUNIXSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method protected bridge synthetic newSocketInstance()Lorg/newsclub/net/unix/AFSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXServerSocket;->newSocketInstance()Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object v0

    return-object v0
.end method

.method protected newSocketInstance()Lorg/newsclub/net/unix/AFUNIXSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSocket;->newInstance()Lorg/newsclub/net/unix/AFUNIXSocket;

    move-result-object v0

    return-object v0
.end method
