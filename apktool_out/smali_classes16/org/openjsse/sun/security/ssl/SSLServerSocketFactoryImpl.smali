.class public final Lorg/openjsse/sun/security/ssl/SSLServerSocketFactoryImpl;
.super Ljavax/net/ssl/SSLServerSocketFactory;
.source "SSLServerSocketFactoryImpl.java"


# static fields
.field private static final DEFAULT_BACKLOG:I = 0x32


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

    .line 48
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    .line 49
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLContextImpl$DefaultSSLContext;->getDefaultImpl()Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 50
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;)V
    .locals 0
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 55
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 57
    return-void
.end method


# virtual methods
.method public createServerSocket()Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;)V

    return-object v0
.end method

.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    const/16 v2, 0x32

    invoke-direct {v0, v1, p1, v2}, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;II)V

    return-object v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 2
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-direct {v0, v1, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;II)V

    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 2
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "ifAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;IILjava/net/InetAddress;)V

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getDefaultCipherSuites(Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/CipherSuite;->namesOf(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketFactoryImpl;->context:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSupportedCipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/CipherSuite;->namesOf(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
