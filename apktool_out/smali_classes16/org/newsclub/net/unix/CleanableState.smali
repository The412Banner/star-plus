.class abstract Lorg/newsclub/net/unix/CleanableState;
.super Ljava/lang/Object;
.source "CleanableState.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final clean:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "observed"    # Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/newsclub/net/unix/CleanableState;->clean:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lorg/newsclub/net/unix/CleanableState;->runCleaner()V

    .line 35
    return-void
.end method

.method protected abstract doClean()V
.end method

.method protected final finalize()V
    .locals 1

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lorg/newsclub/net/unix/CleanableState;->runCleaner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 28
    :goto_0
    return-void
.end method

.method public final runCleaner()V
    .locals 3

    .line 15
    iget-object v0, p0, Lorg/newsclub/net/unix/CleanableState;->clean:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lorg/newsclub/net/unix/CleanableState;->doClean()V

    .line 18
    :cond_0
    return-void
.end method
