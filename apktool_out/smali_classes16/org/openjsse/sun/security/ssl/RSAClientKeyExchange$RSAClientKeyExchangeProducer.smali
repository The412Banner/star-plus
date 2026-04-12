.class final Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeProducer;
.super Ljava/lang/Object;
.source "RSAClientKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RSAClientKeyExchangeProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$1;

    .line 141
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 14
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 153
    .local v1, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    const/4 v0, 0x0

    .line 154
    .local v0, "rsaCredentials":Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSACredentials;
    const/4 v2, 0x0

    .line 155
    .local v2, "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeCredentials:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjsse/sun/security/ssl/SSLCredentials;

    .line 156
    .local v4, "credential":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    instance-of v5, v4, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSACredentials;

    if-eqz v5, :cond_0

    .line 157
    move-object v0, v4

    check-cast v0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSACredentials;

    .line 158
    if-eqz v2, :cond_1

    .line 159
    move-object v3, v2

    move-object v2, v0

    goto :goto_1

    .line 161
    :cond_0
    instance-of v5, v4, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    if-eqz v5, :cond_1

    .line 162
    move-object v2, v4

    check-cast v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    .line 163
    if-eqz v0, :cond_1

    .line 164
    move-object v3, v2

    move-object v2, v0

    goto :goto_1

    .line 167
    .end local v4    # "credential":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    :cond_1
    goto :goto_0

    .line 155
    :cond_2
    move-object v3, v2

    move-object v2, v0

    .line 169
    .end local v0    # "rsaCredentials":Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSACredentials;
    .local v2, "rsaCredentials":Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSACredentials;
    .local v3, "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    :goto_1
    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    .line 170
    :cond_3
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "No RSA credentials negotiated for client key exchange"

    invoke-virtual {v0, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 174
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    iget-object v0, v2, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSACredentials;->popPublicKey:Ljava/security/interfaces/RSAPublicKey;

    goto :goto_3

    :cond_5
    iget-object v0, v3, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    :goto_3
    move-object v4, v0

    .line 176
    .local v4, "publicKey":Ljava/security/PublicKey;
    invoke-interface {v4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v5, "RSA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 184
    :try_start_0
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;->createPremasterSecret(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;)Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;

    move-result-object v0

    .line 185
    .local v0, "premaster":Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v5, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;

    invoke-direct {v5, v1, v0, v4}, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .local v5, "ckem":Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;
    nop

    .line 192
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_6

    const-string v6, "ssl,handshake"

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 193
    const-string v6, "Produced RSA ClientKeyExchange handshake message"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :cond_6
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v5, v6}, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 199
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v6}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 202
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->valueOf(Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v6

    .line 205
    .local v6, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    if-eqz v6, :cond_8

    .line 209
    invoke-virtual {v6, v1}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v7

    .line 210
    .local v7, "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    nop

    .line 211
    const-string v8, "MasterSecret"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 214
    .local v8, "masterSecret":Ljavax/crypto/SecretKey;
    iget-object v10, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v10, v8}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setMasterSecret(Ljavax/crypto/SecretKey;)V

    .line 215
    iget-object v10, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 216
    invoke-static {v10}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    move-result-object v10

    .line 217
    .local v10, "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    if-eqz v10, :cond_7

    .line 222
    nop

    .line 223
    invoke-virtual {v10, v1, v8}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v11

    iput-object v11, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    .line 228
    .end local v7    # "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v8    # "masterSecret":Ljavax/crypto/SecretKey;
    .end local v10    # "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    return-object v9

    .line 218
    .restart local v7    # "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v8    # "masterSecret":Ljavax/crypto/SecretKey;
    .restart local v10    # "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    :cond_7
    iget-object v9, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v11, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not supported key derivation: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v9

    throw v9

    .line 206
    .end local v7    # "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v8    # "masterSecret":Ljavax/crypto/SecretKey;
    .end local v10    # "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    :cond_8
    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v9, "Not supported key exchange type"

    invoke-virtual {v7, v8, v9}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    throw v7

    .line 188
    .end local v0    # "premaster":Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;
    .end local v5    # "ckem":Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;
    .end local v6    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v7, "Cannot generate RSA premaster secret"

    invoke-virtual {v5, v6, v7, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    .line 177
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    :cond_9
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v6, "Not RSA public key for client key exchange"

    invoke-virtual {v0, v5, v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method
