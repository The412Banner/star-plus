.class final Lorg/apache/commons/compress/archivers/examples/CloseableConsumer$1;
.super Ljava/lang/Object;
.source "CloseableConsumer.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/Closeable;)V
    .locals 0
    .param p1, "c"    # Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 41
    return-void
.end method
