.class final Lorg/openjsse/com/sun/net/ssl/X509TrustManagerJavaxWrapper;
.super Ljava/lang/Object;
.source "SSLSecurity.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private theX509TrustManager:Lorg/openjsse/com/sun/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Lorg/openjsse/com/sun/net/ssl/X509TrustManager;)V
    .locals 0
    .param p1, "obj"    # Lorg/openjsse/com/sun/net/ssl/X509TrustManager;

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Lorg/openjsse/com/sun/net/ssl/X509TrustManagerJavaxWrapper;->theX509TrustManager:Lorg/openjsse/com/sun/net/ssl/X509TrustManager;

    .line 606
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509TrustManagerJavaxWrapper;->theX509TrustManager:Lorg/openjsse/com/sun/net/ssl/X509TrustManager;

    invoke-interface {v0, p1}, Lorg/openjsse/com/sun/net/ssl/X509TrustManager;->isClientTrusted([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    return-void

    .line 612
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Untrusted Client Certificate Chain"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 620
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509TrustManagerJavaxWrapper;->theX509TrustManager:Lorg/openjsse/com/sun/net/ssl/X509TrustManager;

    invoke-interface {v0, p1}, Lorg/openjsse/com/sun/net/ssl/X509TrustManager;->isServerTrusted([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    return-void

    .line 621
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Untrusted Server Certificate Chain"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 627
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/X509TrustManagerJavaxWrapper;->theX509TrustManager:Lorg/openjsse/com/sun/net/ssl/X509TrustManager;

    invoke-interface {v0}, Lorg/openjsse/com/sun/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
