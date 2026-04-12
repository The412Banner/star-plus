.class final Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;
.super Lsun/net/www/http/HttpClient;
.source "HttpsClient.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final defaultHVCanonicalName:Ljava/lang/String; = "javax.net.ssl.HttpsURLConnection.DefaultHostnameVerifier"

.field private static final httpsPortNumber:I = 0x1bb


# instance fields
.field private hv:Ljavax/net/ssl/HostnameVerifier;

.field private session:Ljavax/net/ssl/SSLSession;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 109
    return-void
.end method

.method private constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;)V
    .locals 2
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/lang/String;I)V

    .line 219
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/lang/String;I)V
    .locals 6
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/lang/String;II)V

    .line 228
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/lang/String;II)V
    .locals 1
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .param p5, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 239
    :cond_0
    const-string v0, "https"

    invoke-static {p3, p4, v0}, Lsun/net/www/http/HttpClient;->newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    .line 237
    :goto_0
    invoke-direct {p0, p1, p2, v0, p5}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/net/Proxy;I)V

    .line 241
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/net/Proxy;I)V
    .locals 3
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Lsun/net/www/http/HttpClient;-><init>()V

    .line 249
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->getHttpLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    .line 250
    .local v0, "logger":Lsun/util/logging/PlatformLogger;
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating new HttpsClient with url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and proxy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with connect timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 254
    :cond_0
    iput-object p3, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->proxy:Ljava/net/Proxy;

    .line 255
    invoke-virtual {p0, p1}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->proxyDisabled:Z

    .line 258
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->host:Ljava/lang/String;

    .line 259
    iput-object p2, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->url:Ljava/net/URL;

    .line 260
    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    move-result v1

    iput v1, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->port:I

    .line 261
    iget v1, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->port:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 262
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->getDefaultPort()I

    move-result v1

    iput v1, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->port:I

    .line 264
    :cond_1
    invoke-virtual {p0, p4}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->setConnectTimeout(I)V

    .line 265
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->openServer()V

    .line 266
    return-void
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;ILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 7
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .param p5, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 8
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .param p5, "useCache"    # Z
    .param p6, "connectTimeout"    # I
    .param p7, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    if-nez p3, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_0

    .line 310
    :cond_0
    const-string v0, "https"

    invoke-static {p3, p4, v0}, Lsun/net/www/http/HttpClient;->newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    move-object v4, v0

    .line 308
    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-static/range {v1 .. v7}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;ZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 8
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .param p5, "useCache"    # Z
    .param p6, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;ZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 6
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "p"    # Ljava/net/Proxy;
    .param p4, "useCache"    # Z
    .param p5, "connectTimeout"    # I
    .param p6, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    if-nez p3, :cond_0

    .line 320
    sget-object p3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 322
    :cond_0
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->getHttpLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    .line 323
    .local v0, "logger":Lsun/util/logging/PlatformLogger;
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking for HttpClient for URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and proxy value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 327
    :cond_1
    const/4 v1, 0x0

    .line 328
    .local v1, "ret":Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;
    if-eqz p4, :cond_b

    .line 330
    sget-object v2, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->kac:Lsun/net/www/http/KeepAliveCache;

    invoke-virtual {v2, p1, p0}, Lsun/net/www/http/KeepAliveCache;->get(Ljava/net/URL;Ljava/lang/Object;)Lsun/net/www/http/HttpClient;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;

    .line 331
    if-eqz v1, :cond_2

    if-eqz p6, :cond_2

    .line 332
    invoke-virtual {p6}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    invoke-virtual {p6}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    if-ne v2, v3, :cond_2

    .line 334
    invoke-virtual {v1}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->available()Z

    move-result v2

    if-nez v2, :cond_2

    .line 335
    const/4 v1, 0x0

    .line 338
    :cond_2
    if-eqz v1, :cond_b

    .line 340
    iget-object v2, v1, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->proxy:Ljava/net/Proxy;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v1, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2, p3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, v1, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->proxy:Ljava/net/Proxy;

    if-nez v2, :cond_5

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne p3, v2, :cond_5

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    move v2, v4

    .line 342
    .local v2, "compatible":Z
    :goto_0
    if-eqz v2, :cond_9

    .line 343
    monitor-enter v1

    .line 344
    :try_start_0
    iput-boolean v3, v1, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->cachedHttpClient:Z

    .line 345
    iget-boolean v3, v1, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->inCache:Z

    if-eqz v3, :cond_8

    .line 346
    iput-boolean v4, v1, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->inCache:Z

    .line 347
    if-eqz p6, :cond_6

    invoke-virtual {v1}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->needsTunneling()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 348
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    invoke-virtual {p6, v3}, Lsun/net/www/protocol/http/HttpURLConnection;->setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V

    .line 349
    :cond_6
    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeepAlive stream retrieved from the cache, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 352
    :cond_7
    monitor-exit v1

    goto :goto_1

    .line 345
    :cond_8
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "logger":Lsun/util/logging/PlatformLogger;
    .end local v1    # "ret":Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;
    .end local v2    # "compatible":Z
    .end local p0    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .end local p1    # "url":Ljava/net/URL;
    .end local p2    # "hv":Ljavax/net/ssl/HostnameVerifier;
    .end local p3    # "p":Ljava/net/Proxy;
    .end local p4    # "useCache":Z
    .end local p5    # "connectTimeout":I
    .end local p6    # "httpuc":Lsun/net/www/protocol/http/HttpURLConnection;
    throw v3

    .line 352
    .restart local v0    # "logger":Lsun/util/logging/PlatformLogger;
    .restart local v1    # "ret":Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;
    .restart local v2    # "compatible":Z
    .restart local p0    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .restart local p1    # "url":Ljava/net/URL;
    .restart local p2    # "hv":Ljavax/net/ssl/HostnameVerifier;
    .restart local p3    # "p":Ljava/net/Proxy;
    .restart local p4    # "useCache":Z
    .restart local p5    # "connectTimeout":I
    .restart local p6    # "httpuc":Lsun/net/www/protocol/http/HttpURLConnection;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 358
    :cond_9
    monitor-enter v1

    .line 359
    :try_start_1
    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not returning this connection to cache: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 362
    :cond_a
    iput-boolean v4, v1, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->inCache:Z

    .line 363
    invoke-virtual {v1}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->closeServer()V

    .line 364
    monitor-exit v1

    .line 365
    const/4 v1, 0x0

    goto :goto_1

    .line 364
    :catchall_1
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 369
    .end local v2    # "compatible":Z
    :cond_b
    :goto_1
    if-nez v1, :cond_c

    .line 370
    new-instance v2, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;

    invoke-direct {v2, p0, p1, p3, p5}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/net/Proxy;I)V

    move-object v1, v2

    goto :goto_4

    .line 373
    :cond_c
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 374
    .local v2, "security":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_f

    .line 375
    iget-object v3, v1, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->proxy:Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-eq v3, v4, :cond_e

    iget-object v3, v1, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->proxy:Ljava/net/Proxy;

    if-nez v3, :cond_d

    goto :goto_2

    .line 378
    :cond_d
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_3

    .line 376
    :cond_e
    :goto_2
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 381
    :cond_f
    :goto_3
    iput-object p1, v1, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->url:Ljava/net/URL;

    .line 383
    .end local v2    # "security":Ljava/lang/SecurityManager;
    :goto_4
    invoke-virtual {v1, p2}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 385
    return-object v1
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Lsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 1
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;ZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;ZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 7
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "useCache"    # Z
    .param p4, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    const/4 v3, 0x0

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method private checkURLSpoofing(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 6
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "host":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 601
    :cond_0
    const/4 v2, 0x0

    .line 602
    .local v2, "peerCerts":[Ljava/security/cert/Certificate;
    iget-object v3, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v3

    .line 604
    .local v3, "cipher":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lsun/security/util/HostnameChecker;->getInstance(B)Lsun/security/util/HostnameChecker;

    move-result-object v1

    .line 608
    .local v1, "checker":Lsun/security/util/HostnameChecker;
    iget-object v4, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v4}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    move-object v2, v4

    .line 611
    const/4 v4, 0x0

    aget-object v5, v2, v4

    instance-of v5, v5, Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_1

    .line 613
    aget-object v4, v2, v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 617
    .local v4, "peerCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1, v0, v4}, Lsun/security/util/HostnameChecker;->match(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    .line 620
    return-void

    .line 615
    .end local v4    # "peerCert":Ljava/security/cert/X509Certificate;
    :cond_1
    new-instance v4, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "host":Ljava/lang/String;
    .end local v2    # "peerCerts":[Ljava/security/cert/Certificate;
    .end local v3    # "cipher":Ljava/lang/String;
    .end local p1    # "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    throw v4
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v1    # "checker":Lsun/security/util/HostnameChecker;
    .restart local v0    # "host":Ljava/lang/String;
    .restart local v2    # "peerCerts":[Ljava/security/cert/Certificate;
    .restart local v3    # "cipher":Ljava/lang/String;
    .restart local p1    # "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 622
    :catch_1
    move-exception v1

    .line 631
    nop

    .line 633
    :goto_0
    if-eqz v3, :cond_2

    const-string v1, "_anon_"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 634
    return-void

    .line 635
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    .line 636
    invoke-interface {p1, v0, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 637
    return-void

    .line 640
    :cond_3
    iget-object v1, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 641
    iget-object v1, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 642
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTPS hostname wrong:  should be <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->url:Ljava/net/URL;

    .line 643
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getCipherSuites()[Ljava/lang/String;
    .locals 6

    .line 143
    nop

    .line 144
    const-string v0, "https.cipherSuites"

    invoke-static {v0}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "cipherString":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 150
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 152
    .local v1, "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 156
    .local v3, "ciphers":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 157
    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 156
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 147
    .end local v1    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v3    # "ciphers":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 159
    .restart local v3    # "ciphers":[Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method private getProtocols()[Ljava/lang/String;
    .locals 6

    .line 167
    nop

    .line 168
    const-string v0, "https.protocols"

    invoke-static {v0}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "protocolString":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 174
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 176
    .local v1, "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 180
    .local v3, "protocols":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 181
    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 180
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 171
    .end local v1    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v3    # "protocols":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 184
    .restart local v3    # "protocols":[Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method private getUserAgent()Ljava/lang/String;
    .locals 2

    .line 188
    nop

    .line 189
    const-string v0, "https.agent"

    invoke-static {v0}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "userAgent":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 191
    :cond_0
    const-string v0, "JSSE"

    .line 193
    :cond_1
    return-object v0
.end method


# virtual methods
.method public afterConnect()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->isCachedConnection()Z

    move-result v0

    if-nez v0, :cond_9

    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "s":Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 439
    .local v1, "factory":Ljavax/net/ssl/SSLSocketFactory;
    :try_start_0
    iget-object v2, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->serverSocket:Ljava/net/Socket;

    instance-of v2, v2, Ljavax/net/ssl/SSLSocket;

    if-nez v2, :cond_0

    .line 440
    iget-object v2, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->serverSocket:Ljava/net/Socket;

    iget-object v3, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->host:Ljava/lang/String;

    iget v4, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->port:I

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    move-object v0, v2

    goto :goto_0

    .line 443
    :cond_0
    iget-object v2, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->serverSocket:Ljava/net/Socket;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    move-object v0, v2

    .line 444
    nop

    instance-of v2, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    if-eqz v2, :cond_1

    .line 445
    move-object v2, v0

    check-cast v2, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v3, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->setHost(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_1
    :goto_0
    goto :goto_1

    .line 448
    :catch_0
    move-exception v2

    .line 453
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    iget-object v3, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->host:Ljava/lang/String;

    iget v4, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->port:I

    invoke-virtual {v1, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v3

    .line 456
    nop

    .line 464
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_1
    invoke-direct {p0}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->getProtocols()[Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "protocols":[Ljava/lang/String;
    invoke-direct {p0}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->getCipherSuites()[Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, "ciphers":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 467
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 469
    :cond_2
    if-eqz v3, :cond_3

    .line 470
    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 472
    :cond_3
    invoke-virtual {v0, p0}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 522
    const/4 v4, 0x1

    .line 523
    .local v4, "needToCheckSpoofing":Z
    nop

    .line 524
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 525
    .local v5, "identification":Ljava/lang/String;
    const-string v6, "HTTPS"

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 526
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 530
    const/4 v4, 0x0

    goto :goto_3

    .line 534
    :cond_4
    const/4 v7, 0x0

    .line 539
    .local v7, "isDefaultHostnameVerifier":Z
    iget-object v8, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->hv:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v8, :cond_6

    .line 540
    iget-object v8, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->hv:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    .line 541
    .local v8, "canonicalName":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 542
    const-string v9, "javax.net.ssl.HttpsURLConnection.DefaultHostnameVerifier"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 543
    const/4 v7, 0x1

    .line 545
    .end local v8    # "canonicalName":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 549
    :cond_6
    const/4 v7, 0x1

    .line 552
    :goto_2
    if-eqz v7, :cond_7

    .line 555
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v8

    .line 556
    .local v8, "paramaters":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {v8, v6}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0, v8}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 559
    const/4 v4, 0x0

    .line 563
    .end local v7    # "isDefaultHostnameVerifier":Z
    .end local v8    # "paramaters":Ljavax/net/ssl/SSLParameters;
    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 564
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    iput-object v6, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    .line 566
    iput-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->serverSocket:Ljava/net/Socket;

    .line 568
    :try_start_2
    new-instance v6, Ljava/io/PrintStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    iget-object v8, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->serverSocket:Ljava/net/Socket;

    .line 569
    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v8, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->encoding:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v6, v7, v9, v8}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v6, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->serverOutput:Ljava/io/PrintStream;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 573
    nop

    .line 576
    if-eqz v4, :cond_8

    .line 577
    iget-object v6, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->hv:Ljavax/net/ssl/HostnameVerifier;

    invoke-direct {p0, v6}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->checkURLSpoofing(Ljavax/net/ssl/HostnameVerifier;)V

    .line 579
    .end local v0    # "s":Ljavax/net/ssl/SSLSocket;
    .end local v1    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "protocols":[Ljava/lang/String;
    .end local v3    # "ciphers":[Ljava/lang/String;
    .end local v4    # "needToCheckSpoofing":Z
    .end local v5    # "identification":Ljava/lang/String;
    :cond_8
    goto :goto_4

    .line 571
    .restart local v0    # "s":Ljavax/net/ssl/SSLSocket;
    .restart local v1    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "protocols":[Ljava/lang/String;
    .restart local v3    # "ciphers":[Ljava/lang/String;
    .restart local v4    # "needToCheckSpoofing":Z
    .restart local v5    # "identification":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 572
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/InternalError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->encoding:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " encoding not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 454
    .end local v3    # "ciphers":[Ljava/lang/String;
    .end local v4    # "needToCheckSpoofing":Z
    .end local v5    # "identification":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .local v2, "ex":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 455
    .local v3, "ignored":Ljava/io/IOException;
    throw v2

    .line 583
    .end local v0    # "s":Ljavax/net/ssl/SSLSocket;
    .end local v1    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "ignored":Ljava/io/IOException;
    :cond_9
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->serverSocket:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    .line 585
    :goto_4
    return-void
.end method

.method public closeIdleConnection()V
    .locals 3

    .line 661
    sget-object v0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->kac:Lsun/net/www/http/KeepAliveCache;

    iget-object v1, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->url:Ljava/net/URL;

    iget-object v2, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1, v2}, Lsun/net/www/http/KeepAliveCache;->get(Ljava/net/URL;Ljava/lang/Object;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    .line 662
    .local v0, "http":Lsun/net/www/http/HttpClient;
    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V

    .line 665
    :cond_0
    return-void
.end method

.method protected createSocket()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 410
    :catch_0
    move-exception v0

    .line 417
    .local v0, "se":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 418
    .local v1, "t":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_0

    .line 419
    invoke-super {p0}, Lsun/net/www/http/HttpClient;->createSocket()Ljava/net/Socket;

    move-result-object v2

    return-object v2

    .line 421
    :cond_0
    throw v0
.end method

.method getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 671
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultPort()I
    .locals 1

    .line 123
    const/16 v0, 0x1bb

    return v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 679
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method getLocalPrincipal()Ljava/security/Principal;
    .locals 4

    .line 722
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    .local v0, "principal":Ljava/security/Principal;
    goto :goto_0

    .line 723
    .end local v0    # "principal":Ljava/security/Principal;
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const/4 v1, 0x0

    .line 727
    .local v1, "principal":Ljava/security/Principal;
    iget-object v2, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    .line 728
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 729
    .local v2, "certs":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_0

    .line 730
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 729
    :cond_0
    move-object v0, v1

    .line 733
    .end local v1    # "principal":Ljava/security/Principal;
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .local v0, "principal":Ljava/security/Principal;
    :goto_0
    return-object v0
.end method

.method getPeerPrincipal()Ljava/security/Principal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 703
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    .local v0, "principal":Ljava/security/Principal;
    goto :goto_0

    .line 704
    .end local v0    # "principal":Ljava/security/Principal;
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Ljava/lang/AbstractMethodError;
    iget-object v1, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    .line 708
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 709
    .local v1, "certs":[Ljava/security/cert/Certificate;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object v0, v2

    .line 711
    .end local v1    # "certs":[Ljava/security/cert/Certificate;
    .local v0, "principal":Ljava/security/Principal;
    :goto_0
    return-object v0
.end method

.method public getProxyHostUsed()Ljava/lang/String;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->needsTunneling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    const/4 v0, 0x0

    return-object v0

    .line 758
    :cond_0
    invoke-super {p0}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyPortUsed()I
    .locals 2

    .line 768
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->proxy:Ljava/net/Proxy;

    .line 769
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->proxy:Ljava/net/Proxy;

    .line 770
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_1

    .line 769
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 768
    :goto_1
    return v0
.end method

.method getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 398
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 1
    .param p1, "event"    # Ljavax/net/ssl/HandshakeCompletedEvent;

    .line 746
    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    .line 747
    return-void
.end method

.method public needsTunneling()Z
    .locals 2

    .line 429
    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->proxy:Ljava/net/Proxy;

    .line 430
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 429
    :goto_0
    return v0
.end method

.method protected putInKeepAliveCache()V
    .locals 3

    .line 648
    iget-boolean v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->inCache:Z

    if-nez v0, :cond_0

    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->inCache:Z

    .line 653
    sget-object v0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->kac:Lsun/net/www/http/KeepAliveCache;

    iget-object v1, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->url:Ljava/net/URL;

    iget-object v2, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1, v2, p0}, Lsun/net/www/http/KeepAliveCache;->put(Ljava/net/URL;Ljava/lang/Object;Lsun/net/www/http/HttpClient;)V

    .line 654
    return-void

    .line 649
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Duplicate put to keep alive cache"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0
    .param p1, "hv"    # Ljavax/net/ssl/HostnameVerifier;

    .line 390
    iput-object p1, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->hv:Ljavax/net/ssl/HostnameVerifier;

    .line 391
    return-void
.end method

.method setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 394
    iput-object p1, p0, Lorg/openjsse/sun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 395
    return-void
.end method
