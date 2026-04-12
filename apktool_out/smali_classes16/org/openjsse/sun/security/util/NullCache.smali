.class Lorg/openjsse/sun/security/util/NullCache;
.super Lorg/openjsse/sun/security/util/Cache;
.source "Cache.java"


# annotations
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
.field static final INSTANCE:Lorg/openjsse/sun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjsse/sun/security/util/Cache<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 206
    new-instance v0, Lorg/openjsse/sun/security/util/NullCache;

    invoke-direct {v0}, Lorg/openjsse/sun/security/util/NullCache;-><init>()V

    sput-object v0, Lorg/openjsse/sun/security/util/NullCache;->INSTANCE:Lorg/openjsse/sun/security/util/Cache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 208
    .local p0, "this":Lorg/openjsse/sun/security/util/NullCache;, "Lorg/openjsse/sun/security/util/NullCache<TK;TV;>;"
    invoke-direct {p0}, Lorg/openjsse/sun/security/util/Cache;-><init>()V

    .line 210
    return-void
.end method


# virtual methods
.method public accept(Lorg/openjsse/sun/security/util/Cache$CacheVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/util/Cache$CacheVisitor<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 246
    .local p0, "this":Lorg/openjsse/sun/security/util/NullCache;, "Lorg/openjsse/sun/security/util/NullCache<TK;TV;>;"
    .local p1, "visitor":Lorg/openjsse/sun/security/util/Cache$CacheVisitor;, "Lorg/openjsse/sun/security/util/Cache$CacheVisitor<TK;TV;>;"
    return-void
.end method

.method public clear()V
    .locals 0

    .line 218
    .local p0, "this":Lorg/openjsse/sun/security/util/NullCache;, "Lorg/openjsse/sun/security/util/NullCache<TK;TV;>;"
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lorg/openjsse/sun/security/util/NullCache;, "Lorg/openjsse/sun/security/util/NullCache<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public pull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lorg/openjsse/sun/security/util/NullCache;, "Lorg/openjsse/sun/security/util/NullCache<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 222
    .local p0, "this":Lorg/openjsse/sun/security/util/NullCache;, "Lorg/openjsse/sun/security/util/NullCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;

    .line 230
    .local p0, "this":Lorg/openjsse/sun/security/util/NullCache;, "Lorg/openjsse/sun/security/util/NullCache<TK;TV;>;"
    return-void
.end method

.method public setCapacity(I)V
    .locals 0
    .param p1, "size"    # I

    .line 238
    .local p0, "this":Lorg/openjsse/sun/security/util/NullCache;, "Lorg/openjsse/sun/security/util/NullCache<TK;TV;>;"
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .line 242
    .local p0, "this":Lorg/openjsse/sun/security/util/NullCache;, "Lorg/openjsse/sun/security/util/NullCache<TK;TV;>;"
    return-void
.end method

.method public size()I
    .locals 1

    .line 213
    .local p0, "this":Lorg/openjsse/sun/security/util/NullCache;, "Lorg/openjsse/sun/security/util/NullCache<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method
