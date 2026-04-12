.class public Lcom/winlator/cmod/alsaserver/ALSARequestHandler;
.super Ljava/lang/Object;
.source "ALSARequestHandler.java"

# interfaces
.implements Lcom/winlator/cmod/xconnector/RequestHandler;


# instance fields
.field private maxSHMemoryId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/winlator/cmod/alsaserver/ALSARequestHandler;->maxSHMemoryId:I

    return-void
.end method

.method private createSharedMemory(Lcom/winlator/cmod/alsaserver/ALSAClient;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 6
    .param p1, "alsaClient"    # Lcom/winlator/cmod/alsaserver/ALSAClient;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lcom/winlator/cmod/alsaserver/ALSAClient;->getBufferSizeInBytes()I

    move-result v0

    .line 76
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alsa-shm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/winlator/cmod/alsaserver/ALSARequestHandler;->maxSHMemoryId:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/winlator/cmod/alsaserver/ALSARequestHandler;->maxSHMemoryId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->createMemoryFd(Ljava/lang/String;I)I

    move-result v1

    .line 78
    .local v1, "fd":I
    const/4 v2, 0x0

    if-ltz v1, :cond_0

    .line 79
    int-to-long v4, v0

    invoke-static {v1, v4, v5, v2, v3}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->mapSHMSegment(IJIZ)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 80
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v3, :cond_0

    invoke-virtual {p1, v3}, Lcom/winlator/cmod/alsaserver/ALSAClient;->setSharedBuffer(Ljava/nio/ByteBuffer;)V

    .line 83
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 84
    .local v3, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :try_start_1
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 85
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->setAncillaryFd(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    if-eqz v3, :cond_1

    :try_start_2
    invoke-interface {v3}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 88
    .end local v3    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_1
    if-ltz v1, :cond_2

    invoke-static {v1}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 90
    :cond_2
    return-void

    .line 83
    .restart local v3    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_3

    :try_start_3
    invoke-interface {v3}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "size":I
    .end local v1    # "fd":I
    .end local p1    # "alsaClient":Lcom/winlator/cmod/alsaserver/ALSAClient;
    .end local p2    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_3
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 88
    .end local v3    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    .restart local v0    # "size":I
    .restart local v1    # "fd":I
    .restart local p1    # "alsaClient":Lcom/winlator/cmod/alsaserver/ALSAClient;
    .restart local p2    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :catchall_2
    move-exception v2

    if-ltz v1, :cond_4

    invoke-static {v1}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 89
    :cond_4
    throw v2
.end method


# virtual methods
.method public handleRequest(Lcom/winlator/cmod/xconnector/Client;)Z
    .locals 8
    .param p1, "client"    # Lcom/winlator/cmod/xconnector/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/alsaserver/ALSAClient;

    .line 20
    .local v0, "alsaClient":Lcom/winlator/cmod/alsaserver/ALSAClient;
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->getInputStream()Lcom/winlator/cmod/xconnector/XInputStream;

    move-result-object v1

    .line 21
    .local v1, "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->getOutputStream()Lcom/winlator/cmod/xconnector/XOutputStream;

    move-result-object v2

    .line 23
    .local v2, "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    invoke-virtual {v1}, Lcom/winlator/cmod/xconnector/XInputStream;->available()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    return v5

    .line 24
    :cond_0
    invoke-virtual {v1}, Lcom/winlator/cmod/xconnector/XInputStream;->readByte()B

    move-result v3

    .line 25
    .local v3, "requestCode":B
    invoke-virtual {v1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v4

    .line 27
    .local v4, "requestLength":I
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 66
    :pswitch_0
    invoke-virtual {v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v5

    .line 67
    .local v5, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/winlator/cmod/alsaserver/ALSAClient;->pointer()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    goto/16 :goto_1

    .line 66
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v5}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v6

    .line 63
    .end local v5    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :pswitch_1
    invoke-virtual {v0}, Lcom/winlator/cmod/alsaserver/ALSAClient;->drain()V

    .line 64
    goto :goto_1

    .line 52
    :pswitch_2
    invoke-virtual {v0}, Lcom/winlator/cmod/alsaserver/ALSAClient;->getSharedBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 53
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v6, :cond_2

    .line 54
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 55
    invoke-virtual {v0, v6}, Lcom/winlator/cmod/alsaserver/ALSAClient;->writeDataToStream(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {v1}, Lcom/winlator/cmod/xconnector/XInputStream;->available()I

    move-result v7

    if-ge v7, v4, :cond_3

    return v5

    .line 59
    :cond_3
    invoke-virtual {v1, v4}, Lcom/winlator/cmod/xconnector/XInputStream;->readByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/winlator/cmod/alsaserver/ALSAClient;->writeDataToStream(Ljava/nio/ByteBuffer;)V

    .line 61
    goto :goto_1

    .line 41
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    :pswitch_3
    invoke-virtual {v1}, Lcom/winlator/cmod/xconnector/XInputStream;->available()I

    move-result v6

    if-ge v6, v4, :cond_4

    return v5

    .line 43
    :cond_4
    invoke-virtual {v1}, Lcom/winlator/cmod/xconnector/XInputStream;->readByte()B

    move-result v5

    invoke-virtual {v0, v5}, Lcom/winlator/cmod/alsaserver/ALSAClient;->setChannelCount(I)V

    .line 44
    invoke-static {}, Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;->values()[Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;

    move-result-object v5

    invoke-virtual {v1}, Lcom/winlator/cmod/xconnector/XInputStream;->readByte()B

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/winlator/cmod/alsaserver/ALSAClient;->setDataType(Lcom/winlator/cmod/alsaserver/ALSAClient$DataType;)V

    .line 45
    invoke-virtual {v1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/winlator/cmod/alsaserver/ALSAClient;->setSampleRate(I)V

    .line 46
    invoke-virtual {v1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/winlator/cmod/alsaserver/ALSAClient;->setBufferSize(I)V

    .line 47
    invoke-virtual {v0}, Lcom/winlator/cmod/alsaserver/ALSAClient;->prepare()V

    .line 49
    invoke-direct {p0, v0, v2}, Lcom/winlator/cmod/alsaserver/ALSARequestHandler;->createSharedMemory(Lcom/winlator/cmod/alsaserver/ALSAClient;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 50
    goto :goto_1

    .line 38
    :pswitch_4
    invoke-virtual {v0}, Lcom/winlator/cmod/alsaserver/ALSAClient;->pause()V

    .line 39
    goto :goto_1

    .line 35
    :pswitch_5
    invoke-virtual {v0}, Lcom/winlator/cmod/alsaserver/ALSAClient;->stop()V

    .line 36
    goto :goto_1

    .line 32
    :pswitch_6
    invoke-virtual {v0}, Lcom/winlator/cmod/alsaserver/ALSAClient;->start()V

    .line 33
    goto :goto_1

    .line 29
    :pswitch_7
    invoke-virtual {v0}, Lcom/winlator/cmod/alsaserver/ALSAClient;->release()V

    .line 30
    nop

    .line 71
    :cond_5
    :goto_1
    const/4 v5, 0x1

    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
