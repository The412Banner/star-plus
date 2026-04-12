.class public abstract Lorg/openjsse/sun/security/util/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/util/Cache$CacheVisitor;,
        Lorg/openjsse/sun/security/util/Cache$EqualByteArray;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 74
    .local p0, "this":Lorg/openjsse/sun/security/util/Cache;, "Lorg/openjsse/sun/security/util/Cache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static newHardMemoryCache(I)Lorg/openjsse/sun/security/util/Cache;
    .locals 2
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/openjsse/sun/security/util/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 145
    new-instance v0, Lorg/openjsse/sun/security/util/MemoryCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/openjsse/sun/security/util/MemoryCache;-><init>(ZI)V

    return-object v0
.end method

.method public static newHardMemoryCache(II)Lorg/openjsse/sun/security/util/Cache;
    .locals 2
    .param p0, "size"    # I
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lorg/openjsse/sun/security/util/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 162
    new-instance v0, Lorg/openjsse/sun/security/util/MemoryCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lorg/openjsse/sun/security/util/MemoryCache;-><init>(ZII)V

    return-object v0
.end method

.method public static newNullCache()Lorg/openjsse/sun/security/util/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/openjsse/sun/security/util/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 153
    sget-object v0, Lorg/openjsse/sun/security/util/NullCache;->INSTANCE:Lorg/openjsse/sun/security/util/Cache;

    return-object v0
.end method

.method public static newSoftMemoryCache(I)Lorg/openjsse/sun/security/util/Cache;
    .locals 2
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/openjsse/sun/security/util/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 128
    new-instance v0, Lorg/openjsse/sun/security/util/MemoryCache;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/openjsse/sun/security/util/MemoryCache;-><init>(ZI)V

    return-object v0
.end method

.method public static newSoftMemoryCache(II)Lorg/openjsse/sun/security/util/Cache;
    .locals 2
    .param p0, "size"    # I
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lorg/openjsse/sun/security/util/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 137
    new-instance v0, Lorg/openjsse/sun/security/util/MemoryCache;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lorg/openjsse/sun/security/util/MemoryCache;-><init>(ZII)V

    return-object v0
.end method


# virtual methods
.method public abstract accept(Lorg/openjsse/sun/security/util/Cache$CacheVisitor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/util/Cache$CacheVisitor<",
            "TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract pull(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)V
.end method

.method public abstract setCapacity(I)V
.end method

.method public abstract setTimeout(I)V
.end method

.method public abstract size()I
.end method
