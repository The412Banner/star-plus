.class public Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "HttpsURLConnectionImpl.java"


# instance fields
.field protected delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 109
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Ljava/net/Proxy;Lorg/openjsse/sun/net/www/protocol/https/Handler;)V
    .locals 2
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "handler"    # Lorg/openjsse/sun/net/www/protocol/https/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-static {p1}, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->checkURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 101
    new-instance v0, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    iget-object v1, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->url:Ljava/net/URL;

    invoke-direct {v0, v1, p2, p3, p0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;Ljavax/net/ssl/HttpsURLConnection;)V

    iput-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    .line 102
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Lorg/openjsse/sun/net/www/protocol/https/Handler;)V
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "handler"    # Lorg/openjsse/sun/net/www/protocol/https/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lorg/openjsse/sun/net/www/protocol/https/Handler;)V

    .line 83
    return-void
.end method

.method static checkURL(Ljava/net/URL;)Ljava/net/URL;
    .locals 2
    .param p0, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    if-eqz p0, :cond_1

    .line 87
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "Illegal character in URL"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/openjsse/sun/net/util/IPAddressUtil;->checkAuthority(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 95
    return-object p0

    .line 93
    :cond_2
    new-instance v1, Ljava/net/MalformedURLException;

    invoke-direct {v1, v0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->connect()V

    .line 169
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->disconnect()V

    .line 262
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 501
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;

    iget-object v1, v1, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 501
    :goto_1
    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->dispose()V

    .line 498
    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 514
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentLengthLong()J
    .locals 2

    .line 398
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 414
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 483
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 447
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 455
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .line 410
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .line 295
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    .line 382
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # I

    .line 422
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .line 303
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    .line 426
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 479
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 250
    .end local p0    # "this":Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 366
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .line 418
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 246
    .end local p0    # "this":Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 522
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 471
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 506
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected isConnected()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1
    .param p1, "allowuserinteraction"    # Z

    .line 459
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setAllowUserInteraction(Z)V

    .line 460
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1
    .param p1, "chunklen"    # I

    .line 534
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 535
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .line 510
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setConnectTimeout(I)V

    .line 511
    return-void
.end method

.method protected setConnected(Z)V
    .locals 1
    .param p1, "conn"    # Z

    .line 186
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setConnected(Z)V

    .line 187
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1
    .param p1, "defaultusecaches"    # Z

    .line 487
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setDefaultUseCaches(Z)V

    .line 488
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1
    .param p1, "doinput"    # Z

    .line 443
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setDoInput(Z)V

    .line 444
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1
    .param p1, "dooutput"    # Z

    .line 451
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setDoOutput(Z)V

    .line 452
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1
    .param p1, "contentLength"    # I

    .line 526
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 527
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1
    .param p1, "contentLength"    # J

    .line 530
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setFixedLengthStreamingMode(J)V

    .line 531
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .param p1, "ifmodifiedsince"    # J

    .line 475
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setIfModifiedSince(J)V

    .line 476
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .param p1, "shouldFollow"    # Z

    .line 362
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 363
    return-void
.end method

.method protected setNewClient(Ljava/net/URL;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setNewClient(Ljava/net/URL;Z)V

    .line 119
    return-void
.end method

.method protected setNewClient(Ljava/net/URL;Z)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setNewClient(Ljava/net/URL;Z)V

    .line 131
    return-void
.end method

.method protected setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V

    .line 145
    return-void
.end method

.method protected setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V
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

    .line 160
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V

    .line 161
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .line 518
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setReadTimeout(I)V

    .line 519
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1
    .param p1, "usecaches"    # Z

    .line 467
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->setUseCaches(Z)V

    .line 468
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;

    invoke-virtual {v0}, Lorg/openjsse/sun/net/www/protocol/https/DelegateHttpsURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
