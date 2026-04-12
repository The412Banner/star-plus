.class public Lorg/tukaani/xz/ResettableArrayCache;
.super Lorg/tukaani/xz/ArrayCache;


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private final byteArrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final intArrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1

    invoke-direct {p0}, Lorg/tukaani/xz/ArrayCache;-><init>()V

    iput-object p1, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDummyCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getByteArray(IZ)[B
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, p1, p2}, Lorg/tukaani/xz/ArrayCache;->getByteArray(IZ)[B

    move-result-object p1

    iget-object p2, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-object p1
.end method

.method public getIntArray(IZ)[I
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, p1, p2}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object p1

    iget-object p2, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-object p1
.end method

.method public putArray([B)V
    .locals 3

    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public putArray([I)V
    .locals 3

    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    iget-object v3, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v3}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    iget-object v3, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-virtual {v2, v3}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_2
    :goto_2
    return-void
.end method
