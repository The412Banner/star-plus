.class final Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateConsumer;
.super Ljava/lang/Object;
.source "KeyUpdate.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/KeyUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyUpdateConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/KeyUpdate$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/KeyUpdate$1;

    .line 179
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 16
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    move-object/from16 v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;

    .line 190
    .local v1, "hc":Lorg/openjsse/sun/security/ssl/PostHandshakeContext;
    new-instance v0, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;-><init>(Lorg/openjsse/sun/security/ssl/PostHandshakeContext;Ljava/nio/ByteBuffer;)V

    move-object v3, v0

    .line 191
    .local v3, "km":Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl,handshake"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "Consuming KeyUpdate post-handshake message"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :cond_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 198
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    move-result-object v4

    .line 199
    .local v4, "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    if-eqz v4, :cond_5

    .line 206
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/InputRecord;->readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->baseSecret:Ljavax/crypto/SecretKey;

    invoke-virtual {v4, v1, v0}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v5

    .line 208
    .local v5, "skd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    if-eqz v5, :cond_4

    .line 214
    const-string v0, "TlsUpdateNplus1"

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 215
    .local v7, "nplus1":Ljavax/crypto/SecretKey;
    invoke-virtual {v4, v1, v7}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v8

    .line 216
    .local v8, "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    const-string v0, "TlsKey"

    invoke-interface {v8, v0, v6}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v15

    .line 217
    .local v15, "key":Ljavax/crypto/SecretKey;
    new-instance v13, Ljavax/crypto/spec/IvParameterSpec;

    .line 218
    const-string v0, "TlsIv"

    invoke-interface {v8, v0, v6}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-direct {v13, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 220
    .local v13, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 222
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/Authenticator;

    move-result-object v10

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v11, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 224
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v14

    .line 221
    move-object v12, v15

    invoke-virtual/range {v9 .. v14}, Lorg/openjsse/sun/security/ssl/SSLCipher;->createReadCipher(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    move-result-object v0

    .line 226
    .local v0, "rc":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    if-eqz v0, :cond_3

    .line 233
    iput-object v7, v0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->baseSecret:Ljavax/crypto/SecretKey;

    .line 234
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v6, v0}, Lorg/openjsse/sun/security/ssl/InputRecord;->changeReadCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;)V

    .line 235
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_1

    const-string v6, "ssl"

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 236
    const-string v6, "KeyUpdate: read key updated"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0    # "rc":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    :cond_1
    nop

    .line 243
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;->access$300(Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;)Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    move-result-object v0

    sget-object v6, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->REQUESTED:Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    if-ne v0, v6, :cond_2

    .line 245
    sget-object v0, Lorg/openjsse/sun/security/ssl/KeyUpdate;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    new-instance v6, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;

    sget-object v9, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;->NOTREQUESTED:Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;

    invoke-direct {v6, v1, v9}, Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;-><init>(Lorg/openjsse/sun/security/ssl/PostHandshakeContext;Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateRequest;)V

    invoke-interface {v0, v1, v6}, Lorg/openjsse/sun/security/ssl/HandshakeProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    .line 247
    return-void

    .line 251
    :cond_2
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->finishPostHandshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 252
    return-void

    .line 227
    .restart local v0    # "rc":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    :cond_3
    :try_start_1
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v9, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Illegal cipher suite ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") and protocol version ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v6

    .end local v1    # "hc":Lorg/openjsse/sun/security/ssl/PostHandshakeContext;
    .end local v3    # "km":Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;
    .end local v4    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .end local v5    # "skd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v7    # "nplus1":Ljavax/crypto/SecretKey;
    .end local v8    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v13    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v15    # "key":Ljavax/crypto/SecretKey;
    .end local p1    # "context":Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .end local p2    # "message":Ljava/nio/ByteBuffer;
    throw v6
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 238
    .end local v0    # "rc":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .restart local v1    # "hc":Lorg/openjsse/sun/security/ssl/PostHandshakeContext;
    .restart local v3    # "km":Lorg/openjsse/sun/security/ssl/KeyUpdate$KeyUpdateMessage;
    .restart local v4    # "kdg":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    .restart local v5    # "skd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v7    # "nplus1":Ljavax/crypto/SecretKey;
    .restart local v8    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v13    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v15    # "key":Ljavax/crypto/SecretKey;
    .restart local p1    # "context":Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .restart local p2    # "message":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v9, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v10, "Failure to derive read secrets"

    invoke-virtual {v6, v9, v10, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v6

    throw v6

    .line 210
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    .end local v7    # "nplus1":Ljavax/crypto/SecretKey;
    .end local v8    # "kd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v13    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v15    # "key":Ljavax/crypto/SecretKey;
    :cond_4
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v7, "no key derivation"

    invoke-virtual {v0, v6, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 201
    .end local v5    # "skd":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    :cond_5
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not supported key derivation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method
