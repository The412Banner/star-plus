.class public abstract Lcom/winlator/cmod/xserver/requests/CursorRequests;
.super Ljava/lang/Object;
.source "CursorRequests.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCursor(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 24
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 20
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v7

    .line 21
    .local v7, "cursorId":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v8

    .line 22
    .local v8, "sourcePixmapId":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v9

    .line 24
    .local v9, "maskPixmapId":I
    invoke-virtual {v0, v7}, Lcom/winlator/cmod/xserver/XClient;->isValidResourceId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 26
    iget-object v1, v0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual {v1, v8}, Lcom/winlator/cmod/xserver/PixmapManager;->getPixmap(I)Lcom/winlator/cmod/xserver/Pixmap;

    move-result-object v10

    .line 27
    .local v10, "sourcePixmap":Lcom/winlator/cmod/xserver/Pixmap;
    if-eqz v10, :cond_3

    .line 29
    iget-object v1, v0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual {v1, v9}, Lcom/winlator/cmod/xserver/PixmapManager;->getPixmap(I)Lcom/winlator/cmod/xserver/Pixmap;

    move-result-object v11

    .line 30
    .local v11, "maskPixmap":Lcom/winlator/cmod/xserver/Pixmap;
    if-eqz v11, :cond_1

    iget-object v1, v11, Lcom/winlator/cmod/xserver/Pixmap;->drawable:Lcom/winlator/cmod/xserver/Drawable;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/Drawable;->visual:Lcom/winlator/cmod/xserver/Visual;

    iget-byte v1, v1, Lcom/winlator/cmod/xserver/Visual;->depth:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, v11, Lcom/winlator/cmod/xserver/Pixmap;->drawable:Lcom/winlator/cmod/xserver/Drawable;

    iget-short v1, v1, Lcom/winlator/cmod/xserver/Drawable;->width:S

    iget-object v2, v10, Lcom/winlator/cmod/xserver/Pixmap;->drawable:Lcom/winlator/cmod/xserver/Drawable;

    iget-short v2, v2, Lcom/winlator/cmod/xserver/Drawable;->width:S

    if-ne v1, v2, :cond_0

    iget-object v1, v11, Lcom/winlator/cmod/xserver/Pixmap;->drawable:Lcom/winlator/cmod/xserver/Drawable;

    iget-short v1, v1, Lcom/winlator/cmod/xserver/Drawable;->height:S

    iget-object v2, v10, Lcom/winlator/cmod/xserver/Pixmap;->drawable:Lcom/winlator/cmod/xserver/Drawable;

    iget-short v2, v2, Lcom/winlator/cmod/xserver/Drawable;->height:S

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v1, Lcom/winlator/cmod/xserver/errors/BadMatch;

    invoke-direct {v1}, Lcom/winlator/cmod/xserver/errors/BadMatch;-><init>()V

    throw v1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v1

    int-to-byte v15, v1

    .line 38
    .local v15, "foreRed":B
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v1

    int-to-byte v14, v1

    .line 39
    .local v14, "foreGreen":B
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v1

    int-to-byte v13, v1

    .line 40
    .local v13, "foreBlue":B
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v1

    int-to-byte v12, v1

    .line 41
    .local v12, "backRed":B
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v1

    int-to-byte v6, v1

    .line 42
    .local v6, "backGreen":B
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v1

    int-to-byte v5, v1

    .line 43
    .local v5, "backBlue":B
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v20

    .line 44
    .local v20, "x":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v21

    .line 46
    .local v21, "y":S
    iget-object v1, v0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->cursorManager:Lcom/winlator/cmod/xserver/CursorManager;

    move v2, v7

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v22, v5

    .end local v5    # "backBlue":B
    .local v22, "backBlue":B
    move-object v5, v10

    move/from16 v23, v6

    .end local v6    # "backGreen":B
    .local v23, "backGreen":B
    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/winlator/cmod/xserver/CursorManager;->createCursor(ISSLcom/winlator/cmod/xserver/Pixmap;Lcom/winlator/cmod/xserver/Pixmap;)Lcom/winlator/cmod/xserver/Cursor;

    move-result-object v1

    .line 47
    .local v1, "cursor":Lcom/winlator/cmod/xserver/Cursor;
    if-eqz v1, :cond_2

    .line 48
    iget-object v2, v0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->cursorManager:Lcom/winlator/cmod/xserver/CursorManager;

    move v3, v12

    .end local v12    # "backRed":B
    .local v3, "backRed":B
    move-object v12, v2

    move v2, v13

    .end local v13    # "foreBlue":B
    .local v2, "foreBlue":B
    move-object v13, v1

    move v4, v14

    .end local v14    # "foreGreen":B
    .local v4, "foreGreen":B
    move v14, v15

    move v5, v15

    .end local v15    # "foreRed":B
    .local v5, "foreRed":B
    move v15, v4

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v23

    move/from16 v19, v22

    invoke-virtual/range {v12 .. v19}, Lcom/winlator/cmod/xserver/CursorManager;->recolorCursor(Lcom/winlator/cmod/xserver/Cursor;BBBBBB)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/XClient;->registerAsOwnerOfResource(Lcom/winlator/cmod/xserver/XResource;)V

    .line 50
    return-void

    .line 47
    .end local v2    # "foreBlue":B
    .end local v3    # "backRed":B
    .end local v4    # "foreGreen":B
    .end local v5    # "foreRed":B
    .restart local v12    # "backRed":B
    .restart local v13    # "foreBlue":B
    .restart local v14    # "foreGreen":B
    .restart local v15    # "foreRed":B
    :cond_2
    new-instance v6, Lcom/winlator/cmod/xserver/errors/BadIdChoice;

    invoke-direct {v6, v7}, Lcom/winlator/cmod/xserver/errors/BadIdChoice;-><init>(I)V

    throw v6

    .line 27
    .end local v1    # "cursor":Lcom/winlator/cmod/xserver/Cursor;
    .end local v11    # "maskPixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .end local v12    # "backRed":B
    .end local v13    # "foreBlue":B
    .end local v14    # "foreGreen":B
    .end local v15    # "foreRed":B
    .end local v20    # "x":S
    .end local v21    # "y":S
    .end local v22    # "backBlue":B
    .end local v23    # "backGreen":B
    :cond_3
    new-instance v1, Lcom/winlator/cmod/xserver/errors/BadPixmap;

    invoke-direct {v1, v8}, Lcom/winlator/cmod/xserver/errors/BadPixmap;-><init>(I)V

    throw v1

    .line 24
    .end local v10    # "sourcePixmap":Lcom/winlator/cmod/xserver/Pixmap;
    :cond_4
    new-instance v1, Lcom/winlator/cmod/xserver/errors/BadIdChoice;

    invoke-direct {v1, v7}, Lcom/winlator/cmod/xserver/errors/BadIdChoice;-><init>(I)V

    throw v1
.end method

.method public static freeCursor(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 2
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->cursorManager:Lcom/winlator/cmod/xserver/CursorManager;

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/CursorManager;->freeCursor(I)V

    .line 54
    return-void
.end method

.method public static getPointerMaping(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 7
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 57
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v0

    .line 58
    .local v0, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v1, 0x3

    :try_start_0
    new-array v2, v1, [B

    fill-array-data v2, :array_0

    .line 59
    .local v2, "buttonsMap":[B
    array-length v3, v2

    int-to-byte v3, v3

    .line 60
    .local v3, "n":B
    neg-int v4, v3

    and-int/2addr v1, v4

    .line 62
    .local v1, "padLen":I
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 63
    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 64
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v4

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 65
    add-int v4, v3, v1

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 66
    const/16 v4, 0x18

    invoke-virtual {p2, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V

    .line 68
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-byte v6, v2, v5

    .line 69
    .local v6, "b":B
    invoke-virtual {p2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 68
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v1    # "padLen":I
    .end local v2    # "buttonsMap":[B
    .end local v3    # "n":B
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 72
    .end local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_1
    return-void

    .line 57
    .restart local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1

    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data
.end method
