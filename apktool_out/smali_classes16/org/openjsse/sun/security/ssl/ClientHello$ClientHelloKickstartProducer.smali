.class final Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloKickstartProducer;
.super Ljava/lang/Object;
.source "ClientHello.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ClientHello;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientHelloKickstartProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ClientHello$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ClientHello$1;

    .line 390
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloKickstartProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;)[B
    .locals 20
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    move-object/from16 v7, p1

    check-cast v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 403
    .local v7, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v1, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->maximumActiveProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 409
    .local v1, "maxProtocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    new-instance v0, Lorg/openjsse/sun/security/ssl/SessionId;

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-direct {v0, v3}, Lorg/openjsse/sun/security/ssl/SessionId;-><init>([B)V

    move-object v3, v0

    .line 412
    .local v3, "sessionId":Lorg/openjsse/sun/security/ssl/SessionId;
    iget-object v4, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->activeCipherSuites:Ljava/util/List;

    .line 417
    .local v4, "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 418
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    .line 419
    .local v8, "ssci":Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
    iget-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    .line 420
    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/SSLTransport;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    .line 421
    invoke-interface {v5}, Lorg/openjsse/sun/security/ssl/SSLTransport;->getPeerPort()I

    move-result v5

    .line 419
    invoke-virtual {v8, v0, v5}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->get(Ljava/lang/String;I)Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    move-result-object v5

    .line 422
    .local v5, "session":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    const-string v6, "ssl,handshake,verbose"

    if-eqz v5, :cond_1

    .line 426
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->allowUnsafeServerCertChange:Z

    if-nez v0, :cond_0

    .line 427
    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isSessionResumption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    nop

    .line 431
    :try_start_0
    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    check-cast v0, [Ljava/security/cert/X509Certificate;

    iput-object v0, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->reservedServerCerts:[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 437
    :cond_0
    :goto_0
    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    const/4 v5, 0x0

    .line 439
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_1

    .line 440
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    const-string v0, "Can\'t resume, the session is not rejoinable"

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v0, v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    :cond_1
    const/4 v0, 0x0

    .line 448
    .local v0, "sessionSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    if-eqz v5, :cond_2

    .line 449
    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSuite()Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v0

    .line 450
    invoke-virtual {v7, v0}, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->isNegotiable(Lorg/openjsse/sun/security/ssl/CipherSuite;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 451
    const/4 v5, 0x0

    .line 452
    sget-boolean v9, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v9, :cond_2

    .line 453
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 454
    const-string v9, "Can\'t resume, unavailable session cipher suite"

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    :cond_2
    const/4 v9, 0x0

    .line 461
    .local v9, "sessionVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    if-eqz v5, :cond_3

    .line 462
    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v9

    .line 463
    invoke-virtual {v7, v9}, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->isNegotiable(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 464
    const/4 v5, 0x0

    .line 465
    sget-boolean v10, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v10, :cond_3

    .line 466
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 467
    const-string v10, "Can\'t resume, unavailable protocol version"

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    :cond_3
    if-eqz v5, :cond_7

    .line 474
    invoke-virtual {v9}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v10

    if-nez v10, :cond_7

    sget-boolean v10, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->useExtendedMasterSecret:Z

    if-eqz v10, :cond_7

    .line 477
    iget-object v10, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v11, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_EXTENDED_MASTER_SECRET:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v10, v11, v9}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Z

    move-result v10

    .line 479
    .local v10, "isEmsAvailable":Z
    if-eqz v10, :cond_4

    iget-boolean v11, v5, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useExtendedMasterSecret:Z

    if-nez v11, :cond_4

    sget-boolean v11, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->allowLegacyResumption:Z

    if-nez v11, :cond_4

    .line 487
    const/4 v5, 0x0

    .line 490
    :cond_4
    if-eqz v5, :cond_7

    sget-boolean v11, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->allowUnsafeServerCertChange:Z

    if-nez v11, :cond_7

    .line 494
    iget-object v11, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v11, v11, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->identificationProtocol:Ljava/lang/String;

    .line 495
    .local v11, "identityAlg":Ljava/lang/String;
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_7

    .line 496
    :cond_5
    if-eqz v10, :cond_6

    .line 497
    iget-boolean v12, v5, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useExtendedMasterSecret:Z

    if-nez v12, :cond_7

    .line 499
    const/4 v5, 0x0

    goto :goto_1

    .line 509
    :cond_6
    const/4 v5, 0x0

    .line 517
    .end local v10    # "isEmsAvailable":Z
    .end local v11    # "identityAlg":Ljava/lang/String;
    :cond_7
    :goto_1
    iget-object v10, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v10, v10, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->identificationProtocol:Ljava/lang/String;

    .line 518
    .local v10, "identityAlg":Ljava/lang/String;
    if-eqz v5, :cond_9

    if-eqz v10, :cond_9

    .line 519
    nop

    .line 520
    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getIdentificationProtocol()Ljava/lang/String;

    move-result-object v11

    .line 521
    .local v11, "sessionIdentityAlg":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 522
    sget-boolean v12, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v12, :cond_8

    .line 523
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 524
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t resume, endpoint id algorithm does not match, requested: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", cached: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v2, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    :cond_8
    const/4 v5, 0x0

    move-object v11, v5

    goto :goto_2

    .line 532
    .end local v11    # "sessionIdentityAlg":Ljava/lang/String;
    :cond_9
    move-object v11, v5

    .end local v5    # "session":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .local v11, "session":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :goto_2
    const/4 v5, 0x1

    if-eqz v11, :cond_10

    .line 533
    sget-boolean v12, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v12, :cond_a

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 534
    const-string v12, "Try resuming session"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    :cond_a
    invoke-virtual {v11}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v12

    invoke-virtual {v12}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v12

    if-nez v12, :cond_b

    .line 539
    invoke-virtual {v11}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSessionId()Lorg/openjsse/sun/security/ssl/SessionId;

    move-result-object v3

    .line 541
    :cond_b
    invoke-virtual {v1, v9}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 542
    move-object v1, v9

    .line 547
    invoke-virtual {v7, v9}, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->setVersion(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 553
    :cond_c
    iget-object v12, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v12, v12, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableSessionCreation:Z

    if-nez v12, :cond_f

    .line 554
    iget-object v12, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v12, v12, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v12, :cond_d

    .line 555
    invoke-virtual {v9}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v12

    if-nez v12, :cond_d

    sget-object v12, Lorg/openjsse/sun/security/ssl/CipherSuite;->TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 556
    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 558
    const/4 v12, 0x2

    new-array v12, v12, [Lorg/openjsse/sun/security/ssl/CipherSuite;

    aput-object v0, v12, v2

    sget-object v2, Lorg/openjsse/sun/security/ssl/CipherSuite;->TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Lorg/openjsse/sun/security/ssl/CipherSuite;

    aput-object v2, v12, v5

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .end local v4    # "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    .local v2, "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    goto :goto_3

    .line 561
    .end local v2    # "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    .restart local v4    # "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    :cond_d
    new-array v12, v5, [Lorg/openjsse/sun/security/ssl/CipherSuite;

    aput-object v0, v12, v2

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 564
    .end local v4    # "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    .restart local v2    # "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    :goto_3
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_e

    .line 565
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 566
    const-string v4, "No new session is allowed, so try to resume the session cipher suite only"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    :cond_e
    move-object v4, v2

    .end local v2    # "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    .restart local v4    # "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    :cond_f
    iput-boolean v5, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->isResumption:Z

    .line 573
    iput-object v11, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    move-object v12, v1

    goto :goto_4

    .line 532
    :cond_10
    move-object v12, v1

    .line 576
    .end local v1    # "maxProtocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .local v12, "maxProtocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :goto_4
    if-nez v11, :cond_12

    .line 577
    iget-object v1, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableSessionCreation:Z

    if-eqz v1, :cond_11

    .line 583
    invoke-virtual {v12}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->useCompatibilityMode:Z

    if-eqz v1, :cond_12

    .line 588
    new-instance v1, Lorg/openjsse/sun/security/ssl/SessionId;

    iget-object v2, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 589
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lorg/openjsse/sun/security/ssl/SessionId;-><init>(ZLjava/security/SecureRandom;)V

    move-object v3, v1

    move-object v13, v3

    goto :goto_5

    .line 578
    :cond_11
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "No new session is allowed and no existing session can be resumed"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 593
    :cond_12
    move-object v13, v3

    .end local v3    # "sessionId":Lorg/openjsse/sun/security/ssl/SessionId;
    .local v13, "sessionId":Lorg/openjsse/sun/security/ssl/SessionId;
    :goto_5
    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 594
    .local v1, "minimumVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-object v2, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->activeProtocols:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v14, v1

    .end local v1    # "minimumVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .local v14, "minimumVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 595
    .local v1, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-eq v14, v3, :cond_13

    .line 596
    invoke-virtual {v1, v14}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->compare(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)I

    move-result v3

    if-gez v3, :cond_14

    .line 597
    :cond_13
    move-object v3, v1

    move-object v14, v3

    .line 599
    .end local v1    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_14
    goto :goto_6

    .line 602
    :cond_15
    invoke-virtual {v14}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v1

    if-nez v1, :cond_16

    .line 603
    iget-object v1, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->secureRenegotiation:Z

    if-eqz v1, :cond_16

    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherSuite;->TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 604
    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 607
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object v4, v1

    .line 608
    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherSuite;->TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v15, v4

    goto :goto_7

    .line 614
    :cond_16
    move-object v15, v4

    .end local v4    # "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    .local v15, "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    :goto_7
    const/4 v1, 0x0

    .line 615
    .local v1, "negotiable":Z
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 616
    .local v3, "suite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    invoke-virtual {v7, v3}, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->isNegotiable(Lorg/openjsse/sun/security/ssl/CipherSuite;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 617
    const/4 v1, 0x1

    .line 618
    move/from16 v16, v1

    goto :goto_9

    .line 620
    .end local v3    # "suite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :cond_17
    goto :goto_8

    .line 615
    :cond_18
    move/from16 v16, v1

    .line 621
    .end local v1    # "negotiable":Z
    .local v16, "negotiable":Z
    :goto_9
    if-eqz v16, :cond_1d

    .line 626
    move-object v1, v12

    .line 627
    .local v1, "clientHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 631
    iget-boolean v2, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    if-eqz v2, :cond_19

    .line 632
    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-object v6, v1

    goto :goto_a

    .line 634
    :cond_19
    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-object v6, v1

    goto :goto_a

    .line 627
    :cond_1a
    move-object v6, v1

    .line 638
    .end local v1    # "clientHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .local v6, "clientHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :goto_a
    new-instance v17, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    iget v3, v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    iget-object v1, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 640
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v18

    move-object/from16 v1, v17

    move-object v2, v7

    move-object v4, v13

    move-object v5, v15

    move-object/from16 v19, v0

    move-object v0, v6

    .end local v6    # "clientHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .local v0, "clientHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .local v19, "sessionSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;ILorg/openjsse/sun/security/ssl/SessionId;Ljava/util/List;Ljava/security/SecureRandom;)V

    .line 643
    .local v1, "chm":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iput-object v2, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->clientHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    .line 644
    iget v2, v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    iput v2, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->clientHelloVersion:I

    .line 647
    iget-object v2, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-object v4, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->activeProtocols:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;Ljava/util/List;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v2

    .line 649
    .local v2, "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v3, v7, v2}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->produce(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 651
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_1b

    const-string v3, "ssl,handshake"

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 652
    const-string v3, "Produced ClientHello handshake message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    :cond_1b
    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1, v3}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 657
    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 661
    iput-object v1, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->initialClientHelloMsg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 664
    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 665
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 664
    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 667
    invoke-virtual {v14}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 668
    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_VERIFY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 669
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_VERIFY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 668
    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    :cond_1c
    const/4 v3, 0x0

    return-object v3

    .line 622
    .end local v1    # "chm":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .end local v2    # "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v19    # "sessionSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    .local v0, "sessionSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :cond_1d
    move-object/from16 v19, v0

    .end local v0    # "sessionSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    .restart local v19    # "sessionSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "No negotiable cipher suite"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
