.class final Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "X509TrustManagerImpl.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private volatile clientValidator:Lorg/openjsse/sun/security/validator/Validator;

.field private final pkixParams:Ljava/security/cert/PKIXBuilderParameters;

.field private volatile serverValidator:Lorg/openjsse/sun/security/validator/Validator;

.field private final trustedCerts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final validatorType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 3
    .param p1, "validatorType"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/cert/PKIXBuilderParameters;

    .line 90
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->validatorType:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->pkixParams:Ljava/security/cert/PKIXBuilderParameters;

    .line 97
    const-string v0, "tls server"

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->getValidator(Ljava/lang/String;)Lorg/openjsse/sun/security/validator/Validator;

    move-result-object v0

    .line 98
    .local v0, "v":Lorg/openjsse/sun/security/validator/Validator;
    invoke-virtual {v0}, Lorg/openjsse/sun/security/validator/Validator;->getTrustedCertificates()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    .line 99
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->serverValidator:Lorg/openjsse/sun/security/validator/Validator;

    .line 101
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl,trustmanager"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    .line 103
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 102
    const-string v2, "adding as trusted certificates"

    invoke-static {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p1, "validatorType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p2, "trustedCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->validatorType:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->pkixParams:Ljava/security/cert/PKIXBuilderParameters;

    .line 78
    if-nez p2, :cond_0

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    .line 82
    :cond_0
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    .line 84
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_1

    const-string v0, "ssl,trustmanager"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 86
    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 85
    const-string v1, "adding as trusted certificates"

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_1
    return-void
.end method

.method static checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 447
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V

    .line 448
    return-void
.end method

.method private static checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "chainsToPublicCA"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 453
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 455
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 460
    :cond_0
    const-string v1, "HTTPS"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    invoke-static {v0}, Lorg/openjsse/sun/security/util/HostnameChecker;->getInstance(B)Lorg/openjsse/sun/security/util/HostnameChecker;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p3}, Lorg/openjsse/sun/security/util/HostnameChecker;->match(Ljava/lang/String;Ljava/security/cert/X509Certificate;Z)V

    goto :goto_1

    .line 463
    :cond_1
    const-string v0, "LDAP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 464
    const-string v0, "LDAPS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 468
    :cond_2
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown identification algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_3
    :goto_0
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/openjsse/sun/security/util/HostnameChecker;->getInstance(B)Lorg/openjsse/sun/security/util/HostnameChecker;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p3}, Lorg/openjsse/sun/security/util/HostnameChecker;->match(Ljava/lang/String;Ljava/security/cert/X509Certificate;Z)V

    .line 472
    :cond_4
    :goto_1
    return-void
.end method

