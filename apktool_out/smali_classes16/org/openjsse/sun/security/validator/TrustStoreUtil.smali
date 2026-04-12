.class public final Lorg/openjsse/sun/security/validator/TrustStoreUtil;
.super Ljava/lang/Object;
.source "TrustStoreUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static getTrustedCerts(Ljava/security/KeyStore;)Ljava/util/Set;
    .locals 6
    .param p0, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 56
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    .local v2, "alias":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 60
    .local v3, "cert":Ljava/security/cert/Certificate;
    instance-of v4, v3, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_1

    .line 61
    move-object v4, v3

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    :cond_0
    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 65
    .local v3, "certs":[Ljava/security/cert/Certificate;
    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    const/4 v4, 0x0

    aget-object v5, v3, v4

    instance-of v5, v5, Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_2

    .line 67
    aget-object v4, v3, v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 63
    .end local v3    # "certs":[Ljava/security/cert/Certificate;
    :cond_1
    :goto_1
    nop

    .line 70
    .end local v2    # "alias":Ljava/lang/String;
    :cond_2
    :goto_2
    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    goto :goto_3

    .line 71
    :catch_0
    move-exception v1

    .line 77
    :goto_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
