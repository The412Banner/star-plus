.class final Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeProducer;
.super Ljava/lang/Object;
.source "DHClientKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/DHClientKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DHClientKeyExchangeProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$1;

    .line 159
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 12
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 171
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    const/4 v1, 0x0

    .line 172
    .local v1, "dheCredentials":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;
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

    .line 173
    .local v3, "cd":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    instance-of v4, v3, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;

    if-eqz v4, :cond_0

    .line 174
    move-object v1, v3

    check-cast v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;

    .line 175
    goto :goto_1

    .line 177
    .end local v3    # "cd":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    :cond_0
    goto :goto_0

    .line 179
    :cond_1
    :goto_1
    if-eqz v1, :cond_5

    .line 185
    new-instance v2, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 186
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;-><init>(Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;Ljava/security/SecureRandom;)V

    .line 187
    .local v2, "dhePossession":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v3, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;

    invoke-direct {v3, v0}, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 190
    .local v3, "ckem":Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_2

    const-string v4, "ssl,handshake"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    const-string v4, "Produced DH ClientKeyExchange handshake message"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_2
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v3, v4}, Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 197
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 200
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->valueOf(Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

    move-result-object v4

    .line 203
    .local v4, "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    if-eqz v4, :cond_4

    .line 208
    invoke-virtual {v4, v0}, Lorg/openjsse/sun/security/ssl/SSLKeyExchange;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v5

    .line 209
    .local v5, "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    nop

    .line 210
    const-string v6, "MasterSecret"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;->deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 211
    .local v6, "masterSecret":Ljavax/crypto/SecretKey;
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v8, v6}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setMasterSecret(Ljavax/crypto/SecretKey;)V

    .line 213
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 214
    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->valueOf(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;

    move-result-object v8

    .line 215
    .local v8, "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    if-eqz v8, :cond_3

    .line 221
    nop

    .line 222
    invoke-virtual {v8, v0, v6}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;->createKeyDerivation(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    move-result-object v9

    iput-object v9, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

    .line 227
    .end local v5    # "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v6    # "masterSecret":Ljavax/crypto/SecretKey;
    .end local v8    # "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    return-object v7

    .line 217
    .restart local v5    # "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .restart local v6    # "masterSecret":Ljavax/crypto/SecretKey;
    .restart local v8    # "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    :cond_3
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v9, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not supported key derivation: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    throw v7

    .line 205
    .end local v5    # "masterKD":Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;
    .end local v6    # "masterSecret":Ljavax/crypto/SecretKey;
    .end local v8    # "kd":Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
    :cond_4
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v7, "Not supported key exchange type"

    invoke-virtual {v5, v6, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    .line 180
    .end local v2    # "dhePossession":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;
    .end local v3    # "ckem":Lorg/openjsse/sun/security/ssl/DHClientKeyExchange$DHClientKeyExchangeMessage;
    .end local v4    # "ke":Lorg/openjsse/sun/security/ssl/SSLKeyExchange;
    :cond_5
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "No DHE credentials negotiated for client key exchange"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method
