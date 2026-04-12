.class final Lorg/openjsse/sun/security/ssl/Finished$T13FinishedProducer;
.super Ljava/lang/Object;
.source "Finished.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Finished;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T13FinishedProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/Finished$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/Finished$1;

    .line 640
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/Finished$T13FinishedProducer;-><init>()V

    return-void
.end method

.method private onProduceFinished(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 13
    .param p1, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->update()V

    .line 665
    new-instance v0, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;

    invoke-direct {v0, p1}, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 666
    .local v0, "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    const-string v1, "Produced client Finished handshake message"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    :cond_0
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 673
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 676
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->secureRenegotiation:Z

    if-eqz v1, :cond_1

    .line 677
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;->access$800(Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;)[B

    move-result-object v2

    iput-object v2, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->clientVerifyData:[B

    .line 682
    :cond_1
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    .line 683
    .local v1, "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    if-eqz v1, :cond_4

    .line 689
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 690
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    move-result-object v2

    .line 691
    .local v2, "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    if-eqz v2, :cond_3

    .line 700
    :try_start_0
    const-string v3, "TlsClientAppTrafficSecret"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 703
    .local v3, "writeSecret":Ljavax/crypto/SecretKey;
    nop

    .line 704
    invoke-virtual {v2, p1, v3}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v5

    .line 705
    .local v5, "writeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    const-string v6, "TlsKey"

    invoke-interface {v5, v6, v4}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v10

    .line 707
    .local v10, "writeKey":Ljavax/crypto/SecretKey;
    const-string v6, "TlsIv"

    invoke-interface {v5, v6, v4}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 709
    .local v6, "writeIvSecret":Ljavax/crypto/SecretKey;
    new-instance v11, Ljavax/crypto/spec/IvParameterSpec;

    .line 710
    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    invoke-direct {v11, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 711
    .local v11, "writeIv":Ljavax/crypto/spec/IvParameterSpec;
    iget-object v7, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget-object v8, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 713
    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/Authenticator;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/Authenticator;

    move-result-object v8

    iget-object v9, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v12, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 715
    invoke-virtual {v12}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v12

    .line 712
    invoke-virtual/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/SSLCipher;->createWriteCipher(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    move-result-object v7

    .line 717
    .local v7, "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    if-eqz v7, :cond_2

    .line 724
    iput-object v3, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->baseWriteSecret:Ljavax/crypto/SecretKey;

    .line 725
    iget-object v8, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v8, v8, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Lorg/openjsse/sun/security/ssl/OutputRecord;->changeWriteCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;Z)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    .end local v3    # "writeSecret":Ljavax/crypto/SecretKey;
    .end local v5    # "writeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v6    # "writeIvSecret":Ljavax/crypto/SecretKey;
    .end local v7    # "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .end local v10    # "writeKey":Ljavax/crypto/SecretKey;
    .end local v11    # "writeIv":Ljavax/crypto/spec/IvParameterSpec;
    nop

    .line 735
    move-object v3, v1

    check-cast v3, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;

    invoke-virtual {v3, p1}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->forContext(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;

    move-result-object v3

    .line 736
    .local v3, "sd":Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;
    const-string v5, "TlsResumptionMasterSecret"

    invoke-virtual {v3, v5, v4}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 738
    .local v5, "resumptionMasterSecret":Ljavax/crypto/SecretKey;
    iget-object v6, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v6, v5}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setResumptionMasterSecret(Ljavax/crypto/SecretKey;)V

    .line 741
    iget-object v6, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v7, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v7}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->finish()Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    move-result-object v7

    iput-object v7, v6, Lorg/openjsse/sun/security/ssl/TransportContext;->conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 742
    iget-object v6, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v7, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v7, v6, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 745
    const/4 v6, 0x1

    iput-boolean v6, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeFinished:Z

    .line 746
    iget-object v6, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->finishHandshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 749
    return-object v4

    .line 718
    .local v3, "writeSecret":Ljavax/crypto/SecretKey;
    .local v5, "writeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v6    # "writeIvSecret":Ljavax/crypto/SecretKey;
    .restart local v7    # "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .restart local v10    # "writeKey":Ljavax/crypto/SecretKey;
    .restart local v11    # "writeIv":Ljavax/crypto/spec/IvParameterSpec;
    :cond_2
    :try_start_1
    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Illegal cipher suite ("

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ") and protocol version ("

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ")"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    .end local v0    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .end local v1    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v2    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .end local p1    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .end local p2    # "message":Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    throw v4
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 728
    .end local v3    # "writeSecret":Ljavax/crypto/SecretKey;
    .end local v5    # "writeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v6    # "writeIvSecret":Ljavax/crypto/SecretKey;
    .end local v7    # "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .end local v10    # "writeKey":Ljavax/crypto/SecretKey;
    .end local v11    # "writeIv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v0    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .restart local v1    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v2    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .restart local p1    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .restart local p2    # "message":Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    :catch_0
    move-exception v3

    .line 729
    .local v3, "gse":Ljava/security/GeneralSecurityException;
    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v6, "Failure to derive application secrets"

    invoke-virtual {v4, v5, v6, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 693
    .end local v3    # "gse":Ljava/security/GeneralSecurityException;
    :cond_3
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not supported key derivation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 685
    .end local v2    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    :cond_4
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "no key derivation"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method

.method private onProduceFinished(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 22
    .param p1, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    move-object/from16 v1, p1

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->update()V

    .line 757
    new-instance v0, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    move-object v2, v0

    .line 758
    .local v2, "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl,handshake"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    const-string v0, "Produced server Finished handshake message"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    :cond_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v2, v0}, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 765
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 768
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    .line 769
    .local v3, "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    if-eqz v3, :cond_4

    .line 775
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 776
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    move-result-object v4

    .line 777
    .local v4, "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    if-eqz v4, :cond_3

    .line 786
    :try_start_0
    const-string v0, "TlsSaltSecret"

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 789
    .local v0, "saltSecret":Ljavax/crypto/SecretKey;
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    .line 790
    .local v6, "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    new-instance v7, Lorg/openjsse/sun/security/ssl/HKDF;

    iget-object v8, v6, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/openjsse/sun/security/ssl/HKDF;-><init>(Ljava/lang/String;)V

    .line 791
    .local v7, "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    iget v8, v6, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    new-array v8, v8, [B

    .line 792
    .local v8, "zeros":[B
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v10, "TlsZeroSecret"

    invoke-direct {v9, v8, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 794
    .local v9, "sharedSecret":Ljavax/crypto/spec/SecretKeySpec;
    const-string v10, "TlsMasterSecret"

    .line 795
    invoke-virtual {v7, v0, v9, v10}, Lorg/openjsse/sun/security/ssl/HKDF;->extract(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v10

    .line 797
    .local v10, "masterSecret":Ljavax/crypto/SecretKey;
    new-instance v11, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;

    invoke-direct {v11, v1, v10}, Lorg/openjsse/sun/security/ssl/SSLSecretDerivation;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V

    .line 801
    .local v11, "secretKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    const-string v12, "TlsServerAppTrafficSecret"

    invoke-interface {v11, v12, v5}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v12

    .line 803
    .local v12, "writeSecret":Ljavax/crypto/SecretKey;
    nop

    .line 804
    invoke-virtual {v4, v1, v12}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v13

    .line 805
    .local v13, "writeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    const-string v14, "TlsKey"

    invoke-interface {v13, v14, v5}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v18

    .line 807
    .local v18, "writeKey":Ljavax/crypto/SecretKey;
    const-string v14, "TlsIv"

    invoke-interface {v13, v14, v5}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v14

    .line 809
    .local v14, "writeIvSecret":Ljavax/crypto/SecretKey;
    new-instance v15, Ljavax/crypto/spec/IvParameterSpec;

    .line 810
    invoke-interface {v14}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    invoke-direct {v15, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object/from16 v19, v15

    .line 811
    .local v19, "writeIv":Ljavax/crypto/spec/IvParameterSpec;
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v15, v5, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 813
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/Authenticator;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/Authenticator;

    move-result-object v16

    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-object/from16 v21, v0

    .end local v0    # "saltSecret":Ljavax/crypto/SecretKey;
    .local v21, "saltSecret":Ljavax/crypto/SecretKey;
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 815
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v20

    .line 812
    move-object/from16 v17, v5

    invoke-virtual/range {v15 .. v20}, Lorg/openjsse/sun/security/ssl/SSLCipher;->createWriteCipher(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 817
    .local v0, "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    if-eqz v0, :cond_2

    .line 824
    :try_start_1
    iput-object v12, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->baseWriteSecret:Ljavax/crypto/SecretKey;

    .line 825
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    const/4 v15, 0x0

    invoke-virtual {v5, v0, v15}, Lorg/openjsse/sun/security/ssl/OutputRecord;->changeWriteCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;Z)V

    .line 829
    iput-object v11, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 833
    .end local v0    # "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .end local v6    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .end local v7    # "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    .end local v8    # "zeros":[B
    .end local v9    # "sharedSecret":Ljavax/crypto/spec/SecretKeySpec;
    .end local v10    # "masterSecret":Ljavax/crypto/SecretKey;
    .end local v11    # "secretKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v12    # "writeSecret":Ljavax/crypto/SecretKey;
    .end local v13    # "writeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v14    # "writeIvSecret":Ljavax/crypto/SecretKey;
    .end local v18    # "writeKey":Ljavax/crypto/SecretKey;
    .end local v19    # "writeIv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v21    # "saltSecret":Ljavax/crypto/SecretKey;
    nop

    .line 838
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->secureRenegotiation:Z

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;->access$800(Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;)[B

    move-result-object v5

    iput-object v5, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->serverVerifyData:[B

    .line 843
    :cond_1
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v5, v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 844
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 843
    invoke-virtual {v0, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    const/4 v0, 0x0

    return-object v0

    .line 830
    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_0

    .line 818
    .restart local v0    # "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .restart local v6    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .restart local v7    # "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    .restart local v8    # "zeros":[B
    .restart local v9    # "sharedSecret":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v10    # "masterSecret":Ljavax/crypto/SecretKey;
    .restart local v11    # "secretKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v12    # "writeSecret":Ljavax/crypto/SecretKey;
    .restart local v13    # "writeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v14    # "writeIvSecret":Ljavax/crypto/SecretKey;
    .restart local v18    # "writeKey":Ljavax/crypto/SecretKey;
    .restart local v19    # "writeIv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v21    # "saltSecret":Ljavax/crypto/SecretKey;
    :cond_2
    :try_start_2
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v15, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    move-object/from16 v16, v0

    .end local v0    # "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .local v16, "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v2

    .end local v2    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .local v17, "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    :try_start_3
    const-string v2, "Illegal cipher suite ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") and protocol version ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v15, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    .end local v3    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v4    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .end local v17    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .end local p1    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .end local p2    # "message":Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    throw v0
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 830
    .end local v6    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .end local v7    # "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    .end local v8    # "zeros":[B
    .end local v9    # "sharedSecret":Ljavax/crypto/spec/SecretKeySpec;
    .end local v10    # "masterSecret":Ljavax/crypto/SecretKey;
    .end local v11    # "secretKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v12    # "writeSecret":Ljavax/crypto/SecretKey;
    .end local v13    # "writeKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v14    # "writeIvSecret":Ljavax/crypto/SecretKey;
    .end local v16    # "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .end local v18    # "writeKey":Ljavax/crypto/SecretKey;
    .end local v19    # "writeIv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v21    # "saltSecret":Ljavax/crypto/SecretKey;
    .restart local v3    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v4    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .restart local v17    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .restart local p1    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .restart local p2    # "message":Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    :catch_1
    move-exception v0

    goto :goto_0

    .end local v17    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .restart local v2    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    :catch_2
    move-exception v0

    move-object/from16 v17, v2

    .line 831
    .end local v2    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    .restart local v17    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    :goto_0
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v6, "Failure to derive application secrets"

    invoke-virtual {v2, v5, v6, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 779
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    .end local v17    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .restart local v2    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    :cond_3
    move-object/from16 v17, v2

    .end local v2    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .restart local v17    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not supported key derivation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 771
    .end local v4    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .end local v17    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .restart local v2    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    :cond_4
    move-object/from16 v17, v2

    .end local v2    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    .restart local v17    # "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "no key derivation"

    invoke-virtual {v0, v2, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 2
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 651
    .local v0, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v1, :cond_0

    .line 652
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    invoke-direct {p0, v1, p2}, Lorg/openjsse/sun/security/ssl/Finished$T13FinishedProducer;->onProduceFinished(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    move-result-object v1

    return-object v1

    .line 655
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    invoke-direct {p0, v1, p2}, Lorg/openjsse/sun/security/ssl/Finished$T13FinishedProducer;->onProduceFinished(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    move-result-object v1

    return-object v1
.end method
