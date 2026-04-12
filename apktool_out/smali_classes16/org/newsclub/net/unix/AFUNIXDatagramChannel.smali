.class public final Lorg/newsclub/net/unix/AFUNIXDatagramChannel;
.super Lorg/newsclub/net/unix/AFDatagramChannel;
.source "AFUNIXDatagramChannel.java"

# interfaces
.implements Lorg/newsclub/net/unix/AFUNIXSocketExtensions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/newsclub/net/unix/AFDatagramChannel<",
        "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
        ">;",
        "Lorg/newsclub/net/unix/AFUNIXSocketExtensions;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/newsclub/net/unix/AFUNIXDatagramSocket;)V
    .locals 1
    .param p1, "socket"    # Lorg/newsclub/net/unix/AFUNIXDatagramSocket;

    .line 34
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->getInstance()Lorg/newsclub/net/unix/AFUNIXSelectorProvider;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/newsclub/net/unix/AFDatagramChannel;-><init>(Lorg/newsclub/net/unix/AFSelectorProvider;Lorg/newsclub/net/unix/AFDatagramSocket;)V

    .line 35
    return-void
.end method

.method public static open()Lorg/newsclub/net/unix/AFUNIXDatagramChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->provider()Lorg/newsclub/net/unix/AFUNIXSelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openDatagramChannel()Lorg/newsclub/net/unix/AFUNIXDatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public static open(Ljava/net/ProtocolFamily;)Lorg/newsclub/net/unix/AFUNIXDatagramChannel;
    .locals 1
    .param p0, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->provider()Lorg/newsclub/net/unix/AFUNIXSelectorProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/newsclub/net/unix/AFUNIXSelectorProvider;->openDatagramChannel(Ljava/net/ProtocolFamily;)Lorg/newsclub/net/unix/AFUNIXDatagramChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearReceivedFileDescriptors()V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramChannel;->getAFSocket()Lorg/newsclub/net/unix/AFDatagramSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketExtensions;

    invoke-interface {v0}, Lorg/newsclub/net/unix/AFUNIXSocketExtensions;->clearReceivedFileDescriptors()V

    .line 70
    return-void
.end method

.method public getPeerCredentials()Lorg/newsclub/net/unix/AFUNIXSocketCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramChannel;->getAFSocket()Lorg/newsclub/net/unix/AFDatagramSocket;

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

    .line 64
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramChannel;->getAFSocket()Lorg/newsclub/net/unix/AFDatagramSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketExtensions;

    invoke-interface {v0}, Lorg/newsclub/net/unix/AFUNIXSocketExtensions;->getReceivedFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasOutboundFileDescriptors()Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramChannel;->getAFSocket()Lorg/newsclub/net/unix/AFDatagramSocket;

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

    .line 74
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramChannel;->getAFSocket()Lorg/newsclub/net/unix/AFDatagramSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXSocketExtensions;

    invoke-interface {v0, p1}, Lorg/newsclub/net/unix/AFUNIXSocketExtensions;->setOutboundFileDescriptors([Ljava/io/FileDescriptor;)V

    .line 78
    return-void
.end method
