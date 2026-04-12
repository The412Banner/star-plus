.class abstract Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;
.super Lorg/openjsse/javax/net/ssl/SSLSocket;
.source "BaseSSLSocketImpl.java"


# static fields
.field private static final PROP_NAME:Ljava/lang/String; = "com.sun.net.ssl.requireCloseNotify"

.field static final requireCloseNotify:Z


# instance fields
.field private final consumedInput:Ljava/io/InputStream;

.field private final self:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 94
    nop

    .line 95
    const-string v0, "com.sun.net.ssl.requireCloseNotify"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->requireCloseNotify:Z

    .line 94
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;-><init>()V

    .line 63
    iput-object p0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->consumedInput:Ljava/io/InputStream;

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .line 68
    invoke-direct {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->consumedInput:Ljava/io/InputStream;

    .line 71
    return-void
.end method

.method constructor <init>(Ljava/net/Socket;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "consumed"    # Ljava/io/InputStream;

    .line 74
    invoke-direct {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    .line 76
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->consumedInput:Ljava/io/InputStream;

    .line 77
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "bindpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 125
    invoke-super {p0, p1}, Lorg/openjsse/javax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 131
    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Underlying socket should already be connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 629
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->close()V

    goto :goto_0

    .line 631
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 633
    :goto_0
    return-void
.end method

.method public final connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 175
    return-void
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 276
    :try_start_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 293
    goto :goto_2

    .line 292
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 277
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e1":Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v1, p0, :cond_0

    .line 280
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :cond_0
    goto :goto_0

    .line 292
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 293
    throw v0

    .line 282
    .restart local v0    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v1

    goto :goto_0

    .line 294
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method public final getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 109
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public final getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 306
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 308
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 606
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 609
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->consumedInput:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 610
    new-instance v0, Ljava/io/SequenceInputStream;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->consumedInput:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    .line 611
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 610
    return-object v0

    .line 614
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 517
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getKeepAlive()Z

    move-result v0

    return v0

    .line 519
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 321
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalPort()I
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 345
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getLocalPort()I

    move-result v0

    return v0

    .line 347
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 140
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getOOBInline()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 444
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "This method is ineffective, since sending urgent data is not supported by SSLSockets"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 620
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 623
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 333
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getPort()I

    move-result v0

    return v0

    .line 335
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public final getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 491
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getReceiveBufferSize()I

    move-result v0

    return v0

    .line 493
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 153
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 571
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getReuseAddress()Z

    move-result v0

    return v0

    .line 573
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public final getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 473
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getSendBufferSize()I

    move-result v0

    return v0

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public final getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 405
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getSoLinger()I

    move-result v0

    return v0

    .line 407
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public final getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 455
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getSoTimeout()I

    move-result v0

    return v0

    .line 457
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public final getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 378
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getTcpNoDelay()Z

    move-result v0

    return v0

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public final getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 545
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getTrafficClass()I

    move-result v0

    return v0

    .line 547
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public final isBound()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 197
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->isBound()Z

    move-result v0

    return v0

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 184
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->isConnected()Z

    move-result v0

    return v0

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 246
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->isInputShutdown()Z

    move-result v0

    return v0

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method isLayered()Z
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 259
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->isOutputShutdown()Z

    move-result v0

    return v0

    .line 261
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public final sendUrgentData(I)V
    .locals 2
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "This method is not supported by SSLSockets"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setKeepAlive(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 504
    invoke-super {p0, p1}, Lorg/openjsse/javax/net/ssl/SSLSocket;->setKeepAlive(Z)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 508
    :goto_0
    return-void
.end method

.method public final setOOBInline(Z)V
    .locals 2
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "This method is ineffective, since sending urgent data is not supported by SSLSockets"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPerformancePreferences(III)V
    .locals 1
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 585
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 586
    invoke-super {p0, p1, p2, p3}, Lorg/openjsse/javax/net/ssl/SSLSocket;->setPerformancePreferences(III)V

    goto :goto_0

    .line 589
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 592
    :goto_0
    return-void
.end method

.method public final setReceiveBufferSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 482
    invoke-super {p0, p1}, Lorg/openjsse/javax/net/ssl/SSLSocket;->setReceiveBufferSize(I)V

    goto :goto_0

    .line 484
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 486
    :goto_0
    return-void
.end method

.method public final setReuseAddress(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 558
    invoke-super {p0, p1}, Lorg/openjsse/javax/net/ssl/SSLSocket;->setReuseAddress(Z)V

    goto :goto_0

    .line 560
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 562
    :goto_0
    return-void
.end method

.method public final setSendBufferSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 464
    invoke-super {p0, p1}, Lorg/openjsse/javax/net/ssl/SSLSocket;->setSendBufferSize(I)V

    goto :goto_0

    .line 466
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 468
    :goto_0
    return-void
.end method

.method public final setSoLinger(ZI)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 392
    invoke-super {p0, p1, p2}, Lorg/openjsse/javax/net/ssl/SSLSocket;->setSoLinger(ZI)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 396
    :goto_0
    return-void
.end method

.method public declared-synchronized setSoTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 637
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 638
    invoke-super {p0, p1}, Lorg/openjsse/javax/net/ssl/SSLSocket;->setSoTimeout(I)V

    goto :goto_0

    .line 640
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    :goto_0
    monitor-exit p0

    return-void

    .line 636
    .end local p1    # "timeout":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setTcpNoDelay(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 362
    invoke-super {p0, p1}, Lorg/openjsse/javax/net/ssl/SSLSocket;->setTcpNoDelay(Z)V

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 366
    :goto_0
    return-void
.end method

.method public final setTrafficClass(I)V
    .locals 1
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 531
    invoke-super {p0, p1}, Lorg/openjsse/javax/net/ssl/SSLSocket;->setTrafficClass(I)V

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 535
    :goto_0
    return-void
.end method

.method public shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 217
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->shutdownInput()V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 221
    :goto_0
    return-void
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 233
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->shutdownOutput()V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 237
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 596
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 597
    invoke-super {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 600
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
