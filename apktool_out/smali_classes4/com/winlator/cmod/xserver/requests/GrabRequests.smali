.class public abstract Lcom/winlator/cmod/xserver/requests/GrabRequests;
.super Ljava/lang/Object;
.source "GrabRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static grabPointer(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 9
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->skipRequest()V

    .line 22
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v0

    .line 23
    .local v0, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :try_start_0
    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 24
    sget-object v3, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->ALREADY_GRABBED:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 25
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 26
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 27
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 29
    .end local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 22
    .restart local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 32
    .end local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_2
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getRequestData()B

    move-result v0

    if-ne v0, v3, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 33
    .local v0, "ownerEvents":Z
    :goto_1
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v4

    .line 34
    .local v4, "windowId":I
    iget-object v5, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v5, v5, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v5, v4}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v5

    .line 35
    .local v5, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v5, :cond_8

    .line 37
    new-instance v6, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v7

    invoke-direct {v6, v7}, Lcom/winlator/cmod/xserver/Bitmask;-><init>(I)V

    .line 38
    .local v6, "eventMask":Lcom/winlator/cmod/xserver/Bitmask;
    const/16 v7, 0xe

    invoke-virtual {p1, v7}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 41
    iget-object v7, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v7}, Lcom/winlator/cmod/xserver/GrabManager;->getWindow()Lcom/winlator/cmod/xserver/Window;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v7}, Lcom/winlator/cmod/xserver/GrabManager;->getClient()Lcom/winlator/cmod/xserver/XClient;

    move-result-object v7

    if-eq v7, p0, :cond_4

    .line 42
    sget-object v7, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->ALREADY_GRABBED:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    .local v7, "status":Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;
    goto :goto_2

    .line 44
    .end local v7    # "status":Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;
    :cond_4
    invoke-virtual {v5}, Lcom/winlator/cmod/xserver/Window;->getMapState()Lcom/winlator/cmod/xserver/Window$MapState;

    move-result-object v7

    sget-object v8, Lcom/winlator/cmod/xserver/Window$MapState;->VIEWABLE:Lcom/winlator/cmod/xserver/Window$MapState;

    if-eq v7, v8, :cond_5

    .line 45
    sget-object v7, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->NOT_VIEWABLE:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    .restart local v7    # "status":Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;
    goto :goto_2

    .line 48
    .end local v7    # "status":Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;
    :cond_5
    sget-object v7, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->SUCCESS:Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;

    .line 49
    .restart local v7    # "status":Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;
    iget-object v8, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v8, v8, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v8, v5, v0, v6, p0}, Lcom/winlator/cmod/xserver/GrabManager;->activatePointerGrab(Lcom/winlator/cmod/xserver/Window;ZLcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xserver/XClient;)V

    .line 52
    :goto_2
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v8

    .line 53
    .local v8, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :try_start_2
    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 54
    invoke-virtual {v7}, Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 55
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 56
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 57
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 58
    if-eqz v8, :cond_6

    invoke-interface {v8}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 59
    .end local v8    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_6
    return-void

    .line 52
    .restart local v8    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_2
    move-exception v1

    if-eqz v8, :cond_7

    :try_start_3
    invoke-interface {v8}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v1

    .line 35
    .end local v6    # "eventMask":Lcom/winlator/cmod/xserver/Bitmask;
    .end local v7    # "status":Lcom/winlator/cmod/xserver/requests/GrabRequests$Status;
    .end local v8    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_8
    new-instance v1, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v1, v4}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v1
.end method

.method public static ungrabPointer(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 1
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;

    .line 62
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 63
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/GrabManager;->deactivatePointerGrab()V

    .line 64
    return-void
.end method
