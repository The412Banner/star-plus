.class public final Lorg/newsclub/net/unix/AFUNIXSocketChannel;
.super Lorg/newsclub/net/unix/AFSocketChannel;
.source "AFUNIXSocketChannel.java"

# interfaces
.implements Lorg/newsclub/net/unix/AFUNIXSocketExtensions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/newsclub/net/unix/AFSocketChannel<",
        "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
        ">;",
        "Lorg/newsclub/net/unix/AFUNIXSocketExtensions;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/newsclub/net/unix/AFUNIXSocket;)V
    .locals 1
    .param p1, "socket"    # Lorg/newsclub/net/unix/AFUNIXSocket;

    .line 33
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->getInstance()Lorg/newsclub/net/unix/AFUNIXSelectorProvider;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/newsclub/net/unix/AFSocketChannel;-><init>(Lorg/newsclub/net/unix/AFSocket;Lorg/newsclub/net/unix/AFSelectorProvider;)V

    .line 34
    return-void
.end method

.method public static open()Lorg/newsclub/net/unix/AFUNIXSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocketChannel$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSocketChannel$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocketChannel;->open(Lorg/newsclub/net/unix/AFSocketChannel$AFSocketSupplier;)Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    return-object v0
.end method

.method public static open(Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFUNIXSocketChannel;
    .locals 1
    .param p0, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXSocketChannel$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXSocketChannel$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lorg/newsclub/net/unix/AFSocketChannel;->open(Lorg/newsclub/net/unix/AFSocketChannel$AFSocketSupplier;Ljava/net/SocketAddress;)Lorg/newsclub/net/unix/AFSocketChannel;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    return-object v0
.end method


# virtual methods
.method public clearReceivedFileDescriptors()V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketChannel;->getAFSocket()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketExtensions;

    invoke-interface {v0}, Lorg/newsclub/net/unix/AFUNIXSocketExtensions;->clearReceivedFileDescriptors()V

    .line 65
    return-void
.end method

.method public getPeerCredentials()Lorg/newsclub/net/unix/AFUNIXSocketCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketChannel;->getAFSocket()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketExtensions;

    invoke-interface {v0}, Lorg/newsclub/net/unix/AFUNIXSocketExtensions;->getPeerCredentials()Lorg/newsclub/net/unix/AFUNIXSocketCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getReceivedFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketChannel;->getAFSocket()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketExtensions;

    invoke-interface {v0}, Lorg/newsclub/net/unix/AFUNIXSocketExtensions;->getReceivedFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasOutboundFileDescriptors()Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketChannel;->getAFSocket()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketExtensions;

    invoke-interface {v0}, Lorg/newsclub/net/unix/AFUNIXSocketExtensions;->hasOutboundFileDescriptors()Z

    move-result v0

    return v0
.end method

.method public varargs setOutboundFileDescriptors([Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fdescs"    # [Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketChannel;->getAFSocket()Lorg/newsclub/net/unix/AFSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketExtensions;

    invoke-interface {v0, p1}, Lorg/newsclub/net/unix/AFUNIXSocketExtensions;->setOutboundFileDescriptors([Ljava/io/FileDescriptor;)V

    .line 73
    return-void
.end method
