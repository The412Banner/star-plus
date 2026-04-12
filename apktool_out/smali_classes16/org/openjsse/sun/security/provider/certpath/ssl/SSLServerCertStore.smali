.class public final Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;
.super Ljava/security/cert/CertStoreSpi;
.source "SSLServerCertStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$CS;,
        Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;
    }
.end annotation


# static fields
.field private static final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private static final socketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private static final trustManager:Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;


# instance fields
.field private final uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;-><init>(Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$1;)V

    sput-object v0, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->trustManager:Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;

    .line 70
    new-instance v0, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$1;

    invoke-direct {v0}, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$1;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 78
    :try_start_0
    const-string v0, "SSL"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 79
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    sget-object v3, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->trustManager:Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 80
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 83
    .local v0, "tempFactory":Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_0

    .line 81
    .end local v0    # "tempFactory":Ljavax/net/ssl/SSLSocketFactory;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 85
    .local v0, "tempFactory":Ljavax/net/ssl/SSLSocketFactory;
    :goto_0
    sput-object v0, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 86
    .end local v0    # "tempFactory":Ljavax/net/ssl/SSLSocketFactory;
    return-void
.end method

.method constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/security/cert/CertStoreSpi;-><init>(Ljava/security/cert/CertStoreParameters;)V

    .line 90
    iput-object p1, p0, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->uri:Ljava/net/URI;

    .line 91
    return-void
.end method

.method public static getInstance(Ljava/net/URI;)Ljava/security/cert/CertStore;
    .locals 4
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$CS;

    new-instance v1, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;

    invoke-direct {v1, p0}, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;-><init>(Ljava/net/URI;)V

    const/4 v2, 0x0

    const-string v3, "SSLServer"

    invoke-direct {v0, v1, v2, v3, v2}, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$CS;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V

    return-object v0
.end method

.method private static getMatchingCerts(Ljava/util/List;Ljava/security/cert/CertSelector;)Ljava/util/List;
    .locals 4
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 138
    .local p0, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-nez p1, :cond_0

    .line 139
    return-object p0

    .line 141
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v0, "matchedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 143
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p1, v2}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1
    goto :goto_0

    .line 147
    :cond_2
    return-object v0
.end method


# virtual methods
.method public engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 1
    .param p1, "selector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CRLSelector;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 6
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 98
    .local v0, "urlConn":Ljava/net/URLConnection;
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_2

    .line 99
    sget-object v1, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_1

    .line 104
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 105
    .local v1, "https":Ljavax/net/ssl/HttpsURLConnection;
    sget-object v2, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 106
    sget-object v2, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 107
    sget-object v2, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->trustManager:Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :try_start_1
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 110
    sget-object v3, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->trustManager:Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;

    .line 111
    invoke-static {v3}, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;->access$100(Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;)Ljava/util/List;

    move-result-object v3

    .line 110
    invoke-static {v3, p1}, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->getMatchingCerts(Ljava/util/List;Ljava/security/cert/CertSelector;)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :try_start_2
    sget-object v4, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->trustManager:Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;

    invoke-virtual {v4}, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;->cleanup()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    return-object v3

    .line 123
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 112
    :catch_0
    move-exception v3

    .line 115
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_3
    sget-object v4, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->trustManager:Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;

    invoke-static {v4}, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;->access$200(Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    sget-object v4, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->trustManager:Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;

    .line 117
    invoke-static {v4}, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;->access$100(Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;)Ljava/util/List;

    move-result-object v4

    .line 116
    invoke-static {v4, p1}, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->getMatchingCerts(Ljava/util/List;Ljava/security/cert/CertSelector;)Ljava/util/List;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    :try_start_4
    sget-object v5, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->trustManager:Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;

    invoke-virtual {v5}, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;->cleanup()V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 116
    return-object v4

    .line 121
    :cond_0
    nop

    .end local v0    # "urlConn":Ljava/net/URLConnection;
    .end local v1    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .end local p1    # "selector":Ljava/security/cert/CertSelector;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 123
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v0    # "urlConn":Ljava/net/URLConnection;
    .restart local v1    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .restart local p1    # "selector":Ljava/security/cert/CertSelector;
    :goto_0
    :try_start_6
    sget-object v4, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore;->trustManager:Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;

    invoke-virtual {v4}, Lorg/openjsse/sun/security/provider/certpath/ssl/SSLServerCertStore$GetChainTrustManager;->cleanup()V

    .line 124
    nop

    .end local v0    # "urlConn":Ljava/net/URLConnection;
    .end local v1    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .end local p1    # "selector":Ljava/security/cert/CertSelector;
    throw v3

    .line 125
    .restart local v0    # "urlConn":Ljava/net/URLConnection;
    .restart local v1    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .restart local p1    # "selector":Ljava/security/cert/CertSelector;
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local p1    # "selector":Ljava/security/cert/CertSelector;
    :try_start_7
    throw v3

    .line 100
    .end local v1    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .restart local p1    # "selector":Ljava/security/cert/CertSelector;
    :cond_1
    new-instance v1, Ljava/security/cert/CertStoreException;

    const-string v2, "No initialized SSLSocketFactory"

    invoke-direct {v1, v2}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    .end local p1    # "selector":Ljava/security/cert/CertSelector;
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 129
    .end local v0    # "urlConn":Ljava/net/URLConnection;
    .restart local p1    # "selector":Ljava/security/cert/CertSelector;
    :cond_2
    nop

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 127
    :catch_1
    move-exception v0

    .line 128
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertStoreException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
