.class public final Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl$SunX509;
.super Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl;
.source "KeyManagerFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SunX509"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
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

    .line 94
    if-eqz p1, :cond_1

    invoke-static {}, Lorg/openjsse/sun/security/ssl/OpenJSSE;->isFIPS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p1}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    move-result-object v0

    sget-object v1, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FIPS mode: KeyStore must be from provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/openjsse/sun/security/ssl/OpenJSSE;->cryptoProvider:Ljava/security/Provider;

    .line 97
    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    :goto_0
    new-instance v0, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;

    invoke-direct {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/SunX509KeyManagerImpl;-><init>(Ljava/security/KeyStore;[C)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl$SunX509;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/KeyManagerFactoryImpl$SunX509;->isInitialized:Z

    .line 102
    return-void
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 2
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "SunX509KeyManager does not use ManagerFactoryParameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
