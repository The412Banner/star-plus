.class final Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;
.super Ljava/lang/Object;
.source "CertificateMessage.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "T12CertificateConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateMessage$1;

    .line 348
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;-><init>()V

    return-void
.end method

.method private static checkClientCerts(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;[Ljava/security/cert/X509Certificate;)V
    .locals 7
    .param p0, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 663
    .local v0, "tm":Ljavax/net/ssl/X509TrustManager;
    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 664
    .local v2, "key":Ljava/security/PublicKey;
    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, "keyAlgorithm":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "RSASSA-PSS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v4, "RSA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :sswitch_2
    const-string v1, "DSA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "EC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 675
    const-string v1, "UNKNOWN"

    .local v1, "authType":Ljava/lang/String;
    goto :goto_2

    .line 671
    .end local v1    # "authType":Ljava/lang/String;
    :pswitch_0
    move-object v1, v3

    .line 672
    .restart local v1    # "authType":Ljava/lang/String;
    nop

    .line 679
    :goto_2
    :try_start_0
    instance-of v4, v0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v4, :cond_2

    .line 680
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    instance-of v4, v4, Ljavax/net/ssl/SSLEngine;

    if-eqz v4, :cond_1

    .line 681
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v4, Ljavax/net/ssl/SSLEngine;

    .line 682
    .local v4, "engine":Ljavax/net/ssl/SSLEngine;
    move-object v5, v0

    check-cast v5, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 683
    invoke-virtual {p1}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;

    .line 682
    invoke-virtual {v5, v6, v1, v4}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 686
    .end local v4    # "engine":Ljavax/net/ssl/SSLEngine;
    goto :goto_3

    .line 687
    :cond_1
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    .line 688
    .local v4, "socket":Ljavax/net/ssl/SSLSocket;
    move-object v5, v0

    check-cast v5, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 689
    invoke-virtual {p1}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;

    .line 688
    invoke-virtual {v5, v6, v1, v4}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 692
    .end local v4    # "socket":Ljavax/net/ssl/SSLSocket;
    nop

    .line 701
    :goto_3
    nop

    .line 702
    return-void

    .line 696
    :cond_2
    new-instance v4, Ljava/security/cert/CertificateException;

    const-string v5, "Improper X509TrustManager implementation"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tm":Ljavax/net/ssl/X509TrustManager;
    .end local v1    # "authType":Ljava/lang/String;
    .end local v2    # "key":Ljava/security/PublicKey;
    .end local v3    # "keyAlgorithm":Ljava/lang/String;
    .end local p0    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .end local p1    # "certs":[Ljava/security/cert/X509Certificate;
    throw v4
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .restart local v0    # "tm":Ljavax/net/ssl/X509TrustManager;
    .restart local v1    # "authType":Ljava/lang/String;
    .restart local v2    # "key":Ljava/security/PublicKey;
    .restart local v3    # "keyAlgorithm":Ljava/lang/String;
    .restart local p0    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .restart local p1    # "certs":[Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v4

    .line 700
    .local v4, "ce":Ljava/security/cert/CertificateException;
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_UNKNOWN:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v5, v6, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x89e -> :sswitch_3
        0x10992 -> :sswitch_2
        0x13e20 -> :sswitch_1
        0x69d3b2a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static checkServerCerts(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;[Ljava/security/cert/X509Certificate;)V
    .locals 5
    .param p0, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 619
    .local v0, "tm":Ljavax/net/ssl/X509TrustManager;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v2, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    sget-object v2, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA_EXPORT:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    .local v1, "keyExchangeString":Ljava/lang/String;
    goto :goto_1

    .line 623
    .end local v1    # "keyExchangeString":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    .line 629
    .restart local v1    # "keyExchangeString":Ljava/lang/String;
    :goto_1
    :try_start_0
    instance-of v2, v0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v2, :cond_3

    .line 630
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    instance-of v2, v2, Ljavax/net/ssl/SSLEngine;

    if-eqz v2, :cond_2

    .line 631
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v2, Ljavax/net/ssl/SSLEngine;

    .line 632
    .local v2, "engine":Ljavax/net/ssl/SSLEngine;
    move-object v3, v0

    check-cast v3, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 633
    invoke-virtual {p1}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    .line 632
    invoke-virtual {v3, v4, v1, v2}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 636
    .end local v2    # "engine":Ljavax/net/ssl/SSLEngine;
    goto :goto_2

    .line 637
    :cond_2
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .line 638
    .local v2, "socket":Ljavax/net/ssl/SSLSocket;
    move-object v3, v0

    check-cast v3, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 639
    invoke-virtual {p1}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    .line 638
    invoke-virtual {v3, v4, v1, v2}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 642
    .end local v2    # "socket":Ljavax/net/ssl/SSLSocket;
    nop

    .line 652
    :goto_2
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2, p1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setPeerCertificates([Ljava/security/cert/X509Certificate;)V

    .line 655
    nop

    .line 656
    return-void

    .line 646
    :cond_3
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Improper X509TrustManager implementation"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tm":Ljavax/net/ssl/X509TrustManager;
    .end local v1    # "keyExchangeString":Ljava/lang/String;
    .end local p0    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .end local p1    # "certs":[Ljava/security/cert/X509Certificate;
    throw v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    .restart local v0    # "tm":Ljavax/net/ssl/X509TrustManager;
    .restart local v1    # "keyExchangeString":Ljava/lang/String;
    .restart local p0    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .restart local p1    # "certs":[Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v2

    .line 654
    .local v2, "ce":Ljava/security/cert/CertificateException;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-static {p0, v2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;->getCertificateAlert(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Ljava/security/cert/CertificateException;)Lorg/openjsse/sun/security/ssl/Alert;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3
.end method

.method private static getCertificateAlert(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Ljava/security/cert/CertificateException;)Lorg/openjsse/sun/security/ssl/Alert;
    .locals 5
    .param p0, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .param p1, "cexc"    # Ljava/security/cert/CertificateException;

    .line 717
    sget-object v0, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_UNKNOWN:Lorg/openjsse/sun/security/ssl/Alert;

    .line 719
    .local v0, "alert":Lorg/openjsse/sun/security/ssl/Alert;
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 720
    .local v1, "baseCause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/security/cert/CertPathValidatorException;

    if-eqz v2, :cond_7

    .line 721
    move-object v2, v1

    check-cast v2, Ljava/security/cert/CertPathValidatorException;

    .line 723
    .local v2, "cpve":Ljava/security/cert/CertPathValidatorException;
    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v3

    .line 724
    .local v3, "reason":Ljava/security/cert/CertPathValidatorException$Reason;
    sget-object v4, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v3, v4, :cond_1

    .line 725
    iget-boolean v4, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->staplingActive:Z

    if-eqz v4, :cond_0

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERT_STATUS_RESPONSE:Lorg/openjsse/sun/security/ssl/Alert;

    goto :goto_0

    :cond_0
    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_REVOKED:Lorg/openjsse/sun/security/ssl/Alert;

    :goto_0
    move-object v0, v4

    goto :goto_2

    .line 728
    :cond_1
    sget-object v4, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v3, v4, :cond_3

    .line 730
    iget-boolean v4, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->staplingActive:Z

    if-eqz v4, :cond_2

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERT_STATUS_RESPONSE:Lorg/openjsse/sun/security/ssl/Alert;

    goto :goto_1

    :cond_2
    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_UNKNOWN:Lorg/openjsse/sun/security/ssl/Alert;

    :goto_1
    move-object v0, v4

    goto :goto_2

    .line 733
    :cond_3
    sget-object v4, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v3, v4, :cond_4

    .line 734
    sget-object v0, Lorg/openjsse/sun/security/ssl/Alert;->UNSUPPORTED_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    goto :goto_2

    .line 735
    :cond_4
    sget-object v4, Ljava/security/cert/CertPathValidatorException$BasicReason;->EXPIRED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v3, v4, :cond_5

    .line 736
    sget-object v0, Lorg/openjsse/sun/security/ssl/Alert;->CERTIFICATE_EXPIRED:Lorg/openjsse/sun/security/ssl/Alert;

    goto :goto_2

    .line 737
    :cond_5
    sget-object v4, Ljava/security/cert/CertPathValidatorException$BasicReason;->INVALID_SIGNATURE:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-eq v3, v4, :cond_6

    sget-object v4, Ljava/security/cert/CertPathValidatorException$BasicReason;->NOT_YET_VALID:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v3, v4, :cond_7

    .line 739
    :cond_6
    sget-object v0, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    .line 743
    .end local v2    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v3    # "reason":Ljava/security/cert/CertPathValidatorException$Reason;
    :cond_7
    :goto_2
    return-object v0
.end method

.method private static getSubjectAltNames(Ljava/util/Collection;I)Ljava/util/Collection;
    .locals 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;I)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 568
    .local p0, "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v0, 0x0

    .line 569
    .local v0, "subAltDnsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 570
    .local v2, "subjectAltName":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 571
    .local v3, "subjectAltNameType":I
    if-ne v3, p1, :cond_1

    .line 572
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 573
    .local v4, "subAltDnsName":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 574
    if-nez v0, :cond_0

    .line 575
    new-instance v5, Ljava/util/HashSet;

    .line 576
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    move-object v0, v5

    .line 578
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 581
    .end local v2    # "subjectAltName":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "subjectAltNameType":I
    .end local v4    # "subAltDnsName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 583
    :cond_2
    return-object v0
.end method

.method private static isEquivalent(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 588
    .local p0, "thisSubAltNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p1, "prevSubAltNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 589
    .local v1, "thisSubAltName":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 592
    .local v3, "prevSubAltName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 593
    const/4 v0, 0x1

    return v0

    .line 595
    .end local v3    # "prevSubAltName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 596
    .end local v1    # "thisSubAltName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 598
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static isIdentityEquivalent(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .locals 9
    .param p0, "thisCert"    # Ljava/security/cert/X509Certificate;
    .param p1, "prevCert"    # Ljava/security/cert/X509Certificate;

    .line 497
    const-string v0, "Attempt to obtain subjectAltNames extension failed!"

    const-string v1, "handshake"

    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 498
    return v3

    .line 502
    :cond_0
    const/4 v2, 0x0

    .line 504
    .local v2, "thisSubjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 510
    goto :goto_0

    .line 505
    :catch_0
    move-exception v5

    .line 506
    .local v5, "cpe":Ljava/security/cert/CertificateParsingException;
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_1

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 507
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    .end local v5    # "cpe":Ljava/security/cert/CertificateParsingException;
    :cond_1
    :goto_0
    const/4 v5, 0x0

    .line 514
    .local v5, "prevSubjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :try_start_1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v0

    .line 520
    goto :goto_1

    .line 515
    :catch_1
    move-exception v6

    .line 516
    .local v6, "cpe":Ljava/security/cert/CertificateParsingException;
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_2

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    .end local v6    # "cpe":Ljava/security/cert/CertificateParsingException;
    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    if-eqz v5, :cond_4

    .line 526
    nop

    .line 527
    const/4 v0, 0x7

    invoke-static {v2, v0}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;->getSubjectAltNames(Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object v1

    .line 528
    .local v1, "thisSubAltIPAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    nop

    .line 529
    invoke-static {v5, v0}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;->getSubjectAltNames(Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object v0

    .line 530
    .local v0, "prevSubAltIPAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 531
    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;->isEquivalent(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 532
    return v3

    .line 537
    :cond_3
    nop

    .line 538
    const/4 v6, 0x2

    invoke-static {v2, v6}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;->getSubjectAltNames(Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object v7

    .line 539
    .local v7, "thisSubAltDnsNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    nop

    .line 540
    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;->getSubjectAltNames(Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object v6

    .line 541
    .local v6, "prevSubAltDnsNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    .line 542
    invoke-static {v7, v6}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;->isEquivalent(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 543
    return v3

    .line 548
    .end local v0    # "prevSubAltIPAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v1    # "thisSubAltIPAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v6    # "prevSubAltDnsNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v7    # "thisSubAltDnsNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 549
    .local v0, "thisSubject":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 550
    .local v1, "prevSubject":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 551
    .local v6, "thisIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    .line 553
    .local v7, "prevIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 554
    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 555
    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 556
    invoke-virtual {v6, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    .line 553
    :goto_2
    return v3
.end method

.method private onCertificate(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;)V
    .locals 8
    .param p1, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .param p2, "certificateMessage"    # Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    iget-object v0, p2, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;->encodedCertChain:Ljava/util/List;

    .line 424
    .local v0, "encodedCerts":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 429
    nop

    .line 430
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    .line 432
    .local v1, "x509Certs":[Ljava/security/cert/X509Certificate;
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 433
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v3, 0x0

    .line 434
    .local v3, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 435
    .local v5, "encodedCert":[B
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    aput-object v7, v1, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v5    # "encodedCert":[B
    move v3, v6

    goto :goto_0

    .line 441
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v6    # "i":I
    :cond_0
    nop

    .line 450
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->reservedServerCerts:[Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useExtendedMasterSecret:Z

    if-nez v2, :cond_3

    .line 454
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->identificationProtocol:Ljava/lang/String;

    .line 455
    .local v2, "identityAlg":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    aget-object v4, v1, v3

    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->reservedServerCerts:[Ljava/security/cert/X509Certificate;

    aget-object v5, v5, v3

    .line 456
    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;->isIdentityEquivalent(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 458
    :cond_2
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "server certificate change is restricted during renegotiation"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 465
    .end local v2    # "identityAlg":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-boolean v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->staplingActive:Z

    if-eqz v2, :cond_4

    .line 470
    iput-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->deferredCerts:[Ljava/security/cert/X509Certificate;

    goto :goto_2

    .line 473
    :cond_4
    invoke-static {p1, v1}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;->checkServerCerts(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;[Ljava/security/cert/X509Certificate;)V

    .line 479
    :goto_2
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeCredentials:Ljava/util/List;

    new-instance v4, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    aget-object v3, v1, v3

    .line 480
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v4, v3, v1}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;-><init>(Ljava/security/PublicKey;[Ljava/security/cert/X509Certificate;)V

    .line 479
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setPeerCertificates([Ljava/security/cert/X509Certificate;)V

    .line 482
    return-void

    .line 438
    :catch_0
    move-exception v2

    .line 439
    .local v2, "ce":Ljava/security/cert/CertificateException;
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Failed to parse server certificates"

    invoke-virtual {v3, v4, v5, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 425
    .end local v1    # "x509Certs":[Ljava/security/cert/X509Certificate;
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    :cond_5
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Empty server certificate chain"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method private onCertificate(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;)V
    .locals 8
    .param p1, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "certificateMessage"    # Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    iget-object v0, p2, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;->encodedCertChain:Ljava/util/List;

    .line 382
    .local v0, "encodedCerts":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 397
    :cond_0
    nop

    .line 398
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    .line 400
    .local v1, "x509Certs":[Ljava/security/cert/X509Certificate;
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 401
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v3, 0x0

    .line 402
    .local v3, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 403
    .local v5, "encodedCert":[B
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    aput-object v7, v1, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v5    # "encodedCert":[B
    move v3, v6

    goto :goto_0

    .line 409
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v6    # "i":I
    :cond_1
    nop

    .line 411
    invoke-static {p1, v1}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;->checkClientCerts(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;[Ljava/security/cert/X509Certificate;)V

    .line 416
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeCredentials:Ljava/util/List;

    new-instance v3, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    .line 417
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;-><init>(Ljava/security/PublicKey;[Ljava/security/cert/X509Certificate;)V

    .line 416
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setPeerCertificates([Ljava/security/cert/X509Certificate;)V

    .line 419
    return-void

    .line 406
    :catch_0
    move-exception v2

    .line 407
    .local v2, "ce":Ljava/security/cert/CertificateException;
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Failed to parse server certificates"

    invoke-virtual {v3, v4, v5, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 385
    .end local v1    # "x509Certs":[Ljava/security/cert/X509Certificate;
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    :cond_2
    :goto_1
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 386
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 385
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUESTED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    if-ne v1, v2, :cond_3

    .line 393
    return-void

    .line 390
    :cond_3
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Empty server certificate chain"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 361
    .local v0, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v1, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;

    invoke-direct {v1, v0, p2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 364
    .local v1, "cm":Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    const-string v3, "ssl,handshake"

    if-eqz v2, :cond_1

    .line 365
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    const-string v2, "Consuming server Certificate handshake message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    :cond_0
    move-object v2, p1

    check-cast v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    invoke-direct {p0, v2, v1}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;->onCertificate(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;)V

    goto :goto_0

    .line 371
    :cond_1
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_2

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    const-string v2, "Consuming client Certificate handshake message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    invoke-direct {p0, v2, v1}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;->onCertificate(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;)V

    .line 377
    :goto_0
    return-void
.end method
