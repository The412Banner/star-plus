.class public final Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;
.super Lorg/newsclub/net/unix/AFServerSocketChannel;
.source "AFUNIXServerSocketChannel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/newsclub/net/unix/AFServerSocketChannel<",
        "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/newsclub/net/unix/AFUNIXServerSocket;)V
    .locals 1
    .param p1, "socket"    # Lorg/newsclub/net/unix/AFUNIXServerSocket;

    .line 29
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->getInstance()Lorg/newsclub/net/unix/AFUNIXSelectorProvider;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/newsclub/net/unix/AFServerSocketChannel;-><init>(Lorg/newsclub/net/unix/AFServerSocket;Lorg/newsclub/net/unix/AFSelectorProvider;)V

    .line 30
    return-void
.end method

.method public static open()Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXServerSocket;->newInstance()Lorg/newsclub/net/unix/AFUNIXServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXServerSocket;->getChannel()Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic accept()Ljava/nio/channels/SocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;->accept()Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic accept()Lorg/newsclub/net/unix/AFSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;->accept()Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public accept()Lorg/newsclub/net/unix/AFUNIXSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-super {p0}, Lorg/newsclub/net/unix/AFServerSocketChannel;->accept()Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    return-object v0
.end method
