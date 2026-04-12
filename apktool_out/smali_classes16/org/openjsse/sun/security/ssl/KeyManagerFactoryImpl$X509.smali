.class public final Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl$X509;
.super Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl;
.source "KeyManagerFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "X509"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineInit(Ljava/security/KeyStore;[C)V
    .locals 3
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v0, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl$X509;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    goto :goto_1

    .line 124
    :cond_0
    invoke-static {}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->isFIPS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {p1}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    move-result-object v0

    sget-object v1, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FIPS mode: KeyStore must be from provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    .line 128
    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    :goto_0
    :try_start_0
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-static {p1, v0}, Ljava/security/KeyStore$Builder;->newInstance(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;

    move-result-object v0

    .line 133
    .local v0, "builder":Ljava/security/KeyStore$Builder;
    new-instance v1, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;

    invoke-direct {v1, v0}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;-><init>(Ljava/security/KeyStore$Builder;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl$X509;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "builder":Ljava/security/KeyStore$Builder;
    nop

    .line 138
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl$X509;->isInitialized:Z

    .line 139
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "initialization failed"

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 2
    .param p1, "params"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 144
    instance-of v0, p1, Ljavax/net/ssl/KeyStoreBuilderParameters;

    if-eqz v0, :cond_1

    .line 148
    invoke-static {}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->isFIPS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/KeyStoreBuilderParameters;

    .line 153
    invoke-virtual {v0}, Ljavax/net/ssl/KeyStoreBuilderParameters;->getParameters()Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, "builders":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyStore$Builder;>;"
    new-instance v1, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;

    invoke-direct {v1, v0}, Lorg/openjsse/sun/security/ssl/X509KeyManagerImpl;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl$X509;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 155
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl$X509;->isInitialized:Z

    .line 156
    return-void

    .line 149
    .end local v0    # "builders":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyStore$Builder;>;"
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "FIPS mode: KeyStoreBuilderParameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Parameters must be instance of KeyStoreBuilderParameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
