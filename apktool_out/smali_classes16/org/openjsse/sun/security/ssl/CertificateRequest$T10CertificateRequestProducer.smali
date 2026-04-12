.class final Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestProducer;
.super Ljava/lang/Object;
.source "CertificateRequest.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T10CertificateRequestProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateRequest$1;

    .line 275
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 287
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 288
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 289
    .local v1, "caCerts":[Ljava/security/cert/X509Certificate;
    new-instance v2, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    invoke-direct {v2, v0, v1, v3}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Ljava/security/cert/X509Certificate;Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;)V

    .line 291
    .local v2, "crm":Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_0

    const-string v3, "ssl,handshake"

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    const-string v3, "Produced CertificateRequest handshake message"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :cond_0
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 298
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 303
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const/4 v3, 0x0

    return-object v3
.end method
