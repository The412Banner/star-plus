.class public Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private algorithm:Ljava/lang/String;

.field private factorySpi:Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpi;

.field private provider:Ljava/security/Provider;


# direct methods
.method protected constructor <init>(Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "factorySpi"    # Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;->factorySpi:Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpi;

    .line 88
    iput-object p2, p0, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;->provider:Ljava/security/Provider;

    .line 89
    iput-object p3, p0, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;->algorithm:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static final getDefaultAlgorithm()Ljava/lang/String;
    .locals 1

    .line 66
    new-instance v0, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory$1;

    invoke-direct {v0}, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 72
    const-string v0, "SunX509"

    .line 74
    :cond_0
    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 129
    :try_start_0
    const-string v0, "TrustManagerFactory"

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lorg/openjsse/com/sun/net/ssl/SSLSecurity;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 131
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;-><init>(Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 134
    .end local v0    # "objs":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "TrustManagerFactory"

    invoke-static {p0, v0, p1}, Lorg/openjsse/com/sun/net/ssl/SSLSecurity;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 162
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;-><init>(Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 159
    .end local v0    # "objs":[Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 183
    if-eqz p1, :cond_0

    .line 185
    const-string v0, "TrustManagerFactory"

    invoke-static {p0, v0, p1}, Lorg/openjsse/com/sun/net/ssl/SSLSecurity;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;-><init>(Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 184
    .end local v0    # "objs":[Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public getTrustManagers()[Lorg/openjsse/com/sun/net/ssl/TrustManager;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;->factorySpi:Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpi;

    invoke-virtual {v0}, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpi;->engineGetTrustManagers()[Lorg/openjsse/com/sun/net/ssl/TrustManager;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/security/KeyStore;)V
    .locals 1
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactory;->factorySpi:Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpi;

    invoke-virtual {v0, p1}, Lorg/openjsse/com/sun/net/ssl/TrustManagerFactorySpi;->engineInit(Ljava/security/KeyStore;)V

    .line 211
    return-void
.end method
