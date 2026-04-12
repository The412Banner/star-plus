.class final Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;
.super Ljava/util/AbstractSet;
.source "AFSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/nio/channels/SelectionKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .line 348
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 349
    iput-object p1, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->keys:Ljava/util/Set;

    .line 350
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 344
    check-cast p1, Ljava/nio/channels/SelectionKey;

    invoke-virtual {p0, p1}, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->add(Ljava/nio/channels/SelectionKey;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/nio/channels/SelectionKey;)Z
    .locals 1
    .param p1, "e"    # Ljava/nio/channels/SelectionKey;

    .line 354
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/nio/channels/SelectionKey;",
            ">;)Z"
        }
    .end annotation

    .line 359
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/nio/channels/SelectionKey;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 2

    .line 429
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->keys:Ljava/util/Set;

    monitor-enter v0

    .line 430
    :try_start_0
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->keys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 431
    monitor-exit v0

    .line 432
    return-void

    .line 431
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->keys:Ljava/util/Set;

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->keys:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 417
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 422
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->keys:Ljava/util/Set;

    monitor-enter v0

    .line 423
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 408
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->keys:Ljava/util/Set;

    monitor-enter v0

    .line 409
    :try_start_0
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->keys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 410
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->keys:Ljava/util/Set;

    monitor-enter v0

    .line 373
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->keys:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 374
    .local v1, "copy":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 376
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    new-instance v2, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet$1;

    invoke-direct {v2, p0, v0}, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet$1;-><init>(Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;Ljava/util/Iterator;)V

    return-object v2

    .line 374
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v1    # "copy":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->keys:Ljava/util/Set;

    monitor-enter v0

    .line 365
    :try_start_0
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->keys:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 366
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 2

    .line 401
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->keys:Ljava/util/Set;

    monitor-enter v0

    .line 402
    :try_start_0
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSelector$SelectionKeySet;->keys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
