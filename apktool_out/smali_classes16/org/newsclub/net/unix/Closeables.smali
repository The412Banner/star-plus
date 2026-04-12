.class public final Lorg/newsclub/net/unix/Closeables;
.super Ljava/lang/Object;
.source "Closeables.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/newsclub/net/unix/Closeables$HardReference;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/io/Closeable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public varargs constructor <init>([Ljava/io/Closeable;)V
    .locals 5
    .param p1, "closeable"    # [Ljava/io/Closeable;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 49
    .local v2, "cl":Ljava/io/Closeable;
    iget-object v3, p0, Lorg/newsclub/net/unix/Closeables;->list:Ljava/util/List;

    new-instance v4, Lorg/newsclub/net/unix/Closeables$HardReference;

    invoke-direct {v4, v2}, Lorg/newsclub/net/unix/Closeables$HardReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v2    # "cl":Ljava/io/Closeable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/io/Closeable;)Z
    .locals 1
    .param p1, "closeable"    # Ljava/io/Closeable;

    monitor-enter p0

    .line 142
    :try_start_0
    new-instance v0, Lorg/newsclub/net/unix/Closeables$HardReference;

    invoke-direct {v0, p1}, Lorg/newsclub/net/unix/Closeables$HardReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/Closeables;->add(Ljava/lang/ref/WeakReference;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 142
    .end local p0    # "this":Lorg/newsclub/net/unix/Closeables;
    .end local p1    # "closeable":Ljava/io/Closeable;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized add(Ljava/lang/ref/WeakReference;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/io/Closeable;",
            ">;)Z"
        }
    .end annotation

    .local p1, "closeable":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/io/Closeable;>;"
    monitor-enter p0

    .line 115
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .local v0, "cl":Ljava/io/Closeable;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    monitor-exit p0

    return v1

    .line 120
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/newsclub/net/unix/Closeables;->list:Ljava/util/List;

    if-nez v2, :cond_1

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/newsclub/net/unix/Closeables;->list:Ljava/util/List;

    goto :goto_1

    .line 123
    .end local p0    # "this":Lorg/newsclub/net/unix/Closeables;
    :cond_1
    iget-object v2, p0, Lorg/newsclub/net/unix/Closeables;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 124
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/io/Closeable;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    .line 125
    monitor-exit p0

    return v1

    .line 127
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/io/Closeable;>;"
    :cond_2
    goto :goto_0

    .line 129
    :cond_3
    :goto_1
    :try_start_2
    iget-object v1, p0, Lorg/newsclub/net/unix/Closeables;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 114
    .end local v0    # "cl":Ljava/io/Closeable;
    .end local p1    # "closeable":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/io/Closeable;>;"
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/newsclub/net/unix/Closeables;->close(Ljava/io/IOException;)V

    .line 56
    return-void
.end method

.method public close(Ljava/io/IOException;)V
    .locals 5
    .param p1, "superException"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    move-object v0, p1

    .line 68
    .local v0, "exc":Ljava/io/IOException;
    iget-object v1, p0, Lorg/newsclub/net/unix/Closeables;->list:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 69
    iget-object v1, p0, Lorg/newsclub/net/unix/Closeables;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 71
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/io/Closeable;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;

    .line 72
    .local v3, "cl":Ljava/io/Closeable;
    if-nez v3, :cond_0

    .line 73
    goto :goto_0

    .line 76
    :cond_0
    :try_start_0
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_1

    .line 77
    :catch_0
    move-exception v4

    .line 78
    .local v4, "e":Ljava/io/IOException;
    if-nez v0, :cond_1

    .line 79
    move-object v0, v4

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v0, v4}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 84
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/io/Closeable;>;"
    .end local v3    # "cl":Ljava/io/Closeable;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 87
    :cond_2
    if-nez v0, :cond_3

    .line 90
    return-void

    .line 88
    :cond_3
    throw v0
.end method

.method public declared-synchronized remove(Ljava/io/Closeable;)Z
    .locals 3
    .param p1, "closeable"    # Ljava/io/Closeable;

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/Closeables;->list:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/Closeables;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljava/io/Closeable;>;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 162
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljava/io/Closeable;>;>;"
    .end local p0    # "this":Lorg/newsclub/net/unix/Closeables;
    :cond_2
    monitor-exit p0

    return v1

    .line 154
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    .line 152
    .end local p1    # "closeable":Ljava/io/Closeable;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
