.class public Lcom/winlator/cmod/xserver/XClientRequestHandler;
.super Ljava/lang/Object;
.source "XClientRequestHandler.java"

# interfaces
.implements Lcom/winlator/cmod/xconnector/RequestHandler;


# static fields
.field public static final MAX_REQUEST_LENGTH:I = 0xffff

.field public static final RESPONSE_CODE_ERROR:B = 0x0t

.field public static final RESPONSE_CODE_SUCCESS:B = 0x1t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleAuthRequest(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)Z
    .locals 7
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->available()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readByte()B

    move-result v0

    .line 122
    .local v0, "byteOrder":B
    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 123
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 124
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    .line 126
    :cond_1
    const/16 v1, 0x6c

    if-ne v0, v1, :cond_2

    .line 127
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 128
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 131
    :cond_2
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 133
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v2

    .line 134
    .local v2, "majorVersion":S
    const/16 v3, 0xb

    if-ne v2, v3, :cond_7

    .line 136
    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 137
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v4

    .line 138
    .local v4, "nameLength":I
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v5

    .line 139
    .local v5, "dataLength":I
    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 141
    if-lez v4, :cond_3

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XInputStream;->readString8(I)Ljava/lang/String;

    .line 142
    :cond_3
    if-lez v5, :cond_4

    invoke-virtual {p2, v5}, Lcom/winlator/cmod/xconnector/XInputStream;->readString8(I)Ljava/lang/String;

    .line 144
    :cond_4
    iget-object v3, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v3, v6}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v3

    .line 145
    .local v3, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/winlator/cmod/xserver/XClientRequestHandler;->sendServerInformation(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 148
    .end local v3    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_5
    invoke-virtual {p1, v1}, Lcom/winlator/cmod/xserver/XClient;->setAuthenticated(Z)V

    .line 149
    return v1

    .line 144
    .restart local v3    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_0
    move-exception v1

    if-eqz v3, :cond_6

    :try_start_1
    invoke-interface {v3}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    invoke-virtual {v1, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v1

    .line 134
    .end local v3    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .end local v4    # "nameLength":I
    .end local v5    # "dataLength":I
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported major X protocol version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleNormalRequest(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)Z
    .locals 10
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    .line 154
    :cond_0
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readByte()B

    move-result v0

    .line 155
    .local v0, "opcode":B
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readByte()B

    move-result v3

    .line 157
    .local v3, "requestData":B
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readUnsignedShort()I

    move-result v4

    .line 158
    .local v4, "requestLength":I
    if-eqz v4, :cond_1

    .line 159
    mul-int/lit8 v5, v4, 0x4

    sub-int/2addr v5, v2

    .end local v4    # "requestLength":I
    .local v5, "requestLength":I
    goto :goto_0

    .line 161
    .end local v5    # "requestLength":I
    .restart local v4    # "requestLength":I
    :cond_1
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->available()I

    move-result v5

    if-ge v5, v2, :cond_2

    .line 162
    return v1

    .line 164
    :cond_2
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v5

    mul-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x8

    .line 165
    .end local v4    # "requestLength":I
    .restart local v5    # "requestLength":I
    :goto_0
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->available()I

    move-result v4

    if-ge v4, v5, :cond_3

    return v1

    .line 167
    :cond_3
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->generateSequenceNumber()V

    .line 168
    invoke-virtual {p1, v3}, Lcom/winlator/cmod/xserver/XClient;->setRequestData(B)V

    .line 169
    invoke-virtual {p1, v5}, Lcom/winlator/cmod/xserver/XClient;->setRequestLength(I)V

    .line 172
    const-string v4, "XClientRequestHandler"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 451
    if-gez v0, :cond_5c

    .line 452
    :try_start_0
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    goto/16 :goto_2c

    .line 428
    :sswitch_0
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->skipRequest()V

    .line 429
    goto/16 :goto_2d

    .line 425
    :sswitch_1
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/KeyboardRequests;->getModifierMapping(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 426
    goto/16 :goto_2d

    .line 431
    :sswitch_2
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/CursorRequests;->getPointerMaping(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 432
    goto/16 :goto_2d

    .line 422
    :sswitch_3
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->skipRequest()V

    .line 423
    goto/16 :goto_2d

    .line 419
    :sswitch_4
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->getScreenSaver(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 420
    goto/16 :goto_2d

    .line 416
    :sswitch_5
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->skipRequest()V

    .line 417
    goto/16 :goto_2d

    .line 413
    :sswitch_6
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->skipRequest()V

    .line 414
    goto/16 :goto_2d

    .line 408
    :sswitch_7
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_0
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .local v1, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/KeyboardRequests;->getKeyboardMapping(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_2
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_2 .. :try_end_2} :catch_0

    .line 411
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_4
    goto/16 :goto_2d

    .line 408
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_3
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_5
    :goto_1
    throw v2

    .line 405
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_8
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/ExtensionRequests;->queryExtension(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 406
    goto/16 :goto_2d

    .line 400
    :sswitch_9
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v6, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->CURSOR_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v7

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_4
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_4 .. :try_end_4} :catch_0

    .line 401
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_5
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/CursorRequests;->freeCursor(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 402
    if-eqz v1, :cond_6

    :try_start_6
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_6
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_6 .. :try_end_6} :catch_0

    .line 403
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_6
    goto/16 :goto_2d

    .line 400
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_7

    :try_start_7
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_7
    :goto_2
    throw v2

    .line 397
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_a
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->skipRequest()V

    .line 398
    goto/16 :goto_2d

    .line 392
    :sswitch_b
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v6, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->CURSOR_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v7

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_8
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_8 .. :try_end_8} :catch_0

    .line 393
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_9
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/CursorRequests;->createCursor(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 394
    if-eqz v1, :cond_8

    :try_start_a
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_a
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_a .. :try_end_a} :catch_0

    .line 395
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_8
    goto/16 :goto_2d

    .line 392
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_4
    move-exception v2

    if-eqz v1, :cond_9

    :try_start_b
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v4

    :try_start_c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_9
    :goto_3
    throw v2

    .line 389
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_c
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->skipRequest()V

    .line 390
    goto/16 :goto_2d

    .line 386
    :sswitch_d
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->skipRequest()V

    .line 387
    goto/16 :goto_2d

    .line 381
    :sswitch_e
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_c
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_c .. :try_end_c} :catch_0

    .line 382
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_d
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/DrawRequests;->getImage(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 383
    if-eqz v1, :cond_a

    :try_start_e
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_e
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_e .. :try_end_e} :catch_0

    .line 384
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_a
    goto/16 :goto_2d

    .line 381
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_6
    move-exception v2

    if-eqz v1, :cond_b

    :try_start_f
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v4

    :try_start_10
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_b
    :goto_4
    throw v2

    .line 376
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_f
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_10
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_10 .. :try_end_10} :catch_0

    .line 377
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_11
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/DrawRequests;->putImage(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 378
    if-eqz v1, :cond_c

    :try_start_12
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_12
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_12 .. :try_end_12} :catch_0

    .line 379
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_c
    goto/16 :goto_2d

    .line 376
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_8
    move-exception v2

    if-eqz v1, :cond_d

    :try_start_13
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    goto :goto_5

    :catchall_9
    move-exception v4

    :try_start_14
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_d
    :goto_5
    throw v2

    .line 371
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_10
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_14
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_14 .. :try_end_14} :catch_0

    .line 372
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_15
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/DrawRequests;->polyFillRectangle(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 373
    if-eqz v1, :cond_e

    :try_start_16
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_16
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_16 .. :try_end_16} :catch_0

    .line 374
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_e
    goto/16 :goto_2d

    .line 371
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_a
    move-exception v2

    if-eqz v1, :cond_f

    :try_start_17
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    goto :goto_6

    :catchall_b
    move-exception v4

    :try_start_18
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_f
    :goto_6
    throw v2

    .line 368
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_11
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->skipRequest()V

    .line 369
    goto/16 :goto_2d

    .line 365
    :sswitch_12
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->skipRequest()V

    .line 366
    goto/16 :goto_2d

    .line 360
    :sswitch_13
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_18
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_18 .. :try_end_18} :catch_0

    .line 361
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_19
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/DrawRequests;->polyLine(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 362
    if-eqz v1, :cond_10

    :try_start_1a
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_1a
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_1a .. :try_end_1a} :catch_0

    .line 363
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_10
    goto/16 :goto_2d

    .line 360
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_c
    move-exception v2

    if-eqz v1, :cond_11

    :try_start_1b
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    goto :goto_7

    :catchall_d
    move-exception v4

    :try_start_1c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_11
    :goto_7
    throw v2

    .line 355
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_14
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_1c
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_1c .. :try_end_1c} :catch_0

    .line 356
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_1d
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/DrawRequests;->copyArea(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    .line 357
    if-eqz v1, :cond_12

    :try_start_1e
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_1e
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_1e .. :try_end_1e} :catch_0

    .line 358
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_12
    goto/16 :goto_2d

    .line 355
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_e
    move-exception v2

    if-eqz v1, :cond_13

    :try_start_1f
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    goto :goto_8

    :catchall_f
    move-exception v4

    :try_start_20
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_13
    :goto_8
    throw v2

    .line 350
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_15
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_20
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_20 .. :try_end_20} :catch_0

    .line 351
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_21
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/GraphicsContextRequests;->freeGC(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    .line 352
    if-eqz v1, :cond_14

    :try_start_22
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_22
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_22 .. :try_end_22} :catch_0

    .line 353
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_14
    goto/16 :goto_2d

    .line 350
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_10
    move-exception v2

    if-eqz v1, :cond_15

    :try_start_23
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    goto :goto_9

    :catchall_11
    move-exception v4

    :try_start_24
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_15
    :goto_9
    throw v2

    .line 347
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_16
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->skipRequest()V

    .line 348
    goto/16 :goto_2d

    .line 342
    :sswitch_17
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v6, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v7

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_24
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_24 .. :try_end_24} :catch_0

    .line 343
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_25
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/GraphicsContextRequests;->copyGC(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_12

    .line 344
    if-eqz v1, :cond_16

    :try_start_26
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_26
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_26 .. :try_end_26} :catch_0

    .line 345
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_16
    goto/16 :goto_2d

    .line 342
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_12
    move-exception v2

    if-eqz v1, :cond_17

    :try_start_27
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_13

    goto :goto_a

    :catchall_13
    move-exception v4

    :try_start_28
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_17
    :goto_a
    throw v2

    .line 337
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_18
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v6, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v7

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_28
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_28 .. :try_end_28} :catch_0

    .line 338
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_29
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/GraphicsContextRequests;->changeGC(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_14

    .line 339
    if-eqz v1, :cond_18

    :try_start_2a
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_2a
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_2a .. :try_end_2a} :catch_0

    .line 340
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_18
    goto/16 :goto_2d

    .line 337
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_14
    move-exception v2

    if-eqz v1, :cond_19

    :try_start_2b
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_15

    goto :goto_b

    :catchall_15
    move-exception v4

    :try_start_2c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_19
    :goto_b
    throw v2

    .line 332
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_19
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v6, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v7

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_2c
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_2c .. :try_end_2c} :catch_0

    .line 333
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_2d
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/GraphicsContextRequests;->createGC(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    .line 334
    if-eqz v1, :cond_1a

    :try_start_2e
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_2e
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_2e .. :try_end_2e} :catch_0

    .line 335
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_1a
    goto/16 :goto_2d

    .line 332
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_16
    move-exception v2

    if-eqz v1, :cond_1b

    :try_start_2f
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_17

    goto :goto_c

    :catchall_17
    move-exception v4

    :try_start_30
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_1b
    :goto_c
    throw v2

    .line 327
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_1a
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_30
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_30 .. :try_end_30} :catch_0

    .line 328
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_31
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/PixmapRequests;->freePixmap(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_18

    .line 329
    if-eqz v1, :cond_1c

    :try_start_32
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_32
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_32 .. :try_end_32} :catch_0

    .line 330
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_1c
    goto/16 :goto_2d

    .line 327
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_18
    move-exception v2

    if-eqz v1, :cond_1d

    :try_start_33
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_19

    goto :goto_d

    :catchall_19
    move-exception v4

    :try_start_34
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_1d
    :goto_d
    throw v2

    .line 322
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_1b
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_34
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_34 .. :try_end_34} :catch_0

    .line 323
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_35
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/PixmapRequests;->createPixmap(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1a

    .line 324
    if-eqz v1, :cond_1e

    :try_start_36
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_36
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_36 .. :try_end_36} :catch_0

    .line 325
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_1e
    goto/16 :goto_2d

    .line 322
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_1a
    move-exception v2

    if-eqz v1, :cond_1f

    :try_start_37
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1b

    goto :goto_e

    :catchall_1b
    move-exception v4

    :try_start_38
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_1f
    :goto_e
    throw v2

    .line 319
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_1c
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/FontRequests;->listFonts(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 320
    goto/16 :goto_2d

    .line 316
    :sswitch_1d
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/FontRequests;->openFont(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 317
    goto/16 :goto_2d

    .line 307
    :sswitch_1e
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v4, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v2
    :try_end_38
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_38 .. :try_end_38} :catch_0

    .line 308
    .local v2, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_39
    invoke-virtual {p3, v8}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 309
    invoke-virtual {p3, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 310
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v1

    invoke-virtual {p3, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 311
    invoke-virtual {p3, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 312
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1c

    .line 313
    if-eqz v2, :cond_20

    :try_start_3a
    invoke-interface {v2}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_3a
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_3a .. :try_end_3a} :catch_0

    .line 314
    .end local v2    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_20
    goto/16 :goto_2d

    .line 307
    .restart local v2    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_1c
    move-exception v1

    if-eqz v2, :cond_21

    :try_start_3b
    invoke-interface {v2}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1d

    goto :goto_f

    :catchall_1d
    move-exception v4

    :try_start_3c
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_21
    :goto_f
    throw v1

    .line 302
    .end local v2    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_1f
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_3c
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_3c .. :try_end_3c} :catch_0

    .line 303
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_3d
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->getInputFocus(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1e

    .line 304
    if-eqz v1, :cond_22

    :try_start_3e
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_3e
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_3e .. :try_end_3e} :catch_0

    .line 305
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_22
    goto/16 :goto_2d

    .line 302
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_1e
    move-exception v2

    if-eqz v1, :cond_23

    :try_start_3f
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1f

    goto :goto_10

    :catchall_1f
    move-exception v4

    :try_start_40
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_23
    :goto_10
    throw v2

    .line 297
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_20
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_40
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_40 .. :try_end_40} :catch_0

    .line 298
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_41
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->setInputFocus(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_20

    .line 299
    if-eqz v1, :cond_24

    :try_start_42
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_42
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_42 .. :try_end_42} :catch_0

    .line 300
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_24
    goto/16 :goto_2d

    .line 297
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_20
    move-exception v2

    if-eqz v1, :cond_25

    :try_start_43
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_21

    goto :goto_11

    :catchall_21
    move-exception v4

    :try_start_44
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_25
    :goto_11
    throw v2

    .line 292
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_21
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_44
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_44 .. :try_end_44} :catch_0

    .line 293
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_45
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->warpPointer(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_22

    .line 294
    if-eqz v1, :cond_26

    :try_start_46
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_46
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_46 .. :try_end_46} :catch_0

    .line 295
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_26
    goto/16 :goto_2d

    .line 292
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_22
    move-exception v2

    if-eqz v1, :cond_27

    :try_start_47
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_23

    goto :goto_12

    :catchall_23
    move-exception v4

    :try_start_48
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_27
    :goto_12
    throw v2

    .line 287
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_22
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_48
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_48 .. :try_end_48} :catch_0

    .line 288
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_49
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->translateCoordinates(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_24

    .line 289
    if-eqz v1, :cond_28

    :try_start_4a
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_4a
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_4a .. :try_end_4a} :catch_0

    .line 290
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_28
    goto/16 :goto_2d

    .line 287
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_24
    move-exception v2

    if-eqz v1, :cond_29

    :try_start_4b
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_25

    goto :goto_13

    :catchall_25
    move-exception v4

    :try_start_4c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_29
    :goto_13
    throw v2

    .line 282
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_23
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_4c
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_4c .. :try_end_4c} :catch_0

    .line 283
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_4d
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->queryPointer(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_26

    .line 284
    if-eqz v1, :cond_2a

    :try_start_4e
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_4e
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_4e .. :try_end_4e} :catch_0

    .line 285
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_2a
    goto/16 :goto_2d

    .line 282
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_26
    move-exception v2

    if-eqz v1, :cond_2b

    :try_start_4f
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_27

    goto :goto_14

    :catchall_27
    move-exception v4

    :try_start_50
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_2b
    :goto_14
    throw v2

    .line 442
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_24
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->lockAll()Lcom/winlator/cmod/xserver/XLock;

    move-result-object v2
    :try_end_50
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_50 .. :try_end_50} :catch_0

    .line 443
    .restart local v2    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_51
    iget-object v6, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v6, p1}, Lcom/winlator/cmod/xserver/XServer;->isGrabbedBy(Lcom/winlator/cmod/xserver/XClient;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 444
    iget-object v6, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Lcom/winlator/cmod/xserver/XServer;->setGrabbed(ZLcom/winlator/cmod/xserver/XClient;)V

    .line 446
    :cond_2c
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v6

    invoke-virtual {p3, v6, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeSuccessReply(II)V

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X_UngrabServer request handled successfully:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p3, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_28

    .line 448
    if-eqz v2, :cond_2d

    :try_start_52
    invoke-interface {v2}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_52
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_52 .. :try_end_52} :catch_0

    .line 449
    .end local v2    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_2d
    goto/16 :goto_2d

    .line 442
    .restart local v2    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_28
    move-exception v1

    if-eqz v2, :cond_2e

    :try_start_53
    invoke-interface {v2}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_29

    goto :goto_15

    :catchall_29
    move-exception v4

    :try_start_54
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_2e
    :goto_15
    throw v1

    .line 434
    .end local v2    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_25
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->lockAll()Lcom/winlator/cmod/xserver/XLock;

    move-result-object v2
    :try_end_54
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_54 .. :try_end_54} :catch_0

    .line 435
    .restart local v2    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_55
    iget-object v6, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v6, v8, p1}, Lcom/winlator/cmod/xserver/XServer;->setGrabbed(ZLcom/winlator/cmod/xserver/XClient;)V

    .line 436
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v6

    invoke-virtual {p3, v6, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeSuccessReply(II)V

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X_GrabServer request handled successfully:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p3, Lcom/winlator/cmod/xconnector/XOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_2a

    .line 438
    if-eqz v2, :cond_2f

    :try_start_56
    invoke-interface {v2}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_56
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_56 .. :try_end_56} :catch_0

    .line 439
    .end local v2    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_2f
    goto/16 :goto_2d

    .line 434
    .restart local v2    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_2a
    move-exception v1

    if-eqz v2, :cond_30

    :try_start_57
    invoke-interface {v2}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_2b

    goto :goto_16

    :catchall_2b
    move-exception v4

    :try_start_58
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_30
    :goto_16
    throw v1

    .line 277
    .end local v2    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_26
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_58
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_58 .. :try_end_58} :catch_0

    .line 278
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_59
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/GrabRequests;->ungrabPointer(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_2c

    .line 279
    if-eqz v1, :cond_31

    :try_start_5a
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_5a
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_5a .. :try_end_5a} :catch_0

    .line 280
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_31
    goto/16 :goto_2d

    .line 277
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_2c
    move-exception v2

    if-eqz v1, :cond_32

    :try_start_5b
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_2d

    goto :goto_17

    :catchall_2d
    move-exception v4

    :try_start_5c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_32
    :goto_17
    throw v2

    .line 272
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_27
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v6, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->CURSOR_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v7

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_5c
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_5c .. :try_end_5c} :catch_0

    .line 273
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_5d
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/GrabRequests;->grabPointer(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_2e

    .line 274
    if-eqz v1, :cond_33

    :try_start_5e
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_5e
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_5e .. :try_end_5e} :catch_0

    .line 275
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_33
    goto/16 :goto_2d

    .line 272
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_2e
    move-exception v2

    if-eqz v1, :cond_34

    :try_start_5f
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_2f

    goto :goto_18

    :catchall_2f
    move-exception v4

    :try_start_60
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_34
    :goto_18
    throw v2

    .line 267
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_28
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/XServer;->lockAll()Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_60
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_60 .. :try_end_60} :catch_0

    .line 268
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_61
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->sendEvent(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_30

    .line 269
    if-eqz v1, :cond_35

    :try_start_62
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_62
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_62 .. :try_end_62} :catch_0

    .line 270
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_35
    goto/16 :goto_2d

    .line 267
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_30
    move-exception v2

    if-eqz v1, :cond_36

    :try_start_63
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_31

    goto :goto_19

    :catchall_31
    move-exception v4

    :try_start_64
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_36
    :goto_19
    throw v2

    .line 262
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_29
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_64
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_64 .. :try_end_64} :catch_0

    .line 263
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_65
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/SelectionRequests;->getSelectionOwner(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_32

    .line 264
    if-eqz v1, :cond_37

    :try_start_66
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_66
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_66 .. :try_end_66} :catch_0

    .line 265
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_37
    goto/16 :goto_2d

    .line 262
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_32
    move-exception v2

    if-eqz v1, :cond_38

    :try_start_67
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_33

    goto :goto_1a

    :catchall_33
    move-exception v4

    :try_start_68
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_38
    :goto_1a
    throw v2

    .line 257
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_2a
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_68
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_68 .. :try_end_68} :catch_0

    .line 258
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_69
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/SelectionRequests;->setSelectionOwner(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_34

    .line 259
    if-eqz v1, :cond_39

    :try_start_6a
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_6a
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_6a .. :try_end_6a} :catch_0

    .line 260
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_39
    goto/16 :goto_2d

    .line 257
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_34
    move-exception v2

    if-eqz v1, :cond_3a

    :try_start_6b
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_35

    goto :goto_1b

    :catchall_35
    move-exception v4

    :try_start_6c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_3a
    :goto_1b
    throw v2

    .line 252
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_2b
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_6c
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_6c .. :try_end_6c} :catch_0

    .line 253
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_6d
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->getProperty(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_36

    .line 254
    if-eqz v1, :cond_3b

    :try_start_6e
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_6e
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_6e .. :try_end_6e} :catch_0

    .line 255
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_3b
    goto/16 :goto_2d

    .line 252
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_36
    move-exception v2

    if-eqz v1, :cond_3c

    :try_start_6f
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_37

    goto :goto_1c

    :catchall_37
    move-exception v4

    :try_start_70
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_3c
    :goto_1c
    throw v2

    .line 247
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_2c
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_70
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_70 .. :try_end_70} :catch_0

    .line 248
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_71
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->deleteProperty(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_38

    .line 249
    if-eqz v1, :cond_3d

    :try_start_72
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_72
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_72 .. :try_end_72} :catch_0

    .line 250
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_3d
    goto/16 :goto_2d

    .line 247
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_38
    move-exception v2

    if-eqz v1, :cond_3e

    :try_start_73
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_39

    goto :goto_1d

    :catchall_39
    move-exception v4

    :try_start_74
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_3e
    :goto_1d
    throw v2

    .line 242
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_2d
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_74
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_74 .. :try_end_74} :catch_0

    .line 243
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_75
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->changeProperty(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_3a

    .line 244
    if-eqz v1, :cond_3f

    :try_start_76
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_76
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_76 .. :try_end_76} :catch_0

    .line 245
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_3f
    goto/16 :goto_2d

    .line 242
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_3a
    move-exception v2

    if-eqz v1, :cond_40

    :try_start_77
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_3b

    goto :goto_1e

    :catchall_3b
    move-exception v4

    :try_start_78
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_40
    :goto_1e
    throw v2

    .line 237
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_2e
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_78
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_78 .. :try_end_78} :catch_0

    .line 238
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_79
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/AtomRequests;->getAtomName(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_3c

    .line 239
    if-eqz v1, :cond_41

    :try_start_7a
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_7a
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_7a .. :try_end_7a} :catch_0

    .line 240
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_41
    goto/16 :goto_2d

    .line 237
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_3c
    move-exception v2

    if-eqz v1, :cond_42

    :try_start_7b
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_3d

    goto :goto_1f

    :catchall_3d
    move-exception v4

    :try_start_7c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_42
    :goto_1f
    throw v2

    .line 233
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_2f
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/AtomRequests;->internAtom(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 234
    goto/16 :goto_2d

    .line 228
    :sswitch_30
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_7c
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_7c .. :try_end_7c} :catch_0

    .line 229
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_7d
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->queryTree(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_3e

    .line 230
    if-eqz v1, :cond_43

    :try_start_7e
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_7e
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_7e .. :try_end_7e} :catch_0

    .line 231
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_43
    goto/16 :goto_2d

    .line 228
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_3e
    move-exception v2

    if-eqz v1, :cond_44

    :try_start_7f
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_3f

    goto :goto_20

    :catchall_3f
    move-exception v4

    :try_start_80
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_44
    :goto_20
    throw v2

    .line 223
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_31
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_80
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_80 .. :try_end_80} :catch_0

    .line 224
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_81
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->getGeometry(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_40

    .line 225
    if-eqz v1, :cond_45

    :try_start_82
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_82
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_82 .. :try_end_82} :catch_0

    .line 226
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_45
    goto/16 :goto_2d

    .line 223
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_40
    move-exception v2

    if-eqz v1, :cond_46

    :try_start_83
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_41

    goto :goto_21

    :catchall_41
    move-exception v4

    :try_start_84
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_46
    :goto_21
    throw v2

    .line 218
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_32
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_84
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_84 .. :try_end_84} :catch_0

    .line 219
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_85
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->configureWindow(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_42

    .line 220
    if-eqz v1, :cond_47

    :try_start_86
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_86
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_86 .. :try_end_86} :catch_0

    .line 221
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_47
    goto/16 :goto_2d

    .line 218
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_42
    move-exception v2

    if-eqz v1, :cond_48

    :try_start_87
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_43

    goto :goto_22

    :catchall_43
    move-exception v4

    :try_start_88
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_48
    :goto_22
    throw v2

    .line 213
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_33
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_88
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_88 .. :try_end_88} :catch_0

    .line 214
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_89
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->unmapWindow(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_44

    .line 215
    if-eqz v1, :cond_49

    :try_start_8a
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_8a
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_8a .. :try_end_8a} :catch_0

    .line 216
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_49
    goto/16 :goto_2d

    .line 213
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_44
    move-exception v2

    if-eqz v1, :cond_4a

    :try_start_8b
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_45

    goto :goto_23

    :catchall_45
    move-exception v4

    :try_start_8c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_4a
    :goto_23
    throw v2

    .line 208
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_34
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_8c
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_8c .. :try_end_8c} :catch_0

    .line 209
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_8d
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->mapSubWindows(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_46

    .line 210
    if-eqz v1, :cond_4b

    :try_start_8e
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_8e
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_8e .. :try_end_8e} :catch_0

    .line 211
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_4b
    goto/16 :goto_2d

    .line 208
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_46
    move-exception v2

    if-eqz v1, :cond_4c

    :try_start_8f
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_47

    goto :goto_24

    :catchall_47
    move-exception v4

    :try_start_90
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_4c
    :goto_24
    throw v2

    .line 203
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_35
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_90
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_90 .. :try_end_90} :catch_0

    .line 204
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_91
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->mapWindow(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_48

    .line 205
    if-eqz v1, :cond_4d

    :try_start_92
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_92
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_92 .. :try_end_92} :catch_0

    .line 206
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_4d
    goto/16 :goto_2d

    .line 203
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_48
    move-exception v2

    if-eqz v1, :cond_4e

    :try_start_93
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_49

    goto :goto_25

    :catchall_49
    move-exception v4

    :try_start_94
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_4e
    :goto_25
    throw v2

    .line 194
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_36
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v6, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v7

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_94
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_94 .. :try_end_94} :catch_0

    .line 195
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_95
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->destroySubWindows(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_4c

    .line 196
    if-eqz v1, :cond_4f

    :try_start_96
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 198
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_4f
    :sswitch_37
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_96
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_96 .. :try_end_96} :catch_0

    .line 199
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_97
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->reparentWindow(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_4a

    .line 200
    if-eqz v1, :cond_50

    :try_start_98
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_98
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_98 .. :try_end_98} :catch_0

    .line 201
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_50
    goto/16 :goto_2d

    .line 198
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_4a
    move-exception v2

    if-eqz v1, :cond_51

    :try_start_99
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_4b

    goto :goto_26

    :catchall_4b
    move-exception v4

    :try_start_9a
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_51
    :goto_26
    throw v2
    :try_end_9a
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_9a .. :try_end_9a} :catch_0

    .line 459
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :catch_0
    move-exception v1

    goto/16 :goto_2e

    .line 194
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_4c
    move-exception v2

    if-eqz v1, :cond_52

    :try_start_9b
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_4d

    goto :goto_27

    :catchall_4d
    move-exception v4

    :try_start_9c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_52
    :goto_27
    throw v2

    .line 189
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_38
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v6, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v7

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_9c
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_9c .. :try_end_9c} :catch_0

    .line 190
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_9d
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->destroyWindow(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_4e

    .line 191
    if-eqz v1, :cond_53

    :try_start_9e
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_9e
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_9e .. :try_end_9e} :catch_0

    .line 192
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_53
    goto/16 :goto_2d

    .line 189
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_4e
    move-exception v2

    if-eqz v1, :cond_54

    :try_start_9f
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_4f

    goto :goto_28

    :catchall_4f
    move-exception v4

    :try_start_a0
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_54
    :goto_28
    throw v2

    .line 184
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_39
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_a0
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_a0 .. :try_end_a0} :catch_0

    .line 185
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_a1
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->getWindowAttributes(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_50

    .line 186
    if-eqz v1, :cond_55

    :try_start_a2
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_a2
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_a2 .. :try_end_a2} :catch_0

    .line 187
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_55
    goto/16 :goto_2d

    .line 184
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_50
    move-exception v2

    if-eqz v1, :cond_56

    :try_start_a3
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_51

    goto :goto_29

    :catchall_51
    move-exception v4

    :try_start_a4
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_56
    :goto_29
    throw v2

    .line 179
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_3a
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v7, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->CURSOR_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v4, v8

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_a4
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_a4 .. :try_end_a4} :catch_0

    .line 180
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_a5
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->changeWindowAttributes(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_a5
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_52

    .line 181
    if-eqz v1, :cond_57

    :try_start_a6
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_a6
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_a6 .. :try_end_a6} :catch_0

    .line 182
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_57
    goto :goto_2d

    .line 179
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_52
    move-exception v2

    if-eqz v1, :cond_58

    :try_start_a7
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_a7
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_53

    goto :goto_2a

    :catchall_53
    move-exception v4

    :try_start_a8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_58
    :goto_2a
    throw v2

    .line 174
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :sswitch_3b
    iget-object v4, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v2, v2, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v9, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v9, v2, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v2, v8

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v2, v7

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->CURSOR_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v1, v2, v6

    invoke-virtual {v4, v2}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1
    :try_end_a8
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_a8 .. :try_end_a8} :catch_0

    .line 175
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_a9
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->createWindow(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_a9
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_54

    .line 176
    if-eqz v1, :cond_59

    :try_start_aa
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_aa
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_aa .. :try_end_aa} :catch_0

    .line 177
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_59
    goto :goto_2d

    .line 174
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_54
    move-exception v2

    if-eqz v1, :cond_5a

    :try_start_ab
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_ab
    .catchall {:try_start_ab .. :try_end_ab} :catchall_55

    goto :goto_2b

    :catchall_55
    move-exception v4

    :try_start_ac
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "opcode":B
    .end local v3    # "requestData":B
    .end local v5    # "requestLength":I
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_5a
    :goto_2b
    throw v2

    .line 452
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "opcode":B
    .restart local v3    # "requestData":B
    .restart local v5    # "requestLength":I
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :goto_2c
    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->extensions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/extensions/Extension;

    .line 453
    .local v1, "extension":Lcom/winlator/cmod/xserver/extensions/Extension;
    if-eqz v1, :cond_5b

    invoke-interface {v1, p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/Extension;->handleRequest(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 454
    .end local v1    # "extension":Lcom/winlator/cmod/xserver/extensions/Extension;
    :cond_5b
    goto :goto_2d

    .line 455
    :cond_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported opcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Lcom/winlator/cmod/xserver/errors/XRequestError; {:try_start_ac .. :try_end_ac} :catch_0

    .line 462
    :goto_2d
    goto :goto_2f

    .line 460
    .local v1, "e":Lcom/winlator/cmod/xserver/errors/XRequestError;
    :goto_2e
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->skipRequest()V

    .line 461
    invoke-virtual {v1, p1, v0}, Lcom/winlator/cmod/xserver/errors/XRequestError;->sendError(Lcom/winlator/cmod/xserver/XClient;B)V

    .line 464
    .end local v1    # "e":Lcom/winlator/cmod/xserver/errors/XRequestError;
    :goto_2f
    return v8

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3b
        0x2 -> :sswitch_3a
        0x3 -> :sswitch_39
        0x4 -> :sswitch_38
        0x5 -> :sswitch_36
        0x7 -> :sswitch_37
        0x8 -> :sswitch_35
        0x9 -> :sswitch_34
        0xa -> :sswitch_33
        0xc -> :sswitch_32
        0xe -> :sswitch_31
        0xf -> :sswitch_30
        0x10 -> :sswitch_2f
        0x11 -> :sswitch_2e
        0x12 -> :sswitch_2d
        0x13 -> :sswitch_2c
        0x14 -> :sswitch_2b
        0x16 -> :sswitch_2a
        0x17 -> :sswitch_29
        0x19 -> :sswitch_28
        0x1a -> :sswitch_27
        0x1b -> :sswitch_26
        0x24 -> :sswitch_25
        0x25 -> :sswitch_24
        0x26 -> :sswitch_23
        0x28 -> :sswitch_22
        0x29 -> :sswitch_21
        0x2a -> :sswitch_20
        0x2b -> :sswitch_1f
        0x2c -> :sswitch_1e
        0x2d -> :sswitch_1d
        0x31 -> :sswitch_1c
        0x35 -> :sswitch_1b
        0x36 -> :sswitch_1a
        0x37 -> :sswitch_19
        0x38 -> :sswitch_18
        0x3a -> :sswitch_17
        0x3b -> :sswitch_16
        0x3c -> :sswitch_15
        0x3e -> :sswitch_14
        0x41 -> :sswitch_13
        0x42 -> :sswitch_12
        0x43 -> :sswitch_11
        0x46 -> :sswitch_10
        0x48 -> :sswitch_f
        0x49 -> :sswitch_e
        0x4e -> :sswitch_d
        0x4f -> :sswitch_c
        0x5d -> :sswitch_b
        0x5e -> :sswitch_a
        0x5f -> :sswitch_9
        0x62 -> :sswitch_8
        0x65 -> :sswitch_7
        0x68 -> :sswitch_6
        0x6b -> :sswitch_5
        0x6c -> :sswitch_4
        0x73 -> :sswitch_3
        0x75 -> :sswitch_2
        0x77 -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method private sendServerInformation(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 16
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "Elbrus Technologies, LLC"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-short v3, v3

    .line 46
    .local v3, "vendorNameLength":S
    iget-object v4, v1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/PixmapManager;->supportedPixmapFormats:[Lcom/winlator/cmod/xserver/PixmapFormat;

    array-length v4, v4

    int-to-byte v4, v4

    .line 47
    .local v4, "pixmapFormatCount":B
    mul-int/lit8 v5, v4, 0x2

    const/16 v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v7, v3, 0x3

    const/4 v8, 0x4

    div-int/2addr v7, v8

    add-int/2addr v5, v7

    iget-object v7, v1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    iget-object v7, v7, Lcom/winlator/cmod/xserver/PixmapManager;->supportedVisuals:[Lcom/winlator/cmod/xserver/Visual;

    array-length v7, v7

    mul-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x28

    add-int/lit8 v7, v7, 0x18

    add-int/lit8 v7, v7, 0x3

    div-int/2addr v7, v8

    add-int/2addr v5, v7

    int-to-short v5, v5

    .line 49
    .local v5, "additionalDataLength":S
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v7

    .line 50
    .local v7, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v2, v9}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 51
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 52
    const/16 v11, 0xb

    invoke-virtual {v2, v11}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 53
    invoke-virtual {v2, v10}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 54
    invoke-virtual {v2, v5}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 55
    invoke-virtual {v2, v9}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 56
    iget-object v11, v1, Lcom/winlator/cmod/xserver/XClient;->resourceIDBase:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 57
    iget-object v11, v1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v11, v11, Lcom/winlator/cmod/xserver/XServer;->resourceIDs:Lcom/winlator/cmod/xserver/ResourceIDs;

    iget v11, v11, Lcom/winlator/cmod/xserver/ResourceIDs;->idMask:I

    invoke-virtual {v2, v11}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 58
    const/16 v11, 0x100

    invoke-virtual {v2, v11}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 59
    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 60
    const/4 v12, -0x1

    invoke-virtual {v2, v12}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 61
    invoke-virtual {v2, v9}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 62
    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 63
    invoke-virtual {v2, v10}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 64
    invoke-virtual {v2, v10}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 65
    const/16 v13, 0x20

    invoke-virtual {v2, v13}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 66
    invoke-virtual {v2, v13}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 67
    invoke-virtual {v2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 68
    invoke-virtual {v2, v12}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 69
    invoke-virtual {v2, v10}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 70
    invoke-virtual {v2, v0}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeString8(Ljava/lang/String;)V

    .line 72
    iget-object v0, v1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/PixmapManager;->supportedPixmapFormats:[Lcom/winlator/cmod/xserver/PixmapFormat;

    array-length v6, v0

    move v12, v10

    :goto_0
    if-ge v12, v6, :cond_0

    aget-object v13, v0, v12

    .line 73
    .local v13, "pixmapFormat":Lcom/winlator/cmod/xserver/PixmapFormat;
    iget-byte v14, v13, Lcom/winlator/cmod/xserver/PixmapFormat;->depth:B

    invoke-virtual {v2, v14}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 74
    iget-byte v14, v13, Lcom/winlator/cmod/xserver/PixmapFormat;->bitsPerPixel:B

    invoke-virtual {v2, v14}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 75
    iget-byte v14, v13, Lcom/winlator/cmod/xserver/PixmapFormat;->scanlinePad:B

    invoke-virtual {v2, v14}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 76
    const/4 v14, 0x5

    invoke-virtual {v2, v14}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V

    .line 72
    .end local v13    # "pixmapFormat":Lcom/winlator/cmod/xserver/PixmapFormat;
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, v1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Window;->getContent()Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v0

    iget-object v0, v0, Lcom/winlator/cmod/xserver/Drawable;->visual:Lcom/winlator/cmod/xserver/Visual;

    .line 81
    .local v0, "rootVisual":Lcom/winlator/cmod/xserver/Visual;
    iget-object v6, v1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    iget v6, v6, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {v2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 82
    invoke-virtual {v2, v10}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 83
    const v6, 0xffffff

    invoke-virtual {v2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 84
    invoke-virtual {v2, v10}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 85
    iget-object v6, v1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v6}, Lcom/winlator/cmod/xserver/Window;->getAllEventMasks()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v6

    invoke-virtual {v6}, Lcom/winlator/cmod/xserver/Bitmask;->getBits()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 86
    iget-object v6, v1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v6, v6, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    invoke-virtual {v2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 87
    iget-object v6, v1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v6, v6, Lcom/winlator/cmod/xserver/ScreenInfo;->height:S

    invoke-virtual {v2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 88
    iget-object v6, v1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    invoke-virtual {v6}, Lcom/winlator/cmod/xserver/ScreenInfo;->getWidthInMillimeters()S

    move-result v6

    invoke-virtual {v2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 89
    iget-object v6, v1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    invoke-virtual {v6}, Lcom/winlator/cmod/xserver/ScreenInfo;->getHeightInMillimeters()S

    move-result v6

    invoke-virtual {v2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 90
    invoke-virtual {v2, v9}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 91
    invoke-virtual {v2, v9}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 92
    iget v6, v0, Lcom/winlator/cmod/xserver/Visual;->id:I

    invoke-virtual {v2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 93
    invoke-virtual {v2, v10}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 94
    invoke-virtual {v2, v10}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 95
    iget-byte v6, v0, Lcom/winlator/cmod/xserver/Visual;->depth:B

    invoke-virtual {v2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 96
    iget-object v6, v1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/PixmapManager;->supportedVisuals:[Lcom/winlator/cmod/xserver/Visual;

    array-length v6, v6

    int-to-byte v6, v6

    invoke-virtual {v2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 98
    iget-object v6, v1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/PixmapManager;->supportedVisuals:[Lcom/winlator/cmod/xserver/Visual;

    array-length v12, v6

    move v13, v10

    :goto_1
    if-ge v13, v12, :cond_3

    aget-object v14, v6, v13

    .line 99
    .local v14, "visual":Lcom/winlator/cmod/xserver/Visual;
    iget-byte v15, v14, Lcom/winlator/cmod/xserver/Visual;->depth:B

    invoke-virtual {v2, v15}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 100
    invoke-virtual {v2, v10}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 101
    iget-boolean v15, v14, Lcom/winlator/cmod/xserver/Visual;->displayable:Z

    if-eqz v15, :cond_1

    move v15, v9

    goto :goto_2

    :cond_1
    move v15, v10

    :goto_2
    int-to-short v15, v15

    invoke-virtual {v2, v15}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 102
    invoke-virtual {v2, v10}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 104
    iget-boolean v15, v14, Lcom/winlator/cmod/xserver/Visual;->displayable:Z

    if-eqz v15, :cond_2

    .line 105
    iget v15, v14, Lcom/winlator/cmod/xserver/Visual;->id:I

    invoke-virtual {v2, v15}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 106
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v8}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 107
    iget-byte v15, v14, Lcom/winlator/cmod/xserver/Visual;->bitsPerRGBValue:B

    invoke-virtual {v2, v15}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 108
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v11}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 109
    iget v15, v14, Lcom/winlator/cmod/xserver/Visual;->redMask:I

    invoke-virtual {v2, v15}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 110
    iget v15, v14, Lcom/winlator/cmod/xserver/Visual;->greenMask:I

    invoke-virtual {v2, v15}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 111
    iget v15, v14, Lcom/winlator/cmod/xserver/Visual;->blueMask:I

    invoke-virtual {v2, v15}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 112
    invoke-virtual {v2, v10}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v14    # "visual":Lcom/winlator/cmod/xserver/Visual;
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 115
    .end local v0    # "rootVisual":Lcom/winlator/cmod/xserver/Visual;
    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 116
    .end local v7    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_4
    return-void

    .line 49
    .restart local v7    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v0

    move-object v6, v0

    if-eqz v7, :cond_5

    :try_start_1
    invoke-interface {v7}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v6
.end method


# virtual methods
.method public handleRequest(Lcom/winlator/cmod/xconnector/Client;)Z
    .locals 4
    .param p1, "client"    # Lcom/winlator/cmod/xconnector/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/XClient;

    .line 35
    .local v0, "xClient":Lcom/winlator/cmod/xserver/XClient;
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->getInputStream()Lcom/winlator/cmod/xconnector/XInputStream;

    move-result-object v1

    .line 36
    .local v1, "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->getOutputStream()Lcom/winlator/cmod/xconnector/XOutputStream;

    move-result-object v2

    .line 38
    .local v2, "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XClient;->isAuthenticated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-direct {p0, v0, v1, v2}, Lcom/winlator/cmod/xserver/XClientRequestHandler;->handleNormalRequest(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)Z

    move-result v3

    return v3

    .line 41
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/winlator/cmod/xserver/XClientRequestHandler;->handleAuthRequest(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)Z

    move-result v3

    return v3
.end method
