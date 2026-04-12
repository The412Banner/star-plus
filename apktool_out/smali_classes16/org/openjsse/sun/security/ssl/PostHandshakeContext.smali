.class final Lorg/openjsse/sun/security/ssl/PostHandshakeContext;
.super Lorg/openjsse/sun/security/ssl/HandshakeContext;
.source "PostHandshakeContext.java"


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/TransportContext;)V
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/TransportContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/HandshakeContext;-><init>(Lorg/openjsse/sun/security/ssl/TransportContext;)V

    .line 43
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/TransportContext;->conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 49
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getLocalSupportedSignatureSchemes()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    .line 54
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->KEY_UPDATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 56
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->KEY_UPDATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NEW_SESSION_TICKET:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 59
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NEW_SESSION_TICKET:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->KEY_UPDATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 63
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->KEY_UPDATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->handshakeFinished:Z

    .line 68
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post-handshake not supported in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method

.method static isConsumable(Lorg/openjsse/sun/security/ssl/TransportContext;B)Z
    .locals 1
    .param p0, "context"    # Lorg/openjsse/sun/security/ssl/TransportContext;
    .param p1, "handshakeType"    # B

    .line 98
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->KEY_UPDATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-ne p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    return v0

    .line 104
    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NEW_SESSION_TICKET:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-ne p1, v0, :cond_1

    .line 107
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    return v0

    .line 111
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method dispatch(BLjava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "handshakeType"    # B
    .param p2, "fragment"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 78
    .local v0, "consumer":Lorg/openjsse/sun/security/ssl/SSLConsumer;
    if-eqz v0, :cond_0

    .line 85
    :try_start_0
    invoke-interface {v0, p0, p2}, Lorg/openjsse/sun/security/ssl/SSLConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    nop

    .line 95
    return-void

    .line 90
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 91
    .local v1, "be":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->DECODE_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal handshake message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 93
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->nameOf(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-virtual {v2, v3, v4, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 86
    .end local v1    # "be":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 87
    .local v1, "unsoe":Ljava/lang/UnsupportedOperationException;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported post-handshake message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 89
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->nameOf(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-virtual {v2, v3, v4, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 79
    .end local v1    # "unsoe":Ljava/lang/UnsupportedOperationException;
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected post-handshake message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 81
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->nameOf(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method kickstart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->kickstart(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 73
    return-void
.end method
