.class final Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;
.super Ljava/lang/Object;
.source "PreSharedKeyExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeyProducer;,
        Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeyAbsence;,
        Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeyConsumer;,
        Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyOnTradeAbsence;,
        Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyOnLoadAbsence;,
        Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyProducer;,
        Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;,
        Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyUpdate;,
        Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyConsumer;,
        Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeyStringizer;,
        Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeySpec;,
        Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyStringizer;,
        Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;,
        Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;
    }
.end annotation


# static fields
.field static final chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final chOnTradAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final chOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

.field static final chStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

.field static final shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final shOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final shStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyProducer;-><init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 80
    new-instance v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyConsumer;-><init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 82
    new-instance v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyOnLoadAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyOnLoadAbsence;-><init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->chOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 84
    new-instance v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyUpdate;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyUpdate;-><init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->chOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 86
    new-instance v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyOnTradeAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyOnTradeAbsence;-><init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->chOnTradAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 88
    new-instance v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyStringizer;-><init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->chStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    .line 91
    new-instance v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeyProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeyProducer;-><init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->shNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 93
    new-instance v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeyConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeyConsumer;-><init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->shOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 95
    new-instance v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeyAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeyAbsence;-><init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->shOnLoadAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    .line 97
    new-instance v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeyStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeyStringizer;-><init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->shStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .param p1, "x1"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "x2"    # Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 77
    invoke-static {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->canRejoin(Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;Lorg/openjsse/sun/security/ssl/HandshakeHash;[B)V
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p1, "x1"    # Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .param p2, "x2"    # Lorg/openjsse/sun/security/ssl/HandshakeHash;
    .param p3, "x3"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-static {p0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->checkBinder(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;Lorg/openjsse/sun/security/ssl/HandshakeHash;[B)V

    return-void
.end method

.method static synthetic access$1200(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p1, "x1"    # Ljavax/crypto/SecretKey;
    .param p2, "x2"    # Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-static {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->deriveBinderKey(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;Lorg/openjsse/sun/security/ssl/HandshakeHash;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;)[B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p1, "x1"    # Ljavax/crypto/SecretKey;
    .param p2, "x2"    # Lorg/openjsse/sun/security/ssl/HandshakeHash;
    .param p3, "x3"    # Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .param p4, "x4"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p5, "x5"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .param p6, "x6"    # Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-static/range {p0 .. p6}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->computeBinder(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;Lorg/openjsse/sun/security/ssl/HandshakeHash;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;)[B

    move-result-object v0

    return-object v0
.end method

.method private static canRejoin(Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)Z
    .locals 7
    .param p0, "clientHello"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .param p1, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "s"    # Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 433
    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPreSharedKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 436
    .local v0, "result":Z
    :goto_0
    const-string v2, "ssl,handshake,verbose"

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v3

    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-eq v3, v4, :cond_2

    .line 437
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_1

    .line 438
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    const-string v3, "Can\'t resume, incorrect protocol version"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    :cond_1
    const/4 v0, 0x0

    .line 449
    :cond_2
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    if-nez v3, :cond_3

    .line 450
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->activeProtocols:Ljava/util/List;

    .line 451
    invoke-static {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getSupportedAlgorithms(Lorg/openjsse/sun/security/ssl/SSLConfiguration;Ljava/security/AlgorithmConstraints;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    .line 457
    :cond_3
    if-eqz v0, :cond_6

    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUIRED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    if-ne v3, v4, :cond_6

    .line 460
    :try_start_0
    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPeerPrincipal()Ljava/security/Principal;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    goto :goto_1

    .line 461
    :catch_0
    move-exception v3

    .line 462
    .local v3, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_4

    .line 463
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 464
    const-string v4, "Can\'t resume, client authentication is required"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    :cond_4
    const/4 v0, 0x0

    .line 472
    .end local v3    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :goto_1
    nop

    .line 473
    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getLocalSupportedSignatureSchemes()Ljava/util/Collection;

    move-result-object v3

    .line 474
    .local v3, "sessionSigAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    if-eqz v0, :cond_6

    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    .line 475
    invoke-interface {v4, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 477
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_5

    const-string v4, "ssl,handshake"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 478
    const-string v4, "Can\'t resume. Session uses different signature algorithms"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    :cond_5
    const/4 v0, 0x0

    .line 487
    .end local v3    # "sessionSigAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    :cond_6
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->identificationProtocol:Ljava/lang/String;

    .line 488
    .local v3, "identityAlg":Ljava/lang/String;
    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    .line 489
    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getIdentificationProtocol()Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, "sessionIdentityAlg":Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 491
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_7

    .line 492
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 494
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t resume, endpoint id algorithm does not match, requested: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cached: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    :cond_7
    const/4 v0, 0x0

    .line 503
    .end local v4    # "sessionIdentityAlg":Ljava/lang/String;
    :cond_8
    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSuite()Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isNegotiable(Lorg/openjsse/sun/security/ssl/CipherSuite;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuites:Ljava/util/List;

    .line 504
    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSuite()Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 505
    :cond_9
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_a

    .line 506
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 507
    const-string v2, "Can\'t resume, unavailable session cipher suite"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    :cond_a
    const/4 v0, 0x0

    .line 513
    :cond_b
    return v0
.end method

.method private static checkBinder(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;Lorg/openjsse/sun/security/ssl/HandshakeHash;[B)V
    .locals 6
    .param p0, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p1, "session"    # Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .param p2, "pskBinderHash"    # Lorg/openjsse/sun/security/ssl/HandshakeHash;
    .param p3, "binder"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPreSharedKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 563
    .local v0, "psk":Ljavax/crypto/SecretKey;
    if-eqz v0, :cond_1

    .line 568
    invoke-static {p0, v0, p1}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->deriveBinderKey(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 569
    .local v1, "binderKey":Ljavax/crypto/SecretKey;
    nop

    .line 570
    invoke-static {p0, v1, p1, p2}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->computeBinder(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;Lorg/openjsse/sun/security/ssl/HandshakeHash;)[B

    move-result-object v2

    .line 571
    .local v2, "computedBinder":[B
    invoke-static {p3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 575
    return-void

    .line 572
    :cond_0
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Incorect PSK binder value"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 564
    .end local v1    # "binderKey":Ljavax/crypto/SecretKey;
    .end local v2    # "computedBinder":[B
    :cond_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Session has no PSK"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method private static computeBinder(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;Lorg/openjsse/sun/security/ssl/HandshakeHash;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;)[B
    .locals 5
    .param p0, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p1, "binderKey"    # Ljavax/crypto/SecretKey;
    .param p2, "hash"    # Lorg/openjsse/sun/security/ssl/HandshakeHash;
    .param p3, "session"    # Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .param p4, "ctx"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p5, "hello"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .param p6, "pskPrototype"    # Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 768
    new-instance v0, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;

    invoke-direct {v0, p4, p5, p6}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;)V

    .line 771
    .local v0, "partialMsg":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;
    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    invoke-direct {v1, p2}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    .line 772
    .local v1, "record":Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;
    new-instance v2, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-direct {v2, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;-><init>(Lorg/openjsse/sun/security/ssl/OutputRecord;)V

    .line 773
    .local v2, "hos":Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    invoke-virtual {v0, v2}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PartialClientHelloMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 775
    invoke-virtual {p3}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v3

    invoke-virtual {p3}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSuite()Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->determine(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite;)V

    .line 776
    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->update()V

    .line 777
    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->digest()[B

    move-result-object v3

    .line 779
    .local v3, "digest":[B
    invoke-static {p0, p1, p3, v3}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->computeBinder(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;[B)[B

    move-result-object v4

    return-object v4
.end method

.method private static computeBinder(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;Lorg/openjsse/sun/security/ssl/HandshakeHash;)[B
    .locals 2
    .param p0, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p1, "binderKey"    # Ljavax/crypto/SecretKey;
    .param p2, "session"    # Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .param p3, "pskBinderHash"    # Lorg/openjsse/sun/security/ssl/HandshakeHash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 754
    nop

    .line 755
    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSuite()Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v1

    .line 754
    invoke-virtual {p3, v0, v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->determine(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite;)V

    .line 756
    invoke-virtual {p3}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->update()V

    .line 757
    invoke-virtual {p3}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->digest()[B

    move-result-object v0

    .line 759
    .local v0, "digest":[B
    invoke-static {p0, p1, p2, v0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->computeBinder(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;[B)[B

    move-result-object v1

    return-object v1
.end method

.method private static computeBinder(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;[B)[B
    .locals 9
    .param p0, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p1, "binderKey"    # Ljavax/crypto/SecretKey;
    .param p2, "session"    # Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .param p3, "digest"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    :try_start_0
    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSuite()Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v0

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    .line 787
    .local v0, "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    new-instance v1, Lorg/openjsse/sun/security/ssl/HKDF;

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/HKDF;-><init>(Ljava/lang/String;)V

    .line 788
    .local v1, "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    const-string v2, "tls13 finished"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 789
    .local v2, "label":[B
    const/4 v3, 0x0

    new-array v3, v3, [B

    iget v4, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    invoke-static {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->createHkdfInfo([B[BI)[B

    move-result-object v3

    .line 791
    .local v3, "hkdfInfo":[B
    iget v4, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    const-string v5, "TlsBinderKey"

    invoke-virtual {v1, p1, v3, v4, v5}, Lorg/openjsse/sun/security/ssl/HKDF;->expand(Ljavax/crypto/SecretKey;[BILjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 794
    .local v4, "finishedKey":Ljavax/crypto/SecretKey;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hmac"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    const-string v7, "-"

    const-string v8, ""

    .line 795
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 797
    .local v5, "hmacAlg":Ljava/lang/String;
    :try_start_1
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v6

    .line 798
    .local v6, "hmac":Ljavax/crypto/Mac;
    invoke-virtual {v6, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 799
    invoke-virtual {v6, p3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v7
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v7

    .line 800
    .end local v6    # "hmac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    .line 801
    .local v6, "ex":Ljava/security/GeneralSecurityException;
    :goto_0
    :try_start_2
    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v7, v8, v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    .end local p0    # "context":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .end local p1    # "binderKey":Ljavax/crypto/SecretKey;
    .end local p2    # "session":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .end local p3    # "digest":[B
    throw v7
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 803
    .end local v0    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .end local v1    # "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    .end local v2    # "label":[B
    .end local v3    # "hkdfInfo":[B
    .end local v4    # "finishedKey":Ljavax/crypto/SecretKey;
    .end local v5    # "hmacAlg":Ljava/lang/String;
    .end local v6    # "ex":Ljava/security/GeneralSecurityException;
    .restart local p0    # "context":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .restart local p1    # "binderKey":Ljavax/crypto/SecretKey;
    .restart local p2    # "session":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .restart local p3    # "digest":[B
    :catch_2
    move-exception v0

    .line 804
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v2, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method private static deriveBinderKey(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)Ljavax/crypto/SecretKey;
    .locals 9
    .param p0, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p1, "psk"    # Ljavax/crypto/SecretKey;
    .param p2, "session"    # Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 811
    :try_start_0
    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSuite()Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v0

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    .line 812
    .local v0, "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    new-instance v1, Lorg/openjsse/sun/security/ssl/HKDF;

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/HKDF;-><init>(Ljava/lang/String;)V

    .line 813
    .local v1, "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    iget v2, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    new-array v2, v2, [B

    .line 814
    .local v2, "zeros":[B
    const-string v3, "TlsEarlySecret"

    invoke-virtual {v1, v2, p1, v3}, Lorg/openjsse/sun/security/ssl/HKDF;->extract([BLjavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 816
    .local v3, "earlySecret":Ljavax/crypto/SecretKey;
    const-string v4, "tls13 res binder"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 817
    .local v4, "label":[B
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 818
    .local v5, "md":Ljava/security/MessageDigest;
    const/4 v6, 0x0

    new-array v6, v6, [B

    .line 819
    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    iget v7, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    .line 818
    invoke-static {v4, v6, v7}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->createHkdfInfo([B[BI)[B

    move-result-object v6

    .line 820
    .local v6, "hkdfInfo":[B
    iget v7, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    const-string v8, "TlsBinderKey"

    invoke-virtual {v1, v3, v6, v7, v8}, Lorg/openjsse/sun/security/ssl/HKDF;->expand(Ljavax/crypto/SecretKey;[BILjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v7
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 822
    .end local v0    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .end local v1    # "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    .end local v2    # "zeros":[B
    .end local v3    # "earlySecret":Ljavax/crypto/SecretKey;
    .end local v4    # "label":[B
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "hkdfInfo":[B
    :catch_0
    move-exception v0

    .line 823
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v2, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method
