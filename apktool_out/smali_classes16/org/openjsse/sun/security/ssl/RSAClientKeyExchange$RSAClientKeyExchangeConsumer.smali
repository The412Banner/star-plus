.class final Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeConsumer;
.super Ljava/lang/Object;
.source "RSAClientKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RSAClientKeyExchangeConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$1;

    .line 236
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 15
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    move-object/from16 v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 248
    .local v1, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    const/4 v0, 0x0

    .line 249
    .local v0, "rsaPossession":Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;
    const/4 v2, 0x0

    .line 250
    .local v2, "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 251
    .local v4, "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v5, v4, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;

    if-eqz v5, :cond_0

    .line 252
    move-object v0, v4

    check-cast v0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;

    .line 253
    move-object v3, v2

    move-object v2, v0

    goto :goto_1

    .line 254
    :cond_0
    instance-of v5, v4, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    if-eqz v5, :cond_1

    .line 255
    move-object v2, v4

    check-cast v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    .line 256
    if-eqz v0, :cond_1

    .line 257
    move-object v3, v2

    move-object v2, v0

    goto :goto_1

    .line 260
    .end local v4    # "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_1
    goto :goto_0

    .line 250
    :cond_2
    move-object v3, v2

    move-object v2, v0

    .line 262
    .end local v0    # "rsaPossession":Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;
    .local v2, "rsaPossession":Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;
    .local v3, "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    :goto_1
    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    .line 263
    :cond_3
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "No RSA possessions negotiated for client key exchange"

    invoke-virtual {v0, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 267
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;->popPrivateKey:Ljava/security/PrivateKey;

    goto :goto_3

    :cond_5
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    :goto_3
    move-object v4, v0

    .line 269
    .local v4, "privateKey":Ljava/security/PrivateKey;
    invoke-interface {v4}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v5, "RSA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 274
    new-instance v0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;

    move-object/from16 v5, p2

    invoke-direct {v0, v1, v5}, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    move-object v6, v0

    .line 276
    .local v6, "ckem":Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_6

    const-string v0, "ssl,handshake"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 277
    const-string v0, "Consuming RSA ClientKeyExchange handshake message"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :cond_6
    :try_start_0
    iget-object v0, v6, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->encrypted:[B

    .line 285
    invoke-static {v1, v4, v0}, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;->decode(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Ljava/security/PrivateKey;[B)Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;

    move-result-object v0

    .line 286
    .local v0, "premaster":Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;
    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeCredentials:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    nop

    .line 293
    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-static {v7, v8}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->valueOf(Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v7

    .line 296
    .local v7, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    if-eqz v7, :cond_8

    .line 300
    invoke-virtual {v7, v1}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v8

    .line 301
    .local v8, "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    nop

    .line 302
    const-string v9, "MasterSecret"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 305
    .local v9, "masterSecret":Ljavax/crypto/SecretKey;
    iget-object v10, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v10, v9}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setMasterSecret(Ljavax/crypto/SecretKey;)V

    .line 306
    iget-object v10, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 307
    invoke-static {v10}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    move-result-object v10

    .line 308
    .local v10, "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    if-eqz v10, :cond_7

    .line 313
    nop

    .line 314
    invoke-virtual {v10, v1, v9}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v11

    iput-object v11, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    .line 317
    .end local v8    # "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v9    # "masterSecret":Ljavax/crypto/SecretKey;
    .end local v10    # "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    return-void

    .line 309
    .restart local v8    # "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v9    # "masterSecret":Ljavax/crypto/SecretKey;
    .restart local v10    # "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    :cond_7
    iget-object v11, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v12, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not supported key derivation: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v11

    throw v11

    .line 297
    .end local v8    # "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v9    # "masterSecret":Ljavax/crypto/SecretKey;
    .end local v10    # "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    :cond_8
    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v9, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v10, "Not supported key exchange type"

    invoke-virtual {v8, v9, v10}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v8

    throw v8

    .line 287
    .end local v0    # "premaster":Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;
    .end local v7    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    :catch_0
    move-exception v0

    .line 288
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v9, "Cannot decode RSA premaster secret"

    invoke-virtual {v7, v8, v9, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    throw v7

    .line 270
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    .end local v6    # "ckem":Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;
    :cond_9
    move-object/from16 v5, p2

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v7, "Not RSA private key for client key exchange"

    invoke-virtual {v0, v6, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method
