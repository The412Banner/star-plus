.class public final Lorg/conscrypt/FileClientSessionCache;
.super Ljava/lang/Object;
.source "FileClientSessionCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/FileClientSessionCache$CacheFile;,
        Lorg/conscrypt/FileClientSessionCache$Impl;
    }
.end annotation


# static fields
.field public static final MAX_SIZE:I = 0xc

.field static final caches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Lorg/conscrypt/FileClientSessionCache$Impl;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/conscrypt/FileClientSessionCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 42
    sget-object v0, Lorg/conscrypt/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static declared-synchronized reset()V
    .locals 2

    const-class v0, Lorg/conscrypt/FileClientSessionCache;

    monitor-enter v0

    .line 342
    :try_start_0
    sget-object v1, Lorg/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit v0

    return-void

    .line 341
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized usingDirectory(Ljava/io/File;)Lorg/conscrypt/SSLClientSessionCache;
    .locals 3
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lorg/conscrypt/FileClientSessionCache;

    monitor-enter v0

    .line 332
    :try_start_0
    sget-object v1, Lorg/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/FileClientSessionCache$Impl;

    .line 333
    .local v1, "cache":Lorg/conscrypt/FileClientSessionCache$Impl;
    if-nez v1, :cond_0

    .line 334
    new-instance v2, Lorg/conscrypt/FileClientSessionCache$Impl;

    invoke-direct {v2, p0}, Lorg/conscrypt/FileClientSessionCache$Impl;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 335
    sget-object v2, Lorg/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :cond_0
    monitor-exit v0

    return-object v1

    .line 331
    .end local v1    # "cache":Lorg/conscrypt/FileClientSessionCache$Impl;
    .end local p0    # "directory":Ljava/io/File;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
