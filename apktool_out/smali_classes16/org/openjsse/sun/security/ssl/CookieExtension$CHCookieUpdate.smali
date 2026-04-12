.class final Lorg/openjsse/sun/security/ssl/CookieExtension$CHCookieUpdate;
.super Ljava/lang/Object;
.source "CookieExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CookieExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHCookieUpdate"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CookieExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CookieExtension$1;

    .line 180
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CookieExtension$CHCookieUpdate;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 7
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 191
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    move-object v1, p2

    check-cast v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 193
    .local v1, "clientHello":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_COOKIE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 194
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/CookieExtension$CookieSpec;

    .line 195
    .local v2, "spec":Lorg/openjsse/sun/security/ssl/CookieExtension$CookieSpec;
    if-nez v2, :cond_0

    .line 197
    return-void

    .line 200
    :cond_0
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 201
    invoke-virtual {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getHelloCookieManager(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/HelloCookieManager;

    move-result-object v3

    .line 202
    .local v3, "hcm":Lorg/openjsse/sun/security/ssl/HelloCookieManager;
    iget-object v4, v2, Lorg/openjsse/sun/security/ssl/CookieExtension$CookieSpec;->cookie:[B

    invoke-virtual {v3, v0, v1, v4}, Lorg/openjsse/sun/security/ssl/HelloCookieManager;->isCookieValid(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    return-void

    .line 203
    :cond_1
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v6, "unrecognized cookie"

    invoke-virtual {v4, v5, v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4
.end method
