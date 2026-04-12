.class public final Lorg/openjsse/sun/security/ssl/SSLSocketFactoryImpl;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLSocketFactoryImpl.java"


# instance fields
.field private final context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 54
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultSSLContext;->getDefaultImpl()Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 55
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;)V
    .locals 0
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 60
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 62
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2

    .line 72
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-direct {v0, v1, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    new-instance v6, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-object v6
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-direct {v0, v1, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 7
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    new-instance v6, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-object v6
.end method

.method public createSocket(Ljava/net/Socket;Ljava/io/InputStream;Z)Ljava/net/Socket;
    .locals 2
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "consumed"    # Ljava/io/InputStream;
    .param p3, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    if-eqz p1, :cond_0

    .line 121
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Ljava/net/Socket;Ljava/io/InputStream;Z)V

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the existing socket cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 7
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    new-instance v6, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Ljava/net/Socket;Ljava/lang/String;IZ)V

    return-object v6
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 2

    .line 183
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getDefaultCipherSuites(Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/CipherSuite;->namesOf(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSupportedCipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/CipherSuite;->namesOf(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
