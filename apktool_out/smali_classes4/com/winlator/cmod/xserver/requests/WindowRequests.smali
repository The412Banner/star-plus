.class public abstract Lcom/winlator/cmod/xserver/requests/WindowRequests;
.super Ljava/lang/Object;
.source "WindowRequests.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeProperty(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 17
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/winlator/cmod/xserver/Property$Mode;->values()[Lcom/winlator/cmod/xserver/Property$Mode;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/xserver/XClient;->getRequestData()B

    move-result v3

    aget-object v2, v2, v3

    .line 164
    .local v2, "mode":Lcom/winlator/cmod/xserver/Property$Mode;
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    .line 165
    .local v3, "windowId":I
    iget-object v4, v0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v4, v3}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v10

    .line 166
    .local v10, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v10, :cond_2

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v11

    .line 169
    .local v11, "atom":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v12

    .line 170
    .local v12, "type":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readByte()B

    move-result v13

    .line 171
    .local v13, "format":B
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v14

    .line 173
    .local v14, "length":I
    shr-int/lit8 v5, v13, 0x3

    mul-int v15, v14, v5

    .line 175
    .local v15, "totalSize":I
    const/4 v5, 0x0

    .line 176
    .local v5, "data":[B
    if-lez v15, :cond_0

    .line 177
    new-array v5, v15, [B

    .line 178
    invoke-virtual {v1, v5}, Lcom/winlator/cmod/xconnector/XInputStream;->read([B)V

    .line 179
    neg-int v6, v15

    and-int/2addr v4, v6

    invoke-virtual {v1, v4}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    move-object/from16 v16, v5

    goto :goto_0

    .line 176
    :cond_0
    move-object/from16 v16, v5

    .line 182
    .end local v5    # "data":[B
    .local v16, "data":[B
    :goto_0
    invoke-static {v13}, Lcom/winlator/cmod/xserver/Property$Format;->valueOf(I)Lcom/winlator/cmod/xserver/Property$Format;

    move-result-object v7

    move-object v4, v10

    move v5, v11

    move v6, v12

    move-object v8, v2

    move-object/from16 v9, v16

    invoke-virtual/range {v4 .. v9}, Lcom/winlator/cmod/xserver/Window;->modifyProperty(IILcom/winlator/cmod/xserver/Property$Format;Lcom/winlator/cmod/xserver/Property$Mode;[B)Lcom/winlator/cmod/xserver/Property;

    move-result-object v4

    .line 183
    .local v4, "property":Lcom/winlator/cmod/xserver/Property;
    if-eqz v4, :cond_1

    .line 185
    iget-object v5, v0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v5, v5, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v5, v10, v4}, Lcom/winlator/cmod/xserver/WindowManager;->triggerOnModifyWindowProperty(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Property;)V

    .line 186
    return-void

    .line 183
    :cond_1
    new-instance v5, Lcom/winlator/cmod/xserver/errors/BadMatch;

    invoke-direct {v5}, Lcom/winlator/cmod/xserver/errors/BadMatch;-><init>()V

    throw v5

    .line 166
    .end local v4    # "property":Lcom/winlator/cmod/xserver/Property;
    .end local v11    # "atom":I
    .end local v12    # "type":I
    .end local v13    # "format":B
    .end local v14    # "length":I
    .end local v15    # "totalSize":I
    .end local v16    # "data":[B
    :cond_2
    new-instance v4, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v4, v3}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v4
.end method

.method public static changeWindowAttributes(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 4
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 88
    .local v0, "windowId":I
    new-instance v1, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/winlator/cmod/xserver/Bitmask;-><init>(I)V

    .line 89
    .local v1, "valueMask":Lcom/winlator/cmod/xserver/Bitmask;
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v2, v0}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v2

    .line 90
    .local v2, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Bitmask;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    iget-object v3, v2, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v3, v1, p1, p0}, Lcom/winlator/cmod/xserver/WindowAttributes;->update(Lcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xserver/XClient;)V

    .line 94
    const/16 v3, 0x800

    invoke-virtual {v1, v3}, Lcom/winlator/cmod/xserver/Bitmask;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    const/high16 v3, 0x100000

    invoke-static {v3, v2, p0}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->isClientCanSelectFor(ILcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/XClient;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    const/high16 v3, 0x40000

    invoke-static {v3, v2, p0}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->isClientCanSelectFor(ILcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/XClient;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const/4 v3, 0x4

    invoke-static {v3, v2, p0}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->isClientCanSelectFor(ILcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/XClient;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    iget-object v3, v2, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/WindowAttributes;->getEventMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/winlator/cmod/xserver/XClient;->setEventListenerForWindow(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Bitmask;)V

    goto :goto_0

    .line 100
    :cond_0
    new-instance v3, Lcom/winlator/cmod/xserver/errors/BadAccess;

    invoke-direct {v3}, Lcom/winlator/cmod/xserver/errors/BadAccess;-><init>()V

    throw v3

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    new-instance v3, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v3, v0}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v3
.end method

.method public static configureWindow(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 4
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 377
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 378
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 379
    .local v1, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v1, :cond_1

    .line 380
    new-instance v2, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v3

    invoke-direct {v2, v3}, Lcom/winlator/cmod/xserver/Bitmask;-><init>(I)V

    .line 381
    .local v2, "valueMask":Lcom/winlator/cmod/xserver/Bitmask;
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 382
    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Bitmask;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/winlator/cmod/xserver/WindowManager;->configureWindow(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xconnector/XInputStream;)V

    .line 383
    :cond_0
    return-void

    .line 379
    .end local v2    # "valueMask":Lcom/winlator/cmod/xserver/Bitmask;
    :cond_1
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method public static createWindow(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 24
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 32
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/xserver/XClient;->getRequestData()B

    move-result v12

    .line 33
    .local v12, "depth":B
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v13

    .line 34
    .local v13, "windowId":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v14

    .line 36
    .local v14, "parentId":I
    invoke-virtual {v11, v13}, Lcom/winlator/cmod/xserver/XClient;->isValidResourceId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, v11, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v0, v14}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v15

    .line 39
    .local v15, "parent":Lcom/winlator/cmod/xserver/Window;
    if-eqz v15, :cond_1

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v16

    .line 42
    .local v16, "x":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v17

    .line 43
    .local v17, "y":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v18

    .line 44
    .local v18, "width":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v19

    .line 45
    .local v19, "height":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v10

    .line 46
    .local v10, "borderWidth":S
    invoke-static {}, Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;->values()[Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v1

    int-to-byte v1, v1

    aget-object v20, v0, v1

    .line 47
    .local v20, "windowClass":Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;
    iget-object v0, v11, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/PixmapManager;->getVisual(I)Lcom/winlator/cmod/xserver/Visual;

    move-result-object v21

    .line 48
    .local v21, "visual":Lcom/winlator/cmod/xserver/Visual;
    new-instance v0, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/xserver/Bitmask;-><init>(I)V

    move-object v9, v0

    .line 50
    .local v9, "valueMask":Lcom/winlator/cmod/xserver/Bitmask;
    iget-object v0, v11, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    move v1, v13

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v22, v9

    .end local v9    # "valueMask":Lcom/winlator/cmod/xserver/Bitmask;
    .local v22, "valueMask":Lcom/winlator/cmod/xserver/Bitmask;
    move v9, v12

    move/from16 v23, v12

    move v12, v10

    .end local v10    # "borderWidth":S
    .local v12, "borderWidth":S
    .local v23, "depth":B
    move-object/from16 v10, p0

    invoke-virtual/range {v0 .. v10}, Lcom/winlator/cmod/xserver/WindowManager;->createWindow(ILcom/winlator/cmod/xserver/Window;SSSSLcom/winlator/cmod/xserver/WindowAttributes$WindowClass;Lcom/winlator/cmod/xserver/Visual;BLcom/winlator/cmod/xserver/XClient;)Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    .line 51
    .local v0, "window":Lcom/winlator/cmod/xserver/Window;
    invoke-virtual {v0, v12}, Lcom/winlator/cmod/xserver/Window;->setBorderWidth(S)V

    .line 52
    invoke-virtual/range {v22 .. v22}, Lcom/winlator/cmod/xserver/Bitmask;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    .end local v22    # "valueMask":Lcom/winlator/cmod/xserver/Bitmask;
    .local v3, "valueMask":Lcom/winlator/cmod/xserver/Bitmask;
    invoke-virtual {v1, v3, v2, v11}, Lcom/winlator/cmod/xserver/WindowAttributes;->update(Lcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xserver/XClient;)V

    goto :goto_0

    .end local v3    # "valueMask":Lcom/winlator/cmod/xserver/Bitmask;
    .restart local v22    # "valueMask":Lcom/winlator/cmod/xserver/Bitmask;
    :cond_0
    move-object/from16 v2, p1

    move-object/from16 v3, v22

    .line 53
    .end local v22    # "valueMask":Lcom/winlator/cmod/xserver/Bitmask;
    .restart local v3    # "valueMask":Lcom/winlator/cmod/xserver/Bitmask;
    :goto_0
    iget-object v1, v0, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/WindowAttributes;->getEventMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/winlator/cmod/xserver/XClient;->setEventListenerForWindow(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Bitmask;)V

    .line 54
    invoke-virtual {v11, v0}, Lcom/winlator/cmod/xserver/XClient;->registerAsOwnerOfResource(Lcom/winlator/cmod/xserver/XResource;)V

    .line 55
    new-instance v1, Lcom/winlator/cmod/xserver/events/CreateNotify;

    invoke-direct {v1, v15, v0}, Lcom/winlator/cmod/xserver/events/CreateNotify;-><init>(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;)V

    const/high16 v4, 0x80000

    invoke-virtual {v15, v4, v1}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 56
    return-void

    .line 39
    .end local v0    # "window":Lcom/winlator/cmod/xserver/Window;
    .end local v3    # "valueMask":Lcom/winlator/cmod/xserver/Bitmask;
    .end local v16    # "x":S
    .end local v17    # "y":S
    .end local v18    # "width":S
    .end local v19    # "height":S
    .end local v20    # "windowClass":Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;
    .end local v21    # "visual":Lcom/winlator/cmod/xserver/Visual;
    .end local v23    # "depth":B
    .local v12, "depth":B
    :cond_1
    new-instance v0, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v0, v14}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v0

    .line 36
    .end local v15    # "parent":Lcom/winlator/cmod/xserver/Window;
    :cond_2
    new-instance v0, Lcom/winlator/cmod/xserver/errors/BadIdChoice;

    invoke-direct {v0, v13}, Lcom/winlator/cmod/xserver/errors/BadIdChoice;-><init>(I)V

    throw v0
.end method

.method public static deleteProperty(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 3
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 190
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 191
    .local v1, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/Window;->removeProperty(I)V

    .line 193
    return-void

    .line 191
    :cond_0
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method public static destroySubWindows(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 2
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;

    .line 114
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/WindowManager;->destroyWindow(I)V

    .line 115
    return-void
.end method

.method public static destroyWindow(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 2
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;

    .line 110
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/WindowManager;->destroyWindow(I)V

    .line 111
    return-void
.end method

.method public static getGeometry(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
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

    .line 386
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 387
    .local v0, "drawableId":I
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xserver/DrawableManager;->getDrawable(I)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v1

    .line 388
    .local v1, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    if-eqz v1, :cond_5

    .line 389
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v2, v0}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v2

    .line 390
    .local v2, "window":Lcom/winlator/cmod/xserver/Window;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Window;->getX()S

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    .line 391
    .local v4, "x":S
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Window;->getY()S

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v3

    .line 392
    .local v5, "y":S
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Window;->getBorderWidth()S

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v3

    .line 394
    .local v6, "borderWidth":S
    :goto_2
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v7

    .line 395
    .local v7, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p2, v8}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 396
    iget-object v8, v1, Lcom/winlator/cmod/xserver/Drawable;->visual:Lcom/winlator/cmod/xserver/Visual;

    iget-byte v8, v8, Lcom/winlator/cmod/xserver/Visual;->depth:B

    invoke-virtual {p2, v8}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 397
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v8

    invoke-virtual {p2, v8}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 398
    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 399
    iget-object v3, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    iget v3, v3, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 400
    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 401
    invoke-virtual {p2, v5}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 402
    iget-short v3, v1, Lcom/winlator/cmod/xserver/Drawable;->width:S

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 403
    iget-short v3, v1, Lcom/winlator/cmod/xserver/Drawable;->height:S

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 404
    invoke-virtual {p2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 405
    const/16 v3, 0xa

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    if-eqz v7, :cond_3

    invoke-interface {v7}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 407
    .end local v7    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_3
    return-void

    .line 394
    .restart local v7    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v3

    if-eqz v7, :cond_4

    :try_start_1
    invoke-interface {v7}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v8

    invoke-virtual {v3, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v3

    .line 388
    .end local v2    # "window":Lcom/winlator/cmod/xserver/Window;
    .end local v4    # "x":S
    .end local v5    # "y":S
    .end local v6    # "borderWidth":S
    .end local v7    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_5
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadDrawable;

    invoke-direct {v2, v0}, Lcom/winlator/cmod/xserver/errors/BadDrawable;-><init>(I)V

    throw v2
.end method

.method public static getInputFocus(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 4
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/WindowManager;->getFocusedWindow()Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    .line 366
    .local v0, "focusedWindow":Lcom/winlator/cmod/xserver/Window;
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v1

    .line 367
    .local v1, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 368
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/WindowManager;->getFocusRevertTo()Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 369
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v2

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 370
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 371
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/winlator/cmod/xserver/Window;->id:I

    :cond_0
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 372
    const/16 v2, 0x14

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 374
    .end local v1    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_1
    return-void

    .line 366
    .restart local v1    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
.end method

.method public static getProperty(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 17
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 196
    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/xserver/XClient;->getRequestData()B

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v4, v0

    .line 197
    .local v4, "delete":Z
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v5

    .line 198
    .local v5, "sequenceNumber":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v6

    .line 199
    .local v6, "windowId":I
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v0, v6}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v8

    .line 200
    .local v8, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v8, :cond_8

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v9

    .line 203
    .local v9, "atom":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v10

    .line 204
    .local v10, "type":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v11

    .line 205
    .local v11, "longOffset":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v12

    .line 206
    .local v12, "longLength":I
    invoke-virtual {v8, v9}, Lcom/winlator/cmod/xserver/Window;->getProperty(I)Lcom/winlator/cmod/xserver/Property;

    move-result-object v13

    .line 208
    .local v13, "property":Lcom/winlator/cmod/xserver/Property;
    const/4 v14, 0x0

    .line 209
    .local v14, "bytesAfter":I
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v15

    .line 210
    .local v15, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/16 v0, 0xc

    if-nez v13, :cond_1

    .line 211
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 212
    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 213
    invoke-virtual {v1, v5}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 214
    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 215
    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 216
    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 217
    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 218
    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V

    goto/16 :goto_1

    .line 220
    :cond_1
    iget v0, v13, Lcom/winlator/cmod/xserver/Property;->type:I

    if-eq v0, v10, :cond_2

    if-eqz v10, :cond_2

    .line 221
    invoke-virtual {v1, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 222
    iget-object v0, v13, Lcom/winlator/cmod/xserver/Property;->format:Lcom/winlator/cmod/xserver/Property$Format;

    iget-byte v0, v0, Lcom/winlator/cmod/xserver/Property$Format;->value:B

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 223
    invoke-virtual {v1, v5}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 224
    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 225
    iget v0, v13, Lcom/winlator/cmod/xserver/Property;->type:I

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 226
    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 227
    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 228
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V

    goto :goto_1

    .line 231
    :cond_2
    iget-object v0, v13, Lcom/winlator/cmod/xserver/Property;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 232
    .local v0, "data":[B
    mul-int/lit8 v2, v11, 0x4

    .line 233
    .local v2, "offset":I
    array-length v3, v0

    sub-int/2addr v3, v2

    mul-int/lit8 v7, v12, 0x4

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 234
    .local v3, "length":I
    if-ltz v3, :cond_6

    .line 235
    array-length v7, v0

    add-int v16, v2, v3

    sub-int v14, v7, v16

    .line 237
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 238
    iget-object v7, v13, Lcom/winlator/cmod/xserver/Property;->format:Lcom/winlator/cmod/xserver/Property$Format;

    iget-byte v7, v7, Lcom/winlator/cmod/xserver/Property$Format;->value:B

    invoke-virtual {v1, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 239
    invoke-virtual {v1, v5}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 240
    add-int/lit8 v7, v3, 0x3

    div-int/lit8 v7, v7, 0x4

    invoke-virtual {v1, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 241
    iget v7, v13, Lcom/winlator/cmod/xserver/Property;->type:I

    invoke-virtual {v1, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 242
    invoke-virtual {v1, v14}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 243
    iget-object v7, v13, Lcom/winlator/cmod/xserver/Property;->format:Lcom/winlator/cmod/xserver/Property$Format;

    iget-byte v7, v7, Lcom/winlator/cmod/xserver/Property$Format;->value:B

    div-int/lit8 v7, v7, 0x8

    div-int v7, v3, v7

    invoke-virtual {v1, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 244
    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V

    .line 245
    invoke-virtual {v1, v0, v2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->write([BII)V

    .line 246
    neg-int v7, v3

    and-int/lit8 v7, v7, 0x3

    if-lez v7, :cond_3

    neg-int v7, v3

    and-int/lit8 v7, v7, 0x3

    invoke-virtual {v1, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v0    # "data":[B
    .end local v2    # "offset":I
    .end local v3    # "length":I
    :cond_3
    :goto_1
    if-eqz v15, :cond_4

    invoke-interface {v15}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 250
    .end local v15    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v13, :cond_5

    if-nez v14, :cond_5

    .line 251
    invoke-virtual {v8, v9}, Lcom/winlator/cmod/xserver/Window;->removeProperty(I)V

    .line 253
    :cond_5
    return-void

    .line 234
    .restart local v0    # "data":[B
    .restart local v2    # "offset":I
    .restart local v3    # "length":I
    .restart local v15    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_6
    :try_start_1
    new-instance v7, Lcom/winlator/cmod/xserver/errors/BadValue;

    invoke-direct {v7, v11}, Lcom/winlator/cmod/xserver/errors/BadValue;-><init>(I)V

    .end local v4    # "delete":Z
    .end local v5    # "sequenceNumber":S
    .end local v6    # "windowId":I
    .end local v8    # "window":Lcom/winlator/cmod/xserver/Window;
    .end local v9    # "atom":I
    .end local v10    # "type":I
    .end local v11    # "longOffset":I
    .end local v12    # "longLength":I
    .end local v13    # "property":Lcom/winlator/cmod/xserver/Property;
    .end local v14    # "bytesAfter":I
    .end local v15    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    .end local p0    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p1    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p2    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    .end local v0    # "data":[B
    .end local v2    # "offset":I
    .end local v3    # "length":I
    .restart local v4    # "delete":Z
    .restart local v5    # "sequenceNumber":S
    .restart local v6    # "windowId":I
    .restart local v8    # "window":Lcom/winlator/cmod/xserver/Window;
    .restart local v9    # "atom":I
    .restart local v10    # "type":I
    .restart local v11    # "longOffset":I
    .restart local v12    # "longLength":I
    .restart local v13    # "property":Lcom/winlator/cmod/xserver/Property;
    .restart local v14    # "bytesAfter":I
    .restart local v15    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    .restart local p0    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p1    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p2    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v15, :cond_7

    :try_start_2
    invoke-interface {v15}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v2

    .line 200
    .end local v9    # "atom":I
    .end local v10    # "type":I
    .end local v11    # "longOffset":I
    .end local v12    # "longLength":I
    .end local v13    # "property":Lcom/winlator/cmod/xserver/Property;
    .end local v14    # "bytesAfter":I
    .end local v15    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_8
    new-instance v0, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v0, v6}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v0
.end method

.method public static getScreenSaver(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 4
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 454
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v0

    .line 455
    .local v0, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 456
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 457
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 458
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 459
    const/16 v2, 0x258

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 460
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 461
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 462
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 463
    const/16 v1, 0x12

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 465
    .end local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 454
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
.end method

.method public static getWindowAttributes(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 6
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 60
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 61
    .local v1, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v1, :cond_5

    .line 63
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v2

    .line 64
    .local v2, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 65
    iget-object v4, v1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/WindowAttributes;->getBackingStore()Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/WindowAttributes$BackingStore;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 66
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v4

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 67
    const/4 v4, 0x3

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 68
    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Window;->isInputOutput()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Window;->getContent()Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v4

    iget-object v4, v4, Lcom/winlator/cmod/xserver/Drawable;->visual:Lcom/winlator/cmod/xserver/Visual;

    iget v4, v4, Lcom/winlator/cmod/xserver/Visual;->id:I

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 69
    iget-object v4, v1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/WindowAttributes;->getWindowClass()Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;

    move-result-object v4

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/WindowAttributes$WindowClass;->ordinal()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 70
    iget-object v4, v1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/WindowAttributes;->getBitGravity()Lcom/winlator/cmod/xserver/WindowAttributes$BitGravity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/WindowAttributes$BitGravity;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 71
    iget-object v4, v1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/WindowAttributes;->getWinGravity()Lcom/winlator/cmod/xserver/WindowAttributes$WinGravity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/WindowAttributes$WinGravity;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 72
    iget-object v4, v1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/WindowAttributes;->getBackingPlanes()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 73
    iget-object v4, v1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/WindowAttributes;->getBackingPixel()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 74
    iget-object v4, v1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/WindowAttributes;->isSaveUnder()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 75
    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 76
    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Window;->getMapState()Lcom/winlator/cmod/xserver/Window$MapState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/Window$MapState;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 77
    iget-object v4, v1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/WindowAttributes;->isOverrideRedirect()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    int-to-byte v3, v3

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 78
    invoke-virtual {p2, v5}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 79
    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Window;->getAllEventMasks()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/Bitmask;->getBits()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/xserver/XClient;->getEventMaskForWindow(Lcom/winlator/cmod/xserver/Window;)Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/Bitmask;->getBits()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 81
    iget-object v3, v1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/WindowAttributes;->getDoNotPropagateMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/Bitmask;->getBits()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 82
    invoke-virtual {p2, v5}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 84
    .end local v2    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_3
    return-void

    .line 63
    .restart local v2    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    :try_start_1
    invoke-interface {v2}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v3

    .line 61
    .end local v2    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_5
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method private static isClientCanSelectFor(ILcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/XClient;)Z
    .locals 1
    .param p0, "eventId"    # I
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "client"    # Lcom/winlator/cmod/xserver/XClient;

    .line 106
    iget-object v0, p1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/WindowAttributes;->getEventMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/winlator/cmod/xserver/Bitmask;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lcom/winlator/cmod/xserver/Window;->hasEventListenerFor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p0, p1}, Lcom/winlator/cmod/xserver/XClient;->isInterestedIn(ILcom/winlator/cmod/xserver/Window;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static mapSubWindows(Lcom/winlator/cmod/xserver/XClient;I)V
    .locals 4
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    .line 149
    .local v0, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Window;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/xserver/Window;

    .line 151
    .local v2, "child":Lcom/winlator/cmod/xserver/Window;
    iget v3, v2, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-static {p0, v3}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->mapSubWindows(Lcom/winlator/cmod/xserver/XClient;I)V

    .end local v2    # "child":Lcom/winlator/cmod/xserver/Window;
    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xserver/WindowManager;->mapWindow(Lcom/winlator/cmod/xserver/Window;)V

    .line 153
    return-void

    .line 149
    :cond_1
    new-instance v1, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v1, p1}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v1
.end method

.method public static mapSubWindows(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 5
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 139
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 140
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 141
    .local v1, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Window;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/xserver/Window;

    .line 143
    .local v3, "child":Lcom/winlator/cmod/xserver/Window;
    iget v4, v3, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-static {p0, v4}, Lcom/winlator/cmod/xserver/requests/WindowRequests;->mapSubWindows(Lcom/winlator/cmod/xserver/XClient;I)V

    .end local v3    # "child":Lcom/winlator/cmod/xserver/Window;
    goto :goto_0

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v2, v1}, Lcom/winlator/cmod/xserver/WindowManager;->mapWindow(Lcom/winlator/cmod/xserver/Window;)V

    .line 145
    return-void

    .line 141
    :cond_1
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method public static mapWindow(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 3
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 133
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 134
    .local v1, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v1, :cond_0

    .line 135
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v2, v1}, Lcom/winlator/cmod/xserver/WindowManager;->mapWindow(Lcom/winlator/cmod/xserver/Window;)V

    .line 136
    return-void

    .line 134
    :cond_0
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method public static queryPointer(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 10
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 256
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 257
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 258
    .local v1, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v1, :cond_4

    .line 259
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Pointer;->getClampedX()S

    move-result v2

    .line 260
    .local v2, "rootX":S
    iget-object v3, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/Pointer;->getClampedY()S

    move-result v3

    .line 261
    .local v3, "rootY":S
    invoke-virtual {v1, v2, v3}, Lcom/winlator/cmod/xserver/Window;->getChildByCoords(SS)Lcom/winlator/cmod/xserver/Window;

    move-result-object v4

    .line 262
    .local v4, "child":Lcom/winlator/cmod/xserver/Window;
    invoke-virtual {v1, v2, v3}, Lcom/winlator/cmod/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v5

    .line 264
    .local v5, "localPoint":[S
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v6

    .line 265
    .local v6, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p2, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 266
    iget-object v8, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v8}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    int-to-byte v8, v8

    invoke-virtual {p2, v8}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 267
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v8

    invoke-virtual {p2, v8}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 268
    invoke-virtual {p2, v9}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 269
    iget-object v8, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v8, v8, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v8, v8, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    iget v8, v8, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {p2, v8}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 270
    if-eqz v4, :cond_1

    iget v8, v4, Lcom/winlator/cmod/xserver/Window;->id:I

    goto :goto_1

    :cond_1
    move v8, v9

    :goto_1
    invoke-virtual {p2, v8}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 271
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 272
    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 273
    aget-short v8, v5, v9

    invoke-virtual {p2, v8}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 274
    aget-short v7, v5, v7

    invoke-virtual {p2, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 275
    iget-object v7, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/cmod/xserver/XServer;->inputDeviceManager:Lcom/winlator/cmod/xserver/InputDeviceManager;

    invoke-virtual {v7}, Lcom/winlator/cmod/xserver/InputDeviceManager;->getKeyButMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v7

    invoke-virtual {v7}, Lcom/winlator/cmod/xserver/Bitmask;->getBits()I

    move-result v7

    int-to-short v7, v7

    invoke-virtual {p2, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 276
    const/4 v7, 0x6

    invoke-virtual {p2, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 278
    .end local v6    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_2
    return-void

    .line 264
    .restart local v6    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v6}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v8

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v7

    .line 258
    .end local v2    # "rootX":S
    .end local v3    # "rootY":S
    .end local v4    # "child":Lcom/winlator/cmod/xserver/Window;
    .end local v5    # "localPoint":[S
    .end local v6    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_4
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method public static queryTree(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 8
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 410
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 411
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 412
    .local v1, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v1, :cond_4

    .line 413
    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Window;->getParent()Lcom/winlator/cmod/xserver/Window;

    move-result-object v2

    .line 414
    .local v2, "parent":Lcom/winlator/cmod/xserver/Window;
    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Window;->getChildren()Ljava/util/List;

    move-result-object v3

    .line 416
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/xserver/Window;>;"
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v4

    .line 417
    .local v4, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p2, v5}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 418
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 419
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 420
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 421
    iget-object v7, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v7, v7, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    iget v7, v7, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {p2, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 422
    if-eqz v2, :cond_0

    iget v6, v2, Lcom/winlator/cmod/xserver/Window;->id:I

    :cond_0
    invoke-virtual {p2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 423
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    int-to-short v6, v6

    invoke-virtual {p2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 424
    const/16 v6, 0xe

    invoke-virtual {p2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V

    .line 426
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/winlator/cmod/xserver/Window;

    iget v5, v5, Lcom/winlator/cmod/xserver/Window;->id:I

    invoke-virtual {p2, v5}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 427
    .end local v6    # "i":I
    :cond_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 428
    .end local v4    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_2
    return-void

    .line 416
    .restart local v4    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v4}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v5

    .line 412
    .end local v2    # "parent":Lcom/winlator/cmod/xserver/Window;
    .end local v3    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/winlator/cmod/xserver/Window;>;"
    .end local v4    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_4
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method public static reparentWindow(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 5
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 119
    .local v0, "windowId":I
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 120
    .local v1, "parentId":I
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 122
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v2, v0}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v2

    .line 123
    .local v2, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v2, :cond_1

    .line 125
    iget-object v3, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v3, v1}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v3

    .line 126
    .local v3, "parent":Lcom/winlator/cmod/xserver/Window;
    if-eqz v3, :cond_0

    .line 128
    iget-object v4, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v4, v2, v3}, Lcom/winlator/cmod/xserver/WindowManager;->reparentWindow(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;)V

    .line 129
    return-void

    .line 126
    :cond_0
    new-instance v4, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v4, v1}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v4

    .line 123
    .end local v3    # "parent":Lcom/winlator/cmod/xserver/Window;
    :cond_1
    new-instance v3, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v3, v0}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v3
.end method

.method public static sendEvent(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 6
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 431
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 433
    .local v0, "windowId":I
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 439
    .local v1, "destination":Lcom/winlator/cmod/xserver/Window;
    if-eqz v1, :cond_2

    .line 441
    new-instance v2, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/winlator/cmod/xserver/Bitmask;-><init>(I)V

    .line 443
    .local v2, "eventMask":Lcom/winlator/cmod/xserver/Bitmask;
    const/16 v3, 0x20

    new-array v3, v3, [B

    .line 444
    .local v3, "data":[B
    invoke-virtual {p1, v3}, Lcom/winlator/cmod/xconnector/XInputStream;->read([B)V

    .line 445
    new-instance v4, Lcom/winlator/cmod/xserver/events/RawEvent;

    invoke-direct {v4, v3}, Lcom/winlator/cmod/xserver/events/RawEvent;-><init>([B)V

    .line 447
    .local v4, "event":Lcom/winlator/cmod/xserver/events/Event;
    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Bitmask;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 448
    iget-object v5, v1, Lcom/winlator/cmod/xserver/Window;->originClient:Lcom/winlator/cmod/xserver/XClient;

    invoke-virtual {v5, v4}, Lcom/winlator/cmod/xserver/XClient;->sendEvent(Lcom/winlator/cmod/xserver/events/Event;)V

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {v1, v2, v4}, Lcom/winlator/cmod/xserver/Window;->sendEvent(Lcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xserver/events/Event;)V

    .line 451
    :goto_0
    return-void

    .line 439
    .end local v2    # "eventMask":Lcom/winlator/cmod/xserver/Bitmask;
    .end local v3    # "data":[B
    .end local v4    # "event":Lcom/winlator/cmod/xserver/events/Event;
    :cond_2
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v2

    .line 434
    .end local v1    # "destination":Lcom/winlator/cmod/xserver/Window;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->skipRequest()V

    .line 435
    return-void
.end method

.method public static setInputFocus(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 4
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 344
    invoke-static {}, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->values()[Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getRequestData()B

    move-result v1

    aget-object v0, v0, v1

    .line 345
    .local v0, "focusRevertTo":Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 346
    .local v1, "windowId":I
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 348
    sget-object v2, Lcom/winlator/cmod/xserver/requests/WindowRequests$1;->$SwitchMap$com$winlator$cmod$xserver$WindowManager$FocusRevertTo:[I

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 356
    :pswitch_0
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v2, v1}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v2

    .line 357
    .local v2, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v2, :cond_0

    .line 358
    iget-object v3, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v3, v2, v0}, Lcom/winlator/cmod/xserver/WindowManager;->setFocus(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;)V

    goto :goto_0

    .line 357
    :cond_0
    new-instance v3, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v3, v1}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v3

    .line 353
    .end local v2    # "window":Lcom/winlator/cmod/xserver/Window;
    :pswitch_1
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v3, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v2, v3, v0}, Lcom/winlator/cmod/xserver/WindowManager;->setFocus(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;)V

    .line 354
    goto :goto_0

    .line 350
    :pswitch_2
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/winlator/cmod/xserver/WindowManager;->setFocus(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;)V

    .line 351
    nop

    .line 361
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static translateCoordinates(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 13
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 281
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 282
    .local v0, "srcWindowId":I
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 283
    .local v1, "dstWindowId":I
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v2

    .line 284
    .local v2, "srcX":S
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v3

    .line 286
    .local v3, "srcY":S
    iget-object v4, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v4, v0}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v4

    .line 287
    .local v4, "srcWindow":Lcom/winlator/cmod/xserver/Window;
    iget-object v5, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v5, v5, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v5, v1}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v5

    .line 289
    .local v5, "dstWindow":Lcom/winlator/cmod/xserver/Window;
    if-eqz v4, :cond_4

    .line 290
    if-eqz v5, :cond_3

    .line 292
    invoke-virtual {v4, v2, v3}, Lcom/winlator/cmod/xserver/Window;->localPointToRoot(SS)[S

    move-result-object v6

    .line 293
    .local v6, "rootPoint":[S
    const/4 v7, 0x0

    aget-short v8, v6, v7

    const/4 v9, 0x1

    aget-short v10, v6, v9

    invoke-virtual {v5, v8, v10}, Lcom/winlator/cmod/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v8

    .line 294
    .local v8, "localPoint":[S
    aget-short v10, v6, v7

    aget-short v11, v6, v9

    invoke-virtual {v5, v10, v11}, Lcom/winlator/cmod/xserver/Window;->getChildByCoords(SS)Lcom/winlator/cmod/xserver/Window;

    move-result-object v10

    .line 296
    .local v10, "child":Lcom/winlator/cmod/xserver/Window;
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v11

    .line 297
    .local v11, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :try_start_0
    invoke-virtual {p2, v9}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 298
    invoke-virtual {p2, v9}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 299
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v12

    invoke-virtual {p2, v12}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 300
    invoke-virtual {p2, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 301
    if-eqz v10, :cond_0

    iget v12, v10, Lcom/winlator/cmod/xserver/Window;->id:I

    goto :goto_0

    :cond_0
    move v12, v7

    :goto_0
    invoke-virtual {p2, v12}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 302
    aget-short v7, v8, v7

    invoke-virtual {p2, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 303
    aget-short v7, v8, v9

    invoke-virtual {p2, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 304
    const/16 v7, 0x10

    invoke-virtual {p2, v7}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    if-eqz v11, :cond_1

    invoke-interface {v11}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 306
    .end local v11    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_1
    return-void

    .line 296
    .restart local v11    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v7

    if-eqz v11, :cond_2

    :try_start_1
    invoke-interface {v11}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v9

    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v7

    .line 290
    .end local v6    # "rootPoint":[S
    .end local v8    # "localPoint":[S
    .end local v10    # "child":Lcom/winlator/cmod/xserver/Window;
    .end local v11    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_3
    new-instance v6, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v6, v1}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v6

    .line 289
    :cond_4
    new-instance v6, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v6, v0}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v6
.end method

.method public static unmapWindow(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 3
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 157
    .local v0, "windowId":I
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 158
    .local v1, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v1, :cond_0

    .line 159
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v2, v1}, Lcom/winlator/cmod/xserver/WindowManager;->unmapWindow(Lcom/winlator/cmod/xserver/Window;)V

    .line 160
    return-void

    .line 158
    :cond_0
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v2, v0}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v2
.end method

.method public static warpPointer(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 13
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->skipRequest()V

    .line 311
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    .line 315
    .local v0, "srcWindow":Lcom/winlator/cmod/xserver/Window;
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 316
    .local v1, "dstWindow":Lcom/winlator/cmod/xserver/Window;
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v2

    .line 317
    .local v2, "srcX":S
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v3

    .line 318
    .local v3, "srcY":S
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v4

    .line 319
    .local v4, "srcWidth":S
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v5

    .line 320
    .local v5, "srcHeight":S
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v6

    .line 321
    .local v6, "dstX":S
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v7

    .line 323
    .local v7, "dstY":S
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_4

    .line 324
    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Window;->getWidth()S

    move-result v10

    sub-int/2addr v10, v2

    int-to-short v4, v10

    .line 325
    :cond_1
    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Window;->getHeight()S

    move-result v10

    sub-int/2addr v10, v3

    int-to-short v5, v10

    .line 327
    :cond_2
    iget-object v10, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v10, v10, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v10}, Lcom/winlator/cmod/xserver/Pointer;->getX()S

    move-result v10

    iget-object v11, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v11, v11, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v11}, Lcom/winlator/cmod/xserver/Pointer;->getY()S

    move-result v11

    invoke-virtual {v0, v10, v11}, Lcom/winlator/cmod/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v10

    .line 328
    .local v10, "localPoint":[S
    aget-short v11, v10, v9

    if-lt v11, v2, :cond_3

    aget-short v11, v10, v8

    if-lt v11, v3, :cond_3

    aget-short v11, v10, v9

    add-int v12, v2, v4

    if-ge v11, v12, :cond_3

    aget-short v11, v10, v8

    add-int v12, v3, v5

    if-ge v11, v12, :cond_3

    move v11, v8

    goto :goto_0

    :cond_3
    move v11, v9

    .line 329
    .local v11, "isContained":Z
    :goto_0
    if-nez v11, :cond_4

    return-void

    .line 332
    .end local v10    # "localPoint":[S
    .end local v11    # "isContained":Z
    :cond_4
    if-nez v1, :cond_5

    .line 333
    iget-object v8, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v8, v8, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    iget-object v9, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v9, v9, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v9}, Lcom/winlator/cmod/xserver/Pointer;->getX()S

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v8, v9}, Lcom/winlator/cmod/xserver/Pointer;->setX(I)V

    .line 334
    iget-object v8, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v8, v8, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    iget-object v9, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v9, v9, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v9}, Lcom/winlator/cmod/xserver/Pointer;->getY()S

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v8, v9}, Lcom/winlator/cmod/xserver/Pointer;->setY(I)V

    goto :goto_1

    .line 337
    :cond_5
    invoke-virtual {v1, v6, v7}, Lcom/winlator/cmod/xserver/Window;->localPointToRoot(SS)[S

    move-result-object v10

    .line 338
    .restart local v10    # "localPoint":[S
    iget-object v11, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v11, v11, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    aget-short v9, v10, v9

    invoke-virtual {v11, v9}, Lcom/winlator/cmod/xserver/Pointer;->setX(I)V

    .line 339
    iget-object v9, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v9, v9, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    aget-short v8, v10, v8

    invoke-virtual {v9, v8}, Lcom/winlator/cmod/xserver/Pointer;->setY(I)V

    .line 341
    .end local v10    # "localPoint":[S
    :goto_1
    return-void
.end method
