.class Lorg/openjsse/com/sun/net/ssl/internal/www/protocol/https/VerifierWrapper;
.super Ljava/lang/Object;
.source "DelegateHttpsURLConnection.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private verifier:Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;


# direct methods
.method constructor <init>(Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;)V
    .locals 0
    .param p1, "verifier"    # Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/openjsse/com/sun/net/ssl/internal/www/protocol/https/VerifierWrapper;->verifier:Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;

    .line 110
    return-void
.end method

.method private static getServername(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 5
    .param p0, "peerCert"    # Ljava/security/cert/X509Certificate;

    .line 147
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    .line 148
    .local v0, "subjAltNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-eqz v0, :cond_1

    .line 149
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 151
    .local v2, "next":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 153
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 154
    .local v3, "dnsName":Ljava/lang/String;
    return-object v3

    .line 156
    .end local v2    # "next":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "dnsName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 160
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    :cond_1
    invoke-static {p0}, Lsun/security/util/HostnameChecker;->getSubjectX500Name(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X500Name;

    move-result-object v1

    .line 162
    .local v1, "subject":Lsun/security/x509/X500Name;
    sget-object v2, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    .line 163
    invoke-virtual {v1, v2}, Lsun/security/x509/X500Name;->findMostSpecificAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    .local v2, "derValue":Lsun/security/util/DerValue;
    if-eqz v2, :cond_2

    .line 166
    :try_start_1
    invoke-virtual {v2}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    .local v3, "name":Ljava/lang/String;
    return-object v3

    .line 168
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 174
    .end local v0    # "subjAltNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .end local v1    # "subject":Lsun/security/x509/X500Name;
    .end local v2    # "derValue":Lsun/security/util/DerValue;
    :cond_2
    goto :goto_1

    .line 172
    :catch_1
    move-exception v0

    .line 175
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 5
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .line 120
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 121
    .local v1, "serverChain":[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    aget-object v2, v1, v0

    instance-of v2, v2, Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_1

    .line 125
    return v0

    .line 127
    :cond_1
    aget-object v2, v1, v0

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 128
    .local v2, "serverCert":Ljava/security/cert/X509Certificate;
    invoke-static {v2}, Lorg/openjsse/com/sun/net/ssl/internal/www/protocol/https/VerifierWrapper;->getServername(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "serverName":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 130
    return v0

    .line 132
    :cond_2
    iget-object v4, p0, Lorg/openjsse/com/sun/net/ssl/internal/www/protocol/https/VerifierWrapper;->verifier:Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;

    invoke-interface {v4, p1, v3}, Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 122
    .end local v2    # "serverCert":Ljava/security/cert/X509Certificate;
    .end local v3    # "serverName":Ljava/lang/String;
    :cond_3
    :goto_0
    return v0

    .line 133
    .end local v1    # "serverChain":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    return v0
.end method
