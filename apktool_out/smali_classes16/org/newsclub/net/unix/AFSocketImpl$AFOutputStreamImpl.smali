.class final Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;
.super Lorg/newsclub/net/unix/AFOutputStream;
.source "AFSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/AFSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AFOutputStreamImpl"
.end annotation


# instance fields
.field private final opt:I

.field private volatile streamClosed:Z

.field final synthetic this$0:Lorg/newsclub/net/unix/AFSocketImpl;


# direct methods
.method private constructor <init>(Lorg/newsclub/net/unix/AFSocketImpl;)V
    .locals 1

    .line 551
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>.AFOutputStreamImpl;"
    iput-object p1, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-direct {p0}, Lorg/newsclub/net/unix/AFOutputStream;-><init>()V

    .line 552
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->streamClosed:Z

    .line 554
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->access$400(Lorg/newsclub/net/unix/AFSocketImpl;)Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->opt:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/newsclub/net/unix/AFSocketImpl;Lorg/newsclub/net/unix/AFSocketImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/newsclub/net/unix/AFSocketImpl;
    .param p2, "x1"    # Lorg/newsclub/net/unix/AFSocketImpl$1;

    .line 551
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>.AFOutputStreamImpl;"
    invoke-direct {p0, p1}, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;-><init>(Lorg/newsclub/net/unix/AFSocketImpl;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>.AFOutputStreamImpl;"
    monitor-enter p0

    .line 598
    :try_start_0
    iget-boolean v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->streamClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 599
    monitor-exit p0

    return-void

    .line 601
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->streamClosed:Z

    .line 602
    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-static {v1}, Lorg/newsclub/net/unix/AFSocketImpl;->access$400(Lorg/newsclub/net/unix/AFSocketImpl;)Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFd()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 603
    .local v1, "fdesc":Ljava/io/FileDescriptor;
    if-eqz v1, :cond_1

    .line 604
    invoke-static {v1, v0}, Lorg/newsclub/net/unix/NativeUnixSocket;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 606
    .end local p0    # "this":Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>.AFOutputStreamImpl;"
    :cond_1
    iget-object v2, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-static {v2, v0}, Lorg/newsclub/net/unix/AFSocketImpl;->access$902(Lorg/newsclub/net/unix/AFSocketImpl;Z)Z

    .line 607
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->access$700(Lorg/newsclub/net/unix/AFSocketImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    monitor-exit p0

    return-void

    .line 597
    .end local v1    # "fdesc":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>.AFOutputStreamImpl;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 7
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>.AFOutputStreamImpl;"
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->access$400(Lorg/newsclub/net/unix/AFSocketImpl;)Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFdOrException()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 562
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    :cond_0
    iget v5, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->opt:I

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    iget-object v6, v1, Lorg/newsclub/net/unix/AFSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v1, v0

    move v3, p1

    invoke-static/range {v1 .. v6}, Lorg/newsclub/net/unix/NativeUnixSocket;->write(Ljava/io/FileDescriptor;[BIIILorg/newsclub/net/unix/AncillaryDataSupport;)I

    move-result v1

    .line 563
    .local v1, "written":I
    if-eqz v1, :cond_1

    .line 564
    goto :goto_0

    .line 566
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/newsclub/net/unix/AFSocketImpl;->access$800(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 567
    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    .local p0, "this":Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;, "Lorg/newsclub/net/unix/AFSocketImpl<TA;>.AFOutputStreamImpl;"
    iget-boolean v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->streamClosed:Z

    if-nez v0, :cond_5

    .line 574
    if-ltz p3, :cond_4

    if-ltz p2, :cond_4

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_4

    .line 577
    iget-object v0, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    invoke-static {v0}, Lorg/newsclub/net/unix/AFSocketImpl;->access$400(Lorg/newsclub/net/unix/AFSocketImpl;)Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/newsclub/net/unix/AFSocketImpl$AFSocketStreamCore;->validFdOrException()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 578
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    if-nez p3, :cond_0

    .line 579
    return-void

    .line 582
    :cond_0
    const/4 v1, 0x0

    move v7, v1

    .line 585
    .local v7, "writtenTotal":I
    :cond_1
    iget v5, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->opt:I

    iget-object v1, p0, Lorg/newsclub/net/unix/AFSocketImpl$AFOutputStreamImpl;->this$0:Lorg/newsclub/net/unix/AFSocketImpl;

    iget-object v6, v1, Lorg/newsclub/net/unix/AFSocketImpl;->ancillaryDataSupport:Lorg/newsclub/net/unix/AncillaryDataSupport;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lorg/newsclub/net/unix/NativeUnixSocket;->write(Ljava/io/FileDescriptor;[BIIILorg/newsclub/net/unix/AncillaryDataSupport;)I

    move-result v1

    .line 586
    .local v1, "written":I
    if-ltz v1, :cond_3

    .line 590
    sub-int/2addr p3, v1

    .line 591
    add-int/2addr p2, v1

    .line 592
    add-int/2addr v7, v1

    .line 593
    .end local v1    # "written":I
    if-lez p3, :cond_2

    invoke-static {v7}, Lorg/newsclub/net/unix/AFSocketImpl;->access$800(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 594
    :cond_2
    return-void

    .line 587
    .restart local v1    # "written":I
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unspecific error while writing"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 575
    .end local v0    # "fdesc":Ljava/io/FileDescriptor;
    .end local v1    # "written":I
    .end local v7    # "writtenTotal":I
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 572
    :cond_5
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "This OutputStream has already been closed."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
