.class Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;
.super Ljava/lang/ref/SoftReference;
.source "Cache.java"

# interfaces
.implements Lorg/openjsse/sun/security/util/MemoryCache$CacheEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/util/MemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftCacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference<",
        "TV;>;",
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


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p3, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    .line 563
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p5, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    invoke-direct {p0, p2, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 564
    iput-object p1, p0, Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;->key:Ljava/lang/Object;

    .line 565
    iput-wide p3, p0, Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    .line 566
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .line 577
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 569
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 573
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 589
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;->clear()V

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;->key:Ljava/lang/Object;

    .line 591
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    .line 592
    return-void
.end method

.method public isValid(J)Z
    .locals 2
    .param p1, "currentTime"    # J

    .line 581
    .local p0, "this":Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;, "Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 582
    .local v0, "valid":Z
    :goto_0
    if-nez v0, :cond_1

    .line 583
    invoke-virtual {p0}, Lorg/openjsse/sun/security/util/MemoryCache$SoftCacheEntry;->invalidate()V

    .line 585
    :cond_1
    return v0
.end method
