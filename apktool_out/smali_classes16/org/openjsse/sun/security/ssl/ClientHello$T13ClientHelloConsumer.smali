.class final Lorg/openjsse/sun/security/ssl/ClientHello$T13ClientHelloConsumer;
.super Ljava/lang/Object;
.source "ClientHello.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ClientHello;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T13ClientHelloConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1115
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ClientHello$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ClientHello$1;

    .line 1111
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ClientHello$T13ClientHelloConsumer;-><init>()V

    return-void
.end method

.method private goHelloRetryRequest(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)V
    .locals 5
    .param p1, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "clientHello"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1175
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_RETRY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 1177
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 1176
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 1178
    .local v0, "handshakeProducer":Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    if-eqz v0, :cond_1

    .line 1179
    invoke-interface {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    .line 1186
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1191
    return-void

    .line 1188
    :cond_0
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown handshake producers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 1182
    :cond_1
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No HelloRetryRequest producer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method private goServerHello(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)V
    .locals 6
    .param p1, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "clientHello"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1198
    iget-object v0, p2, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iput-object v0, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->clientHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    .line 1203
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v0, :cond_0

    .line 1204
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 1205
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/OutputRecord;->setVersion(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 1212
    :cond_0
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v3, v0, v1

    const/4 v1, 0x5

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v3, v0, v1

    .line 1229
    .local v0, "probableHandshakeMessages":[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1230
    .local v3, "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    iget-byte v5, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 1231
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 1232
    .local v4, "handshakeProducer":Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    if-eqz v4, :cond_1

    .line 1233
    invoke-interface {v4, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    .line 1229
    .end local v3    # "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .end local v4    # "handshakeProducer":Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1236
    :cond_2
    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 10
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1121
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 1122
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    move-object v1, p2

    check-cast v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 1128
    .local v1, "clientHello":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v2, :cond_1

    .line 1135
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->consumers:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    .line 1136
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/ChangeCipherSpec;->t13Consumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 1135
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    .line 1145
    const/4 v3, 0x2

    new-array v4, v3, [Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLExtension;->PSK_KEY_EXCHANGE_MODES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    aput-object v5, v4, v2

    .line 1149
    .local v4, "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v5, v0, v4}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnLoad(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 1157
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/4 v8, 0x3

    new-array v8, v8, [Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v9, Lorg/openjsse/sun/security/ssl/SSLExtension;->PSK_KEY_EXCHANGE_MODES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    aput-object v9, v8, v6

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    aput-object v6, v8, v2

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    aput-object v2, v8, v3

    .line 1159
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1157
    invoke-virtual {v5, v7, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getExclusiveExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;Ljava/util/List;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v2

    .line 1163
    .end local v4    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .local v2, "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v3, v0, v2}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnLoad(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 1165
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1167
    invoke-direct {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/ClientHello$T13ClientHelloConsumer;->goHelloRetryRequest(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)V

    goto :goto_0

    .line 1169
    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/ClientHello$T13ClientHelloConsumer;->goServerHello(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)V

    .line 1171
    :goto_0
    return-void

    .line 1129
    .end local v2    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_1
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "Received unexpected renegotiation handshake message"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method
