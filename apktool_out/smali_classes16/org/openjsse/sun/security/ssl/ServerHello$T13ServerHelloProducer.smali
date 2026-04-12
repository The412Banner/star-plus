.class final Lorg/openjsse/sun/security/ssl/ServerHello$T13ServerHelloProducer;
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
    name = "T13ServerHelloProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ServerHello$1;

    .line 482
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ServerHello$T13ServerHelloProducer;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)Lorg/openjsse/sun/security/ssl/CipherSuite;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p1, "x1"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    invoke-static {p0, p1}, Lorg/openjsse/sun/security/ssl/ServerHello$T13ServerHelloProducer;->chooseCipherSuite(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v0

    return-object v0
.end method

.method private static chooseCipherSuite(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)Lorg/openjsse/sun/security/ssl/CipherSuite;
    .locals 10
    .param p0, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p1, "clientHello"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->preferLocalCipherSuites:Z

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->activeCipherSuites:Ljava/util/List;

    .line 690
    .local v0, "preferred":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuites:Ljava/util/List;

    .local v1, "proposed":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    goto :goto_0

    .line 692
    .end local v0    # "preferred":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    .end local v1    # "proposed":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    :cond_0
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuites:Ljava/util/List;

    .line 693
    .restart local v0    # "preferred":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->activeCipherSuites:Ljava/util/List;

    .line 696
    .restart local v1    # "proposed":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    :goto_0
    const/4 v2, 0x0

    .line 697
    .local v2, "legacySuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    sget-object v3, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->legacyAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 699
    .local v3, "legacyConstraints":Ljava/security/AlgorithmConstraints;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "ssl,handshake"

    const/4 v8, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 700
    .local v5, "cs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    iget-object v9, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-static {v1, v9, v5}, Lorg/openjsse/sun/security/ssl/HandshakeContext;->isNegotiable(Ljava/util/List;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 702
    goto :goto_1

    .line 705
    :cond_1
    if-nez v2, :cond_2

    iget-object v9, v5, Lorg/openjsse/sun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    .line 706
    invoke-interface {v3, v8, v9, v8}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 707
    move-object v2, v5

    .line 708
    goto :goto_1

    .line 712
    :cond_2
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_3

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "use cipher suite "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v5, Lorg/openjsse/sun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    :cond_3
    return-object v5

    .line 718
    .end local v5    # "cs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :cond_4
    if-eqz v2, :cond_6

    .line 719
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_5

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 720
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "use legacy cipher suite "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lorg/openjsse/sun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    :cond_5
    return-object v2

    .line 727
    :cond_6
    return-object v8
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 32
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    const-string v1, "Missing cipher algorithm"

    move-object/from16 v9, p1

    check-cast v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 493
    .local v9, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    move-object/from16 v10, p2

    check-cast v10, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 498
    .local v10, "clientHello":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    iget-boolean v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    if-eqz v0, :cond_1

    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iput-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 536
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-object v3, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 537
    invoke-virtual {v0, v2, v3}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v0

    .line 539
    .local v0, "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v2, v10, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v2, v9, v0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnTrade(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 541
    iget-object v2, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 542
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v2

    iput-object v2, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 543
    iget-object v2, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSuite()Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v2

    iput-object v2, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 544
    iget-object v2, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    iget-object v3, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v4, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->determine(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite;)V

    .line 547
    iget-object v2, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 548
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->consumePreSharedKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 547
    invoke-static {v9, v2}, Lorg/openjsse/sun/security/ssl/ServerHello;->access$900(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V

    goto :goto_1

    .line 499
    .end local v0    # "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_1
    :goto_0
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableSessionCreation:Z

    if-eqz v0, :cond_a

    .line 504
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    if-nez v0, :cond_2

    .line 505
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v2, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    iget-object v3, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->activeProtocols:Ljava/util/List;

    .line 506
    invoke-static {v0, v2, v3}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getSupportedAlgorithms(Lorg/openjsse/sun/security/ssl/SSLConfiguration;Ljava/security/AlgorithmConstraints;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    .line 511
    :cond_2
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    sget-object v2, Lorg/openjsse/sun/security/ssl/CipherSuite;->C_NULL:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-direct {v0, v9, v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/CipherSuite;)V

    .line 513
    .local v0, "session":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    iget-object v2, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget v2, v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    invoke-virtual {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setMaximumPacketSize(I)V

    .line 514
    iput-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 517
    iget-object v2, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-object v4, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 518
    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v2

    .line 520
    .local v2, "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v3, v10, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v3, v9, v2}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnTrade(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 523
    invoke-static {v9, v10}, Lorg/openjsse/sun/security/ssl/ServerHello$T13ServerHelloProducer;->chooseCipherSuite(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v3

    .line 524
    .local v3, "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    if-eqz v3, :cond_9

    .line 528
    iput-object v3, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 529
    iget-object v4, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v4, v3}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setSuite(Lorg/openjsse/sun/security/ssl/CipherSuite;)V

    .line 530
    iget-object v4, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    iget-object v5, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v6, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v4, v5, v6}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->determine(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite;)V

    .line 532
    .end local v0    # "session":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .end local v2    # "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v3    # "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    nop

    .line 552
    :goto_1
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v5, v10, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    iget-object v6, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    new-instance v7, Lorg/openjsse/sun/security/ssl/RandomCookie;

    invoke-direct {v7, v9}, Lorg/openjsse/sun/security/ssl/RandomCookie;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    move-object v2, v0

    move-object v3, v9

    move-object v8, v10

    invoke-direct/range {v2 .. v8}, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/SessionId;Lorg/openjsse/sun/security/ssl/CipherSuite;Lorg/openjsse/sun/security/ssl/RandomCookie;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)V

    .line 564
    .local v2, "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iput-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->serverHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    .line 567
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-object v4, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 568
    invoke-virtual {v0, v3, v4}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v3

    .line 570
    .local v3, "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v0, v9, v3}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->produce(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 571
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_3

    const-string v0, "ssl,handshake"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    const-string v0, "Produced ServerHello handshake message"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    :cond_3
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v2, v0}, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 577
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 581
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->update()V

    .line 584
    iget-object v4, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeKeyExchange:Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    .line 585
    .local v4, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    if-eqz v4, :cond_8

    .line 591
    invoke-virtual {v4, v9}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v5

    .line 592
    .local v5, "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    const-string v0, "TlsHandshakeSecret"

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 595
    .local v7, "handshakeSecret":Ljavax/crypto/SecretKey;
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 596
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    move-result-object v8

    .line 597
    .local v8, "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    if-eqz v8, :cond_7

    .line 604
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;

    invoke-direct {v0, v9, v7}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V

    move-object v11, v0

    .line 608
    .local v11, "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    const-string v0, "TlsClientHandshakeTrafficSecret"

    invoke-interface {v11, v0, v6}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v12

    .line 610
    .local v12, "readSecret":Ljavax/crypto/SecretKey;
    nop

    .line 611
    invoke-virtual {v8, v9, v12}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v13

    .line 612
    .local v13, "readKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    const-string v0, "TlsKey"

    invoke-interface {v13, v0, v6}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v20

    .line 614
    .local v20, "readKey":Ljavax/crypto/SecretKey;
    const-string v15, "TlsIv"

    invoke-interface {v13, v15, v6}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v21

    .line 616
    .local v21, "readIvSecret":Ljavax/crypto/SecretKey;
    new-instance v14, Ljavax/crypto/spec/IvParameterSpec;

    .line 617
    invoke-interface/range {v21 .. v21}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    invoke-direct {v14, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object/from16 v18, v14

    .line 620
    .local v18, "readIv":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_0
    iget-object v6, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v14, v6, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget-object v6, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 622
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/Authenticator;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/Authenticator;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v22, v2

    .end local v2    # "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    .local v22, "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    :try_start_1
    iget-object v2, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v23, v3

    .end local v3    # "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .local v23, "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :try_start_2
    iget-object v3, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 624
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v19

    .line 621
    move-object v3, v15

    move-object v15, v6

    move-object/from16 v16, v2

    move-object/from16 v17, v20

    invoke-virtual/range {v14 .. v19}, Lorg/openjsse/sun/security/ssl/SSLCipher;->createReadCipher(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    move-result-object v2
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 629
    .local v2, "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    nop

    .line 631
    const-string v6, ")"

    const-string v14, ") and protocol version ("

    const-string v15, "Illegal cipher suite ("

    if-eqz v2, :cond_6

    .line 638
    iput-object v12, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->baseReadSecret:Ljavax/crypto/SecretKey;

    .line 639
    move-object/from16 v16, v4

    .end local v4    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .local v16, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    iget-object v4, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v4, v2}, Lorg/openjsse/sun/security/ssl/InputRecord;->changeReadCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;)V

    .line 642
    const-string v4, "TlsServerHandshakeTrafficSecret"

    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .local v17, "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    invoke-interface {v11, v4, v2}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 644
    .local v4, "writeSecret":Ljavax/crypto/SecretKey;
    nop

    .line 645
    move-object/from16 v19, v5

    .end local v5    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .local v19, "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    invoke-virtual {v8, v9, v4}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v5

    .line 646
    .local v5, "writeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    invoke-interface {v5, v0, v2}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v30

    .line 648
    .local v30, "writeKey":Ljavax/crypto/SecretKey;
    invoke-interface {v5, v3, v2}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 650
    .local v3, "writeIvSecret":Ljavax/crypto/SecretKey;
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 651
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object/from16 v28, v0

    .line 654
    .local v28, "writeIv":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_3
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget-object v2, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 656
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Authenticator;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/Authenticator;

    move-result-object v25

    iget-object v2, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v31, v3

    .end local v3    # "writeIvSecret":Ljavax/crypto/SecretKey;
    .local v31, "writeIvSecret":Ljavax/crypto/SecretKey;
    :try_start_4
    iget-object v3, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 658
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v29

    .line 655
    move-object/from16 v24, v0

    move-object/from16 v26, v2

    move-object/from16 v27, v30

    invoke-virtual/range {v24 .. v29}, Lorg/openjsse/sun/security/ssl/SSLCipher;->createWriteCipher(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 663
    .local v0, "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    nop

    .line 665
    if-eqz v0, :cond_5

    .line 672
    iput-object v4, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->baseWriteSecret:Ljavax/crypto/SecretKey;

    .line 673
    iget-object v1, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget-object v2, v10, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    .line 674
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SessionId;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 673
    :goto_2
    invoke-virtual {v1, v0, v2}, Lorg/openjsse/sun/security/ssl/OutputRecord;->changeWriteCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;Z)V

    .line 677
    iput-object v11, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    .line 680
    const/4 v1, 0x0

    return-object v1

    .line 666
    :cond_5
    iget-object v1, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v15, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v14, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 659
    .end local v0    # "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v31    # "writeIvSecret":Ljavax/crypto/SecretKey;
    .restart local v3    # "writeIvSecret":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v0

    move-object/from16 v31, v3

    .line 661
    .end local v3    # "writeIvSecret":Ljavax/crypto/SecretKey;
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    .restart local v31    # "writeIvSecret":Ljavax/crypto/SecretKey;
    :goto_3
    iget-object v2, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v3, v1, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 632
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    .end local v16    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v17    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .end local v19    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v28    # "writeIv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v30    # "writeKey":Ljavax/crypto/SecretKey;
    .end local v31    # "writeIvSecret":Ljavax/crypto/SecretKey;
    .restart local v2    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .local v4, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .local v5, "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    :cond_6
    move-object/from16 v17, v2

    .end local v2    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .restart local v17    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 625
    .end local v17    # "readCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    :catch_2
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    .end local v4    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v5    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v16    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .restart local v19    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    goto :goto_4

    .end local v16    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v19    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v23    # "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .local v3, "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v4    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .restart local v5    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    :catch_3
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    .end local v3    # "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v4    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v5    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v16    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .restart local v19    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v23    # "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    goto :goto_4

    .end local v16    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v19    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v22    # "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    .end local v23    # "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .local v2, "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    .restart local v3    # "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v4    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .restart local v5    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    :catch_4
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    .line 627
    .end local v2    # "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    .end local v3    # "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v4    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v5    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v0    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v16    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .restart local v19    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v22    # "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    .restart local v23    # "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :goto_4
    iget-object v2, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v3, v1, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 599
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    .end local v11    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v12    # "readSecret":Ljavax/crypto/SecretKey;
    .end local v13    # "readKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v16    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v18    # "readIv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v19    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v20    # "readKey":Ljavax/crypto/SecretKey;
    .end local v21    # "readIvSecret":Ljavax/crypto/SecretKey;
    .end local v22    # "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    .end local v23    # "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v2    # "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    .restart local v3    # "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v4    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .restart local v5    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    :cond_7
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    .end local v2    # "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    .end local v3    # "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v22    # "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    .restart local v23    # "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not supported key derivation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 587
    .end local v5    # "handshakeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v7    # "handshakeSecret":Ljavax/crypto/SecretKey;
    .end local v8    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .end local v22    # "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    .end local v23    # "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .restart local v2    # "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    .restart local v3    # "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_8
    move-object/from16 v22, v2

    .end local v2    # "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    .restart local v22    # "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v2, "Not negotiated key shares"

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 525
    .end local v4    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v22    # "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    .local v0, "session":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .local v2, "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .local v3, "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :cond_9
    iget-object v1, v9, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "no cipher suites in common"

    invoke-virtual {v1, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 500
    .end local v0    # "session":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .end local v2    # "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v3    # "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :cond_a
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Not resumption, and no new session is allowed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
