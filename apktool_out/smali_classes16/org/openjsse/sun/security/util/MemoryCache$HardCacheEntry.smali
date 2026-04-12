.class Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/util/MemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HardCacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private expirationTime:J

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 0
    .param p3, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .line 521
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p1, p0, Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;->key:Ljava/lang/Object;

    .line 523
    iput-object p2, p0, Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;->value:Ljava/lang/Object;

    .line 524
    iput-wide p3, p0, Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;->expirationTime:J

    .line 525
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .line 536
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;->expirationTime:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 528
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 532
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 548
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;->key:Ljava/lang/Object;

    .line 549
    iput-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;->value:Ljava/lang/Object;

    .line 550
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;->expirationTime:J

    .line 551
    return-void
.end method

.method public isValid(J)Z
    .locals 2
    .param p1, "currentTime"    # J

    .line 540
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;->expirationTime:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 541
    .local v0, "valid":Z
    :goto_0
    if-nez v0, :cond_1

    .line 542
    invoke-virtual {p0}, Lorg/openjsse/sun/security/util/MemoryCache$HardCacheEntry;->invalidate()V

    .line 544
    :cond_1
    return v0
.end method
