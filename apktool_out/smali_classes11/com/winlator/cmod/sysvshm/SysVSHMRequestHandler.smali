.class public Lcom/winlator/cmod/sysvshm/SysVSHMRequestHandler;
.super Ljava/lang/Object;
.source "SysVSHMRequestHandler.java"

# interfaces
.implements Lcom/winlator/cmod/xconnector/RequestHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/winlator/cmod/xconnector/Client;)Z
    .locals 10
    .param p1, "client"    # Lcom/winlator/cmod/xconnector/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;

    .line 15
    .local v0, "sysVSharedMemory":Lcom/winlator/cmod/sysvshm/SysVSharedMemory;
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->getInputStream()Lcom/winlator/cmod/xconnector/XInputStream;

    move-result-object v1

    .line 16
    .local v1, "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->getOutputStream()Lcom/winlator/cmod/xconnector/XOutputStream;

    move-result-object v2

    .line 18
    .local v2, "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    invoke-virtual {v1}, Lcom/winlator/cmod/xconnector/XInputStream;->available()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    return v5

    .line 19
    :cond_0
    invoke-virtual {v1}, Lcom/winlator/cmod/xconnector/XInputStream;->readByte()B

    move-result v3

    .line 21
    .local v3, "requestCode":B
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 41
    :pswitch_0
    invoke-virtual {v1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v4

    .line 42
    .local v4, "shmid":I
    invoke-virtual {v0, v4}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->delete(I)V

    .line 43
    goto :goto_2

    .line 32
    .end local v4    # "shmid":I
    :pswitch_1
    invoke-virtual {v1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v4

    .line 34
    .restart local v4    # "shmid":I
    invoke-virtual {v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v6

    .line 35
    .local v6, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :try_start_0
    invoke-virtual {v2, v5}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 36
    invoke-virtual {v0, v4}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->getFd(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/winlator/cmod/xconnector/XOutputStream;->setAncillaryFd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 38
    .end local v6    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_1
    goto :goto_2

    .line 34
    .restart local v6    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v5

    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v5

    .line 23
    .end local v4    # "shmid":I
    .end local v6    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :pswitch_2
    invoke-virtual {v1}, Lcom/winlator/cmod/xconnector/XInputStream;->readUnsignedInt()J

    move-result-wide v4

    .line 24
    .local v4, "size":J
    invoke-virtual {v0, v4, v5}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->get(J)I

    move-result v6

    .line 26
    .local v6, "shmid":I
    invoke-virtual {v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v7

    .line 27
    .local v7, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :try_start_2
    invoke-virtual {v2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 28
    if-eqz v7, :cond_3

    invoke-interface {v7}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 29
    .end local v7    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_3
    goto :goto_2

    .line 26
    .restart local v7    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_2
    move-exception v8

    if-eqz v7, :cond_4

    :try_start_3
    invoke-interface {v7}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v9

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v8

    .line 46
    .end local v4    # "size":J
    .end local v6    # "shmid":I
    .end local v7    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :goto_2
    const/4 v4, 0x1

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
