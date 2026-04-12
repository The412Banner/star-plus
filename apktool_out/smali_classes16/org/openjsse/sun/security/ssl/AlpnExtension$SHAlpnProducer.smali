.class final Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnProducer;
.super Ljava/lang/Object;
.source "AlpnExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/AlpnExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SHAlpnProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/AlpnExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/AlpnExtension$1;

    .line 366
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/AlpnExtension$SHAlpnProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 10
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 379
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_ALPN:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 380
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnSpec;

    .line 381
    .local v1, "requestedAlps":Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnSpec;
    const/4 v2, 0x0

    const-string v3, "ssl,handshake"

    const/4 v4, 0x0

    const-string v5, ""

    if-nez v1, :cond_1

    .line 383
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_0

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore unavailable extension: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_ALPN:Lorg/openjsse/sun/security/ssl/SSLExtension;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    :cond_0
    iput-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    .line 390
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iput-object v5, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->applicationProtocol:Ljava/lang/String;

    .line 391
    return-object v4

    .line 394
    :cond_1
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnSpec;->applicationProtocols:Ljava/util/List;

    .line 395
    .local v6, "alps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    instance-of v7, v7, Lorg/openjsse/javax/net/ssl/SSLEngine;

    const-string v8, "No matching application layer protocol values"

    if-eqz v7, :cond_4

    .line 396
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->engineAPSelector:Ljava/util/function/BiFunction;

    if-eqz v7, :cond_6

    .line 397
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v7, Lorg/openjsse/javax/net/ssl/SSLEngine;

    .line 398
    .local v7, "engine":Lorg/openjsse/javax/net/ssl/SSLEngine;
    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v9, v9, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->engineAPSelector:Ljava/util/function/BiFunction;

    .line 399
    invoke-interface {v9, v7, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    .line 400
    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    .line 401
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    .line 402
    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 407
    .end local v7    # "engine":Lorg/openjsse/javax/net/ssl/SSLEngine;
    :cond_2
    goto :goto_0

    .line 403
    .restart local v7    # "engine":Lorg/openjsse/javax/net/ssl/SSLEngine;
    :cond_3
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->NO_APPLICATION_PROTOCOL:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v3, v8}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 409
    .end local v7    # "engine":Lorg/openjsse/javax/net/ssl/SSLEngine;
    :cond_4
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->socketAPSelector:Ljava/util/function/BiFunction;

    if-eqz v7, :cond_6

    .line 410
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v7, Lorg/openjsse/javax/net/ssl/SSLSocket;

    .line 411
    .local v7, "socket":Lorg/openjsse/javax/net/ssl/SSLSocket;
    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v9, v9, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->socketAPSelector:Ljava/util/function/BiFunction;

    .line 412
    invoke-interface {v9, v7, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    .line 413
    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    .line 414
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    .line 415
    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_0

    .line 416
    :cond_5
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->NO_APPLICATION_PROTOCOL:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v3, v8}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 423
    .end local v7    # "socket":Lorg/openjsse/javax/net/ssl/SSLSocket;
    :cond_6
    :goto_0
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    .line 424
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    .line 437
    :cond_7
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    sget-object v3, Lorg/openjsse/sun/security/ssl/AlpnExtension;->alpnCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 438
    .local v2, "bytes":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    .line 441
    .local v3, "listLen":I
    add-int/lit8 v4, v3, 0x2

    new-array v4, v4, [B

    .line 442
    .local v4, "extData":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 443
    .local v5, "m":Ljava/nio/ByteBuffer;
    invoke-static {v5, v3}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 444
    invoke-static {v5, v2}, Lorg/openjsse/sun/security/ssl/Record;->putBytes8(Ljava/nio/ByteBuffer;[B)V

    .line 447
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    iput-object v8, v7, Lorg/openjsse/sun/security/ssl/TransportContext;->applicationProtocol:Ljava/lang/String;

    .line 452
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v8, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_ALPN:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    return-object v4

    .line 426
    .end local v2    # "bytes":[B
    .end local v3    # "listLen":I
    .end local v4    # "extData":[B
    .end local v5    # "m":Ljava/nio/ByteBuffer;
    :cond_8
    :goto_1
    iput-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    .line 427
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iput-object v5, v7, Lorg/openjsse/sun/security/ssl/TransportContext;->applicationProtocol:Ljava/lang/String;

    .line 428
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_9

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 429
    const-string v3, "Ignore, no negotiated application layer protocol"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    :cond_9
    return-object v4
.end method
