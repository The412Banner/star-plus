.class Lorg/openjsse/sun/security/util/MemoryCache;
.super Lorg/openjsse/sun/security/util/Cache;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;,
        Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;,
        Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/openjsse/sun/security/util/Cache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_FACTOR:F = 0.75f


# instance fields
.field private final cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private lifetime:J

.field private maxSize:I

.field private nextExpirationTime:J

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "soft"    # Z
    .param p2, "maxSize"    # I

    .line 267
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjsse/sun/security/util/MemoryCache;-><init>(ZII)V

    .line 268
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 3
    .param p1, "soft"    # Z
    .param p2, "maxSize"    # I
    .param p3, "lifetime"    # I

    .line 270
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    invoke-direct {p0}, Lorg/openjsse/sun/security/util/Cache;-><init>()V

    .line 260
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->nextExpirationTime:J

    .line 271
    iput p2, p0, Lorg/openjsse/sun/security/util/MemoryCache;->maxSize:I

    .line 272
    mul-int/lit16 v0, p3, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->lifetime:J

    .line 273
    if-eqz p1, :cond_0

    .line 274
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    goto :goto_0

    .line 276
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 278
    :goto_0
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    .line 279
    return-void
.end method

.method private emptyQueue()V
    .locals 5

    .line 289
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    iget-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    .line 290
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 295
    .local v0, "startSize":I
    :goto_0
    iget-object v1, p0, Lorg/openjsse/sun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;

    .line 296
    .local v1, "entry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-nez v1, :cond_1

    .line 297
    nop

    .line 318
    .end local v1    # "entry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    return-void

    .line 299
    .restart local v1    # "entry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_1
    invoke-interface {v1}, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 300
    .local v2, "key":Ljava/lang/Object;, "TK;"
    if-nez v2, :cond_2

    .line 302
    goto :goto_0

    .line 304
    :cond_2
    iget-object v3, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;

    .line 307
    .local v3, "currentEntry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-eqz v3, :cond_3

    if-eq v1, v3, :cond_3

    .line 308
    iget-object v4, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .end local v1    # "entry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "currentEntry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_3
    goto :goto_0
.end method

.method private expungeExpiredEntries()V
    .locals 9

    .line 324
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    invoke-direct {p0}, Lorg/openjsse/sun/security/util/MemoryCache;->emptyQueue()V

    .line 325
    iget-wide v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->lifetime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 326
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    .line 329
    .local v0, "cnt":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 330
    .local v1, "time":J
    iget-wide v3, p0, Lorg/openjsse/sun/security/util/MemoryCache;->nextExpirationTime:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_1

    .line 331
    return-void

    .line 333
    :cond_1
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, p0, Lorg/openjsse/sun/security/util/MemoryCache;->nextExpirationTime:J

    .line 334
    iget-object v3, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 335
    .local v3, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 336
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;

    .line 337
    .local v4, "entry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v4, v1, v2}, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;->isValid(J)Z

    move-result v5

    if-nez v5, :cond_2

    .line 338
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 340
    :cond_2
    iget-wide v5, p0, Lorg/openjsse/sun/security/util/MemoryCache;->nextExpirationTime:J

    invoke-interface {v4}, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;->getExpirationTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 341
    invoke-interface {v4}, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;->getExpirationTime()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/openjsse/sun/security/util/MemoryCache;->nextExpirationTime:J

    .line 343
    .end local v4    # "entry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_3
    :goto_1
    goto :goto_0

    .line 350
    .end local v3    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    :cond_4
    return-void
.end method

.method private getCachedEntries()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 484
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 486
    .local v0, "kvmap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    iget-object v1, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;

    .line 487
    .local v2, "entry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v2}, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .end local v2    # "entry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    goto :goto_0

    .line 490
    :cond_0
    return-object v0
.end method


