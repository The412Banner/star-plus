.class final Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeConsumer;
.super Ljava/lang/Object;
.source "ECDHClientKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ECDHClientKeyExchangeConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$1;

    .line 259
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 13
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 271
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    const/4 v1, 0x0

    .line 272
    .local v1, "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 273
    .local v3, "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v4, v3, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    if-eqz v4, :cond_0

    .line 274
    move-object v1, v3

    check-cast v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    .line 275
    goto :goto_1

    .line 277
    .end local v3    # "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_0
    goto :goto_0

    .line 279
    :cond_1
    :goto_1
    if-eqz v1, :cond_8

    .line 285
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 286
    .local v2, "params":Ljava/security/spec/ECParameterSpec;
    if-eqz v2, :cond_7

    .line 292
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->valueOf(Ljava/security/spec/ECParameterSpec;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v3

    .line 293
    .local v3, "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    if-eqz v3, :cond_6

    .line 299
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->valueOf(Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v4

    .line 302
    .local v4, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    if-eqz v4, :cond_5

    .line 309
    new-instance v5, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;

    invoke-direct {v5, v0, p2}, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 311
    .local v5, "cke":Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_2

    const-string v6, "ssl,handshake"

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 312
    const-string v6, "Consuming ECDH ClientKeyExchange handshake message"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :cond_2
    nop

    .line 319
    :try_start_0
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;->access$400(Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;)[B

    move-result-object v6

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/JsseJce;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object v6

    .line 320
    .local v6, "point":Ljava/security/spec/ECPoint;
    new-instance v7, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v7, v6, v2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 322
    .local v7, "spec":Ljava/security/spec/ECPublicKeySpec;
    const-string v8, "EC"

    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v8

    .line 323
    .local v8, "kf":Ljava/security/KeyFactory;
    nop

    .line 324
    invoke-virtual {v8, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v9

    check-cast v9, Ljava/security/interfaces/ECPublicKey;

    .line 327
    .local v9, "peerPublicKey":Ljava/security/interfaces/ECPublicKey;
    iget-object v10, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    sget-object v11, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 328
    invoke-static {v11}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v11

    .line 327
    invoke-interface {v10, v11, v9}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 334
    iget-object v10, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeCredentials:Ljava/util/List;

    new-instance v11, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;

    invoke-direct {v11, v9, v3}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;-><init>(Ljava/security/interfaces/ECPublicKey;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    nop

    .line 342
    .end local v6    # "point":Ljava/security/spec/ECPoint;
    .end local v7    # "spec":Ljava/security/spec/ECPublicKeySpec;
    .end local v8    # "kf":Ljava/security/KeyFactory;
    .end local v9    # "peerPublicKey":Ljava/security/interfaces/ECPublicKey;
    invoke-virtual {v4, v0}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v6

    .line 343
    .local v6, "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    nop

    .line 344
    const-string v7, "MasterSecret"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 345
    .local v7, "masterSecret":Ljavax/crypto/SecretKey;
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v8, v7}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setMasterSecret(Ljavax/crypto/SecretKey;)V

    .line 347
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 348
    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    move-result-object v8

    .line 349
    .local v8, "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    if-eqz v8, :cond_3

    .line 354
    nop

    .line 355
    invoke-virtual {v8, v0, v7}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v9

    iput-object v9, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    .line 357
    return-void

    .line 351
    :cond_3
    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v10, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not supported key derivation: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v9

    throw v9

    .line 330
    .local v6, "point":Ljava/security/spec/ECPoint;
    .local v7, "spec":Ljava/security/spec/ECPublicKeySpec;
    .local v8, "kf":Ljava/security/KeyFactory;
    .restart local v9    # "peerPublicKey":Ljava/security/interfaces/ECPublicKey;
    :cond_4
    :try_start_1
    new-instance v10, Ljavax/net/ssl/SSLHandshakeException;

    const-string v11, "ECPublicKey does not comply to algorithm constraints"

    invoke-direct {v10, v11}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .end local v1    # "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    .end local v2    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v3    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .end local v4    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v5    # "cke":Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;
    .end local p1    # "context":Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .end local p2    # "message":Ljava/nio/ByteBuffer;
    throw v10
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 336
    .end local v6    # "point":Ljava/security/spec/ECPoint;
    .end local v7    # "spec":Ljava/security/spec/ECPublicKeySpec;
    .end local v8    # "kf":Ljava/security/KeyFactory;
    .end local v9    # "peerPublicKey":Ljava/security/interfaces/ECPublicKey;
    .restart local v0    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .restart local v1    # "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    .restart local v2    # "params":Ljava/security/spec/ECParameterSpec;
    .restart local v3    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    .restart local v4    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .restart local v5    # "cke":Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;
    .restart local p1    # "context":Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .restart local p2    # "message":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v6

    goto :goto_2

    :catch_1
    move-exception v6

    .line 337
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v7, Ljavax/net/ssl/SSLHandshakeException;

    const-string v8, "Could not generate ECPublicKey"

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v7, v6}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SSLHandshakeException;

    move-object v8, v7

    check-cast v8, Ljavax/net/ssl/SSLHandshakeException;

    throw v7

    .line 304
    .end local v5    # "cke":Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v7, "Not supported key exchange type"

    invoke-virtual {v5, v6, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    .line 295
    .end local v4    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    :cond_6
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v6, "Unsupported EC server cert for ECDH client key exchange"

    invoke-virtual {v4, v5, v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 288
    .end local v3    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_7
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Not EC server cert for ECDH client key exchange"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 281
    .end local v2    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_8
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "No expected EC server cert for ECDH client key exchange"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method
