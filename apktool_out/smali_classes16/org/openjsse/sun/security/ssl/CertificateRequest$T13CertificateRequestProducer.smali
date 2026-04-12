.class final Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestProducer;
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
    name = "T13CertificateRequestProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateRequest$1;

    .line 864
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestProducer;-><init>()V

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

    .line 874
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 876
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    new-instance v1, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;

    invoke-direct {v1, v0}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 879
    .local v1, "crm":Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v2

    .line 881
    .local v2, "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;->access$900(Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;)Lorg/openjsse/sun/security/ssl/SSLExtensions;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->produce(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 882
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_0

    const-string v3, "ssl,handshake"

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 883
    const-string v3, "Produced CertificateRequest message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    :cond_0
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1, v3}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 888
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 893
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;->access$1000(Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;)[B

    move-result-object v3

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->certRequestContext:[B

    .line 894
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const/4 v3, 0x0

    return-object v3
.end method