# virtual methods
.method public declared-synchronized accept(Lorg/openjsse/sun/security/util/Cache$CacheVisitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/util/Cache$CacheVisitor<",
            "TK;TV;>;)V"
        }
    .end annotation

    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    .local p1, "visitor":Lorg/openjsse/sun/security/util/Cache$CacheVisitor;, "Lorg/openjsse/sun/security/util/Cache$CacheVisitor<TK;TV;>;"
    monitor-enter p0

    .line 477
    :try_start_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 478
    invoke-direct {p0}, Lorg/openjsse/sun/security/util/MemoryCache;->getCachedEntries()Ljava/util/Map;

    move-result-object v0

    .line 480
    .local v0, "cached":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1, v0}, Lorg/openjsse/sun/security/util/Cache$CacheVisitor;->visit(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return-void

    .line 476
    .end local v0    # "cached":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local p0    # "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    .end local p1    # "visitor":Lorg/openjsse/sun/security/util/Cache$CacheVisitor;, "Lorg/openjsse/sun/security/util/Cache$CacheVisitor<TK;TV;>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 2

    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;

    .line 362
    .local v1, "entry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v1}, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;->invalidate()V

    .line 363
    .end local v1    # "entry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    goto :goto_0

    .line 364
    .end local p0    # "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 368
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    monitor-exit p0

    return-void

    .line 357
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 400
    :try_start_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/util/MemoryCache;->emptyQueue()V

    .line 401
    iget-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    .local v0, "entry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 403
    monitor-exit p0

    return-object v1

    .line 405
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lorg/openjsse/sun/security/util/MemoryCache;->lifetime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    move-wide v2, v4

    .line 406
    .local v2, "time":J
    invoke-interface {v0, v2, v3}, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;->isValid(J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 410
    iget-object v4, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    monitor-exit p0

    return-object v1

    .line 413
    .end local p0    # "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;->getValue()Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 399
    .end local v0    # "entry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v2    # "time":J
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method protected newEntry(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;
    .locals 7
    .param p3, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)",
            "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 495
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p5, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    if-eqz p5, :cond_0

    .line 496
    new-instance v6, Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)V

    return-object v6

    .line 498
    :cond_0
    new-instance v0, Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    return-object v0
.end method

.method public declared-synchronized pull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 425
    :try_start_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/util/MemoryCache;->emptyQueue()V

    .line 426
    iget-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    .local v0, "entry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 428
    monitor-exit p0

    return-object v1

    .line 431
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lorg/openjsse/sun/security/util/MemoryCache;->lifetime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    move-wide v2, v4

    .line 432
    .local v2, "time":J
    invoke-interface {v0, v2, v3}, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;->isValid(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 433
    invoke-interface {v0}, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 434
    .local v1, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    monitor-exit p0

    return-object v1

    .line 440
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    :cond_2
    monitor-exit p0

    return-object v1

    .line 424
    .end local v0    # "entry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v2    # "time":J
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 372
    :try_start_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/util/MemoryCache;->emptyQueue()V

    .line 373
    iget-wide v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->lifetime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/openjsse/sun/security/util/MemoryCache;->lifetime:J

    add-long/2addr v2, v0

    :goto_0
    move-wide v0, v2

    .line 375
    .local v0, "expirationTime":J
    iget-wide v2, p0, Lorg/openjsse/sun/security/util/MemoryCache;->nextExpirationTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 376
    iput-wide v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->nextExpirationTime:J

    .line 378
    .end local p0    # "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    :cond_1
    iget-object v9, p0, Lorg/openjsse/sun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-wide v7, v0

    invoke-virtual/range {v4 .. v9}, Lorg/openjsse/sun/security/util/MemoryCache;->newEntry(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;

    move-result-object v2

    .line 379
    .local v2, "newEntry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    iget-object v3, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;

    .line 380
    .local v3, "oldEntry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-eqz v3, :cond_2

    .line 381
    invoke-interface {v3}, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    monitor-exit p0

    return-void

    .line 384
    :cond_2
    :try_start_1
    iget v4, p0, Lorg/openjsse/sun/security/util/MemoryCache;->maxSize:I

    if-lez v4, :cond_3

    iget-object v4, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    iget v5, p0, Lorg/openjsse/sun/security/util/MemoryCache;->maxSize:I

    if-le v4, v5, :cond_3

    .line 385
    invoke-direct {p0}, Lorg/openjsse/sun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 386
    iget-object v4, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    iget v5, p0, Lorg/openjsse/sun/security/util/MemoryCache;->maxSize:I

    if-le v4, v5, :cond_3

    .line 387
    iget-object v4, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 388
    .local v4, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;

    .line 393
    .local v5, "lruEntry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 394
    invoke-interface {v5}, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    .end local v4    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    .end local v5    # "lruEntry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_3
    monitor-exit p0

    return-void

    .line 371
    .end local v0    # "expirationTime":J
    .end local v2    # "newEntry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v3    # "oldEntry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 417
    :try_start_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/util/MemoryCache;->emptyQueue()V

    .line 418
    iget-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;

    .line 419
    .local v0, "entry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 420
    invoke-interface {v0}, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    .end local p0    # "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 416
    .end local v0    # "entry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setCapacity(I)V
    .locals 3
    .param p1, "size"    # I

    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 445
    :try_start_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 446
    if-lez p1, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 447
    iget-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 448
    .local v0, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    iget-object v1, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v1, p1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 449
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;

    .line 454
    .local v2, "lruEntry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 455
    invoke-interface {v2}, Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;->invalidate()V

    .line 448
    .end local v2    # "lruEntry":Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 459
    .end local v0    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    .end local v1    # "i":I
    .end local p0    # "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    :cond_0
    if-lez p1, :cond_1

    move v0, p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    .line 444
    .end local p1    # "size":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setTimeout(I)V
    .locals 4
    .param p1, "timeout"    # I

    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 467
    :try_start_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/util/MemoryCache;->emptyQueue()V

    .line 468
    if-lez p1, :cond_0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->lifetime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    .line 466
    .end local p0    # "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    .end local p1    # "timeout":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 353
    :try_start_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 354
    iget-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 352
    .end local p0    # "this":Lorg/openjsse/sun/security/util/MemoryCache;, "Lorg/openjsse/sun/security/util/MemoryCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
