.class final Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;
.super Ljava/lang/Object;
.source "ChaCha20Cipher.java"

# interfaces
.implements Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$ChaChaEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineAEADDec"
.end annotation


# instance fields
.field private final cipherBuf:Ljava/io/ByteArrayOutputStream;

.field private final tag:[B

.field final synthetic this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;


# direct methods
.method private constructor <init>(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1351
    iput-object p1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1352
    invoke-static {p1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$600(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)V

    .line 1353
    const-wide/16 v0, 0x1

    invoke-static {p1, v0, v1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$702(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;J)J

    .line 1354
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->cipherBuf:Ljava/io/ByteArrayOutputStream;

    .line 1355
    const/16 p1, 0x10

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->tag:[B

    .line 1356
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
    .param p2, "x1"    # Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1334
    invoke-direct {p0, p1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;-><init>(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)V

    return-void
.end method


# virtual methods
.method public doFinal([BII[BI)I
    .locals 18
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/AEADBadTagException;,
            Ljava/security/KeyException;
        }
    .end annotation

    .line 1389
    move-object/from16 v7, p0

    iget-object v0, v7, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->cipherBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 1393
    const/4 v2, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->doUpdate([BII[BI)I

    .line 1394
    move-object/from16 v0, p1

    .line 1395
    .local v0, "ctPlusTag":[B
    move/from16 v1, p3

    move v2, v1

    move-object v1, v0

    .local v1, "ctPlusTagLen":I
    goto :goto_0

    .line 1397
    .end local v0    # "ctPlusTag":[B
    .end local v1    # "ctPlusTagLen":I
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->doUpdate([BII[BI)I

    .line 1398
    iget-object v0, v7, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->cipherBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1399
    .restart local v0    # "ctPlusTag":[B
    array-length v1, v0

    move v2, v1

    move-object v1, v0

    .line 1401
    .end local v0    # "ctPlusTag":[B
    .local v1, "ctPlusTag":[B
    .local v2, "ctPlusTagLen":I
    :goto_0
    iget-object v0, v7, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->cipherBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1405
    const/16 v0, 0x10

    if-lt v2, v0, :cond_2

    .line 1408
    add-int/lit8 v3, v2, -0x10

    .line 1412
    .local v3, "ctLen":I
    :try_start_0
    iget-object v4, v7, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v5, p4

    :try_start_1
    array-length v6, v5
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v14, p5

    :try_start_2
    invoke-static {v4, v14, v3, v6}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$400(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;III)I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1415
    nop

    .line 1419
    iget-object v8, v7, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    iget-object v12, v7, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->tag:[B

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v9, v1

    move v11, v3

    invoke-static/range {v8 .. v13}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$1300(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;[BII[BI)V

    .line 1421
    const/16 v4, 0x20

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1422
    .local v4, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1423
    invoke-virtual {v4, v1, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1424
    iget-object v6, v7, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->tag:[B

    const/4 v15, 0x0

    invoke-virtual {v4, v6, v15, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1425
    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v10

    xor-long/2addr v8, v10

    .line 1426
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v10

    const/16 v0, 0x18

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v12

    xor-long/2addr v10, v12

    or-long v16, v8, v10

    .line 1428
    .local v16, "tagCompare":J
    const-wide/16 v8, 0x0

    cmp-long v0, v16, v8

    if-nez v0, :cond_1

    .line 1431
    iget-object v8, v7, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    const/4 v10, 0x0

    move-object v9, v1

    move v11, v3

    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-static/range {v8 .. v13}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$500(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;[BII[BI)V

    .line 1432
    iget-object v0, v7, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    invoke-static {v0, v15}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$802(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;Z)Z

    .line 1434
    return v3

    .line 1429
    :cond_1
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    const-string v6, "Tag mismatch"

    invoke-direct {v0, v6}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1413
    .end local v4    # "bb":Ljava/nio/ByteBuffer;
    .end local v16    # "tagCompare":J
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v5, p4

    :goto_1
    move/from16 v14, p5

    .line 1414
    .local v0, "ioobe":Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    new-instance v4, Ljavax/crypto/ShortBufferException;

    const-string v6, "Output buffer too small"

    invoke-direct {v4, v6}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1406
    .end local v0    # "ioobe":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "ctLen":I
    :cond_2
    move-object/from16 v5, p4

    move/from16 v14, p5

    new-instance v0, Ljavax/crypto/AEADBadTagException;

    const-string v3, "Input too short - need tag"

    invoke-direct {v0, v3}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doUpdate([BII[BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .line 1361
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    invoke-static {v0}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$300(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1365
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    invoke-static {v0}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$800(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1366
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    invoke-static {v1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$900(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$1000(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;J)V

    .line 1367
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$802(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;Z)Z

    .line 1370
    :cond_0
    if-eqz p1, :cond_1

    .line 1371
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->this$0:Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;

    array-length v1, p1

    invoke-static {v0, p2, p3, v1}, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;->access$400(Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher;III)I

    .line 1372
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->cipherBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1379
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1375
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must use either a different key or iv."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputSize(IZ)I
    .locals 3
    .param p1, "inLen"    # I
    .param p2, "isFinal"    # Z

    .line 1346
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    add-int/lit8 v1, p1, -0x10

    iget-object v2, p0, Lorg/openjsse/com/sun/crypto/provider/ChaCha20Cipher$EngineAEADDec;->cipherBuf:Ljava/io/ByteArrayOutputStream;

    .line 1348
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    .line 1347
    invoke-static {v1, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Integer;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    nop

    .line 1346
    :goto_0
    return v0
.end method
