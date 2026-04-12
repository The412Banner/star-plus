.class public final Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl$SimpleFactory;
.super Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;
.source "TrustManagerFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method getInstance(Ljava/util/Collection;)Ljavax/net/ssl/X509TrustManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljavax/net/ssl/X509TrustManager;"
        }
    .end annotation

    .line 140
    .local p1, "trustedCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    new-instance v0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;

    const-string v1, "Simple"

    invoke-direct {v0, v1, p1}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0
.end method

.method getInstance(Ljavax/net/ssl/ManagerFactoryParameters;)Ljavax/net/ssl/X509TrustManager;
    .locals 2
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "SunX509 TrustManagerFactory does not use ManagerFactoryParameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
