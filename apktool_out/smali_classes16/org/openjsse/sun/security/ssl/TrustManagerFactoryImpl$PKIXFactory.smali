.class public final Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl$PKIXFactory;
.super Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;
.source "TrustManagerFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/TrustManagerFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PKIXFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 153
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

    .line 157
    .local p1, "trustedCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    new-instance v0, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;

    const-string v1, "PKIX"

    invoke-direct {v0, v1, p1}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0
.end method

.method getInstance(Ljavax/net/ssl/ManagerFactoryParameters;)Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 163
    instance-of v0, p1, Ljavax/net/ssl/CertPathTrustManagerParameters;

    if-eqz v0, :cond_1

    .line 167
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/CertPathTrustManagerParameters;

    .line 168
    invoke-virtual {v0}, Ljavax/net/ssl/CertPathTrustManagerParameters;->getParameters()Ljava/security/cert/CertPathParameters;

    move-result-object v0

    .line 169
    .local v0, "params":Ljava/security/cert/CertPathParameters;
    instance-of v1, v0, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v1, :cond_0

    .line 173
    move-object v1, v0

    check-cast v1, Ljava/security/cert/PKIXBuilderParameters;

    .line 174
    .local v1, "pkixParams":Ljava/security/cert/PKIXBuilderParameters;
    new-instance v2, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;

    const-string v3, "PKIX"

    invoke-direct {v2, v3, v1}, Lorg/openjsse/sun/security/ssl/X509TrustManagerImpl;-><init>(Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)V

    return-object v2

    .line 170
    .end local v1    # "pkixParams":Ljava/security/cert/PKIXBuilderParameters;
    :cond_0
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Encapsulated parameters must be PKIXBuilderParameters"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    .end local v0    # "params":Ljava/security/cert/CertPathParameters;
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Parameters must be CertPathTrustManagerParameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