.method static checkIdentity(Ljavax/net/ssl/SSLSession;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "session"    # Ljavax/net/ssl/SSLSession;
    .param p1, "trustedChain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "checkClientTrusted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 411
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Lsun/security/util/AnchorCertificates;->contains(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    .line 414
    .local v0, "chainsToPublicCA":Z
    const/4 v1, 0x0

    .line 415
    .local v1, "identifiable":Z
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "peerHost":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez p3, :cond_1

    .line 417
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->getRequestedServerNames(Ljavax/net/ssl/SSLSession;)Ljava/util/List;

    move-result-object v4

    .line 418
    .local v4, "sniNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->getHostNameInSNI(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, "sniHostName":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 421
    :try_start_0
    aget-object v6, p1, v3

    invoke-static {v5, v6, p2, v0}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    const/4 v1, 0x1

    .line 430
    goto :goto_0

    .line 424
    :catch_0
    move-exception v6

    .line 425
    .local v6, "ce":Ljava/security/cert/CertificateException;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    throw v6

    .line 434
    .end local v4    # "sniNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    .end local v5    # "sniHostName":Ljava/lang/String;
    .end local v6    # "ce":Ljava/security/cert/CertificateException;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 435
    aget-object v3, p1, v3

    invoke-static {v2, v3, p2, v0}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V

    .line 438
    :cond_2
    return-void
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V
    .locals 10
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .param p4, "checkClientTrusted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2, p4}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->checkTrustedInit([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)Lorg/openjsse/sun/security/validator/Validator;

    move-result-object v0

    .line 197
    .local v0, "v":Lorg/openjsse/sun/security/validator/Validator;
    const/4 v1, 0x0

    .line 198
    .local v1, "trustedChain":[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    instance-of v3, p3, Lorg/openjsse/javax/net/ssl/SSLSocket;

    if-eqz v3, :cond_5

    .line 201
    move-object v3, p3

    check-cast v3, Lorg/openjsse/javax/net/ssl/SSLSocket;

    .line 202
    .local v3, "sslSocket":Lorg/openjsse/javax/net/ssl/SSLSocket;
    invoke-virtual {v3}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    .line 203
    .local v4, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v4, :cond_4

    .line 208
    instance-of v5, v4, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;

    .line 210
    .local v5, "isExtSession":Z
    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 211
    invoke-interface {v4}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 212
    move-object v7, v4

    check-cast v7, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;

    .line 213
    .local v7, "extSession":Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;
    nop

    .line 214
    invoke-virtual {v7}, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, "localSupportedSignAlgs":[Ljava/lang/String;
    new-instance v9, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v9, v3, v8, v6}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Lorg/openjsse/javax/net/ssl/SSLSocket;[Ljava/lang/String;Z)V

    move-object v6, v9

    .line 218
    .end local v7    # "extSession":Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;
    .end local v8    # "localSupportedSignAlgs":[Ljava/lang/String;
    .local v6, "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0

    .line 219
    .end local v6    # "constraints":Ljava/security/AlgorithmConstraints;
    :cond_0
    new-instance v7, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v7, v3, v6}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Lorg/openjsse/javax/net/ssl/SSLSocket;Z)V

    move-object v6, v7

    .line 223
    .restart local v6    # "constraints":Ljava/security/AlgorithmConstraints;
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 224
    .local v7, "responseList":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-nez p4, :cond_1

    if-eqz v5, :cond_1

    .line 225
    move-object v8, v4

    check-cast v8, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;

    .line 226
    invoke-virtual {v8}, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;->getStatusResponses()Ljava/util/List;

    move-result-object v7

    .line 228
    :cond_1
    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p2

    :goto_1
    invoke-static {v0, p1, v7, v6, v2}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->validate(Lorg/openjsse/sun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 232
    invoke-virtual {v3}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "identityAlg":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    .line 235
    invoke-static {v4, v1, v2, p4}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljavax/net/ssl/SSLSession;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V

    .line 238
    .end local v2    # "identityAlg":Ljava/lang/String;
    .end local v3    # "sslSocket":Lorg/openjsse/javax/net/ssl/SSLSocket;
    .end local v4    # "session":Ljavax/net/ssl/SSLSession;
    .end local v5    # "isExtSession":Z
    .end local v6    # "constraints":Ljava/security/AlgorithmConstraints;
    .end local v7    # "responseList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_3
    goto :goto_3

    .line 204
    .restart local v3    # "sslSocket":Lorg/openjsse/javax/net/ssl/SSLSocket;
    .restart local v4    # "session":Ljavax/net/ssl/SSLSession;
    :cond_4
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v5, "No handshake session"

    invoke-direct {v2, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    .end local v3    # "sslSocket":Lorg/openjsse/javax/net/ssl/SSLSocket;
    .end local v4    # "session":Ljavax/net/ssl/SSLSession;
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    if-eqz p4, :cond_6

    move-object v4, v2

    goto :goto_2

    :cond_6
    move-object v4, p2

    :goto_2
    invoke-static {v0, p1, v3, v2, v4}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->validate(Lorg/openjsse/sun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 243
    :goto_3
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_7

    const-string v2, "ssl,trustmanager"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 244
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Found trusted certificate"

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :cond_7
    return-void
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V
    .locals 9
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p4, "checkClientTrusted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 252
    invoke-direct {p0, p1, p2, p4}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->checkTrustedInit([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)Lorg/openjsse/sun/security/validator/Validator;

    move-result-object v0

    .line 254
    .local v0, "v":Lorg/openjsse/sun/security/validator/Validator;
    const/4 v1, 0x0

    .line 255
    .local v1, "trustedChain":[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    if-eqz p3, :cond_5

    .line 256
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 257
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v3, :cond_4

    .line 262
    instance-of v4, v3, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;

    .line 264
    .local v4, "isExtSession":Z
    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 265
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 266
    move-object v6, v3

    check-cast v6, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;

    .line 267
    .local v6, "extSession":Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;
    nop

    .line 268
    invoke-virtual {v6}, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, "localSupportedSignAlgs":[Ljava/lang/String;
    new-instance v8, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v8, p3, v7, v5}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;Z)V

    move-object v5, v8

    .line 272
    .end local v6    # "extSession":Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;
    .end local v7    # "localSupportedSignAlgs":[Ljava/lang/String;
    .local v5, "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0

    .line 273
    .end local v5    # "constraints":Ljava/security/AlgorithmConstraints;
    :cond_0
    new-instance v6, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v6, p3, v5}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    move-object v5, v6

    .line 277
    .restart local v5    # "constraints":Ljava/security/AlgorithmConstraints;
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 278
    .local v6, "responseList":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-nez p4, :cond_1

    if-eqz v4, :cond_1

    .line 279
    move-object v7, v3

    check-cast v7, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;

    .line 280
    invoke-virtual {v7}, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;->getStatusResponses()Ljava/util/List;

    move-result-object v6

    .line 282
    :cond_1
    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p2

    :goto_1
    invoke-static {v0, p1, v6, v5, v2}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->validate(Lorg/openjsse/sun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 286
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    .line 287
    invoke-virtual {v2}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "identityAlg":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 289
    invoke-static {v3, v1, v2, p4}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljavax/net/ssl/SSLSession;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V

    .line 292
    .end local v2    # "identityAlg":Ljava/lang/String;
    .end local v3    # "session":Ljavax/net/ssl/SSLSession;
    .end local v4    # "isExtSession":Z
    .end local v5    # "constraints":Ljava/security/AlgorithmConstraints;
    .end local v6    # "responseList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_3
    goto :goto_3

    .line 258
    .restart local v3    # "session":Ljavax/net/ssl/SSLSession;
    :cond_4
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v4, "No handshake session"

    invoke-direct {v2, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    .end local v3    # "session":Ljavax/net/ssl/SSLSession;
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    if-eqz p4, :cond_6

    move-object v4, v2

    goto :goto_2

    :cond_6
    move-object v4, p2

    :goto_2
    invoke-static {v0, p1, v3, v2, v4}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->validate(Lorg/openjsse/sun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 297
    :goto_3
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_7

    const-string v2, "ssl,trustmanager"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 298
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Found trusted certificate"

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    :cond_7
    return-void
.end method

.method private checkTrustedInit([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)Lorg/openjsse/sun/security/validator/Validator;
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "checkClientTrusted"    # Z

    .line 152
    if-eqz p1, :cond_5

    array-length v0, p1

    if-eqz v0, :cond_5

    .line 157
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "v":Lorg/openjsse/sun/security/validator/Validator;
    if-eqz p3, :cond_1

    .line 164
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->clientValidator:Lorg/openjsse/sun/security/validator/Validator;

    .line 165
    if-nez v0, :cond_3

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->clientValidator:Lorg/openjsse/sun/security/validator/Validator;

    move-object v0, v1

    .line 168
    if-nez v0, :cond_0

    .line 169
    const-string v1, "tls client"

    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->getValidator(Ljava/lang/String;)Lorg/openjsse/sun/security/validator/Validator;

    move-result-object v1

    move-object v0, v1

    .line 170
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->clientValidator:Lorg/openjsse/sun/security/validator/Validator;

    .line 172
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 177
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->serverValidator:Lorg/openjsse/sun/security/validator/Validator;

    .line 178
    if-nez v0, :cond_3

    .line 179
    monitor-enter p0

    .line 180
    :try_start_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->serverValidator:Lorg/openjsse/sun/security/validator/Validator;

    move-object v0, v1

    .line 181
    if-nez v0, :cond_2

    .line 182
    const-string v1, "tls server"

    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->getValidator(Ljava/lang/String;)Lorg/openjsse/sun/security/validator/Validator;

    move-result-object v1

    move-object v0, v1

    .line 183
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->serverValidator:Lorg/openjsse/sun/security/validator/Validator;

    .line 185
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 189
    :cond_3
    :goto_0
    return-object v0

    .line 158
    .end local v0    # "v":Lorg/openjsse/sun/security/validator/Validator;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null or zero-length authentication type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null or zero-length certificate chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getHostNameInSNI(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 330
    .local p0, "sniNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    const/4 v0, 0x0

    .line 331
    .local v0, "hostname":Ljavax/net/ssl/SNIHostName;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SNIServerName;

    .line 332
    .local v2, "sniName":Ljavax/net/ssl/SNIServerName;
    invoke-virtual {v2}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    goto :goto_0

    .line 336
    :cond_0
    instance-of v1, v2, Ljavax/net/ssl/SNIHostName;

    if-eqz v1, :cond_1

    .line 337
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/SNIHostName;

    goto :goto_1

    .line 340
    :cond_1
    :try_start_0
    new-instance v1, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {v2}, Ljavax/net/ssl/SNIServerName;->getEncoded()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/net/ssl/SNIHostName;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 346
    goto :goto_1

    .line 341
    :catch_0
    move-exception v1

    .line 343
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_2

    const-string v3, "ssl,trustmanager"

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal server name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_2
    nop

    .line 353
    .end local v2    # "sniName":Ljavax/net/ssl/SNIServerName;
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 354
    invoke-virtual {v0}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 357
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method static getRequestedServerNames(Ljava/net/Socket;)Ljava/util/List;
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Socket;",
            ")",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation

    .line 362
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lorg/openjsse/javax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 364
    move-object v0, p0

    check-cast v0, Lorg/openjsse/javax/net/ssl/SSLSocket;

    .line 365
    invoke-virtual {v0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 364
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->getRequestedServerNames(Ljavax/net/ssl/SSLSession;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 368
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getRequestedServerNames(Ljavax/net/ssl/SSLEngine;)Ljava/util/List;
    .locals 1
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            ")",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation

    .line 373
    if-eqz p0, :cond_0

    .line 374
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->getRequestedServerNames(Ljavax/net/ssl/SSLSession;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 377
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getRequestedServerNames(Ljavax/net/ssl/SSLSession;)Ljava/util/List;
    .locals 1
    .param p0, "session"    # Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSession;",
            ")",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation

    .line 382
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;

    if-eqz v0, :cond_0

    .line 383
    move-object v0, p0

    check-cast v0, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;

    invoke-virtual {v0}, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;->getRequestedServerNames()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 386
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getValidator(Ljava/lang/String;)Lorg/openjsse/sun/security/validator/Validator;
    .locals 2
    .param p1, "variant"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->pkixParams:Ljava/security/cert/PKIXBuilderParameters;

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->validatorType:Ljava/lang/String;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    invoke-static {v0, p1, v1}, Lorg/openjsse/sun/security/validator/Validator;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lorg/openjsse/sun/security/validator/Validator;

    move-result-object v0

    .local v0, "v":Lorg/openjsse/sun/security/validator/Validator;
    goto :goto_0

    .line 308
    .end local v0    # "v":Lorg/openjsse/sun/security/validator/Validator;
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->validatorType:Ljava/lang/String;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->pkixParams:Ljava/security/cert/PKIXBuilderParameters;

    invoke-static {v0, p1, v1}, Lorg/openjsse/sun/security/validator/Validator;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)Lorg/openjsse/sun/security/validator/Validator;

    move-result-object v0

    .line 310
    .restart local v0    # "v":Lorg/openjsse/sun/security/validator/Validator;
    :goto_0
    return-object v0
.end method

.method private static validate(Lorg/openjsse/sun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 7
    .param p0, "v"    # Lorg/openjsse/sun/security/validator/Validator;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p3, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p4, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/validator/Validator;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/security/AlgorithmConstraints;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 317
    .local p2, "responseList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-static {}, Lorg/openjsse/sun/security/ssl/JsseJce;->beginFipsProvider()Ljava/lang/Object;

    move-result-object v0

    .line 319
    .local v0, "o":Ljava/lang/Object;
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lorg/openjsse/sun/security/validator/Validator;->validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/List;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->endFipsProvider(Ljava/lang/Object;)V

    .line 319
    return-object v1

    .line 321
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->endFipsProvider(Ljava/lang/Object;)V

    .line 322
    throw v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    .line 111
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

    .line 129
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    .line 130
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

    .line 141
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V

    .line 142
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    .line 117
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

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    .line 136
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

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V

    .line 148
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 122
    .local v0, "certsArray":[Ljava/security/cert/X509Certificate;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 123
    return-object v0
.end method
