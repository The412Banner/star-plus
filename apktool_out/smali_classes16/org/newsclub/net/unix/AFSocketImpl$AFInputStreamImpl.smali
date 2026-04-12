.class final Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;
.super Lorg/newsclub/net/unix/AFInputStream;
.source "AFSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AFInputStreamImpl"
.end annotation


# instance fields
.field private final eofReached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final opt:I

.field private volatile streamClosed:Z

.field final synthetic this$0:Lorg/newsclub/net/unix/AFSocketImpl;


# direct methods
.method private constructor <init>(Lorg/newsclub/net/unix/AFSocketImpl;)V
    .locals 1

    .line 464
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>.AFInputStreamImpl;"
    iput-object p1, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-direct {p0}, Lorg/newsclub/net/unix/AFInputStream;-><init>()V

    .line 465
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->streamClosed:Z

    .line 466
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->eofReached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 468
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->access$400(Lorg/newsclub/net/unix/AFSocketImpl;)Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->opt:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/newsclub/net/unix/AFSocketImpl;Lorg/newsclub/net/unix/AFSocketImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/newsclub/net/unix/AFSocketImpl;
    .param p2, "x1"    # Lorg/newsclub/net/unix/AFSocketImpl$1;

    .line 464
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>.AFInputStreamImpl;"
    invoke-direct {p0, p1}, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;-><init>(Lorg/newsclub/net/unix/AFSocketImpl;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>.AFInputStreamImpl;"
    iget-boolean v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->streamClosed:Z

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->available()I

    move-result v0

    return v0

    .line 528
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This InputStream has already been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>.AFInputStreamImpl;"
    monitor-enter p0

    .line 515
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->streamClosed:Z

    .line 516
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-static {v1}, Lorg/newsclub/net/unix/AFSocketImpl;->access$400(Lorg/newsclub/net/unix/AFSocketImpl;)Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFd()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 517
    .local v1, "fdesc":Ljava/io/FileDescriptor;
    if-eqz v1, :cond_0

    .line 518
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/newsclub/net/unix/NativeUnixSocket;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 521
    .end local p0    # "this":Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>.AFInputStreamImpl;"
    :cond_0
    iget-object v2, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-static {v2, v0}, Lorg/newsclub/net/unix/AFSocketImpl;->access$602(Lorg/newsclub/net/unix/AFSocketImpl;Z)Z

    .line 522
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->access$700(Lorg/newsclub/net/unix/AFSocketImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    monitor-exit p0

    return-void

    .line 514
    .end local v1    # "fdesc":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>.AFInputStreamImpl;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>.AFInputStreamImpl;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->access$400(Lorg/newsclub/net/unix/AFSocketImpl;)Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFdOrException()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 499
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->eofReached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v8, -0x1

    if-eqz v1, :cond_0

    .line 500
    return v8

    .line 503
    :cond_0
    iget v5, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->opt:I

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    iget-object v6, v1, Lorg/newsclub/net/unix/AFSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    .line 504
    invoke-static {v1}, Lorg/newsclub/net/unix/AFSocketImpl;->access$500(Lorg/newsclub/net/unix/AFSocketImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    .line 503
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lorg/newsclub/net/unix/NativeUnixSocket;->read(Ljava/io/FileDescriptor;[BIIILorg/newsclub/net/unix/AncillaryDataSupport;I)I

    move-result v1

    .line 505
    .local v1, "byteRead":I
    if-gez v1, :cond_1

    .line 506
    iget-object v2, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->eofReached:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 507
    return v8

    .line 509
    :cond_1
    return v1
.end method

.method public read([BII)I
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>.AFInputStreamImpl;"
    iget-boolean v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->streamClosed:Z

    if-nez v0, :cond_3

    .line 475
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->eofReached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    const/4 v0, -0x1

    return v0

    .line 479
    :cond_0
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->access$400(Lorg/newsclub/net/unix/AFSocketImpl;)Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFdOrException()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 480
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    if-nez p3, :cond_1

    .line 481
    const/4 v1, 0x0

    return v1

    .line 482
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt p3, v1, :cond_2

    .line 487
    :try_start_0
    iget v5, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->opt:I

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    iget-object v6, v1, Lorg/newsclub/net/unix/AFSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-static {v1}, Lorg/newsclub/net/unix/AFSocketImpl;->access$500(Lorg/newsclub/net/unix/AFSocketImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    .line 488
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    .line 487
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Lorg/newsclub/net/unix/NativeUnixSocket;->read(Ljava/io/FileDescriptor;[BIIILorg/newsclub/net/unix/AncillaryDataSupport;I)I

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 489
    :catch_0
    move-exception v1

    .line 490
    .local v1, "e":Ljava/io/EOFException;
    iget-object v2, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFInputStreamImpl;->eofReached:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 491
    throw v1

    .line 483
    .end local v1    # "e":Ljava/io/EOFException;
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 473
    .end local v0    # "fdesc":Ljava/io/FileDescriptor;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This InputStream has already been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
