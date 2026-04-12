.class public final Lorg/newsclub/net/unix/AFUNIXDatagramSocket;
.super Lorg/newsclub/net/unix/AFDatagramSocket;
.source "AFUNIXDatagramSocket.java"

# interfaces
.implements Lorg/newsclub/net/unix/AFUNIXSocketExtensions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/newsclub/net/unix/AFDatagramSocket<",
        "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
        ">;",
        "Lorg/newsclub/net/unix/AFUNIXSocketExtensions;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXDatagramSocketImpl;

    invoke-direct {v0, p1}, Lorg/newsclub/net/unix/AFUNIXDatagramSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Lorg/newsclub/net/unix/AFDatagramSocket;-><init>(Lorg/newsclub/net/unix/AFDatagramSocketImpl;)V

    .line 35
    return-void
.end method

.method public static newInstance()Lorg/newsclub/net/unix/AFUNIXDatagramSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXDatagramSocket$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;->newInstance(Lorg/newsclub/net/unix/AFDatagramSocket$Constructor;)Lorg/newsclub/net/unix/AFDatagramSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;

    return-object v0
.end method

.method static newInstance(Ljava/io/FileDescriptor;II)Lorg/newsclub/net/unix/AFUNIXDatagramSocket;
    .locals 1
    .param p0, "fdObj"    # Ljava/io/FileDescriptor;
    .param p1, "localPort"    # I
    .param p2, "remotePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXDatagramSocket$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;->newInstance(Lorg/newsclub/net/unix/AFDatagramSocket$Constructor;Ljava/io/FileDescriptor;II)Lorg/newsclub/net/unix/AFDatagramSocket;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;

    return-object v0
.end method


# virtual methods
.method public clearReceivedFileDescriptors()V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;->getAncillaryDataSupport()Lorg/newsclub/net/unix/AncillaryDataSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AncillaryDataSupport;->clearReceivedFileDescriptors()V

    .line 71
    return-void
.end method

.method public bridge synthetic getChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;->getChannel()Lorg/newsclub/net/unix/AFUNIXDatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChannel()Lorg/newsclub/net/unix/AFDatagramChannel;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;->getChannel()Lorg/newsclub/net/unix/AFUNIXDatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Lorg/newsclub/net/unix/AFUNIXDatagramChannel;
    .locals 1

    .line 60
    invoke-super {p0}, Lorg/newsclub/net/unix/AFDatagramSocket;->getChannel()Lorg/newsclub/net/unix/AFDatagramChannel;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXDatagramChannel;

    return-object v0
.end method

.method public getPeerCredentials()Lorg/newsclub/net/unix/AFUNIXSocketCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;->getAFImpl()Lorg/newsclub/net/unix/AFDatagramSocketImpl;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/AFUNIXDatagramSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocketImpl;->getPeerCredentials()Lorg/newsclub/net/unix/AFUNIXSocketCredentials;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReceivedFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;->getAncillaryDataSupport()Lorg/newsclub/net/unix/AncillaryDataSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AncillaryDataSupport;->getReceivedFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasOutboundFileDescriptors()Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;->getAncillaryDataSupport()Lorg/newsclub/net/unix/AncillaryDataSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AncillaryDataSupport;->hasOutboundFileDescriptors()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic newChannel()Lorg/newsclub/net/unix/AFDatagramChannel;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;->newChannel()Lorg/newsclub/net/unix/AFUNIXDatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method protected newChannel()Lorg/newsclub/net/unix/AFUNIXDatagramChannel;
    .locals 1

    .line 39
    new-instance v0, Lorg/newsclub/net/unix/AFUNIXDatagramChannel;

    invoke-direct {v0, p0}, Lorg/newsclub/net/unix/AFUNIXDatagramChannel;-><init>(Lorg/newsclub/net/unix/AFUNIXDatagramSocket;)V

    return-object v0
.end method

.method public varargs setOutboundFileDescriptors([Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fdescs"    # [Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXDatagramSocket;->getAncillaryDataSupport()Lorg/newsclub/net/unix/AncillaryDataSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AncillaryDataSupport;->setOutboundFileDescriptors([Ljava/io/FileDescriptor;)V

    .line 79
    return-void
.end method
