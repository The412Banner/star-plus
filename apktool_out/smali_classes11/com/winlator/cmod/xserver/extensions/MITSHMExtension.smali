.class public Lcom/winlator/cmod/xserver/extensions/MITSHMExtension;
.super Ljava/lang/Object;
.source "MITSHMExtension.java"

# interfaces
.implements Lcom/winlator/cmod/xserver/extensions/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/xserver/extensions/MITSHMExtension$ClientOpcodes;
    }
.end annotation


# static fields
.field public static final MAJOR_OPCODE:B = -0x65t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attach(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 3
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 68
    .local v0, "xid":I
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 69
    .local v1, "shmid":I
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 70
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->getSHMSegmentManager()Lcom/winlator/cmod/xserver/SHMSegmentManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/winlator/cmod/xserver/SHMSegmentManager;->attach(II)V

    .line 71
    return-void
.end method

.method private static detach(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 2
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XServer;->getSHMSegmentManager()Lcom/winlator/cmod/xserver/SHMSegmentManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/SHMSegmentManager;->detach(I)V

    .line 75
    return-void
.end method

.method private static putImage(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 27
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v2

    .line 79
    .local v2, "drawableId":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    .line 80
    .local v3, "gcId":I
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v15

    .line 81
    .local v15, "totalWidth":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v16

    .line 82
    .local v16, "totalHeight":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v17

    .line 83
    .local v17, "srcX":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v18

    .line 84
    .local v18, "srcY":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v19

    .line 85
    .local v19, "srcWidth":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v20

    .line 86
    .local v20, "srcHeight":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v21

    .line 87
    .local v21, "dstX":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v22

    .line 88
    .local v22, "dstY":S
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readByte()B

    move-result v23

    .line 89
    .local v23, "depth":B
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v14

    .line 91
    .local v14, "shmseg":I
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 93
    iget-object v4, v0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-virtual {v4, v2}, Lcom/winlator/cmod/xserver/DrawableManager;->getDrawable(I)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v24

    .line 94
    .local v24, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    if-eqz v24, :cond_3

    .line 96
    iget-object v4, v0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    invoke-virtual {v4, v3}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->getGraphicsContext(I)Lcom/winlator/cmod/xserver/GraphicsContext;

    move-result-object v25

    .line 97
    .local v25, "graphicsContext":Lcom/winlator/cmod/xserver/GraphicsContext;
    if-eqz v25, :cond_2

    .line 99
    iget-object v4, v0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/XServer;->getSHMSegmentManager()Lcom/winlator/cmod/xserver/SHMSegmentManager;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/winlator/cmod/xserver/SHMSegmentManager;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v26

    .line 100
    .local v26, "data":Ljava/nio/ByteBuffer;
    if-eqz v26, :cond_1

    .line 102
    invoke-virtual/range {v25 .. v25}, Lcom/winlator/cmod/xserver/GraphicsContext;->getFunction()Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    move-result-object v4

    sget-object v5, Lcom/winlator/cmod/xserver/GraphicsContext$Function;->COPY:Lcom/winlator/cmod/xserver/GraphicsContext$Function;

    if-ne v4, v5, :cond_0

    .line 106
    move-object/from16 v4, v24

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v19

    move/from16 v10, v20

    move/from16 v11, v23

    move-object/from16 v12, v26

    move v13, v15

    move v0, v14

    .end local v14    # "shmseg":I
    .local v0, "shmseg":I
    move/from16 v14, v16

    invoke-virtual/range {v4 .. v14}, Lcom/winlator/cmod/xserver/Drawable;->drawImage(SSSSSSBLjava/nio/ByteBuffer;SS)V

    .line 107
    return-void

    .line 103
    .end local v0    # "shmseg":I
    .restart local v14    # "shmseg":I
    :cond_0
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "GC Function other than COPY is not supported."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_1
    move v0, v14

    .end local v14    # "shmseg":I
    .restart local v0    # "shmseg":I
    new-instance v4, Lcom/winlator/cmod/xserver/errors/BadSHMSegment;

    invoke-direct {v4, v0}, Lcom/winlator/cmod/xserver/errors/BadSHMSegment;-><init>(I)V

    throw v4

    .line 97
    .end local v0    # "shmseg":I
    .end local v26    # "data":Ljava/nio/ByteBuffer;
    .restart local v14    # "shmseg":I
    :cond_2
    new-instance v4, Lcom/winlator/cmod/xserver/errors/BadGraphicsContext;

    invoke-direct {v4, v3}, Lcom/winlator/cmod/xserver/errors/BadGraphicsContext;-><init>(I)V

    throw v4

    .line 94
    .end local v25    # "graphicsContext":Lcom/winlator/cmod/xserver/GraphicsContext;
    :cond_3
    new-instance v4, Lcom/winlator/cmod/xserver/errors/BadDrawable;

    invoke-direct {v4, v2}, Lcom/winlator/cmod/xserver/errors/BadDrawable;-><init>(I)V

    throw v4
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

    .line 53
    invoke-virtual {p2}, Lcom/winlator/cmod/xconnector/XOutputStream;->lock()Lcom/winlator/cmod/xconnector/XStreamLock;

    move-result-object v0

    .line 54
    .local v0, "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 55
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V

    .line 56
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v3

    invoke-virtual {p2, v3}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 57
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeInt(I)V

    .line 58
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 59
    invoke-virtual {p2, v1}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 60
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 61
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeShort(S)V

    .line 62
    invoke-virtual {p2, v2}, Lcom/winlator/cmod/xconnector/XOutputStream;->writeByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xconnector/XStreamLock;->close()V

    .line 64
    .end local v0    # "lock":Lcom/winlator/cmod/xconnector/XStreamLock;
    :cond_0
    return-void

    .line 53
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

    .line 44
    const/16 v0, -0x80

    return v0
.end method

.method public getFirstEventId()B
    .locals 1

    .line 49
    const/16 v0, 0x40

    return v0
.end method

.method public getMajorOpcode()B
    .locals 1

    .line 39
    const/16 v0, -0x65

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "MIT-SHM"

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

    .line 111
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XClient;->getRequestData()B

    move-result v0

    .line 112
    .local v0, "opcode":I
    packed-switch v0, :pswitch_data_0

    .line 132
    new-instance v1, Lcom/winlator/cmod/xserver/errors/BadImplementation;

    invoke-direct {v1}, Lcom/winlator/cmod/xserver/errors/BadImplementation;-><init>()V

    throw v1

    .line 127
    :pswitch_0
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    const/4 v3, 0x0

    sget-object v4, Lcom/winlator/cmod/xserver/XServer$Lockable;->SHMSEGMENT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/winlator/cmod/xserver/XServer$Lockable;->DRAWABLE_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/winlator/cmod/xserver/XServer$Lockable;->GRAPHIC_CONTEXT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1

    .line 128
    .local v1, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/MITSHMExtension;->putImage(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 130
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_0
    goto :goto_3

    .line 127
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

    .line 122
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :pswitch_1
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->SHMSEGMENT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1

    .line 123
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_2
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/MITSHMExtension;->detach(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 124
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 125
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_2
    goto :goto_3

    .line 122
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

    .line 117
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :pswitch_2
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->SHMSEGMENT_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/XServer;->lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v1

    .line 118
    .restart local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_4
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/MITSHMExtension;->attach(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 119
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 120
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_4
    goto :goto_3

    .line 117
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

    .line 114
    .end local v1    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :pswitch_3
    invoke-static {p1, p2, p3}, Lcom/winlator/cmod/xserver/extensions/MITSHMExtension;->queryVersion(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    .line 115
    nop

    .line 134
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
