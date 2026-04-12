.class final Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyProducer;
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
    name = "T12CertificateVerifyProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateVerify$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateVerify$1;

    .line 730
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyProducer;-><init>()V

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

    .line 740
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 742
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    const/4 v1, 0x0

    .line 743
    .local v1, "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 744
    .local v3, "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v4, v3, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    if-eqz v4, :cond_0

    .line 745
    move-object v1, v3

    check-cast v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    .line 746
    goto :goto_1

    .line 748
    .end local v3    # "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_0
    goto :goto_0

    .line 750
    :cond_1
    :goto_1
    const-string v2, "ssl,handshake"

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    if-nez v4, :cond_2

    goto :goto_2

    .line 760
    :cond_2
    new-instance v4, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;

    invoke-direct {v4, v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;)V

    .line 762
    .local v4, "cvm":Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_3

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 763
    const-string v2, "Produced CertificateVerify handshake message"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    :cond_3
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v4, v2}, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 769
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 772
    return-object v3

    .line 752
    .end local v4    # "cvm":Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;
    :cond_4
    :goto_2
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_5

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 753
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "No X.509 credentials negotiated for CertificateVerify"

    invoke-static {v4, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 757
    :cond_5
    return-object v3
.end method
