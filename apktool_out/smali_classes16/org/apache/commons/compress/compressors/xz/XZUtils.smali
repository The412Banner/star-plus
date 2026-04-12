.class public Lorg/apache/commons/compress/compressors/xz/XZUtils;
.super Ljava/lang/Object;
.source "XZUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;
    }
.end annotation


# static fields
.field private static final HEADER_MAGIC:[B

.field private static volatile cachedXZAvailability:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

.field private static final fileNameUtil:Lorg/apache/commons/compress/compressors/FileNameUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->HEADER_MAGIC:[B

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v0, "uncompressSuffix":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, ".txz"

    const-string v2, ".tar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, ".xz"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v3, "-xz"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v2, Lorg/apache/commons/compress/compressors/FileNameUtil;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/compress/compressors/FileNameUtil;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    sput-object v2, Lorg/apache/commons/compress/compressors/xz/XZUtils;->fileNameUtil:Lorg/apache/commons/compress/compressors/FileNameUtil;

    .line 56
    sget-object v1, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    sput-object v1, Lorg/apache/commons/compress/compressors/xz/XZUtils;->cachedXZAvailability:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    .line 58
    :try_start_0
    const-string v1, "org.osgi.framework.BundleEvent"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x1

    invoke-static {v2}, Lorg/apache/commons/compress/compressors/xz/XZUtils;->setCacheXZAvailablity(Z)V

    .line 62
    .end local v0    # "uncompressSuffix":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    nop

    :array_0
    .array-data 1
        -0x3t
        0x37t
        0x7at
        0x58t
        0x5at
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method static getCachedXZAvailability()Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;
    .locals 1

    .line 178
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->cachedXZAvailability:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    return-object v0
.end method

.method public static getCompressedFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .line 156
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->fileNameUtil:Lorg/apache/commons/compress/compressors/FileNameUtil;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/FileNameUtil;->getCompressedFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUncompressedFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .line 141
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->fileNameUtil:Lorg/apache/commons/compress/compressors/FileNameUtil;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/FileNameUtil;->getUncompressedFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static internalIsXZCompressionAvailable()Z
    .locals 2

    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->matches([BI)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    const/4 v0, 0x1

    return v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "error":Ljava/lang/NoClassDefFoundError;
    return v1
.end method

.method public static isCompressedFilename(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .line 124
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->fileNameUtil:Lorg/apache/commons/compress/compressors/FileNameUtil;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/FileNameUtil;->isCompressedFilename(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isXZCompressionAvailable()Z
    .locals 2

    .line 100
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->cachedXZAvailability:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    .line 101
    .local v0, "cachedResult":Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;
    sget-object v1, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    if-eq v0, v1, :cond_1

    .line 102
    sget-object v1, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 104
    :cond_1
    invoke-static {}, Lorg/apache/commons/compress/compressors/xz/XZUtils;->internalIsXZCompressionAvailable()Z

    move-result v1

    return v1
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 81
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->HEADER_MAGIC:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 82
    return v1

    .line 85
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lorg/apache/commons/compress/compressors/xz/XZUtils;->HEADER_MAGIC:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 86
    aget-byte v2, p0, v0

    sget-object v3, Lorg/apache/commons/compress/compressors/xz/XZUtils;->HEADER_MAGIC:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_1

    .line 87
    return v1

    .line 85
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static setCacheXZAvailablity(Z)V
    .locals 2
    .param p0, "doCache"    # Z

    .line 167
    if-nez p0, :cond_0

    .line 168
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    sput-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->cachedXZAvailability:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    goto :goto_1

    .line 169
    :cond_0
    sget-object v0, Lorg/apache/commons/compress/compressors/xz/XZUtils;->cachedXZAvailability:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    sget-object v1, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    if-ne v0, v1, :cond_2

    .line 170
    invoke-static {}, Lorg/apache/commons/compress/compressors/xz/XZUtils;->internalIsXZCompressionAvailable()Z

    move-result v0

    .line 171
    .local v0, "hasXz":Z
    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;->CACHED_UNAVAILABLE:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    :goto_0
    sput-object v1, Lorg/apache/commons/compress/compressors/xz/XZUtils;->cachedXZAvailability:Lorg/apache/commons/compress/compressors/xz/XZUtils$CachedAvailability;

    .line 174
    .end local v0    # "hasXz":Z
    :cond_2
    :goto_1
    return-void
.end method
