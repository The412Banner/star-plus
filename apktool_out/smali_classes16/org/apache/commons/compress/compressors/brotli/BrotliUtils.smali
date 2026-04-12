.class public Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;
.super Ljava/lang/Object;
.source "BrotliUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;
    }
.end annotation


# static fields
.field private static volatile cachedBrotliAvailability:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    sget-object v0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    sput-object v0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->cachedBrotliAvailability:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    .line 37
    :try_start_0
    const-string v0, "org.osgi.framework.BundleEvent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->setCacheBrotliAvailablity(Z)V

    .line 41
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static getCachedBrotliAvailability()Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;
    .locals 1

    .line 87
    sget-object v0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->cachedBrotliAvailability:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    return-object v0
.end method

.method private static internalIsBrotliCompressionAvailable()Z
    .locals 2

    .line 62
    :try_start_0
    const-string v0, "org.brotli.dec.BrotliInputStream"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v0, 0x1

    return v0

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 65
    .local v0, "error":Ljava/lang/Throwable;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isBrotliCompressionAvailable()Z
    .locals 2

    .line 53
    sget-object v0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->cachedBrotliAvailability:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    .line 54
    .local v0, "cachedResult":Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;
    sget-object v1, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    if-eq v0, v1, :cond_1

    .line 55
    sget-object v1, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 57
    :cond_1
    invoke-static {}, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->internalIsBrotliCompressionAvailable()Z

    move-result v1

    return v1
.end method

.method public static setCacheBrotliAvailablity(Z)V
    .locals 2
    .param p0, "doCache"    # Z

    .line 76
    if-nez p0, :cond_0

    .line 77
    sget-object v0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    sput-object v0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->cachedBrotliAvailability:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    goto :goto_1

    .line 78
    :cond_0
    sget-object v0, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->cachedBrotliAvailability:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    sget-object v1, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    if-ne v0, v1, :cond_2

    .line 79
    invoke-static {}, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->internalIsBrotliCompressionAvailable()Z

    move-result v0

    .line 80
    .local v0, "hasBrotli":Z
    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;->CACHED_UNAVAILABLE:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    :goto_0
    sput-object v1, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->cachedBrotliAvailability:Lorg/apache/commons/compress/compressors/brotli/BrotliUtils$CachedAvailability;

    .line 83
    .end local v0    # "hasBrotli":Z
    :cond_2
    :goto_1
    return-void
.end method
