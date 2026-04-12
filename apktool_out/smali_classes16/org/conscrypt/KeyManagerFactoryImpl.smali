.class public Lorg/conscrypt/KeyManagerFactoryImpl;
.super Ljavax/net/ssl/KeyManagerFactorySpi;
.source "KeyManagerFactoryImpl.java"


# instance fields
.field private keyStore:Ljava/security/KeyStore;

.field private pwd:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljavax/net/ssl/KeyManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 4

    .line 115
    iget-object v0, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    new-instance v1, Lorg/conscrypt/KeyManagerImpl;

    iget-object v2, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    iget-object v3, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    invoke-direct {v1, v2, v3}, Lorg/conscrypt/KeyManagerImpl;-><init>(Ljava/security/KeyStore;[C)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyManagerFactory is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/KeyStore;[C)V
    .locals 5
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 54
    if-eqz p1, :cond_1

    .line 55
    iput-object p1, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 56
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p2}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    goto/16 :goto_3

    .line 59
    :cond_0
    sget-object v0, Lorg/conscrypt/EmptyArray;->CHAR:[C

    iput-object v0, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_3

    .line 62
    :cond_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 63
    const-string v0, "javax.net.ssl.keyStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "keyStoreName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 65
    .local v1, "keyStorePwd":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 74
    :cond_2
    const-string v2, "javax.net.ssl.keyStorePassword"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    if-nez v1, :cond_3

    .line 76
    sget-object v2, Lorg/conscrypt/EmptyArray;->CHAR:[C

    iput-object v2, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    .line 80
    :goto_0
    const/4 v2, 0x0

    .line 82
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 83
    iget-object v3, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    iget-object v4, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    invoke-virtual {v3, v2, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-static {v2}, Lorg/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 92
    goto :goto_3

    .line 91
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 88
    :catch_0
    move-exception v3

    .line 89
    .local v3, "e":Ljava/security/cert/CertificateException;
    :try_start_1
    new-instance v4, Ljava/security/KeyStoreException;

    invoke-direct {v4, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "keyStoreName":Ljava/lang/String;
    .end local v1    # "keyStorePwd":Ljava/lang/String;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local p1    # "ks":Ljava/security/KeyStore;
    .end local p2    # "password":[C
    throw v4

    .line 86
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "keyStoreName":Ljava/lang/String;
    .restart local v1    # "keyStorePwd":Ljava/lang/String;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p1    # "ks":Ljava/security/KeyStore;
    .restart local p2    # "password":[C
    :catch_1
    move-exception v3

    .line 87
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/security/KeyStoreException;

    invoke-direct {v4, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "keyStoreName":Ljava/lang/String;
    .end local v1    # "keyStorePwd":Ljava/lang/String;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local p1    # "ks":Ljava/security/KeyStore;
    .end local p2    # "password":[C
    throw v4

    .line 84
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "keyStoreName":Ljava/lang/String;
    .restart local v1    # "keyStorePwd":Ljava/lang/String;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p1    # "ks":Ljava/security/KeyStore;
    .restart local p2    # "password":[C
    :catch_2
    move-exception v3

    .line 85
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/security/KeyStoreException;

    invoke-direct {v4, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "keyStoreName":Ljava/lang/String;
    .end local v1    # "keyStorePwd":Ljava/lang/String;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local p1    # "ks":Ljava/security/KeyStore;
    .end local p2    # "password":[C
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "keyStoreName":Ljava/lang/String;
    .restart local v1    # "keyStorePwd":Ljava/lang/String;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p1    # "ks":Ljava/security/KeyStore;
    .restart local p2    # "password":[C
    :goto_1
    invoke-static {v2}, Lorg/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .line 67
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_4
    :goto_2
    :try_start_2
    iget-object v2, p0, Lorg/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3

    .line 72
    nop

    .line 97
    .end local v0    # "keyStoreName":Ljava/lang/String;
    .end local v1    # "keyStorePwd":Ljava/lang/String;
    :goto_3
    return-void

    .line 70
    .restart local v0    # "keyStoreName":Ljava/lang/String;
    .restart local v1    # "keyStorePwd":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 71
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 68
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :catch_4
    move-exception v2

    .line 69
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 2
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ManagerFactoryParameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
