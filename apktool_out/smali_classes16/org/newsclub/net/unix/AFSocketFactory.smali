.class public abstract Lorg/newsclub/net/unix/AFSocketFactory;
.super Ljavax/net/SocketFactory;
.source "AFSocketFactory.java"

# interfaces
.implements Lorg/newsclub/net/unix/AFSocketAddressFromHostname;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/AFSocketFactory$FixedAddressSocketFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lorg/newsclub/net/unix/AFSocketAddress;",
        ">",
        "Ljavax/net/SocketFactory;",
        "Lorg/newsclub/net/unix/AFSocketAddressFromHostname<",
        "TA;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 44
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketFactory;, "Lorg/newsclub/net/unix/AFSocketFactory<TA;>;"
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 45
    return-void
.end method

.method private connectTo(Ljava/net/SocketAddress;)Ljava/net/Socket;
    .locals 1
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketFactory;, "Lorg/newsclub/net/unix/AFSocketFactory<TA;>;"
    instance-of v0, p1, Lorg/newsclub/net/unix/AFSocketAddress;

    if-eqz v0, :cond_0

    .line 76
    move-object v0, p1

    check-cast v0, Lorg/newsclub/net/unix/AFSocketAddress;

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFSocketFactory;->connectTo(Lorg/newsclub/net/unix/AFSocketAddress;)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 79
    .local v0, "sock":Ljava/net/Socket;
    invoke-virtual {v0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 80
    return-object v0
.end method


# virtual methods
.method protected abstract connectTo(Lorg/newsclub/net/unix/AFSocketAddress;)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Ljava/net/Socket;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createSocket()Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public final createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketFactory;, "Lorg/newsclub/net/unix/AFSocketFactory<TA;>;"
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFSocketFactory;->isHostnameSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    if-ltz p2, :cond_0

    .line 93
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocketFactory;->addressFromHost(Ljava/lang/String;I)Ljava/net/SocketAddress;

    move-result-object v0

    .line 94
    .local v0, "socketAddress":Ljava/net/SocketAddress;
    invoke-direct {p0, v0}, Lorg/newsclub/net/unix/AFSocketFactory;->connectTo(Ljava/net/SocketAddress;)Ljava/net/Socket;

    move-result-object v1

    return-object v1

    .line 90
    .end local v0    # "socketAddress":Ljava/net/SocketAddress;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal port"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unsupported hostname"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketFactory;, "Lorg/newsclub/net/unix/AFSocketFactory<TA;>;"
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFSocketFactory;->isHostnameSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    if-ltz p4, :cond_0

    .line 107
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal local port"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unsupported hostname"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketFactory;, "Lorg/newsclub/net/unix/AFSocketFactory<TA;>;"
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFSocketFactory;->isInetAddressSupported(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "hostname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFSocketFactory;->isHostnameSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p0, v0, p2}, Lorg/newsclub/net/unix/AFSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    return-object v1

    .line 117
    :cond_0
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Unsupported hostname"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    .end local v0    # "hostname":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unsupported address"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketFactory;, "Lorg/newsclub/net/unix/AFSocketFactory<TA;>;"
    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFSocketFactory;->isInetAddressSupported(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    if-ltz p4, :cond_0

    .line 132
    invoke-virtual {p0, p1, p2}, Lorg/newsclub/net/unix/AFSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal local port"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unsupported address"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final isInetAddressSupported(Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 58
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketFactory;, "Lorg/newsclub/net/unix/AFSocketFactory<TA;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/AFSocketFactory;->isHostnameSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
