.class final Lorg/openjsse/com/sun/net/ssl/SSLContextSpiWrapper;
.super Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;
.source "SSLSecurity.java"


# instance fields
.field private theSSLContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/Provider;)V
    .locals 1
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "prov"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 285
    invoke-direct {p0}, Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;-><init>()V

    .line 286
    invoke-static {p1, p2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/com/sun/net/ssl/SSLContextSpiWrapper;->theSSLContext:Ljavax/net/ssl/SSLContext;

    .line 287
    return-void
.end method


# virtual methods
.method protected engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/SSLContextSpiWrapper;->theSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method protected engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 382
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/SSLContextSpiWrapper;->theSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method protected engineInit([Lorg/openjsse/com/sun/net/ssl/KeyManager;[Lorg/openjsse/com/sun/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "kma"    # [Lorg/openjsse/com/sun/net/ssl/KeyManager;
    .param p2, "tma"    # [Lorg/openjsse/com/sun/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 301
    if-eqz p1, :cond_3

    .line 302
    array-length v0, p1

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    .line 303
    .local v0, "kmaw":[Ljavax/net/ssl/KeyManager;
    const/4 v1, 0x0

    .local v1, "src":I
    const/4 v2, 0x0

    .local v2, "dst":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 309
    aget-object v3, p1, v1

    instance-of v3, v3, Ljavax/net/ssl/KeyManager;

    if-nez v3, :cond_0

    .line 317
    aget-object v3, p1, v1

    instance-of v3, v3, Lorg/openjsse/com/sun/net/ssl/X509KeyManager;

    if-eqz v3, :cond_1

    .line 318
    new-instance v3, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerJavaxWrapper;

    aget-object v4, p1, v1

    check-cast v4, Lorg/openjsse/com/sun/net/ssl/X509KeyManager;

    invoke-direct {v3, v4}, Lorg/openjsse/com/sun/net/ssl/X509KeyManagerJavaxWrapper;-><init>(Lorg/openjsse/com/sun/net/ssl/X509KeyManager;)V

    aput-object v3, v0, v2

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 325
    :cond_0
    aget-object v3, p1, v1

    check-cast v3, Ljavax/net/ssl/KeyManager;

    aput-object v3, v0, v2

    .line 326
    add-int/lit8 v2, v2, 0x1

    .line 328
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_2
    if-eq v2, v1, :cond_4

    .line 337
    new-array v3, v2, [Ljavax/net/ssl/KeyManager;

    .line 338
    invoke-static {v0, v3}, Lorg/openjsse/com/sun/net/ssl/SSLSecurity;->truncateArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljavax/net/ssl/KeyManager;

    move-object v0, v3

    check-cast v0, [Ljavax/net/ssl/KeyManager;

    goto :goto_2

    .line 342
    .end local v0    # "kmaw":[Ljavax/net/ssl/KeyManager;
    .end local v1    # "src":I
    .end local v2    # "dst":I
    :cond_3
    const/4 v0, 0x0

    .line 346
    .restart local v0    # "kmaw":[Ljavax/net/ssl/KeyManager;
    :cond_4
    :goto_2
    if-eqz p2, :cond_8

    .line 347
    array-length v1, p2

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    .line 349
    .local v1, "tmaw":[Ljavax/net/ssl/TrustManager;
    const/4 v2, 0x0

    .local v2, "src":I
    const/4 v3, 0x0

    .local v3, "dst":I
    :goto_3
    array-length v4, p2

    if-ge v2, v4, :cond_7

    .line 353
    aget-object v4, p2, v2

    instance-of v4, v4, Ljavax/net/ssl/TrustManager;

    if-nez v4, :cond_5

    .line 355
    aget-object v4, p2, v2

    instance-of v4, v4, Lorg/openjsse/com/sun/net/ssl/X509TrustManager;

    if-eqz v4, :cond_6

    .line 356
    new-instance v4, Lorg/openjsse/com/sun/net/ssl/X509TrustManagerJavaxWrapper;

    aget-object v5, p2, v2

    check-cast v5, Lorg/openjsse/com/sun/net/ssl/X509TrustManager;

    invoke-direct {v4, v5}, Lorg/openjsse/com/sun/net/ssl/X509TrustManagerJavaxWrapper;-><init>(Lorg/openjsse/com/sun/net/ssl/X509TrustManager;)V

    aput-object v4, v1, v3

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 362
    :cond_5
    aget-object v4, p2, v2

    check-cast v4, Ljavax/net/ssl/TrustManager;

    aput-object v4, v1, v3

    .line 363
    add-int/lit8 v3, v3, 0x1

    .line 365
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 368
    :cond_7
    if-eq v3, v2, :cond_9

    .line 369
    new-array v4, v3, [Ljavax/net/ssl/TrustManager;

    .line 370
    invoke-static {v1, v4}, Lorg/openjsse/com/sun/net/ssl/SSLSecurity;->truncateArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljavax/net/ssl/TrustManager;

    move-object v1, v4

    check-cast v1, [Ljavax/net/ssl/TrustManager;

    goto :goto_5

    .line 374
    .end local v1    # "tmaw":[Ljavax/net/ssl/TrustManager;
    .end local v2    # "src":I
    .end local v3    # "dst":I
    :cond_8
    const/4 v1, 0x0

    .line 377
    .restart local v1    # "tmaw":[Ljavax/net/ssl/TrustManager;
    :cond_9
    :goto_5
    iget-object v2, p0, Lorg/openjsse/com/sun/net/ssl/SSLContextSpiWrapper;->theSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2, v0, v1, p3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 378
    return-void
.end method
