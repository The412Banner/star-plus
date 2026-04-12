.class public abstract Lcom/winlator/cmod/xserver/requests/DrawRequests;
.super Ljava/lang/Object;
.source "DrawRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;,
        Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyArea(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 23
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 97
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 98
    .local v1, "srcDrawableId":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v2

    .line 99
    .local v2, "dstDrawableId":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    .line 100
    .local v3, "gcId":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v13

    .line 101
    .local v13, "srcX":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v14

    .line 102
    .local v14, "srcY":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v15

    .line 103
    .local v15, "dstX":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v16

    .line 104
    .local v16, "dstY":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v17

    .line 105
    .local v17, "width":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v18

    .line 107
    .local v18, "height":S
    iget-object v4, v0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-virtual {v4, v1}, Lcom/winlator/cmod/xserver/DrawableManager;->getDrawable(I)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v12

    .line 108
    .local v12, "srcDrawable":Lcom/winlator/cmod/xserver/Drawable;
    if-eqz v12, :cond_5

    .line 109
    invoke-virtual {v12}, Lcom/winlator/cmod/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 113
    iget-object v4, v0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-virtual {v4, v2}, Lcom/winlator/cmod/xserver/DrawableManager;->getDrawable(I)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v11

    .line 114
    .local v11, "dstDrawable":Lcom/winlator/cmod/xserver/Drawable;
    if-eqz v11, :cond_3

    .line 115
    invoke-virtual {v11}, Lcom/winlator/cmod/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 120
    iget-object v4, v0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    invoke-virtual {v4, v3}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->getGraphicsContext(I)Lcom/winlator/cmod/xserver/GraphicsContext;

    move-result-object v19

    .line 121
    .local v19, "graphicsContext":Lcom/winlator/cmod/xserver/GraphicsContext;
    if-eqz v19, :cond_1

    .line 123
    iget-object v4, v12, Lcom/winlator/cmod/xserver/Drawable;->visual:Lcom/winlator/cmod/xserver/Visual;

    iget-byte v4, v4, Lcom/winlator/cmod/xserver/Visual;->depth:B

    iget-object v5, v11, Lcom/winlator/cmod/xserver/Drawable;->visual:Lcom/winlator/cmod/xserver/Visual;

    iget-byte v5, v5, Lcom/winlator/cmod/xserver/Visual;->depth:B

    if-ne v4, v5, :cond_0

    .line 125
    invoke-virtual/range {v19 .. v19}, Lcom/winlator/cmod/xserver/GraphicsContext;->getFunction()Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    move-result-object v20

    move-object v4, v11

    move v5, v13

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    move-object/from16 v21, v11

    .end local v11    # "dstDrawable":Lcom/winlator/cmod/xserver/Drawable;
    .local v21, "dstDrawable":Lcom/winlator/cmod/xserver/Drawable;
    move-object v11, v12

    move-object/from16 v22, v12

    .end local v12    # "srcDrawable":Lcom/winlator/cmod/xserver/Drawable;
    .local v22, "srcDrawable":Lcom/winlator/cmod/xserver/Drawable;
    move-object/from16 v12, v20

    invoke-virtual/range {v4 .. v12}, Lcom/winlator/cmod/xserver/Drawable;->copyArea(SSSSSSLcom/winlator/cmod/xserver/Drawable;Lcom/winlator/cmod/xserver/GraphicsContext$Function;)V

    .line 126
    return-void

    .line 123
    .end local v21    # "dstDrawable":Lcom/winlator/cmod/xserver/Drawable;
    .end local v22    # "srcDrawable":Lcom/winlator/cmod/xserver/Drawable;
    .restart local v11    # "dstDrawable":Lcom/winlator/cmod/xserver/Drawable;
    .restart local v12    # "srcDrawable":Lcom/winlator/cmod/xserver/Drawable;
    :cond_0
    new-instance v4, Lcom/winlator/cmod/xserver/errors/BadMatch;

    invoke-direct {v4}, Lcom/winlator/cmod/xserver/errors/BadMatch;-><init>()V

    throw v4

    .line 121
    :cond_1
    new-instance v4, Lcom/winlator/cmod/xserver/errors/BadGraphicsContext;

    invoke-direct {v4, v3}, Lcom/winlator/cmod/xserver/errors/BadGraphicsContext;-><init>(I)V

    throw v4

    .line 116
    .end local v19    # "graphicsContext":Lcom/winlator/cmod/xserver/GraphicsContext;
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "dstDrawable has null data!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 114
    :cond_3
    new-instance v4, Lcom/winlator/cmod/xserver/errors/BadDrawable;

    invoke-direct {v4, v2}, Lcom/winlator/cmod/xserver/errors/BadDrawable;-><init>(I)V

    throw v4

    .line 110
    .end local v11    # "dstDrawable":Lcom/winlator/cmod/xserver/Drawable;
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "srcDrawable has null data!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    :cond_5
    new-instance v4, Lcom/winlator/cmod/xserver/errors/BadDrawable;

    invoke-direct {v4, v1}, Lcom/winlator/cmod/xserver/errors/BadDrawable;-><init>(I)V

    throw v4
.end method

.method public static getImage(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
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

    .line 68
    invoke-static {}, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;->values()[Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    move-result-object v0

    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getRequestData()B

    move-result v1

    aget-object v0, v0, v1

    .line 69
    .local v0, "format":Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 70
    .local v1, "drawableId":I
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v2

    .line 71
    .local v2, "x":S
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v3

    .line 72
    .local v3, "y":S
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v4

    .line 73
    .local v4, "width":S
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v5

    .line 74
    .local v5, "height":S
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 76
    sget-object v7, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;->Z_PIXMAP:Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    if-ne v0, v7, :cond_5

    .line 78
    iget-object v7, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-virtual {v7, v1}, Lcom/winlator/cmod/xserver/DrawableManager;->getDrawable(I)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v7

    .line 79
    .local v7, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    if-eqz v7, :cond_4

    .line 80
    iget-object v8, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v8, v8, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual {v8, v1}, Lcom/winlator/cmod/xserver/PixmapManager;->getPixmap(I)Lcom/winlator/cmod/xserver/Pixmap;

    move-result-object v8

    if-nez v8, :cond_0

    iget-object v8, v7, Lcom/winlator/cmod/xserver/Drawable;->visual:Lcom/winlator/cmod/xserver/Visual;

    iget v8, v8, Lcom/winlator/cmod/xserver/Visual;->id:I

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 81
    .local v8, "visualId":I
    :goto_0
    invoke-virtual {v7, v2, v3, v4, v5}, Lcom/winlator/cmod/xserver/Drawable;->getImage(SSSS)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 82
    .local v9, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    .line 84
    .local v10, "length":I
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v11

    .line 85
    .local v11, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v12, 0x1

    :try_start_0
    invoke-virtual {p2, v12}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 86
    iget-object v12, v7, Lcom/winlator/cmod/xserver/Drawable;->visual:Lcom/winlator/cmod/xserver/Visual;

    iget-byte v12, v12, Lcom/winlator/cmod/xserver/Visual;->depth:B

    invoke-virtual {p2, v12}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 87
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v12

    invoke-virtual {p2, v12}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 88
    add-int/lit8 v12, v10, 0x3

    div-int/2addr v12, v6

    invoke-virtual {p2, v12}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 89
    invoke-virtual {p2, v8}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 90
    const/16 v6, 0x14

    invoke-virtual {p2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V

    .line 91
    invoke-virtual {p2, v9}, Lcom/winlator/cmod/xconnector/XOutputStream;->write(Ljava/nio/ByteBuffer;)V

    .line 92
    neg-int v6, v10

    and-int/lit8 v6, v6, 0x3

    if-lez v6, :cond_1

    neg-int v6, v10

    and-int/lit8 v6, v6, 0x3

    invoke-virtual {p2, v6}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    if-eqz v11, :cond_2

    invoke-interface {v11}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 94
    .end local v11    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_2
    return-void

    .line 84
    .restart local v11    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v6

    if-eqz v11, :cond_3

    :try_start_1
    invoke-interface {v11}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v12

    invoke-virtual {v6, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v6

    .line 79
    .end local v8    # "visualId":I
    .end local v9    # "data":Ljava/nio/ByteBuffer;
    .end local v10    # "length":I
    .end local v11    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_4
    new-instance v6, Lcom/winlator/cmod/xserver/errors/BadDrawable;

    invoke-direct {v6, v1}, Lcom/winlator/cmod/xserver/errors/BadDrawable;-><init>(I)V

    throw v6

    .line 76
    .end local v7    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    :cond_5
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "Only Z_PIXMAP is supported."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static polyFillRectangle(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 16
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 153
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 154
    .local v1, "drawableId":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v2

    .line 156
    .local v2, "gcId":I
    iget-object v3, v0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-virtual {v3, v1}, Lcom/winlator/cmod/xserver/DrawableManager;->getDrawable(I)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v3

    .line 157
    .local v3, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    if-eqz v3, :cond_2

    .line 158
    iget-object v4, v0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    invoke-virtual {v4, v2}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->getGraphicsContext(I)Lcom/winlator/cmod/xserver/GraphicsContext;

    move-result-object v10

    .line 159
    .local v10, "graphicsContext":Lcom/winlator/cmod/xserver/GraphicsContext;
    if-eqz v10, :cond_1

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/xserver/XClient;->getRemainingRequestLength()I

    move-result v4

    move v11, v4

    .line 162
    .local v11, "length":I
    :goto_0
    if-eqz v11, :cond_0

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v12

    .line 164
    .local v12, "x":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v13

    .line 165
    .local v13, "y":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v14

    .line 166
    .local v14, "width":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v15

    .line 167
    .local v15, "height":S
    invoke-virtual {v10}, Lcom/winlator/cmod/xserver/GraphicsContext;->getBackground()I

    move-result v9

    move-object v4, v3

    move v5, v12

    move v6, v13

    move v7, v14

    move v8, v15

    invoke-virtual/range {v4 .. v9}, Lcom/winlator/cmod/xserver/Drawable;->fillRect(IIIII)V

    .line 168
    nop

    .end local v12    # "x":S
    .end local v13    # "y":S
    .end local v14    # "width":S
    .end local v15    # "height":S
    add-int/lit8 v11, v11, -0x8

    .line 169
    goto :goto_0

    .line 170
    :cond_0
    return-void

    .line 159
    .end local v11    # "length":I
    :cond_1
    new-instance v4, Lcom/winlator/cmod/xserver/errors/BadGraphicsContext;

    invoke-direct {v4, v2}, Lcom/winlator/cmod/xserver/errors/BadGraphicsContext;-><init>(I)V

    throw v4

    .line 157
    .end local v10    # "graphicsContext":Lcom/winlator/cmod/xserver/GraphicsContext;
    :cond_2
    new-instance v4, Lcom/winlator/cmod/xserver/errors/BadDrawable;

    invoke-direct {v4, v1}, Lcom/winlator/cmod/xserver/errors/BadDrawable;-><init>(I)V

    throw v4
.end method

.method public static polyLine(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 10
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 129
    invoke-static {}, Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;->values()[Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getRequestData()B

    move-result v1

    aget-object v0, v0, v1

    .line 130
    .local v0, "coordinateMode":Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 131
    .local v1, "drawableId":I
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v2

    .line 133
    .local v2, "gcId":I
    iget-object v3, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-virtual {v3, v1}, Lcom/winlator/cmod/xserver/DrawableManager;->getDrawable(I)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v3

    .line 134
    .local v3, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    if-eqz v3, :cond_3

    .line 135
    iget-object v4, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    invoke-virtual {v4, v2}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->getGraphicsContext(I)Lcom/winlator/cmod/xserver/GraphicsContext;

    move-result-object v4

    .line 136
    .local v4, "graphicsContext":Lcom/winlator/cmod/xserver/GraphicsContext;
    if-eqz v4, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getRemainingRequestLength()I

    move-result v5

    .line 139
    .local v5, "length":I
    div-int/lit8 v6, v5, 0x2

    new-array v6, v6, [S

    .line 140
    .local v6, "points":[S
    const/4 v7, 0x0

    .line 141
    .local v7, "i":I
    :goto_0
    if-eqz v5, :cond_0

    .line 142
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v9

    aput-short v9, v6, v7

    .line 143
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v9

    aput-short v9, v6, v8

    .line 144
    add-int/lit8 v5, v5, -0x4

    goto :goto_0

    .line 147
    :cond_0
    sget-object v8, Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;->ORIGIN:Lcom/winlator/cmod/xserver/requests/DrawRequests$CoordinateMode;

    if-ne v0, v8, :cond_1

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/GraphicsContext;->getLineWidth()I

    move-result v8

    if-lez v8, :cond_1

    .line 148
    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/GraphicsContext;->getForeground()I

    move-result v8

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/GraphicsContext;->getLineWidth()I

    move-result v9

    invoke-virtual {v3, v8, v9, v6}, Lcom/winlator/cmod/xserver/Drawable;->drawLines(II[S)V

    .line 150
    :cond_1
    return-void

    .line 136
    .end local v5    # "length":I
    .end local v6    # "points":[S
    .end local v7    # "i":I
    :cond_2
    new-instance v5, Lcom/winlator/cmod/xserver/errors/BadGraphicsContext;

    invoke-direct {v5, v2}, Lcom/winlator/cmod/xserver/errors/BadGraphicsContext;-><init>(I)V

    throw v5

    .line 134
    .end local v4    # "graphicsContext":Lcom/winlator/cmod/xserver/GraphicsContext;
    :cond_3
    new-instance v4, Lcom/winlator/cmod/xserver/errors/BadDrawable;

    invoke-direct {v4, v1}, Lcom/winlator/cmod/xserver/errors/BadDrawable;-><init>(I)V

    throw v4
.end method

.method public static putImage(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 25
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 24
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;->values()[Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/xserver/XClient;->getRequestData()B

    move-result v3

    aget-object v2, v2, v3

    .line 25
    .local v2, "format":Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    .line 26
    .local v3, "drawableId":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v4

    .line 27
    .local v4, "gcId":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v16

    .line 28
    .local v16, "width":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v17

    .line 29
    .local v17, "height":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v18

    .line 30
    .local v18, "dstX":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v19

    .line 31
    .local v19, "dstY":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readByte()B

    move-result v20

    .line 32
    .local v20, "leftPad":B
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readByte()B

    move-result v15

    .line 33
    .local v15, "depth":B
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/xserver/XClient;->getRemainingRequestLength()I

    move-result v14

    .line 35
    .local v14, "length":I
    invoke-virtual {v1, v14}, Lcom/winlator/cmod/xconnector/XInputStream;->readByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 37
    .local v21, "data":Ljava/nio/ByteBuffer;
    iget-object v5, v0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v5, v5, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-virtual {v5, v3}, Lcom/winlator/cmod/xserver/DrawableManager;->getDrawable(I)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v13

    .line 38
    .local v13, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    if-eqz v13, :cond_7

    .line 40
    iget-object v5, v0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v5, v5, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    invoke-virtual {v5, v4}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->getGraphicsContext(I)Lcom/winlator/cmod/xserver/GraphicsContext;

    move-result-object v22

    .line 41
    .local v22, "graphicsContext":Lcom/winlator/cmod/xserver/GraphicsContext;
    if-eqz v22, :cond_6

    .line 43
    invoke-virtual/range {v22 .. v22}, Lcom/winlator/cmod/xserver/GraphicsContext;->getFunction()Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    move-result-object v5

    sget-object v6, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->COPY:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    if-eq v5, v6, :cond_1

    sget-object v5, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;->Z_PIXMAP:Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;

    if-ne v2, v5, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "GC Function other than COPY is not supported."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 47
    :cond_1
    :goto_0
    sget-object v5, Lcom/winlator/cmod/xserver/requests/DrawRequests$1;->$SwitchMap$com$winlator$cmod$xserver$requests$DrawRequests$Format:[I

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/requests/DrawRequests$Format;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    move-object/from16 v23, v13

    move/from16 v24, v14

    move v0, v15

    .end local v13    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .end local v14    # "length":I
    .end local v15    # "depth":B
    .local v0, "depth":B
    .local v23, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .local v24, "length":I
    goto/16 :goto_1

    .line 59
    .end local v0    # "depth":B
    .end local v23    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .end local v24    # "length":I
    .restart local v13    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .restart local v14    # "length":I
    .restart local v15    # "depth":B
    :pswitch_0
    if-nez v20, :cond_2

    .line 60
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v13

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v16

    move/from16 v11, v17

    move v12, v15

    move-object/from16 v23, v13

    .end local v13    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .restart local v23    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    move-object/from16 v13, v21

    move/from16 v24, v14

    .end local v14    # "length":I
    .restart local v24    # "length":I
    move/from16 v14, v16

    move v0, v15

    .end local v15    # "depth":B
    .restart local v0    # "depth":B
    move/from16 v15, v17

    invoke-virtual/range {v5 .. v15}, Lcom/winlator/cmod/xserver/Drawable;->drawImage(SSSSSSBLjava/nio/ByteBuffer;SS)V

    goto :goto_1

    .line 62
    .end local v0    # "depth":B
    .end local v23    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .end local v24    # "length":I
    .restart local v13    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .restart local v14    # "length":I
    .restart local v15    # "depth":B
    :cond_2
    new-instance v5, Lcom/winlator/cmod/xserver/errors/BadMatch;

    invoke-direct {v5}, Lcom/winlator/cmod/xserver/errors/BadMatch;-><init>()V

    throw v5

    .line 56
    :pswitch_1
    move-object/from16 v23, v13

    move/from16 v24, v14

    move v0, v15

    .end local v13    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .end local v14    # "length":I
    .end local v15    # "depth":B
    .restart local v0    # "depth":B
    .restart local v23    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .restart local v24    # "length":I
    move-object/from16 v15, v23

    .end local v23    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .local v15, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    iget-object v5, v15, Lcom/winlator/cmod/xserver/Drawable;->visual:Lcom/winlator/cmod/xserver/Visual;

    iget-byte v5, v5, Lcom/winlator/cmod/xserver/Visual;->depth:B

    if-ne v5, v0, :cond_3

    move-object/from16 v23, v15

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/winlator/cmod/xserver/errors/BadMatch;

    invoke-direct {v5}, Lcom/winlator/cmod/xserver/errors/BadMatch;-><init>()V

    throw v5

    .line 49
    .end local v0    # "depth":B
    .end local v24    # "length":I
    .restart local v13    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .restart local v14    # "length":I
    .local v15, "depth":B
    :pswitch_2
    move/from16 v24, v14

    move v0, v15

    move-object v15, v13

    .end local v13    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .end local v14    # "length":I
    .restart local v0    # "depth":B
    .local v15, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .restart local v24    # "length":I
    if-nez v20, :cond_5

    .line 50
    const/4 v5, 0x1

    if-ne v0, v5, :cond_4

    .line 51
    const/4 v7, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x0

    move-object v5, v15

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v13, v21

    move/from16 v14, v16

    move-object/from16 v23, v15

    .end local v15    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .restart local v23    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    move/from16 v15, v17

    invoke-virtual/range {v5 .. v15}, Lcom/winlator/cmod/xserver/Drawable;->drawImage(SSSSSSBLjava/nio/ByteBuffer;SS)V

    goto :goto_1

    .line 53
    .end local v23    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .restart local v15    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    :cond_4
    new-instance v5, Lcom/winlator/cmod/xserver/errors/BadMatch;

    invoke-direct {v5}, Lcom/winlator/cmod/xserver/errors/BadMatch;-><init>()V

    throw v5

    .line 49
    :cond_5
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "PutImage.leftPad cannot be != 0."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 65
    .end local v15    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .restart local v23    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    :goto_1
    return-void

    .line 41
    .end local v0    # "depth":B
    .end local v23    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .end local v24    # "length":I
    .restart local v13    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    .restart local v14    # "length":I
    .local v15, "depth":B
    :cond_6
    new-instance v5, Lcom/winlator/cmod/xserver/errors/BadGraphicsContext;

    invoke-direct {v5, v4}, Lcom/winlator/cmod/xserver/errors/BadGraphicsContext;-><init>(I)V

    throw v5

    .line 38
    .end local v22    # "graphicsContext":Lcom/winlator/cmod/xserver/GraphicsContext;
    :cond_7
    new-instance v5, Lcom/winlator/cmod/xserver/errors/BadDrawable;

    invoke-direct {v5, v3}, Lcom/winlator/cmod/xserver/errors/BadDrawable;-><init>(I)V

    throw v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
