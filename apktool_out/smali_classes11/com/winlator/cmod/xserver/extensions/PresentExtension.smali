.class public Lcom/winlator/cmod/xserver/extensions/PresentExtension;
.super Ljava/lang/Object;
.source "PresentExtension.java"

# interfaces
.implements Lcom/winlator/cmod/xserver/extensions/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;,
        Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;,
        Lcom/winlator/cmod/xserver/extensions/PresentExtension$Mode;,
        Lcom/winlator/cmod/xserver/extensions/PresentExtension$ClientOpcodes;
    }
.end annotation


# static fields
.field private static final FAKE_INTERVAL:I = 0x411a

.field public static final MAJOR_OPCODE:B = -0x67t


# instance fields
.field private final events:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;",
            ">;"
        }
    .end annotation
.end field

.field private syncExtension:Lcom/winlator/cmod/xserver/extensions/SyncExtension;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    return-void
.end method

.method private presentPixmap(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 26
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 109
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    .line 110
    .local v3, "windowId":I
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v4

    .line 111
    .local v4, "pixmapId":I
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v14

    .line 112
    .local v14, "serial":I
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v15

    .line 114
    .local v15, "xOff":S
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v16

    .line 115
    .local v16, "yOff":S
    invoke-virtual {v2, v0}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v13

    .line 117
    .local v13, "idleFence":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xserver/XClient;->getRemainingRequestLength()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 119
    iget-object v0, v1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v0, v3}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v12

    .line 120
    .local v12, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v12, :cond_2

    .line 122
    iget-object v0, v1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual {v0, v4}, Lcom/winlator/cmod/xserver/PixmapManager;->getPixmap(I)Lcom/winlator/cmod/xserver/Pixmap;

    move-result-object v11

    .line 123
    .local v11, "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    if-eqz v11, :cond_1

    .line 125
    invoke-virtual {v12}, Lcom/winlator/cmod/xserver/Window;->getContent()Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v10

    .line 126
    .local v10, "content":Lcom/winlator/cmod/xserver/Drawable;
    iget-object v0, v10, Lcom/winlator/cmod/xserver/Drawable;->visual:Lcom/winlator/cmod/xserver/Visual;

    iget-byte v0, v0, Lcom/winlator/cmod/xserver/Visual;->depth:B

    iget-object v5, v11, Lcom/winlator/cmod/xserver/Pixmap;->drawable:Lcom/winlator/cmod/xserver/Drawable;

    iget-object v5, v5, Lcom/winlator/cmod/xserver/Drawable;->visual:Lcom/winlator/cmod/xserver/Visual;

    iget-byte v5, v5, Lcom/winlator/cmod/xserver/Visual;->depth:B

    if-ne v0, v5, :cond_0

    .line 128
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v17, v5, v7

    .line 129
    .local v17, "ust":J
    const-wide/16 v5, 0x411a

    div-long v19, v17, v5

    .line 131
    .local v19, "msc":J
    iget-object v9, v10, Lcom/winlator/cmod/xserver/Drawable;->renderLock:Ljava/lang/Object;

    monitor-enter v9

    .line 132
    :try_start_0
    iget-object v0, v11, Lcom/winlator/cmod/xserver/Pixmap;->drawable:Lcom/winlator/cmod/xserver/Drawable;

    iget-short v0, v0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    iget-object v5, v11, Lcom/winlator/cmod/xserver/Pixmap;->drawable:Lcom/winlator/cmod/xserver/Drawable;

    iget-short v8, v5, Lcom/winlator/cmod/xserver/Drawable;->height:S

    iget-object v7, v11, Lcom/winlator/cmod/xserver/Pixmap;->drawable:Lcom/winlator/cmod/xserver/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v6, 0x0

    const/16 v21, 0x0

    move-object v5, v10

    move-object/from16 v22, v7

    move/from16 v7, v21

    move/from16 v21, v8

    move v8, v15

    move-object/from16 v23, v9

    move/from16 v9, v16

    move-object/from16 v24, v10

    .end local v10    # "content":Lcom/winlator/cmod/xserver/Drawable;
    .local v24, "content":Lcom/winlator/cmod/xserver/Drawable;
    move v10, v0

    move-object/from16 v25, v11

    .end local v11    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .local v25, "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    move/from16 v11, v21

    move-object v1, v12

    .end local v12    # "window":Lcom/winlator/cmod/xserver/Window;
    .local v1, "window":Lcom/winlator/cmod/xserver/Window;
    move-object/from16 v12, v22

    :try_start_1
    invoke-virtual/range {v5 .. v12}, Lcom/winlator/cmod/xserver/Drawable;->copyArea(SSSSSSLcom/winlator/cmod/xserver/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    move-object/from16 v12, p0

    move-object/from16 v10, v25

    .end local v25    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .local v10, "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    :try_start_2
    invoke-direct {v12, v1, v10, v14, v13}, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->sendIdleNotify(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Pixmap;II)V

    .line 134
    sget-object v8, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;->PIXMAP:Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;

    sget-object v9, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Mode;->COPY:Lcom/winlator/cmod/xserver/extensions/PresentExtension$Mode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v5, p0

    move-object v6, v1

    move v7, v14

    move-object/from16 v21, v10

    .end local v10    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .local v21, "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    move-wide/from16 v10, v17

    move/from16 v22, v13

    .end local v13    # "idleFence":I
    .local v22, "idleFence":I
    move-wide/from16 v12, v19

    :try_start_3
    invoke-direct/range {v5 .. v13}, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->sendCompleteNotify(Lcom/winlator/cmod/xserver/Window;ILcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;Lcom/winlator/cmod/xserver/extensions/PresentExtension$Mode;JJ)V

    .line 135
    monitor-exit v23

    .line 136
    return-void

    .line 135
    .end local v21    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .end local v22    # "idleFence":I
    .restart local v10    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .restart local v13    # "idleFence":I
    :catchall_0
    move-exception v0

    move-object/from16 v21, v10

    move/from16 v22, v13

    .end local v10    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .end local v13    # "idleFence":I
    .restart local v21    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .restart local v22    # "idleFence":I
    goto :goto_0

    .end local v21    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .end local v22    # "idleFence":I
    .restart local v13    # "idleFence":I
    .restart local v25    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    :catchall_1
    move-exception v0

    move/from16 v22, v13

    move-object/from16 v21, v25

    .end local v13    # "idleFence":I
    .end local v25    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .restart local v21    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .restart local v22    # "idleFence":I
    goto :goto_0

    .end local v1    # "window":Lcom/winlator/cmod/xserver/Window;
    .end local v21    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .end local v22    # "idleFence":I
    .end local v24    # "content":Lcom/winlator/cmod/xserver/Drawable;
    .local v10, "content":Lcom/winlator/cmod/xserver/Drawable;
    .restart local v11    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .restart local v12    # "window":Lcom/winlator/cmod/xserver/Window;
    .restart local v13    # "idleFence":I
    :catchall_2
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v21, v11

    move-object v1, v12

    move/from16 v22, v13

    .end local v10    # "content":Lcom/winlator/cmod/xserver/Drawable;
    .end local v11    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .end local v12    # "window":Lcom/winlator/cmod/xserver/Window;
    .end local v13    # "idleFence":I
    .restart local v1    # "window":Lcom/winlator/cmod/xserver/Window;
    .restart local v21    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .restart local v22    # "idleFence":I
    .restart local v24    # "content":Lcom/winlator/cmod/xserver/Drawable;
    :goto_0
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_0

    .line 126
    .end local v1    # "window":Lcom/winlator/cmod/xserver/Window;
    .end local v17    # "ust":J
    .end local v19    # "msc":J
    .end local v21    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .end local v22    # "idleFence":I
    .end local v24    # "content":Lcom/winlator/cmod/xserver/Drawable;
    .restart local v10    # "content":Lcom/winlator/cmod/xserver/Drawable;
    .restart local v11    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    .restart local v12    # "window":Lcom/winlator/cmod/xserver/Window;
    .restart local v13    # "idleFence":I
    :cond_0
    new-instance v0, Lcom/winlator/cmod/xserver/errors/BadMatch;

    invoke-direct {v0}, Lcom/winlator/cmod/xserver/errors/BadMatch;-><init>()V

    throw v0

    .line 123
    .end local v10    # "content":Lcom/winlator/cmod/xserver/Drawable;
    :cond_1
    new-instance v0, Lcom/winlator/cmod/xserver/errors/BadPixmap;

    invoke-direct {v0, v4}, Lcom/winlator/cmod/xserver/errors/BadPixmap;-><init>(I)V

    throw v0

    .line 120
    .end local v11    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    :cond_2
    new-instance v0, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v0, v3}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v0
