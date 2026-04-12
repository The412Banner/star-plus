.class final Lorg/openjsse/com/sun/net/ssl/X509TrustManagerComSunWrapper;
.super Ljava/lang/Object;
.source "SSLSecurity.java"

# interfaces
.implements Lorg/openjsse/com/sun/net/ssl/X509TrustManager;


# instance fields
.field private theX509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 0
    .param p1, "obj"    # Ljavax/net/ssl/X509TrustManager;

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-object p1, p0, Lorg/openjsse/com/sun/net/ssl/X509TrustManagerComSunWrapper;->theX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 674
    return-void
.end method


# virtual methods
.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 697
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509TrustManagerComSunWrapper;->theX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public isClientTrusted([Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;

    .line 679
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509TrustManagerComSunWrapper;->theX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    const-string v1, "UNKNOWN"

    invoke-interface {v0, p1, v1}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    const/4 v0, 0x1

    return v0

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Ljava/security/cert/CertificateException;
    const/4 v1, 0x0

    return v1
.end method

.method public isServerTrusted([Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;

    .line 689
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509TrustManagerComSunWrapper;->theX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    const-string v1, "UNKNOWN"

    invoke-interface {v0, p1, v1}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    const/4 v0, 0x1

    return v0

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/security/cert/CertificateException;
    const/4 v1, 0x0

    return v1
.end method
