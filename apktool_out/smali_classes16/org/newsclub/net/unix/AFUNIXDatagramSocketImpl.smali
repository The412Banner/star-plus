.class final Lorg/newsclub/net/unix/AFUNIXDatagramSocketImpl;
.super Lorg/newsclub/net/unix/AFDatagramSocketImpl;
.source "AFUNIXDatagramSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/newsclub/net/unix/AFDatagramSocketImpl<",
        "Lorg/newsclub/net/unix/AFUNIXSocketAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    sget-object v0, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->AF_UNIX:Lorg/newsclub/net/unix/AFAddressFamily;

    sget-object v1, Lorg/newsclub/net/unix/AFSocketType;->SOCK_DGRAM:Lorg/newsclub/net/unix/AFSocketType;

    invoke-direct {p0, v0, p1, v1}, Lorg/newsclub/net/unix/AFDatagramSocketImpl;-><init>(Lorg/newsclub/net/unix/AFAddressFamily;Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFSocketType;)V

    .line 26
    return-void
.end method


# virtual methods
.method getPeerCredentials()Lorg/newsclub/net/unix/AFUNIXSocketCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lorg/newsclub/net/unix/AFUNIXDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    new-instance v1, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;

    invoke-direct {v1}, Lorg/newsclub/net/unix/AFUNIXSocketCredentials;-><init>()V

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/NativeUnixSocket;->peerCredentials(Ljava/io/FileDescriptor;Lorg/newsclub/net/unix/AFUNIXSocketCredentials;)Lorg/newsclub/net/unix/AFUNIXSocketCredentials;

    move-result-object v0

    return-object v0
.end method
