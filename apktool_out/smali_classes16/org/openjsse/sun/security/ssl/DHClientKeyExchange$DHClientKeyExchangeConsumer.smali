.class final Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeConsumer;
.super Ljava/lang/Object;
.source "DHClientKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/DHClientKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DHClientKeyExchangeConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$1;

    .line 235
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 247
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    const/4 v1, 0x0

    .line 248
    .local v1, "dhePossession":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;
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

    .line 249
    .local v3, "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v4, v3, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;

    if-eqz v4, :cond_0

    .line 250
    move-object v1, v3

    check-cast v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;

    .line 251
    goto :goto_1

    .line 253
    .end local v3    # "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_0
    goto :goto_0

    .line 255
    :cond_1
    :goto_1
    if-eqz v1, :cond_6

    .line 261
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->valueOf(Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v2

    .line 264
    .local v2, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    if-eqz v2, :cond_5

    .line 270
    new-instance v3, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;

    invoke-direct {v3, v0, p2}, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 272
    .local v3, "ckem":Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_2

    const-string v4, "ssl,handshake"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    const-string v4, "Consuming DH ClientKeyExchange handshake message"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    :cond_2
    :try_start_0
    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->publicKey:Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v4}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    .line 280
    .local v4, "params":Ljavax/crypto/spec/DHParameterSpec;
    new-instance v5, Ljavax/crypto/spec/DHPublicKeySpec;

    new-instance v6, Ljava/math/BigInteger;

    .line 281
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;->access$200(Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;)[B

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v8, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 282
    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 283
    .local v5, "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    const-string v6, "DiffieHellman"

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 284
    .local v6, "kf":Ljava/security/KeyFactory;
    nop

    .line 285
    invoke-virtual {v6, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    check-cast v7, Ljavax/crypto/interfaces/DHPublicKey;

    .line 288
    .local v7, "peerPublicKey":Ljavax/crypto/interfaces/DHPublicKey;
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    sget-object v9, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 289
    invoke-static {v9}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v9

    .line 288
    invoke-interface {v8, v9, v7}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 295
    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->valueOf(Ljavax/crypto/spec/DHParameterSpec;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v8

    .line 296
    .local v8, "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeCredentials:Ljava/util/List;

    new-instance v10, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;

    invoke-direct {v10, v7, v8}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;-><init>(Ljavax/crypto/interfaces/DHPublicKey;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    nop

    .line 304
    .end local v4    # "params":Ljavax/crypto/spec/DHParameterSpec;
    .end local v5    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    .end local v6    # "kf":Ljava/security/KeyFactory;
    .end local v7    # "peerPublicKey":Ljavax/crypto/interfaces/DHPublicKey;
    .end local v8    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    invoke-virtual {v2, v0}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v4

    .line 305
    .local v4, "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    nop

    .line 306
    const-string v5, "MasterSecret"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 307
    .local v5, "masterSecret":Ljavax/crypto/SecretKey;
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v6, v5}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setMasterSecret(Ljavax/crypto/SecretKey;)V

    .line 309
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 310
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    move-result-object v6

    .line 311
    .local v6, "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    if-eqz v6, :cond_3

    .line 316
    nop

    .line 317
    invoke-virtual {v6, v0, v5}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v7

    iput-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    .line 319
    return-void

    .line 313
    :cond_3
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not supported key derivation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    throw v7

    .line 291
    .local v4, "params":Ljavax/crypto/spec/DHParameterSpec;
    .local v5, "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    .local v6, "kf":Ljava/security/KeyFactory;
    .restart local v7    # "peerPublicKey":Ljavax/crypto/interfaces/DHPublicKey;
    :cond_4
    :try_start_1
    new-instance v8, Ljavax/net/ssl/SSLHandshakeException;

    const-string v9, "DHPublicKey does not comply to algorithm constraints"

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .end local v1    # "dhePossession":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;
    .end local v2    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .end local v3    # "ckem":Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;
    .end local p1    # "context":Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .end local p2    # "message":Ljava/nio/ByteBuffer;
    throw v8
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    .end local v4    # "params":Ljavax/crypto/spec/DHParameterSpec;
    .end local v5    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    .end local v6    # "kf":Ljava/security/KeyFactory;
    .end local v7    # "peerPublicKey":Ljavax/crypto/interfaces/DHPublicKey;
    .restart local v0    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .restart local v1    # "dhePossession":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;
    .restart local v2    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    .restart local v3    # "ckem":Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;
    .restart local p1    # "context":Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .restart local p2    # "message":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    .line 299
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    const-string v6, "Could not generate DHPublicKey"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v5, v4}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/SSLHandshakeException;

    move-object v6, v5

    check-cast v6, Ljavax/net/ssl/SSLHandshakeException;

    throw v5

    .line 266
    .end local v3    # "ckem":Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Not supported key exchange type"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 257
    .end local v2    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    :cond_6
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "No expected DHE possessions for client key exchange"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method
