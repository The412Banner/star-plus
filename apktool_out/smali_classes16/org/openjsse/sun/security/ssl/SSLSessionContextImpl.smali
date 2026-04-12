.class final Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
.super Ljava/lang/Object;
.source "SSLSessionContextImpl.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CACHE_SIZE:I = 0x5000


# instance fields
.field private cacheLimit:I

.field private final sessionCache:Lorg/openjsse/sun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjsse/sun/security/util/Cache<",
            "Lorg/openjsse/sun/security/ssl/SessionId;",
            "Lorg/openjsse/sun/security/ssl/SSLSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionHostPortCache:Lorg/openjsse/sun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjsse/sun/security/util/Cache<",
            "Ljava/lang/String;",
            "Lorg/openjsse/sun/security/ssl/SSLSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->getDefaultCacheLimit()I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    .line 50
    const v0, 0x15180

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->timeout:I

    .line 53
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->timeout:I

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/util/Cache;->newSoftMemoryCache(II)Lorg/openjsse/sun/security/util/Cache;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->sessionCache:Lorg/openjsse/sun/security/util/Cache;

    .line 54
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->timeout:I

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/util/Cache;->newSoftMemoryCache(II)Lorg/openjsse/sun/security/util/Cache;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lorg/openjsse/sun/security/util/Cache;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
    .param p1, "x1"    # Ljavax/net/ssl/SSLSession;

    .line 37
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->isTimedout(Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    return v0
.end method

.method private static getDefaultCacheLimit()I
    .locals 7

    .line 209
    const-string v0, "ssl"

    const/4 v1, 0x0

    const/16 v2, 0x5000

    :try_start_0
    new-instance v3, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$1;

    invoke-direct {v3}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$1;-><init>()V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 217
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v2

    .line 218
    .local v4, "defaultCacheLimit":I
    :goto_0
    if-ltz v4, :cond_1

    .line 219
    return v4

    .line 220
    :cond_1
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_2

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 221
    const-string v5, "invalid System Property javax.net.ssl.sessionCacheSize, use the default session cache size (20480) instead"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "defaultCacheLimit":I
    :cond_2
    goto :goto_1

    .line 226
    :catch_0
    move-exception v3

    .line 228
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_3

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    const-string v0, "the System Property javax.net.ssl.sessionCacheSize is not available, use the default value (20480) instead"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return v2
.end method

.method private static getKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 173
    return-object v0
.end method

.method private isTimedout(Ljavax/net/ssl/SSLSession;)Z
    .locals 8
    .param p1, "sess"    # Ljavax/net/ssl/SSLSession;

    .line 240
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->timeout:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 241
    return v1

    .line 244
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCreationTime()J

    move-result-wide v2

    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->timeout:I

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 246
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 247
    const/4 v0, 0x1

    return v0

    .line 250
    :cond_1
    return v1
.end method


# virtual methods
.method get(Ljava/lang/String;I)Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .locals 3
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 160
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 161
    return-object v0

    .line 164
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lorg/openjsse/sun/security/util/Cache;

    invoke-static {p1, p2}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 165
    .local v1, "sess":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->isTimedout(Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    return-object v1

    .line 169
    :cond_1
    return-object v0
.end method

.method get([B)Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .locals 1
    .param p1, "id"    # [B

    .line 142
    invoke-virtual {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    return-object v0
.end method

.method public getIds()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "[B>;"
        }
    .end annotation

    .line 79
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;-><init>(Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$1;)V

    .line 80
    .local v0, "scVisitor":Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->sessionCache:Lorg/openjsse/sun/security/util/Cache;

    invoke-virtual {v1, v0}, Lorg/openjsse/sun/security/util/Cache;->accept(Lorg/openjsse/sun/security/util/Cache$CacheVisitor;)V

    .line 82
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->getSessionIds()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 2
    .param p1, "sessionId"    # [B

    .line 62
    if-eqz p1, :cond_1

    .line 66
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->sessionCache:Lorg/openjsse/sun/security/util/Cache;

    new-instance v1, Lorg/openjsse/sun/security/ssl/SessionId;

    invoke-direct {v1, p1}, Lorg/openjsse/sun/security/ssl/SessionId;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 67
    .local v0, "sess":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->isTimedout(Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    return-object v0

    .line 71
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 63
    .end local v0    # "sess":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "session id cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSessionCacheSize()I
    .locals 1

    .line 137
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    return v0
.end method

.method public getSessionTimeout()I
    .locals 1

    .line 111
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->timeout:I

    return v0
.end method

.method pull([B)Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .locals 2
    .param p1, "id"    # [B

    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->sessionCache:Lorg/openjsse/sun/security/util/Cache;

    new-instance v1, Lorg/openjsse/sun/security/ssl/SessionId;

    invoke-direct {v1, p1}, Lorg/openjsse/sun/security/ssl/SessionId;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/util/Cache;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    return-object v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method put(Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)V
    .locals 3
    .param p1, "s"    # Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 186
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->sessionCache:Lorg/openjsse/sun/security/util/Cache;

    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSessionId()Lorg/openjsse/sun/security/ssl/SessionId;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/openjsse/sun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPeerPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lorg/openjsse/sun/security/util/Cache;

    .line 191
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPeerPort()I

    move-result v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {v0, v1, p1}, Lorg/openjsse/sun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    :cond_0
    invoke-virtual {p1, p0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setContext(Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;)V

    .line 195
    return-void
.end method

.method remove(Lorg/openjsse/sun/security/ssl/SessionId;)V
    .locals 4
    .param p1, "key"    # Lorg/openjsse/sun/security/ssl/SessionId;

    .line 199
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->sessionCache:Lorg/openjsse/sun/security/util/Cache;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 200
    .local v0, "s":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->sessionCache:Lorg/openjsse/sun/security/util/Cache;

    invoke-virtual {v1, p1}, Lorg/openjsse/sun/security/util/Cache;->remove(Ljava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lorg/openjsse/sun/security/util/Cache;

    .line 203
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPeerPort()I

    move-result v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/util/Cache;->remove(Ljava/lang/Object;)V

    .line 205
    :cond_0
    return-void
.end method

.method public setSessionCacheSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 121
    if-ltz p1, :cond_1

    .line 124
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    if-eq v0, p1, :cond_0

    .line 125
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->sessionCache:Lorg/openjsse/sun/security/util/Cache;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/util/Cache;->setCapacity(I)V

    .line 126
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lorg/openjsse/sun/security/util/Cache;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/util/Cache;->setCapacity(I)V

    .line 127
    iput p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    .line 129
    :cond_0
    return-void

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setSessionTimeout(I)V
    .locals 1
    .param p1, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 95
    if-ltz p1, :cond_1

    .line 99
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->timeout:I

    if-eq v0, p1, :cond_0

    .line 100
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->sessionCache:Lorg/openjsse/sun/security/util/Cache;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/util/Cache;->setTimeout(I)V

    .line 101
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lorg/openjsse/sun/security/util/Cache;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/util/Cache;->setTimeout(I)V

    .line 102
    iput p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->timeout:I

    .line 104
    :cond_0
    return-void

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
