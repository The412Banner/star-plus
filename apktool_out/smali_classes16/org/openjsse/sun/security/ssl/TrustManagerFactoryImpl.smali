.class abstract Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "TrustManagerFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl$PKIXFactory;,
        Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl$SimpleFactory;
    }
.end annotation


# instance fields
.field private isInitialized:Z

.field private trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;->isInitialized:Z

    .line 48
    return-void
.end method

.method private static getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl$1;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl$1;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    return-object v0
.end method


# virtual methods
.method protected engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 3

    .line 106
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    aput-object v2, v0, v1

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TrustManagerFactoryImpl is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/KeyStore;)V
    .locals 4
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 52
    const-string v0, "SunX509: skip default keystore"

    const-string v1, "trustmanager"

    if-nez p1, :cond_4

    .line 54
    :try_start_0
    invoke-static {}, Lorg/openjsse/sun/security/ssl/TrustStoreManager;->getTrustedCerts()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;->getInstance(Ljava/util/Collection;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_0

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "problem accessing trust store"

    invoke-direct {v0, v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 67
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 68
    .local v0, "re":Ljava/lang/RuntimeException;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const-string v1, "SunX509: skip default keystor"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_1
    throw v0

    .line 61
    .end local v0    # "re":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 62
    .local v2, "err":Ljava/lang/Error;
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_2

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :cond_2
    throw v2

    .line 55
    .end local v2    # "err":Ljava/lang/Error;
    :catch_3
    move-exception v2

    .line 57
    .local v2, "se":Ljava/lang/SecurityException;
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_3

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .end local v2    # "se":Ljava/lang/SecurityException;
    :cond_3
    :goto_0
    goto :goto_1

    .line 82
    :cond_4
    invoke-static {p1}, Lorg/openjsse/sun/security/validator/TrustStoreUtil;->getTrustedCerts(Ljava/security/KeyStore;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;->getInstance(Ljava/util/Collection;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 85
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;->isInitialized:Z

    .line 86
    return-void
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 1
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;->getInstance(Ljavax/net/ssl/ManagerFactoryParameters;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;->isInitialized:Z

    .line 99
    return-void
.end method

.method abstract getInstance(Ljava/util/Collection;)Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljavax/net/ssl/X509TrustManager;"
        }
    .end annotation
.end method

.method abstract getInstance(Ljavax/net/ssl/ManagerFactoryParameters;)Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method
