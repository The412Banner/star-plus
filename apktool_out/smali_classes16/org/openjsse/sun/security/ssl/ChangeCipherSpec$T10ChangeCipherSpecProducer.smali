.class final Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$T10ChangeCipherSpecProducer;
.super Ljava/lang/Object;
.source "ChangeCipherSpec.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ChangeCipherSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T10ChangeCipherSpecProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$1;

    .line 56
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ChangeCipherSpec$T10ChangeCipherSpecProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 15
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    move-object/from16 v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 66
    .local v1, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    .line 68
    .local v2, "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    instance-of v0, v2, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;

    if-eqz v0, :cond_7

    .line 71
    move-object v3, v2

    check-cast v3, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;

    .line 72
    .local v3, "tkd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;
    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 74
    .local v4, "ncs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    iget-object v0, v4, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLCipher;->cipherType:Lorg/openjsse/sun/security/ssl/CipherType;

    sget-object v5, Lorg/openjsse/sun/security/ssl/CipherType;->AEAD_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    const-string v6, "Algorithm missing:  "

    if-ne v0, v5, :cond_0

    .line 75
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 76
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/Authenticator;

    move-result-object v0

    move-object v5, v0

    .local v0, "writeAuthenticator":Lorg/openjsse/sun/security/ssl/Authenticator;
    goto :goto_1

    .line 79
    .end local v0    # "writeAuthenticator":Lorg/openjsse/sun/security/ssl/Authenticator;
    :cond_0
    :try_start_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v5, v4, Lorg/openjsse/sun/security/ssl/CipherSuite;->macAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v7, v7, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v7, :cond_1

    const-string v7, "clientMacKey"

    goto :goto_0

    :cond_1
    const-string v7, "serverMacKey"

    .line 81
    :goto_0
    invoke-virtual {v3, v7}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;->getTrafficKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 79
    invoke-static {v0, v5, v7}, Lorg/openjsse/sun/security/ssl/Authenticator;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/Authenticator;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    .restart local v0    # "writeAuthenticator":Lorg/openjsse/sun/security/ssl/Authenticator;
    move-object v5, v0

    .line 89
    .end local v0    # "writeAuthenticator":Lorg/openjsse/sun/security/ssl/Authenticator;
    .local v5, "writeAuthenticator":Lorg/openjsse/sun/security/ssl/Authenticator;
    :goto_1
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v0, :cond_2

    const-string v0, "clientWriteKey"

    goto :goto_2

    :cond_2
    const-string v0, "serverWriteKey"

    .line 90
    :goto_2
    invoke-virtual {v3, v0}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;->getTrafficKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v13

    .line 92
    .local v13, "writeKey":Ljavax/crypto/SecretKey;
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v0, :cond_3

    const-string v0, "clientWriteIv"

    goto :goto_3

    :cond_3
    const-string v0, "serverWriteIv"

    .line 93
    :goto_3
    invoke-virtual {v3, v0}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;->getTrafficKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v14

    .line 95
    .local v14, "writeIv":Ljavax/crypto/SecretKey;
    const/4 v0, 0x0

    if-nez v14, :cond_4

    move-object v11, v0

    goto :goto_4

    :cond_4
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    .line 96
    invoke-interface {v14}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v11, v7

    :goto_4
    nop

    .line 99
    .local v11, "iv":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_1
    iget-object v7, v4, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget-object v9, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 102
    invoke-virtual {v8}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v12

    .line 99
    move-object v8, v5

    move-object v10, v13

    invoke-virtual/range {v7 .. v12}, Lorg/openjsse/sun/security/ssl/SSLCipher;->createWriteCipher(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    move-result-object v6
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .local v6, "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    nop

    .line 108
    if-eqz v6, :cond_6

    .line 114
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_5

    const-string v7, "ssl,handshake"

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 115
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "Produced ChangeCipherSpec message"

    invoke-static {v8, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_5
    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Lorg/openjsse/sun/security/ssl/OutputRecord;->changeWriteCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;Z)V

    .line 121
    return-object v0

    .line 109
    :cond_6
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v7, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal cipher suite ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") and protocol version ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 103
    .end local v6    # "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    new-instance v7, Ljavax/net/ssl/SSLException;

    invoke-direct {v7, v6, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 83
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    .end local v5    # "writeAuthenticator":Lorg/openjsse/sun/security/ssl/Authenticator;
    .end local v11    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v13    # "writeKey":Ljavax/crypto/SecretKey;
    .end local v14    # "writeIv":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 85
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_5
    new-instance v5, Ljavax/net/ssl/SSLException;

    invoke-direct {v5, v6, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 69
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v3    # "tkd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;
    .end local v4    # "ncs":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Not supported."

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
