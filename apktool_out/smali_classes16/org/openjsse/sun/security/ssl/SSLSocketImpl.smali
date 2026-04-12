.class public final Lorg/openjsse/sun/security/ssl/SSLSocketImpl;
.super Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;
.source "SSLSocketImpl.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLTransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;,
        Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;
    }
.end annotation


# static fields
.field private static final trustNameService:Z


# instance fields
.field private final appInput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

.field private final appOutput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

.field private autoClose:Z

.field final conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

.field private final handshakeLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private isConnected:Z

.field private peerHost:Ljava/lang/String;

.field private final socketLock:Ljava/util/concurrent/locks/ReentrantLock;

.field final sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

.field private volatile tlsIsClosed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 130
    nop

    .line 131
    const-string v0, "jdk.tls.trustNameService"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->trustNameService:Z

    .line 130
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;)V
    .locals 8
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 140
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;-><init>()V

    .line 113
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appInput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    .line 114
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;Lorg/openjsse/sun/security/ssl/SSLSocketImpl$1;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appOutput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isConnected:Z

    .line 119
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tlsIsClosed:Z

    .line 121
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 122
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 141
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 142
    new-instance v0, Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;-><init>()V

    .line 143
    .local v0, "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    new-instance v7, Lorg/openjsse/sun/security/ssl/TransportContext;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;

    invoke-direct {v4, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    new-instance v5, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;

    invoke-direct {v5, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/TransportContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;Z)V

    iput-object v7, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 146
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V
    .locals 10
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "peerHost"    # Ljava/lang/String;
    .param p3, "peerPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;-><init>()V

    .line 113
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appInput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    .line 114
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;Lorg/openjsse/sun/security/ssl/SSLSocketImpl$1;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appOutput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isConnected:Z

    .line 119
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tlsIsClosed:Z

    .line 121
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 122
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 172
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 173
    new-instance v2, Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-direct {v2}, Lorg/openjsse/sun/security/ssl/HandshakeHash;-><init>()V

    .line 174
    .local v2, "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    new-instance v9, Lorg/openjsse/sun/security/ssl/TransportContext;

    new-instance v6, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;

    invoke-direct {v6, v2}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    new-instance v7, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;

    invoke-direct {v7, v2}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    const/4 v8, 0x1

    move-object v3, v9

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lorg/openjsse/sun/security/ssl/TransportContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;Z)V

    iput-object v9, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 177
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->peerHost:Ljava/lang/String;

    .line 178
    if-eqz p2, :cond_0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 180
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v3, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v1, v3

    :goto_0
    nop

    .line 181
    .local v1, "socketAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0, v1, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 182
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 10
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "peerHost"    # Ljava/lang/String;
    .param p3, "peerPort"    # I
    .param p4, "localAddr"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;-><init>()V

    .line 113
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appInput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    .line 114
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;Lorg/openjsse/sun/security/ssl/SSLSocketImpl$1;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appOutput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isConnected:Z

    .line 119
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tlsIsClosed:Z

    .line 121
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 122
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 216
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 217
    new-instance v2, Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-direct {v2}, Lorg/openjsse/sun/security/ssl/HandshakeHash;-><init>()V

    .line 218
    .local v2, "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    new-instance v9, Lorg/openjsse/sun/security/ssl/TransportContext;

    new-instance v6, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;

    invoke-direct {v6, v2}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    new-instance v7, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;

    invoke-direct {v7, v2}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    const/4 v8, 0x1

    move-object v3, v9

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lorg/openjsse/sun/security/ssl/TransportContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;Z)V

    iput-object v9, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 221
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->peerHost:Ljava/lang/String;

    .line 223
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v3}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->bind(Ljava/net/SocketAddress;)V

    .line 224
    if-eqz p2, :cond_0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 226
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v3, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v1, v3

    :goto_0
    nop

    .line 227
    .local v1, "socketAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0, v1, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 228
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Ljava/net/InetAddress;I)V
    .locals 9
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "peerPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;-><init>()V

    .line 113
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appInput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    .line 114
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;Lorg/openjsse/sun/security/ssl/SSLSocketImpl$1;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appOutput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isConnected:Z

    .line 119
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tlsIsClosed:Z

    .line 121
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 122
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 195
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 196
    new-instance v1, Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-direct {v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash;-><init>()V

    .line 197
    .local v1, "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    new-instance v8, Lorg/openjsse/sun/security/ssl/TransportContext;

    new-instance v5, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;

    invoke-direct {v5, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    new-instance v6, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;

    invoke-direct {v6, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    const/4 v7, 0x1

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lorg/openjsse/sun/security/ssl/TransportContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;Z)V

    iput-object v8, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 201
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 202
    .local v2, "socketAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0, v2, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 203
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 9
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "peerAddr"    # Ljava/net/InetAddress;
    .param p3, "peerPort"    # I
    .param p4, "localAddr"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;-><init>()V

    .line 113
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appInput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    .line 114
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;Lorg/openjsse/sun/security/ssl/SSLSocketImpl$1;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appOutput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isConnected:Z

    .line 119
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tlsIsClosed:Z

    .line 121
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 122
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 242
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 243
    new-instance v1, Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-direct {v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash;-><init>()V

    .line 244
    .local v1, "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    new-instance v8, Lorg/openjsse/sun/security/ssl/TransportContext;

    new-instance v5, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;

    invoke-direct {v5, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    new-instance v6, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;

    invoke-direct {v6, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    const/4 v7, 0x1

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lorg/openjsse/sun/security/ssl/TransportContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;Z)V

    iput-object v8, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 248
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v2}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->bind(Ljava/net/SocketAddress;)V

    .line 249
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 250
    .local v2, "socketAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0, v2, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 251
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Ljava/net/Socket;Ljava/io/InputStream;Z)V
    .locals 8
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "sock"    # Ljava/net/Socket;
    .param p3, "consumed"    # Ljava/io/InputStream;
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-direct {p0, p2, p3}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    .line 113
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appInput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    .line 114
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;Lorg/openjsse/sun/security/ssl/SSLSocketImpl$1;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appOutput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isConnected:Z

    .line 119
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tlsIsClosed:Z

    .line 121
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 122
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 263
    invoke-virtual {p2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 268
    new-instance v0, Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;-><init>()V

    .line 269
    .local v0, "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    new-instance v7, Lorg/openjsse/sun/security/ssl/TransportContext;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;

    invoke-direct {v4, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    new-instance v5, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;

    invoke-direct {v5, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/TransportContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;Z)V

    iput-object v7, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 272
    iput-boolean p4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->autoClose:Z

    .line 273
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->doneConnect()V

    .line 274
    return-void

    .line 264
    .end local v0    # "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Underlying socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Ljava/net/Socket;Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "sock"    # Ljava/net/Socket;
    .param p3, "peerHost"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-direct {p0, p2}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;-><init>(Ljava/net/Socket;)V

    .line 113
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appInput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    .line 114
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;Lorg/openjsse/sun/security/ssl/SSLSocketImpl$1;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appOutput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isConnected:Z

    .line 119
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tlsIsClosed:Z

    .line 121
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 122
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 295
    invoke-virtual {p2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 300
    new-instance v0, Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;-><init>()V

    .line 301
    .local v0, "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    new-instance v7, Lorg/openjsse/sun/security/ssl/TransportContext;

    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;

    invoke-direct {v4, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    new-instance v5, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;

    invoke-direct {v5, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/TransportContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;Z)V

    iput-object v7, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 304
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->peerHost:Ljava/lang/String;

    .line 305
    iput-boolean p5, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->autoClose:Z

    .line 306
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->doneConnect()V

    .line 307
    return-void

    .line 296
    .end local v0    # "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Underlying socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLConfiguration;)V
    .locals 8
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "sslConfig"    # Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    .line 154
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;-><init>()V

    .line 113
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appInput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    .line 114
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;-><init>(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;Lorg/openjsse/sun/security/ssl/SSLSocketImpl$1;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appOutput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isConnected:Z

    .line 119
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tlsIsClosed:Z

    .line 121
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 122
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 155
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 156
    new-instance v0, Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;-><init>()V

    .line 157
    .local v0, "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    new-instance v7, Lorg/openjsse/sun/security/ssl/TransportContext;

    new-instance v5, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;

    invoke-direct {v5, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    new-instance v6, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;

    invoke-direct {v6, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketOutputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/TransportContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/SSLConfiguration;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;)V

    iput-object v7, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 160
    return-void
.end method

.method static synthetic access$200(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/SSLSocketImpl;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->ensureNegotiated(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/SSLSocketImpl;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->readApplicationRecord(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/SSLSocketImpl;
    .param p1, "x1"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handleException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$500(Lorg/openjsse/sun/security/ssl/SSLSocketImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/SSLSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tryKeyUpdate()V

    return-void
.end method

.method private bruteForceCloseInput(Z)V
    .locals 3
    .param p1, "hasCloseReceipt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    if-eqz p1, :cond_2

    .line 739
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isInputShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 742
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->shutdownInput(Z)V

    .line 744
    :cond_0
    goto :goto_1

    .line 741
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 742
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->shutdownInput(Z)V

    .line 744
    :cond_1
    throw v1

    .line 746
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 751
    :try_start_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appInput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;->access$100(Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 753
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/InputRecord;->close()V

    .line 754
    goto :goto_0

    .line 753
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/InputRecord;->close()V

    .line 754
    throw v0

    .line 757
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->autoClose:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isLayered()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_5

    .line 758
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->shutdownInput()V

    .line 761
    :cond_5
    :goto_1
    return-void
.end method

.method private closeSocket(Z)V
    .locals 2
    .param p1, "selfInitiated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1701
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_1

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close the SSL connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "(initiative)"

    goto :goto_0

    :cond_0
    const-string v1, "(passive)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1706
    :cond_1
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->autoClose:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isLayered()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1708
    :cond_2
    if-eqz p1, :cond_4

    .line 1709
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1711
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->waitForClose()V

    goto :goto_2

    .line 1707
    :cond_3
    :goto_1
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->close()V

    .line 1714
    :cond_4
    :goto_2
    return-void
.end method

.method private decode(Ljava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 8
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1452
    if-nez p1, :cond_0

    .line 1453
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/openjsse/sun/security/ssl/SSLTransport;->decode(Lorg/openjsse/sun/security/ssl/TransportContext;[Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v0

    .local v0, "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    goto :goto_0

    .line 1456
    .end local v0    # "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/SSLTransport;->decode(Lorg/openjsse/sun/security/ssl/TransportContext;[Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    .restart local v0    # "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    :goto_0
    goto :goto_1

    .line 1459
    .end local v0    # "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    :catch_0
    move-exception v0

    .line 1461
    .local v0, "eofe":Ljava/io/EOFException;
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handleEOF(Ljava/io/EOFException;)Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v1

    move-object v0, v1

    .line 1465
    .local v0, "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    :goto_1
    sget-object v1, Lorg/openjsse/sun/security/ssl/Plaintext;->PLAINTEXT_NULL:Lorg/openjsse/sun/security/ssl/Plaintext;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    .line 1466
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/InputRecord;->seqNumIsHuge()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/InputRecord;->readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    .line 1467
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->atKeyLimit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1468
    :cond_1
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tryKeyUpdate()V

    .line 1471
    :cond_2
    return-object v0
.end method

.method private duplexCloseInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 713
    const/4 v0, 0x0

    .line 714
    .local v0, "hasCloseReceipt":Z
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 715
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v1

    if-nez v1, :cond_0

    .line 716
    const/4 v0, 0x1

    .line 719
    :cond_0
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->bruteForceCloseInput(Z)V

    .line 720
    return-void
.end method

.method private duplexCloseOutput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    const/4 v0, 0x0

    .line 655
    .local v0, "useUserCanceled":Z
    const/4 v1, 0x0

    .line 656
    .local v1, "hasCloseReceipt":Z
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-eqz v2, :cond_1

    .line 657
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v2

    if-nez v2, :cond_0

    .line 658
    const/4 v1, 0x1

    goto :goto_0

    .line 661
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 663
    :cond_1
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v2, :cond_3

    .line 665
    const/4 v0, 0x1

    .line 668
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 669
    .local v2, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v3

    if-nez v3, :cond_3

    .line 670
    :cond_2
    const/4 v1, 0x1

    .line 675
    .end local v2    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->closeNotify(Z)V

    .line 677
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_4

    .line 678
    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->bruteForceCloseInput(Z)V

    .line 680
    :cond_4
    return-void
.end method

.method private ensureNegotiated(Z)V
    .locals 2
    .param p1, "resumable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 852
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 853
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 857
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 860
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 861
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 862
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 866
    :cond_1
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->startHandshake(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 869
    nop

    .line 870
    return-void

    .line 868
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 863
    return-void

    .line 868
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 869
    throw v0

    .line 854
    :cond_3
    :goto_1
    return-void
.end method

.method private handleEOF(Ljava/io/EOFException;)Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 2
    .param p1, "eofe"    # Ljava/io/EOFException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1640
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->requireCloseNotify:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1656
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isInputCloseNotified:Z

    .line 1657
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->shutdownInput()V

    .line 1659
    sget-object v0, Lorg/openjsse/sun/security/ssl/Plaintext;->PLAINTEXT_NULL:Lorg/openjsse/sun/security/ssl/Plaintext;

    return-object v0

    .line 1642
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v0, :cond_2

    .line 1643
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Remote host terminated the handshake"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .local v0, "ssle":Ljavax/net/ssl/SSLException;
    goto :goto_1

    .line 1646
    .end local v0    # "ssle":Ljavax/net/ssl/SSLException;
    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string v1, "Remote host terminated the connection"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    .line 1650
    .restart local v0    # "ssle":Ljavax/net/ssl/SSLException;
    :goto_1
    if-eqz p1, :cond_3

    .line 1651
    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1653
    :cond_3
    throw v0
.end method

.method private handleException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1599
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1600
    const-string v0, "handling exception"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1604
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_5

    .line 1609
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    .line 1611
    .local v0, "isSSLException":Z
    if-eqz v0, :cond_2

    .line 1612
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_1

    .line 1613
    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    .local v1, "alert":Lorg/openjsse/sun/security/ssl/Alert;
    goto :goto_0

    .line 1615
    .end local v1    # "alert":Lorg/openjsse/sun/security/ssl/Alert;
    :cond_1
    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    .restart local v1    # "alert":Lorg/openjsse/sun/security/ssl/Alert;
    goto :goto_0

    .line 1618
    .end local v1    # "alert":Lorg/openjsse/sun/security/ssl/Alert;
    :cond_2
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_3

    .line 1619
    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    .restart local v1    # "alert":Lorg/openjsse/sun/security/ssl/Alert;
    goto :goto_0

    .line 1622
    .end local v1    # "alert":Lorg/openjsse/sun/security/ssl/Alert;
    :cond_3
    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    .line 1626
    .restart local v1    # "alert":Lorg/openjsse/sun/security/ssl/Alert;
    :goto_0
    instance-of v2, p1, Ljava/net/SocketException;

    if-eqz v2, :cond_4

    .line 1628
    :try_start_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v2, v1, p1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1631
    goto :goto_1

    .line 1629
    :catch_0
    move-exception v2

    .line 1633
    :goto_1
    move-object v2, p1

    check-cast v2, Ljava/net/SocketException;

    throw v2

    .line 1636
    :cond_4
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v2, v1, p1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 1605
    .end local v0    # "isSSLException":Z
    .end local v1    # "alert":Lorg/openjsse/sun/security/ssl/Alert;
    :cond_5
    move-object v0, p1

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method private readApplicationRecord(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1392
    nop

    :goto_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 1400
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1401
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/InputRecord;->bytesInCompletePacket()I

    move-result v0

    .line 1402
    .local v0, "inLen":I
    if-gez v0, :cond_0

    .line 1403
    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handleEOF(Ljava/io/EOFException;)Lorg/openjsse/sun/security/ssl/Plaintext;

    .line 1406
    return-object v1

    .line 1410
    :cond_0
    const v1, 0x8145

    if-gt v0, v1, :cond_4

    .line 1415
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1416
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1421
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    :try_start_1
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->decode(Ljava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1425
    .local v1, "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    :try_start_2
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1426
    nop

    .line 1427
    iget-byte v2, v1, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B

    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->APPLICATION_DATA:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v2, v3, :cond_2

    .line 1428
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-lez v2, :cond_2

    .line 1429
    return-object p1

    .line 1440
    .end local v1    # "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    :cond_2
    nop

    .line 1441
    .end local v0    # "inLen":I
    goto :goto_0

    .line 1425
    .restart local v0    # "inLen":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1426
    nop

    .end local v0    # "inLen":I
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    throw v1
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1434
    .restart local v0    # "inLen":I
    .restart local p1    # "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 1435
    .local v1, "ioe":Ljava/io/IOException;
    instance-of v2, v1, Ljavax/net/ssl/SSLException;

    if-nez v2, :cond_3

    .line 1436
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "readApplicationRecord"

    invoke-direct {v2, v3, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1438
    :cond_3
    throw v1

    .line 1431
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    .line 1433
    .local v1, "se":Ljava/io/IOException;
    :goto_1
    throw v1

    .line 1411
    .end local v1    # "se":Ljava/io/IOException;
    :cond_4
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal packet size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1446
    .end local v0    # "inLen":I
    :cond_5
    return-object v1
.end method

.method private readHandshakeRecord()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1361
    nop

    :goto_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1363
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->decode(Ljava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v0

    .line 1364
    .local v0, "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    iget-byte v1, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B

    sget-object v2, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 1366
    const/4 v1, 0x0

    return v1

    .line 1373
    .end local v0    # "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    :cond_0
    goto :goto_0

    .line 1371
    :catch_0
    move-exception v0

    .line 1372
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "readHandshakeRecord"

    invoke-direct {v1, v2, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1368
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 1370
    .local v0, "se":Ljava/io/IOException;
    :goto_1
    throw v0

    .line 1376
    .end local v0    # "se":Ljava/io/IOException;
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private shutdownInput(Z)V
    .locals 2
    .param p1, "checkCloseNotify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 774
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    return-void

    .line 778
    :cond_0
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_1

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "close inbound of SSLSocket"

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 786
    :cond_1
    if-eqz p1, :cond_5

    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isInputCloseNotified:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-nez v0, :cond_2

    goto :goto_0

    .line 788
    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "closing inbound before receiving peer\'s close_notify"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .end local p1    # "checkCloseNotify":Z
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    .restart local p1    # "checkCloseNotify":Z
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->closeInbound()V

    .line 793
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->autoClose:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isLayered()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->isInputShutdown()Z

    move-result v1

    if-nez v1, :cond_4

    .line 794
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->shutdownInput()V

    .line 796
    :cond_4
    throw v0

    .line 792
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->closeInbound()V

    .line 793
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->autoClose:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isLayered()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_7

    .line 794
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->shutdownInput()V

    .line 797
    :cond_7
    return-void
.end method

.method private startHandshake(Z)V
    .locals 4
    .param p1, "resumable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    const-string v0, "Couldn\'t kickstart handshaking"

    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isConnected:Z

    if-eqz v1, :cond_4

    .line 452
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    const-string v2, "Socket has been closed or broken"

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 453
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 457
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 460
    :try_start_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 461
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 466
    :try_start_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->kickstart()V

    .line 472
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v1, :cond_0

    .line 473
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->readHandshakeRecord()I
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "oe":Ljava/lang/Exception;
    :try_start_2
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handleException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 484
    .end local v0    # "oe":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 485
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v3, v0, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    .end local p1    # "resumable":Z
    throw v0

    .line 482
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local p1    # "resumable":Z
    :catch_2
    move-exception v0

    .line 483
    .local v0, "se":Ljava/net/SocketException;
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handleException(Ljava/lang/Exception;)V

    .line 489
    .end local v0    # "se":Ljava/net/SocketException;
    :cond_0
    :goto_0
    goto :goto_1

    .line 475
    :catch_3
    move-exception v1

    .line 476
    .local v1, "iioe":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_1

    .line 477
    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handleException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 491
    .end local v1    # "iioe":Ljava/io/InterruptedIOException;
    :goto_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 492
    nop

    .line 493
    return-void

    .line 479
    .restart local v1    # "iioe":Ljava/io/InterruptedIOException;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v3, v0, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    .end local p1    # "resumable":Z
    throw v0

    .line 462
    .end local v1    # "iioe":Ljava/io/InterruptedIOException;
    .restart local p1    # "resumable":Z
    :cond_2
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p1    # "resumable":Z
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 491
    .restart local p1    # "resumable":Z
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 492
    throw v0

    .line 454
    :cond_3
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_4
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tryKeyUpdate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1489
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 1490
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 1491
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    if-nez v0, :cond_1

    .line 1493
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1494
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "trigger key update"

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1496
    :cond_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->startHandshake()V

    .line 1498
    :cond_1
    return-void
.end method

.method private useImplicitHost(Z)V
    .locals 5
    .param p1, "useNameService"    # Z

    .line 1541
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 1542
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 1543
    return-void

    .line 1547
    :cond_0
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/HostNameAccessor;->getOriginalHostName(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    .line 1548
    .local v1, "originalHostname":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1549
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1551
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->peerHost:Ljava/lang/String;

    .line 1552
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->serverNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->noSniExtension:Z

    if-nez v2, :cond_1

    .line 1554
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->serverNames:Ljava/util/List;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->peerHost:Ljava/lang/String;

    .line 1555
    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/Utilities;->addToSNIServerNameList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->serverNames:Ljava/util/List;

    .line 1559
    :cond_1
    return-void

    .line 1563
    :cond_2
    if-nez p1, :cond_3

    .line 1565
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->peerHost:Ljava/lang/String;

    goto :goto_0

    .line 1568
    :cond_3
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->peerHost:Ljava/lang/String;

    .line 1570
    :goto_0
    return-void
.end method

.method private waitForClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1729
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const-string v1, "ssl"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1730
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "wait for close_notify or alert"

    invoke-static {v2, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1733
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1735
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->decode(Ljava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v0

    .line 1737
    .local v0, "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1738
    const-string v2, "discard plaintext while waiting for close"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1741
    .end local v0    # "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    :catch_0
    move-exception v0

    .line 1742
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->handleException(Ljava/lang/Exception;)V

    .line 1743
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1745
    :cond_2
    return-void
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .line 415
    if-eqz p1, :cond_0

    .line 419
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 421
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 424
    nop

    .line 425
    return-void

    .line 423
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 424
    throw v0

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-super {p0, p1}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->bind(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    const-string v0, "SSLSocket close failed"

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    return-void

    .line 594
    :cond_0
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const/4 v2, 0x0

    const-string v3, "ssl"

    if-eqz v1, :cond_1

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    const-string v1, "duplex close of SSLSocket"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    :cond_1
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 601
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isOutputShutdown()Z

    move-result v4

    if-nez v4, :cond_2

    .line 602
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->duplexCloseOutput()V

    .line 606
    :cond_2
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isInputShutdown()Z

    move-result v4

    if-nez v4, :cond_3

    .line 607
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->duplexCloseInput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 616
    :cond_3
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isClosed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 619
    :try_start_1
    invoke-direct {p0, v2}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->closeSocket(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tlsIsClosed:Z

    .line 627
    goto :goto_3

    .line 626
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 620
    :catch_0
    move-exception v2

    .line 622
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_2
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_4

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 623
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 626
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_1
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tlsIsClosed:Z

    .line 627
    throw v0

    .line 616
    :catchall_1
    move-exception v4

    goto :goto_4

    .line 610
    :catch_1
    move-exception v4

    .line 612
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_3
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_5

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 613
    const-string v5, "SSLSocket duplex close failed"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 616
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_5
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isClosed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 619
    :try_start_4
    invoke-direct {p0, v2}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->closeSocket(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 626
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 620
    :catch_2
    move-exception v2

    .line 622
    .restart local v2    # "ioe":Ljava/io/IOException;
    :try_start_5
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_4

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 623
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 626
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_2
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tlsIsClosed:Z

    .line 627
    throw v0

    .line 630
    :cond_6
    :goto_3
    return-void

    .line 616
    :goto_4
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    .line 619
    :try_start_6
    invoke-direct {p0, v2}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->closeSocket(Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 626
    :cond_7
    :goto_5
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tlsIsClosed:Z

    .line 627
    goto :goto_7

    .line 626
    :catchall_3
    move-exception v0

    goto :goto_6

    .line 620
    :catch_3
    move-exception v2

    .line 622
    .restart local v2    # "ioe":Ljava/io/IOException;
    :try_start_7
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_7

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 623
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    .line 626
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_6
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tlsIsClosed:Z

    .line 627
    throw v0

    .line 629
    :cond_8
    :goto_7
    throw v4
.end method

.method closeNotify(Z)V
    .locals 3
    .param p1, "useUserCanceled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 688
    if-eqz p1, :cond_0

    .line 689
    :try_start_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->USER_CANCELED:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->warning(Lorg/openjsse/sun/security/ssl/Alert;)V

    .line 693
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->CLOSE_NOTIFY:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->warning(Lorg/openjsse/sun/security/ssl/Alert;)V

    .line 694
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 697
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->close()V

    .line 700
    :cond_1
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->autoClose:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isLayered()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 701
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->shutdownOutput()V

    .line 704
    :cond_3
    return-void

    .line 694
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p1    # "useUserCanceled":Z
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 696
    .restart local p1    # "useUserCanceled":Z
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 697
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/OutputRecord;->close()V

    .line 700
    :cond_4
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->autoClose:Z

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isLayered()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->isOutputShutdown()Z

    move-result v1

    if-nez v1, :cond_6

    .line 701
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->shutdownOutput()V

    .line 703
    :cond_6
    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 2
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isLayered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 322
    invoke-super {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 323
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->doneConnect()V

    .line 324
    return-void

    .line 318
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Cannot handle non-Inet socket addresses."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method doneConnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1506
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1511
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->peerHost:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->peerHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1516
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->serverNames:Ljava/util/List;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->peerHost:Ljava/lang/String;

    .line 1517
    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/Utilities;->addToSNIServerNameList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->serverNames:Ljava/util/List;

    goto :goto_2

    .line 1512
    :cond_1
    :goto_0
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->trustNameService:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1514
    .local v0, "useNameService":Z
    :goto_1
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->useImplicitHost(Z)V

    .line 1515
    .end local v0    # "useNameService":Z
    nop

    .line 1521
    :goto_2
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1522
    .local v0, "sockInput":Ljava/io/InputStream;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v2, v0}, Lorg/openjsse/sun/security/ssl/InputRecord;->setReceiverStream(Ljava/io/InputStream;)V

    .line 1524
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 1525
    .local v2, "sockOutput":Ljava/io/OutputStream;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v3, v2}, Lorg/openjsse/sun/security/ssl/InputRecord;->setDeliverStream(Ljava/io/OutputStream;)V

    .line 1526
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v3, v2}, Lorg/openjsse/sun/security/ssl/OutputRecord;->setDeliverStream(Ljava/io/OutputStream;)V

    .line 1528
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1530
    .end local v0    # "sockInput":Ljava/io/InputStream;
    .end local v2    # "sockOutput":Ljava/io/OutputStream;
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1531
    nop

    .line 1532
    return-void

    .line 1530
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1531
    throw v0
.end method

.method public getApplicationProtocol()Ljava/lang/String;
    .locals 2

    .line 1313
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1315
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->applicationProtocol:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1315
    return-object v0

    .line 1317
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1318
    throw v0
.end method

.method public getEnableSessionCreation()Z
    .locals 2

    .line 573
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 575
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableSessionCreation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 575
    return v0

    .line 577
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 578
    throw v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 2

    .line 333
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 335
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledCipherSuites:Ljava/util/List;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/CipherSuite;->namesOf(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 335
    return-object v0

    .line 338
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 339
    throw v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 2

    .line 361
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 363
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->toStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 363
    return-object v0

    .line 366
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 367
    throw v0
.end method

.method public getHandshakeApplicationProtocol()Ljava/lang/String;
    .locals 2

    .line 1323
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1325
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->applicationProtocol:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1329
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1326
    return-object v0

    .line 1329
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1330
    nop

    .line 1332
    const/4 v0, 0x0

    return-object v0

    .line 1329
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1330
    throw v0
.end method

.method public getHandshakeApplicationProtocolSelector()Ljava/util/function/BiFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1349
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1351
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->socketAPSelector:Ljava/util/function/BiFunction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1353
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1351
    return-object v0

    .line 1353
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1354
    throw v0
.end method

.method public getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    .line 403
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 405
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :goto_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 405
    return-object v0

    .line 408
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 409
    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 831
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 833
    :try_start_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 837
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isConnected:Z

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 845
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appInput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 845
    return-object v0

    .line 842
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is already shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_2
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 848
    throw v0
.end method

.method public bridge synthetic getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 97
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 2

    .line 529
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 531
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUIRED:Lorg/openjsse/sun/security/ssl/ClientAuthType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 534
    :goto_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 531
    return v0

    .line 534
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 535
    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1177
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1179
    :try_start_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1183
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isConnected:Z

    if-eqz v0, :cond_1

    .line 1187
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1191
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->appOutput:Lorg/openjsse/sun/security/ssl/SSLSocketImpl$AppOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1191
    return-object v0

    .line 1188
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is already shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1184
    :cond_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1180
    :cond_2
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1193
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1194
    throw v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    .line 1666
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    .line 1671
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->getPort()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 97
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    .line 1288
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1290
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1290
    return-object v0

    .line 1292
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1293
    throw v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 3

    .line 389
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->ensureNegotiated(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    nop

    .line 398
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    return-object v0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "ioe":Ljava/io/IOException;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const-string v1, "handshake failed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    :cond_0
    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-direct {v1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;-><init>()V

    return-object v1
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSupportedCipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/CipherSuite;->namesOf(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 356
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSupportedProtocolVersions()Ljava/util/List;

    move-result-object v0

    .line 355
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->toStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 2

    .line 507
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 509
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 509
    return v0

    .line 511
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 512
    throw v0
.end method

.method public getWantClientAuth()Z
    .locals 2

    .line 552
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 554
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUESTED:Lorg/openjsse/sun/security/ssl/ClientAuthType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 557
    :goto_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 554
    return v0

    .line 557
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 558
    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .line 583
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tlsIsClosed:Z

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .line 801
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->autoClose:Z

    if-nez v0, :cond_0

    .line 802
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isLayered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 801
    :goto_0
    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .line 825
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->autoClose:Z

    if-nez v0, :cond_0

    .line 826
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isLayered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 825
    :goto_0
    return v0
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .line 430
    if-eqz p1, :cond_0

    .line 434
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 436
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 439
    nop

    .line 440
    return-void

    .line 438
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 439
    throw v0

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 563
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 565
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iput-boolean p1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableSessionCreation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 568
    nop

    .line 569
    return-void

    .line 567
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 568
    throw v0
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 2
    .param p1, "suites"    # [Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 346
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    .line 347
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/CipherSuite;->validValuesOf([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledCipherSuites:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 350
    nop

    .line 351
    return-void

    .line 349
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 350
    throw v0
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 2
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 372
    if-eqz p1, :cond_0

    .line 376
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 378
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    .line 379
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->namesOf([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 382
    nop

    .line 383
    return-void

    .line 381
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 382
    throw v0

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocols cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHandshakeApplicationProtocolSelector(Ljava/util/function/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1338
    .local p1, "selector":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljavax/net/ssl/SSLSocket;Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1340
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iput-object p1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->socketAPSelector:Ljava/util/function/BiFunction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1343
    nop

    .line 1344
    return-void

    .line 1342
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1343
    throw v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .line 1578
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1580
    :try_start_0
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->peerHost:Ljava/lang/String;

    .line 1581
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->serverNames:Ljava/util/List;

    .line 1582
    invoke-static {v1, p1}, Lorg/openjsse/sun/security/ssl/Utilities;->addToSNIServerNameList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->serverNames:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1585
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1586
    nop

    .line 1587
    return-void

    .line 1585
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1586
    throw v0
.end method

.method public setNeedClientAuth(Z)V
    .locals 2
    .param p1, "need"    # Z

    .line 517
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 519
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    if-eqz p1, :cond_0

    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUIRED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_NONE:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    :goto_0
    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 524
    nop

    .line 525
    return-void

    .line 523
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 524
    throw v0
.end method

.method public bridge synthetic setPerformancePreferences(III)V
    .locals 0

    .line 97
    invoke-super {p0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->setPerformancePreferences(III)V

    return-void
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 2
    .param p1, "params"    # Ljavax/net/ssl/SSLParameters;

    .line 1298
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1300
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 1302
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/OutputRecord;->changePacketSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1308
    nop

    .line 1309
    return-void

    .line 1307
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1308
    throw v0
.end method

.method public bridge synthetic setSoTimeout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 97
    invoke-super {p0, p1}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->setSoTimeout(I)V

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .line 497
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 499
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/TransportContext;->setUseClientMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 502
    nop

    .line 503
    return-void

    .line 501
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 502
    throw v0
.end method

.method public setWantClientAuth(Z)V
    .locals 2
    .param p1, "want"    # Z

    .line 540
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 542
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    if-eqz p1, :cond_0

    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUESTED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_NONE:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    :goto_0
    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 547
    nop

    .line 548
    return-void

    .line 546
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 547
    throw v0
.end method

.method public shutdown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1681
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1682
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    const-string v0, "close the underlying socket"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1687
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->isInputCloseNotified:Z

    if-eqz v2, :cond_1

    .line 1689
    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->closeSocket(Z)V

    goto :goto_0

    .line 1692
    :cond_1
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->closeSocket(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1695
    :goto_0
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tlsIsClosed:Z

    .line 1696
    goto :goto_1

    .line 1695
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->tlsIsClosed:Z

    .line 1696
    throw v1

    .line 1698
    :cond_2
    :goto_1
    return-void
.end method

.method public shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->shutdownInput(Z)V

    .line 768
    return-void
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    return-void

    .line 813
    :cond_0
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_1

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "close outbound of SSLSocket"

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 816
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->closeOutbound()V

    .line 818
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->autoClose:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->isLayered()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 819
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->shutdownOutput()V

    .line 821
    :cond_3
    return-void
.end method

.method public startHandshake()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->startHandshake(Z)V

    .line 445
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/BaseSSLSocketImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDelegatedTask()Z
    .locals 1

    .line 1676
    const/4 v0, 0x0

    return v0
.end method
