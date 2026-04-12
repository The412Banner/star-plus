.class public Lorg/openjsse/com/sun/net/ssl/SSLContext;
.super Ljava/lang/Object;
.source "SSLContext.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private contextSpi:Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;

.field private protocol:Ljava/lang/String;

.field private provider:Ljava/security/Provider;


# direct methods
.method protected constructor <init>(Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "contextSpi"    # Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "protocol"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/openjsse/com/sun/net/ssl/SSLContext;->contextSpi:Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;

    .line 66
    iput-object p2, p0, Lorg/openjsse/com/sun/net/ssl/SSLContext;->provider:Ljava/security/Provider;

    .line 67
    iput-object p3, p0, Lorg/openjsse/com/sun/net/ssl/SSLContext;->protocol:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/openjsse/com/sun/net/ssl/SSLContext;
    .locals 4
    .param p0, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 86
    :try_start_0
    const-string v0, "SSLContext"

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lorg/openjsse/com/sun/net/ssl/SSLSecurity;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Lorg/openjsse/com/sun/net/ssl/SSLContext;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Lorg/openjsse/com/sun/net/ssl/SSLContext;-><init>(Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 90
    .end local v0    # "objs":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/openjsse/com/sun/net/ssl/SSLContext;
    .locals 4
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 112
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "SSLContext"

    invoke-static {p0, v0, p1}, Lorg/openjsse/com/sun/net/ssl/SSLSecurity;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Lorg/openjsse/com/sun/net/ssl/SSLContext;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Lorg/openjsse/com/sun/net/ssl/SSLContext;-><init>(Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 113
    .end local v0    # "objs":[Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Lorg/openjsse/com/sun/net/ssl/SSLContext;
    .locals 4
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 135
    if-eqz p1, :cond_0

    .line 137
    const-string v0, "SSLContext"

    invoke-static {p0, v0, p1}, Lorg/openjsse/com/sun/net/ssl/SSLSecurity;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    move-result-object v0

    .line 139
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Lorg/openjsse/com/sun/net/ssl/SSLContext;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Lorg/openjsse/com/sun/net/ssl/SSLContext;-><init>(Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 136
    .end local v0    # "objs":[Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getProtocol()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/SSLContext;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/SSLContext;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/SSLContext;->contextSpi:Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;->engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/SSLContext;->contextSpi:Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final init([Lorg/openjsse/com/sun/net/ssl/KeyManager;[Lorg/openjsse/com/sun/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "km"    # [Lorg/openjsse/com/sun/net/ssl/KeyManager;
    .param p2, "tm"    # [Lorg/openjsse/com/sun/net/ssl/TrustManager;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/openjsse/com/sun/net/ssl/SSLContext;->contextSpi:Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjsse/com/sun/net/ssl/SSLContextSpi;->engineInit([Lorg/openjsse/com/sun/net/ssl/KeyManager;[Lorg/openjsse/com/sun/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 180
    return-void
.end method
