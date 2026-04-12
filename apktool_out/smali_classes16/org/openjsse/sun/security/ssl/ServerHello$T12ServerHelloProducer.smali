.class final Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer;
.super Ljava/lang/Object;
.source "ServerHello.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ServerHello;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T12ServerHelloProducer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ServerHello$1;

    .line 251
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer;-><init>()V

    return-void
.end method

.method private static chooseCipherSuite(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;
    .locals 11
    .param p0, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p1, "clientHello"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->preferLocalCipherSuites:Z

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->activeCipherSuites:Ljava/util/List;

    .line 400
    .local v0, "preferred":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuites:Ljava/util/List;

    .local v1, "proposed":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    goto :goto_0

    .line 402
    .end local v0    # "preferred":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    .end local v1    # "proposed":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    :cond_0
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuites:Ljava/util/List;

    .line 403
    .restart local v0    # "preferred":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->activeCipherSuites:Ljava/util/List;

    .line 406
    .restart local v1    # "proposed":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    :goto_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 407
    .local v2, "legacySuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "ssl,handshake"

    const/4 v7, 0x0

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 408
    .local v4, "cs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-static {v1, v8, v4}, Lorg/openjsse/sun/security/ssl/HandshakeContext;->isNegotiable(Ljava/util/List;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 410
    goto :goto_1

    .line 413
    :cond_2
    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v8, v8, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    sget-object v9, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUIRED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    if-ne v8, v9, :cond_3

    .line 415
    iget-object v8, v4, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v9, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    if-eq v8, v9, :cond_1

    iget-object v8, v4, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v9, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    if-ne v8, v9, :cond_3

    .line 417
    goto :goto_1

    .line 421
    :cond_3
    iget-object v8, v4, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    iget-object v9, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-static {v8, v9}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->valueOf(Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v8

    .line 423
    .local v8, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    if-nez v8, :cond_4

    .line 424
    goto :goto_1

    .line 426
    :cond_4
    sget-object v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->legacyAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

    iget-object v10, v4, Lorg/openjsse/sun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    invoke-interface {v9, v7, v10, v7}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 428
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    goto :goto_1

    .line 432
    :cond_5
    invoke-virtual {v8, p0}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->createPossessions(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Lorg/openjsse/sun/security/ssl/SSLPossession;

    move-result-object v9

    .line 433
    .local v9, "hcds":[Lorg/openjsse/sun/security/ssl/SSLPossession;
    if-eqz v9, :cond_1

    array-length v10, v9

    if-nez v10, :cond_6

    .line 434
    goto :goto_1

    .line 438
    :cond_6
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_7

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "use cipher suite "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v4, Lorg/openjsse/sun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    :cond_7
    new-instance v3, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;

    invoke-direct {v3, v4, v8, v9, v7}, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;-><init>(Lorg/openjsse/sun/security/ssl/CipherSuite;Lorg/openjsse/sun/security/ssl/SSLKeyExchange;[Lorg/openjsse/sun/security/ssl/SSLPossession;Lorg/openjsse/sun/security/ssl/ServerHello$1;)V

    return-object v3

    .line 445
    .end local v4    # "cs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    .end local v8    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v9    # "hcds":[Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 446
    .restart local v4    # "cs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    iget-object v8, v4, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    iget-object v9, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-static {v8, v9}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->valueOf(Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v8

    .line 448
    .restart local v8    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    if-eqz v8, :cond_a

    .line 449
    invoke-virtual {v8, p0}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->createPossessions(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Lorg/openjsse/sun/security/ssl/SSLPossession;

    move-result-object v9

    .line 450
    .restart local v9    # "hcds":[Lorg/openjsse/sun/security/ssl/SSLPossession;
    if-eqz v9, :cond_a

    array-length v10, v9

    if-eqz v10, :cond_a

    .line 451
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_9

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "use legacy cipher suite "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v4, Lorg/openjsse/sun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    :cond_9
    new-instance v3, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;

    invoke-direct {v3, v4, v8, v9, v7}, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;-><init>(Lorg/openjsse/sun/security/ssl/CipherSuite;Lorg/openjsse/sun/security/ssl/SSLKeyExchange;[Lorg/openjsse/sun/security/ssl/SSLPossession;Lorg/openjsse/sun/security/ssl/ServerHello$1;)V

    return-object v3

    .line 458
    .end local v4    # "cs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    .end local v8    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v9    # "hcds":[Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_a
    goto :goto_2

    .line 460
    :cond_b
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "no cipher suites in common"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 14
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    move-object v7, p1

    check-cast v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 264
    .local v7, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    move-object/from16 v8, p2

    check-cast v8, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 269
    .local v8, "clientHello":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    iget-boolean v0, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    if-eqz v0, :cond_1

    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iput-object v0, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 342
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 343
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    iput-object v0, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 344
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSuite()Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v0

    iput-object v0, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 345
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    iget-object v1, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v2, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->determine(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite;)V

    goto/16 :goto_5

    .line 270
    :cond_1
    :goto_0
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableSessionCreation:Z

    if-eqz v0, :cond_b

    .line 275
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    if-nez v0, :cond_2

    .line 276
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v1, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    iget-object v2, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->activeProtocols:Ljava/util/List;

    .line 277
    invoke-static {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getSupportedAlgorithms(Lorg/openjsse/sun/security/ssl/SSLConfiguration;Ljava/security/AlgorithmConstraints;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    .line 282
    :cond_2
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherSuite;->C_NULL:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-direct {v0, v7, v1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/CipherSuite;)V

    .line 284
    .local v0, "session":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    iget-object v1, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setMaximumPacketSize(I)V

    .line 285
    iput-object v0, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 288
    iget-object v1, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 289
    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v1

    .line 291
    .local v1, "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v2, v8, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v2, v7, v1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnTrade(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 294
    nop

    .line 295
    invoke-static {v7, v8}, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer;->chooseCipherSuite(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;

    move-result-object v2

    .line 296
    .local v2, "credentials":Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;
    if-eqz v2, :cond_a

    .line 300
    iget-object v3, v2, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iput-object v3, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 301
    iget-object v3, v2, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;->keyExchange:Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    iput-object v3, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeKeyExchange:Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    .line 302
    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-object v4, v2, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setSuite(Lorg/openjsse/sun/security/ssl/CipherSuite;)V

    .line 303
    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakePossessions:Ljava/util/List;

    iget-object v4, v2, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;->possessions:[Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 304
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 303
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 305
    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    iget-object v4, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v5, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->determine(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite;)V

    .line 311
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->processStapling(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;)Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;

    move-result-object v3

    iput-object v3, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->stapleParams:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;

    .line 312
    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->stapleParams:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    iput-boolean v3, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->staplingActive:Z

    .line 315
    iget-object v3, v2, Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;->keyExchange:Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    .line 316
    .local v3, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    if-eqz v3, :cond_4

    .line 318
    invoke-virtual {v3, v7}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->getHandshakeProducers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Ljava/util/Map$Entry;

    move-result-object v5

    array-length v6, v5

    move v9, v4

    :goto_2
    if-ge v9, v6, :cond_4

    aget-object v10, v5, v9

    .line 319
    .local v10, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/openjsse/sun/security/ssl/HandshakeProducer;>;"
    iget-object v11, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    .line 320
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 319
    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .end local v10    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/openjsse/sun/security/ssl/HandshakeProducer;>;"
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 324
    :cond_4
    if-eqz v3, :cond_6

    iget-object v5, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    sget-object v6, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_NONE:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    if-eq v5, v6, :cond_6

    iget-object v5, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 327
    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/CipherSuite;->isAnonymous()Z

    move-result v5

    if-nez v5, :cond_6

    .line 329
    invoke-virtual {v3, v7}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->getRelatedHandshakers(Lorg/openjsse/sun/security/ssl/HandshakeContext;)[Lorg/openjsse/sun/security/ssl/SSLHandshake;

    move-result-object v5

    array-length v6, v5

    :goto_3
    if-ge v4, v6, :cond_6

    aget-object v9, v5, v4

    .line 330
    .local v9, "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    sget-object v10, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    if-ne v9, v10, :cond_5

    .line 331
    iget-object v4, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v5, v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 332
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 331
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    goto :goto_4

    .line 329
    .end local v9    # "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 338
    :cond_6
    :goto_4
    iget-object v4, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO_DONE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v5, v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO_DONE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .end local v0    # "session":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .end local v1    # "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v2    # "credentials":Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;
    .end local v3    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    nop

    .line 350
    :goto_5
    new-instance v9, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;

    iget-object v2, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 352
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSessionId()Lorg/openjsse/sun/security/ssl/SessionId;

    move-result-object v3

    iget-object v4, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    new-instance v5, Lorg/openjsse/sun/security/ssl/RandomCookie;

    invoke-direct {v5, v7}, Lorg/openjsse/sun/security/ssl/RandomCookie;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    move-object v0, v9

    move-object v1, v7

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/SessionId;Lorg/openjsse/sun/security/ssl/CipherSuite;Lorg/openjsse/sun/security/ssl/RandomCookie;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)V

    .line 356
    .local v0, "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iput-object v1, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->serverHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    .line 359
    iget-object v1, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 360
    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v1

    .line 362
    .local v1, "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v2, v7, v1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->produce(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 363
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_7

    const-string v2, "ssl,handshake"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 364
    const-string v2, "Produced ServerHello handshake message"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    :cond_7
    iget-object v2, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v0, v2}, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 369
    iget-object v2, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 371
    iget-boolean v2, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    if-eqz v2, :cond_9

    iget-object v2, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-eqz v2, :cond_9

    .line 372
    iget-object v2, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 373
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    move-result-object v2

    .line 374
    .local v2, "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    if-eqz v2, :cond_8

    .line 380
    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 381
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 380
    invoke-virtual {v2, v7, v3}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v3

    iput-object v3, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    .line 385
    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 376
    :cond_8
    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not supported key derivation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 390
    .end local v2    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    :cond_9
    :goto_6
    const/4 v2, 0x0

    return-object v2

    .line 297
    .local v0, "session":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .local v1, "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .local v2, "credentials":Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;
    :cond_a
    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "no cipher suites in common"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 271
    .end local v0    # "session":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .end local v1    # "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v2    # "credentials":Lorg/openjsse/sun/security/ssl/ServerHello$T12ServerHelloProducer$KeyExchangeProperties;
    :cond_b
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Not resumption, and no new session is allowed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
