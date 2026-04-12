.class final Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyProducer;
.super Ljava/lang/Object;
.source "CertificateVerify.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateVerify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T13CertificateVerifyProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateVerify$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateVerify$1;

    .line 1065
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyProducer;-><init>()V

    return-void
.end method

.method private onProduceCertificateVerify(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;)[B
    .locals 3
    .param p1, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .param p2, "x509Possession"    # Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1123
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;

    invoke-direct {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;)V

    .line 1125
    .local v0, "cvm":Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    const-string v1, "Produced client CertificateVerify handshake message"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1131
    :cond_0
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 1132
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 1135
    const/4 v1, 0x0

    return-object v1
.end method

.method private onProduceCertificateVerify(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;)[B
    .locals 3
    .param p1, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "x509Possession"    # Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1106
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;

    invoke-direct {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;)V

    .line 1108
    .local v0, "cvm":Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1109
    const-string v1, "Produced server CertificateVerify handshake message"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    :cond_0
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 1115
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 1118
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 5
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1075
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 1077
    .local v0, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    const/4 v1, 0x0

    .line 1078
    .local v1, "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 1079
    .local v3, "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v4, v3, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    if-eqz v4, :cond_0

    .line 1080
    move-object v1, v3

    check-cast v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    .line 1081
    goto :goto_1

    .line 1083
    .end local v3    # "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_0
    goto :goto_0

    .line 1085
    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    if-nez v2, :cond_2

    goto :goto_2

    .line 1095
    :cond_2
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v2, :cond_3

    .line 1096
    move-object v2, p1

    check-cast v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    invoke-direct {p0, v2, v1}, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyProducer;->onProduceCertificateVerify(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;)[B

    move-result-object v2

    return-object v2

    .line 1099
    :cond_3
    move-object v2, p1

    check-cast v2, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    invoke-direct {p0, v2, v1}, Lorg/openjsse/sun/security/ssl/CertificateVerify$T13CertificateVerifyProducer;->onProduceCertificateVerify(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;)[B

    move-result-object v2

    return-object v2

    .line 1087
    :cond_4
    :goto_2
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_5

    const-string v2, "ssl,handshake"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1088
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "No X.509 credentials negotiated for CertificateVerify"

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1092
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method
