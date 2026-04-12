.class public final Lorg/conscrypt/ServerSessionContext;
.super Lorg/conscrypt/AbstractSessionContext;
.source "ServerSessionContext.java"


# instance fields
.field private persistentCache:Lorg/conscrypt/SSLServerSessionCache;


# direct methods
.method constructor <init>()V
    .locals 5

    .line 30
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lorg/conscrypt/AbstractSessionContext;-><init>(I)V

    .line 45
    iget-wide v0, p0, Lorg/conscrypt/ServerSessionContext;->sslCtxNativePointer:J

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/16 v3, 0x20

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->SSL_CTX_set_session_id_context(JLorg/conscrypt/AbstractSessionContext;[B)V

    .line 46
    return-void
.end method


# virtual methods
.method getSessionFromPersistentCache([B)Lorg/conscrypt/NativeSslSession;
    .locals 4
    .param p1, "sessionId"    # [B

    .line 58
    iget-object v0, p0, Lorg/conscrypt/ServerSessionContext;->persistentCache:Lorg/conscrypt/SSLServerSessionCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/conscrypt/ServerSessionContext;->persistentCache:Lorg/conscrypt/SSLServerSessionCache;

    invoke-interface {v0, p1}, Lorg/conscrypt/SSLServerSessionCache;->getSessionData([B)[B

    move-result-object v0

    .line 60
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 61
    const/4 v2, -0x1

    invoke-static {p0, v0, v1, v2}, Lorg/conscrypt/NativeSslSession;->newInstance(Lorg/conscrypt/AbstractSessionContext;[BLjava/lang/String;I)Lorg/conscrypt/NativeSslSession;

    move-result-object v2

    .line 62
    .local v2, "session":Lorg/conscrypt/NativeSslSession;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/conscrypt/NativeSslSession;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {p0, v2}, Lorg/conscrypt/ServerSessionContext;->cacheSession(Lorg/conscrypt/NativeSslSession;)V

    .line 64
    return-object v2

    .line 69
    .end local v0    # "data":[B
    .end local v2    # "session":Lorg/conscrypt/NativeSslSession;
    :cond_0
    return-object v1
.end method

.method onBeforeAddSession(Lorg/conscrypt/NativeSslSession;)V
    .locals 3
    .param p1, "session"    # Lorg/conscrypt/NativeSslSession;

    .line 75
    iget-object v0, p0, Lorg/conscrypt/ServerSessionContext;->persistentCache:Lorg/conscrypt/SSLServerSessionCache;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->toBytes()[B

    move-result-object v0

    .line 77
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lorg/conscrypt/ServerSessionContext;->persistentCache:Lorg/conscrypt/SSLServerSessionCache;

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->toSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/conscrypt/SSLServerSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    .line 81
    .end local v0    # "data":[B
    :cond_0
    return-void
.end method

.method onBeforeRemoveSession(Lorg/conscrypt/NativeSslSession;)V
    .locals 0
    .param p1, "session"    # Lorg/conscrypt/NativeSslSession;

    .line 86
    return-void
.end method

.method public setPersistentCache(Lorg/conscrypt/SSLServerSessionCache;)V
    .locals 0
    .param p1, "persistentCache"    # Lorg/conscrypt/SSLServerSessionCache;

    .line 53
    iput-object p1, p0, Lorg/conscrypt/ServerSessionContext;->persistentCache:Lorg/conscrypt/SSLServerSessionCache;

    .line 54
    return-void
.end method
