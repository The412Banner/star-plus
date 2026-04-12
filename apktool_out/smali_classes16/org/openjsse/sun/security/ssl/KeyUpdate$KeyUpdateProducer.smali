.class final Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateProducer;
.super Ljava/lang/Object;
.source "KeyUpdate.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/KeyUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyUpdateProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/KeyUpdate$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/KeyUpdate$1;

    .line 258
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateProducer;-><init>()V

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

    .line 268
    move-object/from16 v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;

    .line 269
    .local v1, "hc":Lorg/openjsse/sun/security/ssl/PostHandshakeContext;
    move-object/from16 v2, p2

    check-cast v2, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;

    .line 270
    .local v2, "km":Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl,handshake"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "Produced KeyUpdate post-handshake message"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    :cond_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 277
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    move-result-object v3

    .line 278
    .local v3, "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    if-eqz v3, :cond_4

    .line 285
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/OutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->baseSecret:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v1, v0}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v4

    .line 287
    .local v4, "skd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    if-eqz v4, :cond_3

    .line 293
    const-string v0, "TlsUpdateNplus1"

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 294
    .local v6, "nplus1":Ljavax/crypto/SecretKey;
    invoke-virtual {v3, v1, v6}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v7

    .line 295
    .local v7, "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    const-string v0, "TlsKey"

    invoke-interface {v7, v0, v5}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v14

    .line 296
    .local v14, "key":Ljavax/crypto/SecretKey;
    new-instance v12, Ljavax/crypto/spec/IvParameterSpec;

    .line 297
    const-string v0, "TlsIv"

    invoke-interface {v7, v0, v5}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-direct {v12, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 301
    .local v12, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 302
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/Authenticator;

    move-result-object v9

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v10, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 304
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v13

    .line 301
    move-object v11, v14

    invoke-virtual/range {v8 .. v13}, Lorg/openjsse/sun/security/ssl/SSLCipher;->createWriteCipher(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .local v0, "wc":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    nop

    .line 310
    if-eqz v0, :cond_2

    .line 320
    iput-object v6, v0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->baseSecret:Ljavax/crypto/SecretKey;

    .line 321
    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v8, v8, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;->access$300(Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;)Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    move-result-object v9

    iget-byte v9, v9, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->id:B

    invoke-virtual {v8, v0, v9}, Lorg/openjsse/sun/security/ssl/OutputRecord;->changeWriteCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;B)V

    .line 322
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_1

    const-string v8, "ssl"

    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 323
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "KeyUpdate: write key updated"

    invoke-static {v9, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    :cond_1
    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v8}, Lorg/openjsse/sun/security/ssl/TransportContext;->finishPostHandshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 330
    return-object v5

    .line 311
    :cond_2
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal cipher suite ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") and protocol version ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    .line 305
    .end local v0    # "wc":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v9, "Failure to derive write secrets"

    invoke-virtual {v5, v8, v9, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    .line 289
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    .end local v6    # "nplus1":Ljavax/crypto/SecretKey;
    .end local v7    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v12    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v14    # "key":Ljavax/crypto/SecretKey;
    :cond_3
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v6, "no key derivation"

    invoke-virtual {v0, v5, v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 280
    .end local v4    # "skd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    :cond_4
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not supported key derivation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method
