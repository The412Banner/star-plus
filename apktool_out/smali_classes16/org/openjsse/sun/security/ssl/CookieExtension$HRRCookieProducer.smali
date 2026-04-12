.class final Lorg/openjsse/sun/security/ssl/CookieExtension$HRRCookieProducer;
.super Ljava/lang/Object;
.source "CookieExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CookieExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HRRCookieProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CookieExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CookieExtension$1;

    .line 210
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CookieExtension$HRRCookieProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 221
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    move-object v1, p2

    check-cast v1, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;

    .line 224
    .local v1, "hrrm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->HRR_COOKIE:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 225
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    const-string v2, "ssl,handshake"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Ignore unavailable cookie extension"

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 232
    :cond_1
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 233
    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getHelloCookieManager(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/HelloCookieManager;

    move-result-object v2

    .line 235
    .local v2, "hcm":Lorg/openjsse/sun/security/ssl/HelloCookieManager;
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->clientHello:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    invoke-virtual {v2, v0, v3}, Lorg/openjsse/sun/security/ssl/HelloCookieManager;->createCookie(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)[B

    move-result-object v3

    .line 237
    .local v3, "cookie":[B
    array-length v4, v3

    add-int/lit8 v4, v4, 0x2

    new-array v4, v4, [B

    .line 238
    .local v4, "extData":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 239
    .local v5, "m":Ljava/nio/ByteBuffer;
    invoke-static {v5, v3}, Lorg/openjsse/sun/security/ssl/Record;->putBytes16(Ljava/nio/ByteBuffer;[B)V

    .line 241
    return-object v4
.end method
