.class final Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeProducer;
.super Ljava/lang/Object;
.source "ECDHClientKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ECDHClientKeyExchangeProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$1;

    .line 170
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeProducer;-><init>()V

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

    .line 180
    move-object/from16 v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 182
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    const/4 v1, 0x0

    .line 183
    .local v1, "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeCredentials:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/SSLCredentials;

    .line 184
    .local v3, "credential":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    instance-of v4, v3, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    if-eqz v4, :cond_0

    .line 185
    move-object v1, v3

    check-cast v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    .line 186
    goto :goto_1

    .line 188
    .end local v3    # "credential":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    :cond_0
    goto :goto_0

    .line 190
    :cond_1
    :goto_1
    if-eqz v1, :cond_7

    .line 195
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    .line 196
    .local v2, "publicKey":Ljava/security/PublicKey;
    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 201
    move-object v3, v2

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 202
    .local v3, "params":Ljava/security/spec/ECParameterSpec;
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->valueOf(Ljava/security/spec/ECParameterSpec;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v4

    .line 203
    .local v4, "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    if-eqz v4, :cond_5

    .line 208
    new-instance v5, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;

    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 209
    invoke-virtual {v6}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;-><init>(Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;Ljava/security/SecureRandom;)V

    .line 210
    .local v5, "ecdhePossession":Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v6, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;

    iget-object v7, v5, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-direct {v6, v0, v7}, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/security/interfaces/ECPublicKey;)V

    .line 214
    .local v6, "cke":Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_2

    const-string v7, "ssl,handshake"

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 215
    const-string v7, "Produced ECDH ClientKeyExchange handshake message"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :cond_2
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v6, v7}, Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 221
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v7}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 224
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-static {v7, v8}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->valueOf(Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v7

    .line 227
    .local v7, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    if-eqz v7, :cond_4

    .line 232
    invoke-virtual {v7, v0}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v8

    .line 233
    .local v8, "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    nop

    .line 234
    const-string v9, "MasterSecret"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 235
    .local v9, "masterSecret":Ljavax/crypto/SecretKey;
    iget-object v11, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v11, v9}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setMasterSecret(Ljavax/crypto/SecretKey;)V

    .line 237
    iget-object v11, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 238
    invoke-static {v11}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    move-result-object v11

    .line 239
    .local v11, "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    if-eqz v11, :cond_3

    .line 245
    nop

    .line 246
    invoke-virtual {v11, v0, v9}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v12

    iput-object v12, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    .line 251
    .end local v8    # "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v9    # "masterSecret":Ljavax/crypto/SecretKey;
    .end local v11    # "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    return-object v10

    .line 241
    .restart local v8    # "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v9    # "masterSecret":Ljavax/crypto/SecretKey;
    .restart local v11    # "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    :cond_3
    iget-object v10, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v12, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not supported key derivation: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v10

    throw v10

    .line 229
    .end local v8    # "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v9    # "masterSecret":Ljavax/crypto/SecretKey;
    .end local v11    # "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    :cond_4
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v9, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v10, "Not supported key exchange type"

    invoke-virtual {v8, v9, v10}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v8

    throw v8

    .line 204
    .end local v5    # "ecdhePossession":Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHEPossession;
    .end local v6    # "cke":Lorg/openjsse/sun/security/ssl/ECDHClientKeyExchange$ECDHClientKeyExchangeMessage;
    .end local v7    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    :cond_5
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v7, "Unsupported EC server cert for ECDH client key exchange"

    invoke-virtual {v5, v6, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    .line 197
    .end local v3    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v4    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_6
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Not EC server certificate for ECDH client key exchange"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 191
    .end local v2    # "publicKey":Ljava/security/PublicKey;
    :cond_7
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "No server certificate for ECDH client key exchange"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method
