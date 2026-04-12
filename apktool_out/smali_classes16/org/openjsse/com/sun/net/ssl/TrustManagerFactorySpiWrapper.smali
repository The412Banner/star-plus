.class final Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpiWrapper;
.super Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpi;
.source "SSLSecurity.java"


# instance fields
.field private theTrustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/Provider;)V
    .locals 1
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "prov"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 398
    invoke-direct {p0}, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpi;-><init>()V

    .line 399
    nop

    .line 400
    invoke-static {p1, p2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpiWrapper;->theTrustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    .line 401
    return-void
.end method


# virtual methods
.method protected engineGetTrustManagers()[Lorg/openjsse/com/sun/net/ssl/TrustManager;
    .locals 6

    .line 412
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpiWrapper;->theTrustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    .line 413
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 415
    .local v0, "tma":[Ljavax/net/ssl/TrustManager;
    array-length v1, v0

    new-array v1, v1, [Lorg/openjsse/com/sun/net/ssl/TrustManager;

    .line 417
    .local v1, "tmaw":[Lorg/openjsse/com/sun/net/ssl/TrustManager;
    const/4 v2, 0x0

    .local v2, "src":I
    const/4 v3, 0x0

    .local v3, "dst":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 418
    aget-object v4, v0, v2

    instance-of v4, v4, Lorg/openjsse/com/sun/net/ssl/TrustManager;

    if-nez v4, :cond_0

    .line 421
    aget-object v4, v0, v2

    instance-of v4, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_1

    .line 422
    new-instance v4, Lorg/openjsse/com/sun/net/ssl/X509TrustManagerComSunWrapper;

    aget-object v5, v0, v2

    check-cast v5, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v4, v5}, Lorg/openjsse/com/sun/net/ssl/X509TrustManagerComSunWrapper;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    aput-object v4, v1, v3

    .line 425
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 428
    :cond_0
    aget-object v4, v0, v2

    check-cast v4, Lorg/openjsse/com/sun/net/ssl/TrustManager;

    aput-object v4, v1, v3

    .line 429
    add-int/lit8 v3, v3, 0x1

    .line 431
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    :cond_2
    if-eq v3, v2, :cond_3

    .line 435
    new-array v4, v3, [Lorg/openjsse/com/sun/net/ssl/TrustManager;

    .line 436
    invoke-static {v1, v4}, Lorg/openjsse/com/sun/net/ssl/SSLSecurity;->truncateArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/openjsse/com/sun/net/ssl/TrustManager;

    move-object v1, v4

    check-cast v1, [Lorg/openjsse/com/sun/net/ssl/TrustManager;

    .line 439
    :cond_3
    return-object v1
.end method

.method protected engineInit(Ljava/security/KeyStore;)V
    .locals 1
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpiWrapper;->theTrustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 405
    return-void
.end method