.end method

.method private static queryVersion(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
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

    .line 95
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 97
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v0

    .line 98
    .local v0, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 99
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 100
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 101
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 102
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 103
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 104
    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writePad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 106
    .end local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 97
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

.method private selectInput(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 9
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 139
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 140
    .local v0, "eventId":I
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 141
    .local v1, "windowId":I
    new-instance v2, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/winlator/cmod/xserver/Bitmask;-><init>(I)V

    .line 143
    .local v2, "mask":Lcom/winlator/cmod/xserver/Bitmask;
    iget-object v3, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v3, v1}, Lcom/winlator/cmod/xserver/WindowManager;->getWindow(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v3

    .line 144
    .local v3, "window":Lcom/winlator/cmod/xserver/Window;
    if-eqz v3, :cond_4

    .line 146
    invoke-static {}, Lcom/winlator/cmod/renderer/GPUImage;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Bitmask;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/Window;->getContent()Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v4

    .line 148
    .local v4, "content":Lcom/winlator/cmod/xserver/Drawable;
    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/Drawable;->getTexture()Lcom/winlator/cmod/renderer/Texture;

    move-result-object v5

    .line 149
    .local v5, "oldTexture":Lcom/winlator/cmod/renderer/Texture;
    iget-object v6, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v6}, Lcom/winlator/cmod/xserver/XServer;->getRenderer()Lcom/winlator/cmod/renderer/GLRenderer;

    move-result-object v6

    iget-object v6, v6, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/winlator/cmod/xserver/DrawableManager$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5}, Lcom/winlator/cmod/xserver/DrawableManager$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/renderer/Texture;)V

    invoke-virtual {v6, v7}, Lcom/winlator/cmod/widget/XServerView;->queueEvent(Ljava/lang/Runnable;)V

    .line 150
    new-instance v6, Lcom/winlator/cmod/renderer/GPUImage;

    iget-short v7, v4, Lcom/winlator/cmod/xserver/Drawable;->width:S

    iget-short v8, v4, Lcom/winlator/cmod/xserver/Drawable;->height:S

    invoke-direct {v6, v7, v8}, Lcom/winlator/cmod/renderer/GPUImage;-><init>(SS)V

    invoke-virtual {v4, v6}, Lcom/winlator/cmod/xserver/Drawable;->setTexture(Lcom/winlator/cmod/renderer/Texture;)V

    .line 153
    .end local v4    # "content":Lcom/winlator/cmod/xserver/Drawable;
    .end local v5    # "oldTexture":Lcom/winlator/cmod/renderer/Texture;
    :cond_0
    iget-object v4, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    monitor-enter v4

    .line 154
    :try_start_0
    iget-object v5, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;

    .line 155
    .local v5, "event":Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;
    if-eqz v5, :cond_3

    .line 156
    invoke-static {v5}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->-$$Nest$fgetwindow(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;)Lcom/winlator/cmod/xserver/Window;

    move-result-object v6

    if-ne v6, v3, :cond_2

    invoke-static {v5}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->-$$Nest$fgetclient(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;)Lcom/winlator/cmod/xserver/XClient;

    move-result-object v6

    if-ne v6, p1, :cond_2

    .line 158
    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Bitmask;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 159
    invoke-static {v5, v2}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->-$$Nest$fputmask(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;Lcom/winlator/cmod/xserver/Bitmask;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v6, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 156
    :cond_2
    new-instance v6, Lcom/winlator/cmod/xserver/errors/BadMatch;

    invoke-direct {v6}, Lcom/winlator/cmod/xserver/errors/BadMatch;-><init>()V

    .end local v0    # "eventId":I
    .end local v1    # "windowId":I
    .end local v2    # "mask":Lcom/winlator/cmod/xserver/Bitmask;
    .end local v3    # "window":Lcom/winlator/cmod/xserver/Window;
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .end local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .end local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    throw v6

    .line 164
    .restart local v0    # "eventId":I
    .restart local v1    # "windowId":I
    .restart local v2    # "mask":Lcom/winlator/cmod/xserver/Bitmask;
    .restart local v3    # "window":Lcom/winlator/cmod/xserver/Window;
    .restart local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    .restart local p2    # "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    .restart local p3    # "outputStream":Lcom/winlator/cmod/xconnector/XOutputStream;
    :cond_3
    new-instance v6, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;-><init>(Lcom/winlator/cmod/xserver/extensions/PresentExtension-IA;)V

    move-object v5, v6

    .line 165
    invoke-static {v5, v0}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->-$$Nest$fputid(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;I)V

    .line 166
    invoke-static {v5, v3}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->-$$Nest$fputwindow(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;Lcom/winlator/cmod/xserver/Window;)V

    .line 167
    invoke-static {v5, p1}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->-$$Nest$fputclient(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;Lcom/winlator/cmod/xserver/XClient;)V

    .line 168
    invoke-static {v5, v2}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->-$$Nest$fputmask(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;Lcom/winlator/cmod/xserver/Bitmask;)V

    .line 169
    iget-object v6, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v6, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    .end local v5    # "event":Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;
    :goto_0
    monitor-exit v4

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 144
    :cond_4
    new-instance v4, Lcom/winlator/cmod/xserver/errors/BadWindow;

    invoke-direct {v4, v1}, Lcom/winlator/cmod/xserver/errors/BadWindow;-><init>(I)V

    throw v4
.end method

.method private sendCompleteNotify(Lcom/winlator/cmod/xserver/Window;ILcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;Lcom/winlator/cmod/xserver/extensions/PresentExtension$Mode;JJ)V
    .locals 16
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "serial"    # I
    .param p3, "kind"    # Lcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;
    .param p4, "mode"    # Lcom/winlator/cmod/xserver/extensions/PresentExtension$Mode;
    .param p5, "ust"    # J
    .param p7, "msc"    # J

    .line 84
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    monitor-enter v2

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, v1, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 86
    iget-object v3, v1, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;

    .line 87
    .local v3, "event":Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;
    invoke-static {v3}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->-$$Nest$fgetwindow(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;)Lcom/winlator/cmod/xserver/Window;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v15, p1

    if-ne v4, v15, :cond_0

    :try_start_1
    invoke-static {v3}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->-$$Nest$fgetmask(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;)Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v4

    invoke-static {}, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;->getEventMask()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/xserver/Bitmask;->isSet(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    invoke-static {v3}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->-$$Nest$fgetclient(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;)Lcom/winlator/cmod/xserver/XClient;

    move-result-object v4

    new-instance v13, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;

    invoke-static {v3}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->-$$Nest$fgetid(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;)I

    move-result v6

    move-object v5, v13

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v11, p5

    move-object v1, v13

    move-wide/from16 v13, p7

    invoke-direct/range {v5 .. v14}, Lcom/winlator/cmod/xserver/events/PresentCompleteNotify;-><init>(ILcom/winlator/cmod/xserver/Window;ILcom/winlator/cmod/xserver/extensions/PresentExtension$Kind;Lcom/winlator/cmod/xserver/extensions/PresentExtension$Mode;JJ)V

    invoke-virtual {v4, v1}, Lcom/winlator/cmod/xserver/XClient;->sendEvent(Lcom/winlator/cmod/xserver/events/Event;)V

    .line 85
    .end local v3    # "event":Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    goto :goto_0

    :cond_1
    move-object/from16 v15, p1

    .line 91
    .end local v0    # "i":I
    monitor-exit v2

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    move-object/from16 v15, p1

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private sendIdleNotify(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Pixmap;II)V
    .locals 11
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "pixmap"    # Lcom/winlator/cmod/xserver/Pixmap;
    .param p3, "serial"    # I
    .param p4, "idleFence"    # I

    .line 71
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->syncExtension:Lcom/winlator/cmod/xserver/extensions/SyncExtension;

    invoke-virtual {v0, p4}, Lcom/winlator/cmod/xserver/extensions/SyncExtension;->setTriggered(I)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    monitor-enter v0

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->events:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;

    .line 76
    .local v2, "event":Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;
    invoke-static {v2}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->-$$Nest$fgetwindow(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;)Lcom/winlator/cmod/xserver/Window;

    move-result-object v3

    if-ne v3, p1, :cond_1

    invoke-static {v2}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->-$$Nest$fgetmask(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;)Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v3

    invoke-static {}, Lcom/winlator/cmod/xserver/events/PresentIdleNotify;->getEventMask()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/xserver/Bitmask;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-static {v2}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->-$$Nest$fgetclient(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;)Lcom/winlator/cmod/xserver/XClient;

    move-result-object v3

    new-instance v10, Lcom/winlator/cmod/xserver/events/PresentIdleNotify;

    invoke-static {v2}, Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;->-$$Nest$fgetid(Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;)I

    move-result v5

    move-object v4, v10

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/winlator/cmod/xserver/events/PresentIdleNotify;-><init>(ILcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Pixmap;II)V

    invoke-virtual {v3, v10}, Lcom/winlator/cmod/xserver/XClient;->sendEvent(Lcom/winlator/cmod/xserver/events/Event;)V

    .line 74
    .end local v2    # "event":Lcom/winlator/cmod/xserver/extensions/PresentExtension$Event;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getFirstErrorId()B
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstEventId()B
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getMajorOpcode()B
    .locals 1

    .line 57
    const/16 v0, -0x67

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "Present"

    return-object v0
.end method

.method public handleRequest(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
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

    .line 176
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->getRequestData()B

    move-result v0

    .line 177
    .local v0, "opcode":I
    iget-object v1, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->syncExtension:Lcom/winlator/cmod/xserver/extensions/SyncExtension;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    const/16 v2, -0x68

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->getExtension(I)Lcom/winlator/cmod/xserver/extensions/Extension;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/extensions/SyncExtension;

    iput-object v1, p0, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->syncExtension:Lcom/winlator/cmod/xserver/extensions/SyncExtension;

    .line 179
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 194
    :pswitch_0
    new-instance v1, Lcom/winlator/cmod/xserver/errors/BadImplementation;

    invoke-direct {v1}, Lcom/winlator/cmod/xserver/errors/BadImplementation;-><init>()V

    throw v1

    .line 189
    :pswitch_1
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1

    .line 190
    .local v1, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->selectInput(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 192
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_1
    goto :goto_2

    .line 189
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2

    .line 184
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :pswitch_2
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    const/4 v3, 0x0

    sget-object v4, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/winlator/cmod/xserver/XServer$Lockable;->PIXMAP_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1

    .line 185
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->presentPixmap(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 186
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 187
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_3
    goto :goto_2

    .line 184
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_3
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2

    .line 181
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :pswitch_3
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/PresentExtension;->queryVersion(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 182
    nop

    .line 196
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
