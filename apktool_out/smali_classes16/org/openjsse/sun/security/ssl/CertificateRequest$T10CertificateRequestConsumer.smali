.class final Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestConsumer;
.super Ljava/lang/Object;
.source "CertificateRequest.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T10CertificateRequestConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateRequest$1;

    .line 318
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 331
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_STATUS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 334
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 333
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 335
    .local v1, "certStatCons":Lorg/openjsse/sun/security/ssl/SSLConsumer;
    if-eqz v1, :cond_0

    .line 339
    sget-object v2, Lorg/openjsse/sun/security/ssl/CertificateStatus;->handshakeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lorg/openjsse/sun/security/ssl/HandshakeAbsence;->absent(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    .line 342
    :cond_0
    new-instance v2, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;

    invoke-direct {v2, v0, p2}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 344
    .local v2, "crm":Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const-string v4, "ssl,handshake"

    if-eqz v3, :cond_1

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    const-string v3, "Consuming CertificateRequest handshake message"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    :cond_1
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v5, v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getX509KeyManager()Ljavax/net/ssl/X509ExtendedKeyManager;

    move-result-object v3

    .line 363
    .local v3, "km":Ljavax/net/ssl/X509ExtendedKeyManager;
    const/4 v5, 0x0

    .line 364
    .local v5, "clientAlias":Ljava/lang/String;
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    instance-of v6, v6, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    if-eqz v6, :cond_2

    .line 365
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->getKeyTypes()[Ljava/lang/String;

    move-result-object v6

    .line 366
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->getAuthorities()[Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v8, v8, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v8, Lorg/openjsse/javax/net/ssl/SSLSocket;

    .line 365
    invoke-virtual {v3, v6, v7, v8}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 367
    :cond_2
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    instance-of v6, v6, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    if-eqz v6, :cond_3

    .line 368
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->getKeyTypes()[Ljava/lang/String;

    move-result-object v6

    .line 369
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->getAuthorities()[Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v8, v8, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v8, Lorg/openjsse/javax/net/ssl/SSLEngine;

    .line 368
    invoke-virtual {v3, v6, v7, v8}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v5

    .line 373
    :cond_3
    :goto_0
    const/4 v6, 0x0

    if-nez v5, :cond_5

    .line 374
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_4

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 375
    const-string v4, "No available client authentication"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    :cond_4
    return-void

    .line 380
    :cond_5
    invoke-virtual {v3, v5}, Ljavax/net/ssl/X509ExtendedKeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v7

    .line 381
    .local v7, "clientPrivateKey":Ljava/security/PrivateKey;
    if-nez v7, :cond_7

    .line 382
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_6

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 383
    const-string v4, "No available client private key"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    :cond_6
    return-void

    .line 388
    :cond_7
    invoke-virtual {v3, v5}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v8

    .line 389
    .local v8, "clientCerts":[Ljava/security/cert/X509Certificate;
    if-eqz v8, :cond_9

    array-length v9, v8

    if-nez v9, :cond_8

    goto :goto_1

    .line 396
    :cond_8
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakePossessions:Ljava/util/List;

    new-instance v6, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    invoke-direct {v6, v7, v8}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v6, v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    sget-object v9, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v4, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    return-void

    .line 390
    :cond_9
    :goto_1
    sget-boolean v9, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v9, :cond_a

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 391
    const-string v4, "No available client certificate"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    :cond_a
    return-void
.end method
