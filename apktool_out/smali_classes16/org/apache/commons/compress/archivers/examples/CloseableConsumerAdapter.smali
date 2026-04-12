.class final Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
.super Ljava/lang/Object;
.source "CloseableConsumerAdapter.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private closeable:Ljava/io/Closeable;

.field private final consumer:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 1
    .param p1, "consumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "consumer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->consumer:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    .line 31
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->closeable:Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->consumer:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->closeable:Ljava/io/Closeable;

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->accept(Ljava/io/Closeable;)V

    .line 43
    :cond_0
    return-void
.end method

.method track(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/io/Closeable;",
            ">(TC;)TC;"
        }
    .end annotation

    .line 34
    .local p1, "closeable":Ljava/io/Closeable;, "TC;"
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->closeable:Ljava/io/Closeable;

    .line 35
    return-object p1
.end method
