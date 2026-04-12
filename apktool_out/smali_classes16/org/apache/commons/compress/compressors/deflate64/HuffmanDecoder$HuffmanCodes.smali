.class Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;
.super Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;
.source "HuffmanDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HuffmanCodes"
.end annotation


# instance fields
.field private final distanceTree:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

.field private endOfBlock:Z

.field private final lengthTree:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

.field private runBuffer:[B

.field private runBufferLength:I

.field private runBufferPos:I

.field private final state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

.field final synthetic this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;[I[I)V
    .locals 1
    .param p2, "state"    # Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
    .param p3, "lengths"    # [I
    .param p4, "distance"    # [I

    .line 291
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;-><init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$1;)V

    .line 282
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->endOfBlock:Z

    .line 287
    iput p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    .line 288
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBuffer:[B

    .line 289
    iput p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferLength:I

    .line 292
    iput-object p2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    .line 293
    invoke-static {p3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$800([I)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->lengthTree:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 294
    invoke-static {p4}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$800([I)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->distanceTree:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    .line 295
    return-void
.end method

.method private copyFromRunBuffer([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 351
    iget v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferLength:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    sub-int/2addr v0, v1

    .line 352
    .local v0, "bytesInBuffer":I
    const/4 v1, 0x0

    .line 353
    .local v1, "copiedBytes":I
    if-lez v0, :cond_0

    .line 354
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 355
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBuffer:[B

    iget v3, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    iget v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    .line 358
    :cond_0
    return v1
.end method

.method private decodeNext([BII)I
    .locals 16
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-boolean v3, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->endOfBlock:Z

    if-eqz v3, :cond_0

    .line 312
    const/4 v3, -0x1

    return v3

    .line 314
    :cond_0
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->copyFromRunBuffer([BII)I

    move-result v3

    .line 316
    .local v3, "result":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 317
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-static {v4}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$400(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Lorg/apache/commons/compress/utils/BitInputStream;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->lengthTree:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    invoke-static {v4, v5}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$900(Lorg/apache/commons/compress/utils/BitInputStream;Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;)I

    move-result v4

    .line 318
    .local v4, "symbol":I
    const/16 v5, 0x100

    if-ge v4, v5, :cond_1

    .line 319
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "result":I
    .local v5, "result":I
    add-int v3, p2, v3

    iget-object v6, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-static {v6}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$600(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

    move-result-object v6

    int-to-byte v7, v4

    invoke-virtual {v6, v7}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->add(B)B

    move-result v6

    aput-byte v6, v1, v3

    move v3, v5

    goto :goto_1

    .line 320
    .end local v5    # "result":I
    .restart local v3    # "result":I
    :cond_1
    if-le v4, v5, :cond_3

    .line 321
    invoke-static {}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$1000()[S

    move-result-object v5

    add-int/lit16 v6, v4, -0x101

    aget-short v5, v5, v6

    .line 322
    .local v5, "runMask":I
    ushr-int/lit8 v6, v5, 0x5

    .line 323
    .local v6, "run":I
    and-int/lit8 v7, v5, 0x1f

    .line 324
    .local v7, "runXtra":I
    int-to-long v8, v6

    iget-object v10, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-static {v10, v7}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$500(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;I)J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v6, v8

    .line 326
    iget-object v8, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-static {v8}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$400(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Lorg/apache/commons/compress/utils/BitInputStream;

    move-result-object v8

    iget-object v9, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->distanceTree:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    invoke-static {v8, v9}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$900(Lorg/apache/commons/compress/utils/BitInputStream;Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;)I

    move-result v8

    .line 328
    .local v8, "distSym":I
    invoke-static {}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$1100()[I

    move-result-object v9

    aget v9, v9, v8

    .line 329
    .local v9, "distMask":I
    ushr-int/lit8 v10, v9, 0x4

    .line 330
    .local v10, "dist":I
    and-int/lit8 v11, v9, 0xf

    .line 331
    .local v11, "distXtra":I
    int-to-long v12, v10

    iget-object v14, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-static {v14, v11}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$500(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;I)J

    move-result-wide v14

    add-long/2addr v12, v14

    long-to-int v10, v12

    .line 333
    iget-object v12, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBuffer:[B

    array-length v12, v12

    if-ge v12, v6, :cond_2

    .line 334
    new-array v12, v6, [B

    iput-object v12, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBuffer:[B

    .line 336
    :cond_2
    iput v6, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferLength:I

    .line 337
    const/4 v12, 0x0

    iput v12, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    .line 338
    iget-object v12, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-static {v12}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$600(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

    move-result-object v12

    iget-object v13, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBuffer:[B

    invoke-virtual {v12, v10, v6, v13}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->recordToBuffer(II[B)V

    .line 340
    add-int v12, p2, v3

    sub-int v13, v2, v3

    invoke-direct {v0, v1, v12, v13}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->copyFromRunBuffer([BII)I

    move-result v12

    add-int/2addr v3, v12

    .line 341
    .end local v5    # "runMask":I
    .end local v6    # "run":I
    .end local v7    # "runXtra":I
    .end local v8    # "distSym":I
    .end local v9    # "distMask":I
    .end local v10    # "dist":I
    .end local v11    # "distXtra":I
    nop

    .line 345
    .end local v4    # "symbol":I
    :goto_1
    goto :goto_0

    .line 342
    .restart local v4    # "symbol":I
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->endOfBlock:Z

    .line 343
    return v3

    .line 347
    .end local v4    # "symbol":I
    :cond_4
    return v3
.end method


# virtual methods
.method available()I
    .locals 2

    .line 368
    iget v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferLength:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->runBufferPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method hasData()Z
    .locals 1

    .line 363
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->endOfBlock:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    if-nez p3, :cond_0

    .line 305
    const/4 v0, 0x0

    return v0

    .line 307
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->decodeNext([BII)I

    move-result v0

    return v0
.end method

.method state()Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
    .locals 1

    .line 299
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->endOfBlock:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->INITIAL:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    :goto_0
    return-object v0
.end method
