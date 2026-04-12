.class public Lcom/winlator/cmod/xserver/extensions/DRI3Extension;
.super Ljava/lang/Object;
.source "DRI3Extension.java"

# interfaces
.implements Lcom/winlator/cmod/xserver/extensions/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/xserver/extensions/DRI3Extension$ClientOpcodes;
    }
.end annotation


# static fields
.field public static final MAJOR_OPCODE:B = -0x66t


# instance fields
.field private final onDestroyDrawableListener:Lcom/winlator/cmod/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/winlator/cmod/core/Callback<",
            "Lcom/winlator/cmod/xserver/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/winlator/cmod/xserver/extensions/DRI3Extension$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/winlator/cmod/xserver/extensions/DRI3Extension$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/extensions/DRI3Extension;->onDestroyDrawableListener:Lcom/winlator/cmod/core/Callback;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/winlator/cmod/xserver/Drawable;)V
    .locals 3
    .param p0, "drawable"    # Lcom/winlator/cmod/xserver/Drawable;

    .line 33
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/Drawable;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 34
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->unmapSHMSegment(Ljava/nio/ByteBuffer;J)V

    .line 35
    return-void
.end method

.method private open(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 5
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 79
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 80
    .local v0, "drawableId":I
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 82
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xserver/DrawableManager;->getDrawable(I)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v1

    .line 83
    .local v1, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {p3}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v2

    .line 86
    .local v2, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p3, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 87
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 88
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v4

    invoke-virtual {p3, v4}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 89
    invoke-virtual {p3, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 90
    const/16 v3, 0x18

    invoke-virtual {p3, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 92
    .end local v2    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 85
    .restart local v2    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v3

    .line 83
    .end local v2    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_2
    new-instance v2, Lcom/winlator/cmod/xserver/errors/BadDrawable;

    invoke-direct {v2, v0}, Lcom/winlator/cmod/xserver/errors/BadDrawable;-><init>(I)V

    throw v2
.end method

.method private pixmapFromBuffer(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 24
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 95
    move-object/from16 v11, p1

    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v12

    .line 96
    .local v12, "pixmapId":I
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v13

    .line 97
    .local v13, "windowId":I
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v14

    .line 98
    .local v14, "size":I
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v15

    .line 99
    .local v15, "width":S
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v16

    .line 100
    .local v16, "height":S
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v17

    .line 101
    .local v17, "stride":S
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readByte()B

    move-result v18

    .line 102
    .local v18, "depth":B
    const/4 v0, 0x1

    move-object/from16 v9, p2

    invoke-virtual {v9, v0}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 104
    iget-object v0, v11, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v0, v13}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v19

    .line 105
    .local v19, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v19, :cond_1

    .line 107
    iget-object v0, v11, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual {v0, v12}, Lcom/winlator/cmod/xserver/PixmapManager;->getPixmap(I)Lcom/winlator/cmod/xserver/Pixmap;

    move-result-object v20

    .line 108
    .local v20, "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    if-nez v20, :cond_0

    .line 110
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->getAncillaryFd()I

    move-result v21

    .line 111
    .local v21, "fd":I
    const/4 v6, 0x0

    int-to-long v7, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-wide/from16 v22, v7

    move/from16 v7, v18

    move/from16 v8, v21

    move-wide/from16 v9, v22

    invoke-direct/range {v0 .. v10}, Lcom/winlator/cmod/xserver/extensions/DRI3Extension;->pixmapFromFd(Lcom/winlator/cmod/xserver/XClient;ISSIIBIJ)V

    .line 112
    return-void

    .line 108
    .end local v21    # "fd":I
    :cond_0
    new-instance v0, Lcom/winlator/cmod/xserver/errors/BadIdChoice;

    invoke-direct {v0, v12}, Lcom/winlator/cmod/xserver/errors/BadIdChoice;-><init>(I)V

    throw v0

    .line 105
    .end local v20    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    :cond_1
    new-instance v0, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v0, v13}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v0
.end method

.method private pixmapFromBuffers(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 25
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 115
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    const-string v0, "Received pixmap from buffers"

    const-string v1, "Dri3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v13

    .line 117
    .local v13, "pixmapId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read pixmap id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v14

    .line 119
    .local v14, "windowId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read window id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x4

    invoke-virtual {v12, v0}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v15

    .line 122
    .local v15, "width":S
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read width "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v9

    .line 124
    .local v9, "height":S
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read height "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v10

    .line 126
    .local v10, "stride":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read stride "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v8

    .line 128
    .local v8, "offset":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/16 v0, 0x18

    invoke-virtual {v12, v0}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readByte()B

    move-result v7

    .line 131
    .local v7, "depth":B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read depth "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x3

    invoke-virtual {v12, v0}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readLong()J

    move-result-wide v5

    .line 134
    .local v5, "modifiers":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read modifiers "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, v11, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v0, v14}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v16

    .line 137
    .local v16, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v16, :cond_3

    .line 138
    iget-object v0, v11, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual {v0, v13}, Lcom/winlator/cmod/xserver/PixmapManager;->getPixmap(I)Lcom/winlator/cmod/xserver/Pixmap;

    move-result-object v17

    .line 139
    .local v17, "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    if-nez v17, :cond_2

    .line 141
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->getAncillaryFd()I

    move-result v18

    .line 142
    .local v18, "fd":I
    int-to-long v2, v10

    int-to-long v11, v9

    mul-long/2addr v11, v2

    .line 144
    .local v11, "size":J
    const-wide/16 v2, 0x4e7

    cmp-long v0, v5, v2

    if-nez v0, :cond_0

    .line 145
    const-string v0, "Creating pixmap from AHardwareBuffer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v15

    move v4, v9

    move-wide/from16 v19, v5

    .end local v5    # "modifiers":J
    .local v19, "modifiers":J
    move v5, v7

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/winlator/cmod/xserver/extensions/DRI3Extension;->pixmapFromHardwareBuffer(Lcom/winlator/cmod/xserver/XClient;ISSBI)V

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    goto :goto_0

    .line 148
    .end local v19    # "modifiers":J
    .restart local v5    # "modifiers":J
    :cond_0
    move-wide/from16 v19, v5

    .end local v5    # "modifiers":J
    .restart local v19    # "modifiers":J
    const-wide/16 v2, 0x4fa

    cmp-long v0, v19, v2

    if-nez v0, :cond_1

    .line 149
    const-string v0, "Creating pixmap from dmabuf filedescriptor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v15

    move v4, v9

    move v5, v10

    move v6, v8

    move/from16 v21, v7

    .end local v7    # "depth":B
    .local v21, "depth":B
    move/from16 v22, v8

    .end local v8    # "offset":I
    .local v22, "offset":I
    move/from16 v8, v18

    move/from16 v23, v9

    move/from16 v24, v10

    .end local v9    # "height":S
    .end local v10    # "stride":I
    .local v23, "height":S
    .local v24, "stride":I
    move-wide v9, v11

    invoke-direct/range {v0 .. v10}, Lcom/winlator/cmod/xserver/extensions/DRI3Extension;->pixmapFromFd(Lcom/winlator/cmod/xserver/XClient;ISSIIBIJ)V

    goto :goto_0

    .line 148
    .end local v21    # "depth":B
    .end local v22    # "offset":I
    .end local v23    # "height":S
    .end local v24    # "stride":I
    .restart local v7    # "depth":B
    .restart local v8    # "offset":I
    .restart local v9    # "height":S
    .restart local v10    # "stride":I
    :cond_1
    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    .line 152
    .end local v7    # "depth":B
    .end local v8    # "offset":I
    .end local v9    # "height":S
    .end local v10    # "stride":I
    .restart local v21    # "depth":B
    .restart local v22    # "offset":I
    .restart local v23    # "height":S
    .restart local v24    # "stride":I
    :goto_0
    return-void

    .line 139
    .end local v11    # "size":J
    .end local v18    # "fd":I
    .end local v19    # "modifiers":J
    .end local v21    # "depth":B
    .end local v22    # "offset":I
    .end local v23    # "height":S
    .end local v24    # "stride":I
    .restart local v5    # "modifiers":J
    .restart local v7    # "depth":B
    .restart local v8    # "offset":I
    .restart local v9    # "height":S
    .restart local v10    # "stride":I
    :cond_2
    new-instance v0, Lcom/winlator/cmod/xserver/errors/BadIdChoice;

    invoke-direct {v0, v13}, Lcom/winlator/cmod/xserver/errors/BadIdChoice;-><init>(I)V

    throw v0

    .line 137
    .end local v17    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    :cond_3
    new-instance v0, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v0, v14}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v0
.end method

.method private pixmapFromFd(Lcom/winlator/cmod/xserver/XClient;ISSIIBIJ)V
    .locals 4
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "pixmapId"    # I
    .param p3, "width"    # S
    .param p4, "height"    # S
    .param p5, "stride"    # I
    .param p6, "offset"    # I
    .param p7, "depth"    # B
    .param p8, "fd"    # I
    .param p9, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 168
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p8, p9, p10, p6, v0}, Lcom/winlator/cmod/sysvshm/SysVSharedMemory;->mapSHMSegment(IJIZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 169
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 171
    div-int/lit8 v1, p5, 0x4

    int-to-short v1, v1

    .line 172
    .local v1, "totalWidth":S
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-virtual {v2, p2, v1, p4, p7}, Lcom/winlator/cmod/xserver/DrawableManager;->createDrawable(ISSB)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v2

    .line 173
    .local v2, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    invoke-virtual {v2, v0}, Lcom/winlator/cmod/xserver/Drawable;->setData(Ljava/nio/ByteBuffer;)V

    .line 174
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/Drawable;->setTexture(Lcom/winlator/cmod/renderer/Texture;)V

    .line 175
    iget-object v3, p0, Lcom/winlator/cmod/xserver/extensions/DRI3Extension;->onDestroyDrawableListener:Lcom/winlator/cmod/core/Callback;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/Drawable;->setOnDestroyListener(Lcom/winlator/cmod/core/Callback;)V

    .line 176
    iget-object v3, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual {v3, v2}, Lcom/winlator/cmod/xserver/PixmapManager;->createPixmap(Lcom/winlator/cmod/xserver/Drawable;)Lcom/winlator/cmod/xserver/Pixmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    nop

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "totalWidth":S
    .end local v2    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    invoke-static {p8}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 180
    nop

    .line 181
    return-void

    .line 169
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/winlator/cmod/xserver/errors/BadAlloc;

    invoke-direct {v1}, Lcom/winlator/cmod/xserver/errors/BadAlloc;-><init>()V

    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "pixmapId":I
    .end local p3    # "width":S
    .end local p4    # "height":S
    .end local p5    # "stride":I
    .end local p6    # "offset":I
    .end local p7    # "depth":B
    .end local p8    # "fd":I
    .end local p9    # "size":J
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "pixmapId":I
    .restart local p3    # "width":S
    .restart local p4    # "height":S
    .restart local p5    # "stride":I
    .restart local p6    # "offset":I
    .restart local p7    # "depth":B
    .restart local p8    # "fd":I
    .restart local p9    # "size":J
    :catchall_0
    move-exception v0

    invoke-static {p8}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 180
    throw v0
.end method

.method private pixmapFromHardwareBuffer(Lcom/winlator/cmod/xserver/XClient;ISSBI)V
    .locals 3
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "pixmapId"    # I
    .param p3, "width"    # S
    .param p4, "height"    # S
    .param p5, "depth"    # B
    .param p6, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 156
    :try_start_0
    new-instance v0, Lcom/winlator/cmod/renderer/GPUImage;

    invoke-direct {v0, p6}, Lcom/winlator/cmod/renderer/GPUImage;-><init>(I)V

    .line 157
    .local v0, "gpuImage":Lcom/winlator/cmod/renderer/GPUImage;
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-virtual {v0}, Lcom/winlator/cmod/renderer/GPUImage;->getStride()S

    move-result v2

    invoke-virtual {v1, p2, v2, p4, p5}, Lcom/winlator/cmod/xserver/DrawableManager;->createDrawable(ISSB)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v1

    .line 158
    .local v1, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xserver/Drawable;->setTexture(Lcom/winlator/cmod/renderer/Texture;)V

    .line 159
    iget-object v2, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual {v2, v1}, Lcom/winlator/cmod/xserver/PixmapManager;->createPixmap(Lcom/winlator/cmod/xserver/Drawable;)Lcom/winlator/cmod/xserver/Pixmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    nop

    .end local v0    # "gpuImage":Lcom/winlator/cmod/renderer/GPUImage;
    .end local v1    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    invoke-static {p6}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 163
    nop

    .line 164
    return-void

    .line 162
    :catchall_0
    move-exception v0

    invoke-static {p6}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 163
    throw v0
.end method

.method private queryVersion(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 4
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 65
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 67
    invoke-virtual {p3}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v0

    .line 68
    .local v0, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p3, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 69
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 70
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p3, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 71
    invoke-virtual {p3, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 72
    invoke-virtual {p3, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 73
    invoke-virtual {p3, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 74
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 76
    .end local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 67
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


# virtual methods
.method public getFirstErrorId()B
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstEventId()B
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getMajorOpcode()B
    .locals 1

    .line 51
    const/16 v0, -0x66

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "DRI3"

    return-object v0
.end method

.method public handleRequest(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 7
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 185
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->getRequestData()B

    move-result v0

    .line 186
    .local v0, "opcode":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    sparse-switch v0, :sswitch_data_0

    .line 206
    new-instance v1, Lcom/winlator/cmod/xserver/errors/BadImplementation;

    invoke-direct {v1}, Lcom/winlator/cmod/xserver/errors/BadImplementation;-><init>()V

    throw v1

    .line 201
    :sswitch_0
    iget-object v5, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v4, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v3

    sget-object v3, Lcom/winlator/cmod/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v3, v4, v2

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v2, v4, v1

    invoke-virtual {v5, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1

    .line 202
    .local v1, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/DRI3Extension;->pixmapFromBuffers(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 204
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_0
    goto :goto_3

    .line 201
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    .line 196
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :sswitch_1
    iget-object v5, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    new-array v4, v4, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v6, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v6, v4, v3

    sget-object v3, Lcom/winlator/cmod/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v3, v4, v2

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v2, v4, v1

    invoke-virtual {v5, v4}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1

    .line 197
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/DRI3Extension;->pixmapFromBuffer(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 198
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 199
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_2
    goto :goto_3

    .line 196
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2

    .line 191
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :sswitch_2
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1

    .line 192
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/DRI3Extension;->open(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 193
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 194
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_4
    goto :goto_3

    .line 191
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_4
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_5
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v2

    .line 188
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :sswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/DRI3Extension;->queryVersion(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 189
    nop

    .line 208
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method
