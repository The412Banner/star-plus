.class final Lorg/openjsse/sun/security/ssl/ClientHello$D12ClientHelloConsumer;
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
    name = "D12ClientHelloConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1248
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ClientHello$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ClientHello$1;

    .line 1244
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ClientHello$D12ClientHelloConsumer;-><init>()V

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

    .line 1254
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 1255
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    move-object v1, p2

    check-cast v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 1273
    .local v1, "clientHello":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-eqz v2, :cond_3

    .line 1274
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->secureRenegotiation:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lorg/openjsse/sun/security/ssl/HandshakeContext;->allowUnsafeRenegotiation:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1276
    :cond_0
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "Unsafe renegotiation is not allowed"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 1280
    :cond_1
    :goto_0
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->rejectClientInitiatedRenego:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->kickstartMessageDelivered:Z

    if-eqz v2, :cond_2

    goto :goto_1

    .line 1282
    :cond_2
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "Client initiated renegotiation is not allowed"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 1288
    :cond_3
    :goto_1
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SessionId;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_b

    .line 1289
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 1290
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    .line 1291
    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SessionId;->getId()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->get([B)Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    move-result-object v2

    .line 1293
    .local v2, "previous":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    if-eqz v2, :cond_4

    .line 1294
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    move v5, v4

    .line 1295
    .local v5, "resumingSession":Z
    :goto_2
    const-string v6, "ssl,handshake,verbose"

    if-nez v5, :cond_5

    .line 1296
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_5

    .line 1297
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1298
    const-string v7, "Can\'t resume, the existing session is not rejoinable"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1304
    :cond_5
    if-eqz v5, :cond_6

    .line 1305
    nop

    .line 1306
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v7

    .line 1307
    .local v7, "sessionProtocol":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-eq v7, v8, :cond_6

    .line 1308
    const/4 v5, 0x0

    .line 1309
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_6

    .line 1310
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1311
    const-string v8, "Can\'t resume, not the same protocol version"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1318
    .end local v7    # "sessionProtocol":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_6
    if-eqz v5, :cond_7

    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    sget-object v8, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUIRED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    if-ne v7, v8, :cond_7

    .line 1322
    :try_start_0
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPeerPrincipal()Ljava/security/Principal;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    goto :goto_3

    .line 1323
    :catch_0
    move-exception v7

    .line 1324
    .local v7, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v5, 0x0

    .line 1325
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_7

    .line 1326
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1327
    const-string v8, "Can\'t resume, client authentication is required"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1335
    .end local v7    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :cond_7
    :goto_3
    if-eqz v5, :cond_9

    .line 1336
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSuite()Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v7

    .line 1337
    .local v7, "suite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    invoke-virtual {v0, v7}, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isNegotiable(Lorg/openjsse/sun/security/ssl/CipherSuite;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuites:Ljava/util/List;

    .line 1338
    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1339
    :cond_8
    const/4 v5, 0x0

    .line 1340
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_9

    .line 1341
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1342
    const-string v6, "Can\'t resume, the session cipher suite is absent"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1351
    .end local v7    # "suite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :cond_9
    iput-boolean v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    .line 1352
    if-eqz v5, :cond_a

    move-object v6, v2

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    :goto_4
    iput-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 1355
    .end local v2    # "previous":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .end local v5    # "resumingSession":Z
    :cond_b
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 1356
    invoke-virtual {v2, v5}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getHelloCookieManager(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/HelloCookieManager;

    move-result-object v2

    .line 1357
    .local v2, "hcm":Lorg/openjsse/sun/security/ssl/HelloCookieManager;
    iget-boolean v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    if-nez v5, :cond_c

    .line 1358
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->access$1100(Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)[B

    move-result-object v5

    invoke-virtual {v2, v0, v1, v5}, Lorg/openjsse/sun/security/ssl/HelloCookieManager;->isCookieValid(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;[B)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1364
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_VERIFY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 1365
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_VERIFY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 1364
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_VERIFY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v3, p1, v1}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    .line 1373
    return-void

    .line 1377
    :cond_c
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iput-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->clientHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    .line 1380
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v5

    .line 1382
    .local v5, "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v6, v0, v5}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnLoad(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 1387
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v6, v6, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v6, :cond_d

    .line 1388
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v7, v6, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 1389
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v6, v7}, Lorg/openjsse/sun/security/ssl/OutputRecord;->setVersion(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 1395
    :cond_d
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v7, v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    sget-object v8, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    const/4 v6, 0x7

    new-array v6, v6, [Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v7, v6, v4

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v7, v6, v3

    const/4 v3, 0x2

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_STATUS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v7, v6, v3

    const/4 v3, 0x3

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v7, v6, v3

    const/4 v3, 0x4

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v7, v6, v3

    const/4 v3, 0x5

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO_DONE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v7, v6, v3

    const/4 v3, 0x6

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v7, v6, v3

    move-object v3, v6

    .line 1415
    .local v3, "probableHandshakeMessages":[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    array-length v6, v3

    :goto_5
    if-ge v4, v6, :cond_f

    aget-object v7, v3, v4

    .line 1416
    .local v7, "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    iget-byte v9, v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 1417
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 1418
    .local v8, "handshakeProducer":Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    if-eqz v8, :cond_e

    .line 1419
    invoke-interface {v8, p1, v1}, Lorg/openjsse/sun/security/ssl/HandshakeProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    .line 1415
    .end local v7    # "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .end local v8    # "handshakeProducer":Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1422
    :cond_f
    return-void
.end method
