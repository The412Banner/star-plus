.class abstract Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;
.super Ljava/lang/Object;
.source "FileDescriptorCast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/FileDescriptorCast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CastingProviderMap"
.end annotation


# instance fields
.field private final classes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final providers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->providers:Ljava/util/Map;

    .line 225
    iget-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->providers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->classes:Ljava/util/Set;

    .line 228
    invoke-virtual {p0}, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->addProviders()V

    .line 230
    invoke-static {}, Lorg/newsclub/net/unix/FileDescriptorCast;->access$400()Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->addProviders(Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;)V

    .line 231
    return-void
.end method

.method static synthetic access$500(Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    .line 223
    iget-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->providers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    .line 223
    iget-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->classes:Ljava/util/Set;

    return-object v0
.end method

.method private addProvider0(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider<",
            "*>;)V"
        }
    .end annotation

    .line 242
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "cp":Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;, "Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider<*>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->providers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 244
    .local v3, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v3, p2}, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->addProvider0(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    .line 243
    .end local v3    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 247
    .local v0, "scl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 248
    invoke-direct {p0, v0, p2}, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->addProvider0(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    .line 251
    .end local v0    # "scl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method


# virtual methods
.method protected final addProvider(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider<",
            "*>;)V"
        }
    .end annotation

    .line 236
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "cp":Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;, "Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-direct {p0, p1, p2}, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->addProvider0(Ljava/lang/Class;Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;)V

    .line 239
    return-void
.end method

.method protected abstract addProviders()V
.end method

.method protected final addProviders(Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;)V
    .locals 2
    .param p1, "other"    # Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;

    .line 254
    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->providers:Ljava/util/Map;

    iget-object v1, p1, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->providers:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 258
    return-void

    .line 255
    :cond_1
    :goto_0
    return-void
.end method

.method public get(Ljava/lang/Class;)Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider<",
            "+TT;>;"
        }
    .end annotation

    .line 262
    .local p1, "desiredType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProviderMap;->providers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/newsclub/net/unix/FileDescriptorCast$CastingProvider;

    return-object v0
.end method
