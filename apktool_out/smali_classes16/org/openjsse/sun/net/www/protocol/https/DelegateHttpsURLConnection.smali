.class public Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;
.super Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;
.source "DelegateHttpsURLConnection.java"


# instance fields
.field public httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method constructor <init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "handler"    # Lsun/net/www/protocol/http/Handler;
    .param p4, "httpsURLConnection"    # Ljavax/net/ssl/HttpsURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    .line 65
    iput-object p4, p0, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 66
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/http/Handler;Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "handler"    # Lsun/net/www/protocol/http/Handler;
    .param p3, "httpsURLConnection"    # Ljavax/net/ssl/HttpsURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;Ljavax/net/ssl/HttpsURLConnection;)V

    .line 58
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

    .line 82
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 83
    return-void
.end method

.method protected getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method protected getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method
