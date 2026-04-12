.class final Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateProducer;
.super Ljava/lang/Object;
.source "CertificateMessage.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T12CertificateProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateMessage$1;

    .line 230
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateProducer;-><init>()V

    return-void
.end method

.method private onProduceCertificate(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 6
    .param p1, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 287
    .local v2, "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v3, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    if-eqz v3, :cond_0

    .line 288
    move-object v0, v2

    check-cast v0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    .line 289
    goto :goto_1

    .line 291
    .end local v2    # "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_0
    goto :goto_0

    .line 296
    :cond_1
    :goto_1
    const-string v1, "ssl,handshake"

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 297
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS10PlusSpec()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 298
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_2

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    const-string v3, "No X.509 certificate for client authentication, use empty Certificate message instead"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    :cond_2
    new-instance v3, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    invoke-direct {v3, v2, v4}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    move-object v0, v3

    goto :goto_2

    .line 307
    :cond_3
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_4

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 308
    const-string v1, "No X.509 certificate for client authentication, send a no_certificate alert"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    :cond_4
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->NO_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->warning(Lorg/openjsse/sun/security/ssl/Alert;)V

    .line 314
    return-object v2

    .line 318
    :cond_5
    :goto_2
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setLocalPrivateKey(Ljava/security/PrivateKey;)V

    .line 320
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popCerts:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    if-eqz v3, :cond_6

    .line 322
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popCerts:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setLocalCertificates([Ljava/security/cert/X509Certificate;)V

    goto :goto_3

    .line 325
    :cond_6
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setLocalCertificates([Ljava/security/cert/X509Certificate;)V

    .line 327
    :goto_3
    new-instance v3, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popCerts:[Ljava/security/cert/X509Certificate;

    invoke-direct {v3, p1, v4}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Ljava/security/cert/X509Certificate;)V

    .line 329
    .local v3, "cm":Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_7

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 330
    const-string v1, "Produced client Certificate handshake message"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    :cond_7
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v3, v1}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 336
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 339
    return-object v2
.end method

.method private onProduceCertificate(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 4
    .param p1, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 254
    .local v2, "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v3, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    if-eqz v3, :cond_0

    .line 255
    move-object v0, v2

    check-cast v0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    .line 256
    goto :goto_1

    .line 258
    .end local v2    # "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_0
    goto :goto_0

    .line 260
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 265
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setLocalPrivateKey(Ljava/security/PrivateKey;)V

    .line 267
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popCerts:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setLocalCertificates([Ljava/security/cert/X509Certificate;)V

    .line 268
    new-instance v1, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popCerts:[Ljava/security/cert/X509Certificate;

    invoke-direct {v1, p1, v2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Ljava/security/cert/X509Certificate;)V

    .line 270
    .local v1, "cm":Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_2

    const-string v2, "ssl,handshake"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    const-string v2, "Produced server Certificate handshake message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    :cond_2
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 277
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 280
    const/4 v2, 0x0

    return-object v2

    .line 261
    .end local v1    # "cm":Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;
    :cond_3
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "No expected X.509 certificate for server authentication"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
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

    .line 240
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 241
    .local v0, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v1, :cond_0

    .line 242
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    invoke-direct {p0, v1, p2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateProducer;->onProduceCertificate(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    move-result-object v1

    return-object v1

    .line 245
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    invoke-direct {p0, v1, p2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateProducer;->onProduceCertificate(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    move-result-object v1

    return-object v1
.end method
