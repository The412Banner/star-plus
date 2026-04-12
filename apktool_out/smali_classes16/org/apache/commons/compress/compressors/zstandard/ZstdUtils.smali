.class public Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;
.super Ljava/lang/Object;
.source "ZstdUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;
    }
.end annotation


# static fields
.field private static final SKIPPABLE_FRAME_MAGIC:[B

.field private static final ZSTANDARD_FRAME_MAGIC:[B

.field private static volatile cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->ZSTANDARD_FRAME_MAGIC:[B

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->SKIPPABLE_FRAME_MAGIC:[B

    .line 49
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    sput-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    .line 51
    :try_start_0
    const-string v0, "org.osgi.framework.BundleEvent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->setCacheZstdAvailablity(Z)V

    .line 55
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    :array_0
    .array-data 1
        0x28t
        -0x4bt
        0x2ft
        -0x3t
    .end array-data

    :array_1
    .array-data 1
        0x2at
        0x4dt
        0x18t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static getCachedZstdAvailability()Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;
    .locals 1

    .line 138
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    return-object v0
.end method

.method private static internalIsZstdCompressionAvailable()Z
    .locals 2

    .line 75
    :try_start_0
    const-string v0, "com.github.luben.zstd.ZstdInputStream"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    const/4 v0, 0x1

    return v0

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 78
    .local v0, "error":Ljava/lang/Throwable;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isZstdCompressionAvailable()Z
    .locals 2

    .line 66
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    .line 67
    .local v0, "cachedResult":Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;
    sget-object v1, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    if-eq v0, v1, :cond_1

    .line 68
    sget-object v1, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 70
    :cond_1
    invoke-static {}, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->internalIsZstdCompressionAvailable()Z

    move-result v1

    return v1
.end method

.method public static matches([BI)Z
    .locals 6
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 107
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->ZSTANDARD_FRAME_MAGIC:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 108
    return v1

    .line 111
    :cond_0
    const/4 v0, 0x1

    .line 112
    .local v0, "isZstandard":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->ZSTANDARD_FRAME_MAGIC:[B

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 113
    aget-byte v3, p0, v2

    sget-object v4, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->ZSTANDARD_FRAME_MAGIC:[B

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_1

    .line 114
    const/4 v0, 0x0

    .line 115
    goto :goto_1

    .line 112
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "i":I
    :cond_2
    :goto_1
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 119
    return v2

    .line 122
    :cond_3
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0x50

    if-ne v4, v3, :cond_6

    .line 124
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    sget-object v4, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->SKIPPABLE_FRAME_MAGIC:[B

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 125
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, p0, v4

    sget-object v5, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->SKIPPABLE_FRAME_MAGIC:[B

    aget-byte v5, v5, v3

    if-eq v4, v5, :cond_4

    .line 126
    return v1

    .line 124
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 130
    .end local v3    # "i":I
    :cond_5
    return v2

    .line 133
    :cond_6
    return v1
.end method

.method public static setCacheZstdAvailablity(Z)V
    .locals 2
    .param p0, "doCache"    # Z

    .line 89
    if-nez p0, :cond_0

    .line 90
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    sput-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    goto :goto_1

    .line 91
    :cond_0
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    sget-object v1, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    if-ne v0, v1, :cond_2

    .line 92
    invoke-static {}, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->internalIsZstdCompressionAvailable()Z

    move-result v0

    .line 93
    .local v0, "hasZstd":Z
    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->CACHED_UNAVAILABLE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    :goto_0
    sput-object v1, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    .line 96
    .end local v0    # "hasZstd":Z
    :cond_2
    :goto_1
    return-void
.end method
