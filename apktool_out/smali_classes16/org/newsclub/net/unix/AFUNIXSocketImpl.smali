.class Lorg/newsclub/net/unix/AFUNIXSocketImpl;
.super Lorg/newsclub/net/unix/AFSocketImpl;
.source "AFUNIXSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/AFUNIXSocketImpl$Lenient;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/newsclub/net/unix/AFSocketImpl<",
        "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 27
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->AF_UNIX:Lorg/newsclub/net/unix/AFAddressFamily;

    invoke-direct {p0, v0, p1}, Lorg/newsclub/net/unix/AFSocketImpl;-><init>(Lorg/newsclub/net/unix/AFAddressFamily;Ljava/io/FileDescriptor;)V

    .line 28
    return-void
.end method


# virtual methods
.method final clearReceivedFileDescriptors()V
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AncillaryDataSupport;->clearReceivedFileDescriptors()V

    .line 62
    return-void
.end method

.method getPeerCredentials()Lorg/newsclub/net/unix/AFUNIXSocketCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketImpl;->fd:Ljava/io/FileDescriptor;

    new-instance v1, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;

    invoke-direct {v1}, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;-><init>()V

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/NativeUnixSocket;->peerCredentials(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFUNIXSocketCredentials;)Lorg/newsclub/net/unix/AFUNIXSocketCredentials;

    move-result-object v0

    return-object v0
.end method

.method final getReceivedFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AncillaryDataSupport;->getReceivedFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method final hasOutboundFileDescriptors()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AncillaryDataSupport;->hasOutboundFileDescriptors()Z

    move-result v0

    return v0
.end method

.method final receiveFileDescriptors([I)V
    .locals 1
    .param p1, "fds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AncillaryDataSupport;->receiveFileDescriptors([I)V

    .line 66
    return-void
.end method

.method final varargs setOutboundFileDescriptors([Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fdescs"    # [Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    invoke-virtual {v0, p1}, Lorg/newsclub/net/unix/AncillaryDataSupport;->setOutboundFileDescriptors([Ljava/io/FileDescriptor;)V

    .line 70
    return-void
.end method
