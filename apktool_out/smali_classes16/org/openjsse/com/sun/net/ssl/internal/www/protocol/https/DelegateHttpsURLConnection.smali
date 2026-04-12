.class public Lorg/openjsse/com/sun/net/ssl/internal/www/protocol/https/DelegateHttpsURLConnection;
.super Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;
.source "DelegateHttpsURLConnection.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public httpsURLConnection:Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;


# direct methods
.method constructor <init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "handler"    # Lsun/net/www/protocol/http/Handler;
    .param p4, "httpsURLConnection"    # Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    .line 82
    iput-object p4, p0, Lorg/openjsse/com/sun/net/ssl/internal/www/protocol/https/DelegateHttpsURLConnection;->httpsURLConnection:Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;

    .line 83
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/http/Handler;Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "handler"    # Lsun/net/www/protocol/http/Handler;
    .param p3, "httpsURLConnection"    # Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/openjsse/com/sun/net/ssl/internal/www/protocol/https/DelegateHttpsURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected dispose()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 99
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 100
    return-void
.end method

.method protected getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 2

    .line 91
    new-instance v0, Lorg/openjsse/com/sun/net/ssl/internal/www/protocol/https/VerifierWrapper;

    iget-object v1, p0, Lorg/openjsse/com/sun/net/ssl/internal/www/protocol/https/DelegateHttpsURLConnection;->httpsURLConnection:Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->getHostnameVerifier()Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/openjsse/com/sun/net/ssl/internal/www/protocol/https/VerifierWrapper;-><init>(Lorg/openjsse/com/sun/net/ssl/HostnameVerifier;)V

    return-object v0
.end method

.method protected getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/internal/www/protocol/https/DelegateHttpsURLConnection;->httpsURLConnection:Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/com/sun/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method
