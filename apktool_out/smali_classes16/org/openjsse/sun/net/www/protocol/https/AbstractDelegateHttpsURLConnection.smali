.class public abstract Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;
.super Lsun/net/www/protocol/http/HttpURLConnection;
.source "AbstractDelegateHttpsURLConnection.java"


# direct methods
.method protected constructor <init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "handler"    # Lsun/net/www/protocol/http/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    .line 56
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/http/Handler;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "handler"    # Lsun/net/www/protocol/http/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    .line 51
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-boolean v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 188
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->plainConnect()V

    .line 190
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    if-eqz v0, :cond_1

    .line 192
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->isCachedConnection()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->needsTunneling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->doTunneling()V

    .line 197
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->afterConnect()V

    .line 198
    return-void
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 2

    .line 221
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    check-cast v0, Ljava/net/SecureCacheResponse;

    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 225
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connection not yet open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    .line 236
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    check-cast v0, Ljava/net/SecureCacheResponse;

    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v0

    .line 238
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-nez v0, :cond_0

    .line 239
    const/4 v1, 0x0

    return-object v1

    .line 241
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    return-object v1

    .line 244
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 245
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connection not yet open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .line 300
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    check-cast v0, Ljava/net/SecureCacheResponse;

    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

    .line 304
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

    .line 305
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connection not yet open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;I)Lsun/net/www/http/HttpClient;
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 204
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    .line 203
    const/4 v4, 0x1

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;ZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method protected getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "connectTimeout"    # I
    .param p4, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    .line 212
    move-object v1, p1

    move-object v3, p2

    move v4, p4

    move v5, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;ZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    check-cast v0, Ljava/net/SecureCacheResponse;

    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

    .line 287
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

    .line 288
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connection not yet open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    check-cast v0, Ljava/net/SecureCacheResponse;

    .line 261
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;

    move-result-object v0

    .line 262
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-nez v0, :cond_0

    .line 263
    const/4 v1, 0x0

    return-object v1

    .line 265
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    return-object v1

    .line 269
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 270
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connection not yet open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConnected()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->connected:Z

    return v0
.end method

.method protected proxiedConnect(Ljava/net/URL;Ljava/lang/String;IZ)V
    .locals 9
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-boolean v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 154
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getReadTimeout()I

    move-result v0

    .line 156
    .local v0, "readTimeout":I
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 158
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    .line 162
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getConnectTimeout()I

    move-result v7

    .line 156
    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p0

    invoke-static/range {v1 .. v8}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 164
    iget-object v1, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v1, v0}, Lsun/net/www/http/HttpClient;->setReadTimeout(I)V

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->connected:Z

    .line 166
    return-void
.end method

.method public setConnected(Z)V
    .locals 0
    .param p1, "conn"    # Z

    .line 179
    iput-boolean p1, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->connected:Z

    .line 180
    return-void
.end method

.method public setNewClient(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->setNewClient(Ljava/net/URL;Z)V

    .line 81
    return-void
.end method

.method public setNewClient(Ljava/net/URL;Z)V
    .locals 9
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getReadTimeout()I

    move-result v0

    .line 97
    .local v0, "readTimeout":I
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 99
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    .line 103
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getConnectTimeout()I

    move-result v7

    .line 97
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v2, p1

    move v6, p2

    move-object v8, p0

    invoke-static/range {v1 .. v8}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 105
    iget-object v1, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v1, v0}, Lsun/net/www/http/HttpClient;->setReadTimeout(I)V

    .line 106
    iget-object v1, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v1, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v1}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->afterConnect()V

    .line 107
    return-void
.end method

.method public setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V

    .line 125
    return-void
.end method

.method public setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->proxiedConnect(Ljava/net/URL;Ljava/lang/String;IZ)V

    .line 145
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->isCachedConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->doTunneling()V

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->http:Lsun/net/www/http/HttpClient;

    check-cast v0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->afterConnect()V

    .line 149
    return-void
.end method
