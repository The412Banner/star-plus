.class final Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "SSLContextImpl.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final tm:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 0
    .param p1, "tm"    # Ljavax/net/ssl/X509TrustManager;

    .line 1520
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 1521
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    .line 1522
    return-void
.end method

.method private checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .param p4, "checkClientTrusted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1572
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p3, Lorg/openjsse/javax/net/ssl/SSLSocket;

    if-eqz v0, :cond_4

    .line 1575
    move-object v0, p3

    check-cast v0, Lorg/openjsse/javax/net/ssl/SSLSocket;

    .line 1576
    .local v0, "sslSocket":Lorg/openjsse/javax/net/ssl/SSLSocket;
    invoke-virtual {v0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 1577
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v1, :cond_3

    .line 1582
    invoke-virtual {v0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    .line 1583
    invoke-virtual {v2}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 1584
    .local v2, "identityAlg":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1585
    invoke-static {v1, p1, v2, p4}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljavax/net/ssl/SSLSession;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V

    .line 1591
    :cond_0
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 1592
    instance-of v3, v1, Ljavax/net/ssl/ExtendedSSLSession;

    if-eqz v3, :cond_1

    .line 1593
    move-object v3, v1

    check-cast v3, Ljavax/net/ssl/ExtendedSSLSession;

    .line 1595
    .local v3, "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    nop

    .line 1596
    invoke-virtual {v3}, Ljavax/net/ssl/ExtendedSSLSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v5

    .line 1598
    .local v5, "peerSupportedSignAlgs":[Ljava/lang/String;
    new-instance v6, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v6, v0, v5, v4}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Lorg/openjsse/javax/net/ssl/SSLSocket;[Ljava/lang/String;Z)V

    move-object v3, v6

    .line 1600
    .end local v5    # "peerSupportedSignAlgs":[Ljava/lang/String;
    .local v3, "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0

    .line 1601
    .end local v3    # "constraints":Ljava/security/AlgorithmConstraints;
    :cond_1
    new-instance v3, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v3, v0, v4}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Lorg/openjsse/javax/net/ssl/SSLSocket;Z)V

    .restart local v3    # "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0

    .line 1605
    .end local v3    # "constraints":Ljava/security/AlgorithmConstraints;
    :cond_2
    new-instance v3, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v3, v0, v4}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Lorg/openjsse/javax/net/ssl/SSLSocket;Z)V

    .line 1608
    .restart local v3    # "constraints":Ljava/security/AlgorithmConstraints;
    :goto_0
    invoke-direct {p0, p1, v3, p4}, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;->checkAlgorithmConstraints([Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Z)V

    goto :goto_1

    .line 1578
    .end local v2    # "identityAlg":Ljava/lang/String;
    .end local v3    # "constraints":Ljava/security/AlgorithmConstraints;
    :cond_3
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "No handshake session"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1610
    .end local v0    # "sslSocket":Lorg/openjsse/javax/net/ssl/SSLSocket;
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    :cond_4
    :goto_1
    return-void
.end method

.method private checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V
    .locals 6
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p4, "checkClientTrusted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1615
    if-eqz p3, :cond_4

    .line 1616
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 1617
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_3

    .line 1622
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    .line 1623
    invoke-virtual {v1}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 1624
    .local v1, "identityAlg":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1625
    invoke-static {v0, p1, v1, p4}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljavax/net/ssl/SSLSession;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V

    .line 1631
    :cond_0
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 1632
    instance-of v2, v0, Ljavax/net/ssl/ExtendedSSLSession;

    if-eqz v2, :cond_1

    .line 1633
    move-object v2, v0

    check-cast v2, Ljavax/net/ssl/ExtendedSSLSession;

    .line 1635
    .local v2, "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    nop

    .line 1636
    invoke-virtual {v2}, Ljavax/net/ssl/ExtendedSSLSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v4

    .line 1638
    .local v4, "peerSupportedSignAlgs":[Ljava/lang/String;
    new-instance v5, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v5, p3, v4, v3}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;Z)V

    move-object v2, v5

    .line 1640
    .end local v4    # "peerSupportedSignAlgs":[Ljava/lang/String;
    .local v2, "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0

    .line 1641
    .end local v2    # "constraints":Ljava/security/AlgorithmConstraints;
    :cond_1
    new-instance v2, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v2, p3, v3}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    .restart local v2    # "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0

    .line 1645
    .end local v2    # "constraints":Ljava/security/AlgorithmConstraints;
    :cond_2
    new-instance v2, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v2, p3, v3}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    .line 1648
    .restart local v2    # "constraints":Ljava/security/AlgorithmConstraints;
    :goto_0
    invoke-direct {p0, p1, v2, p4}, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;->checkAlgorithmConstraints([Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Z)V

    goto :goto_1

    .line 1618
    .end local v1    # "identityAlg":Ljava/lang/String;
    .end local v2    # "constraints":Ljava/security/AlgorithmConstraints;
    :cond_3
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "No handshake session"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1650
    .end local v0    # "session":Ljavax/net/ssl/SSLSession;
    :cond_4
    :goto_1
    return-void
.end method

.method private checkAlgorithmConstraints([Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Z)V
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p3, "checkClientTrusted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1657
    :try_start_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1659
    .local v0, "checkedLength":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1660
    .local v1, "trustedCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v2}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 1661
    .local v2, "certs":[Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 1662
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1665
    :cond_0
    aget-object v3, p1, v0

    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1666
    add-int/lit8 v0, v0, -0x1

    .line 1670
    :cond_1
    if-ltz v0, :cond_3

    .line 1671
    new-instance v3, Lsun/security/provider/certpath/AlgorithmChecker;

    if-eqz p3, :cond_2

    const-string v4, "tls client"

    goto :goto_0

    :cond_2
    const-string v4, "tls server"

    :goto_0
    invoke-direct {v3, p2, v4}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/AlgorithmConstraints;Ljava/lang/String;)V

    .line 1675
    .local v3, "checker":Lsun/security/provider/certpath/AlgorithmChecker;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lsun/security/provider/certpath/AlgorithmChecker;->init(Z)V

    .line 1676
    move v4, v0

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_3

    .line 1677
    aget-object v5, p1, v4

    .line 1679
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1676
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1685
    .end local v0    # "checkedLength":I
    .end local v1    # "trustedCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v3    # "checker":Lsun/security/provider/certpath/AlgorithmChecker;
    .end local v4    # "i":I
    :cond_3
    nop

    .line 1686
    return-void

    .line 1682
    :catch_0
    move-exception v0

    .line 1683
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Certificates do not conform to algorithm constraints"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1527
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 1528
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1544
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 1545
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    .line 1546
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1558
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 1559
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V

    .line 1560
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1533
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 1534
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1551
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 1552
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    .line 1553
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1565
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 1566
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V

    .line 1567
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1538
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
