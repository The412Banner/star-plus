.class Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;
.super Ljava/lang/Object;
.source "HuffmanDecoder.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;,
        Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;,
        Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;,
        Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$InitialState;,
        Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;,
        Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;
    }
.end annotation


# static fields
.field private static final CODE_LENGTHS_ORDER:[I

.field private static final DISTANCE_TABLE:[I

.field private static final FIXED_DISTANCE:[I

.field private static final FIXED_LITERALS:[I

.field private static final RUN_LENGTH_TABLE:[S


# instance fields
.field private finalBlock:Z

.field private final in:Ljava/io/InputStream;

.field private final memory:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

.field private reader:Lorg/apache/commons/compress/utils/BitInputStream;

.field private state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 52
    const/16 v0, 0x1d

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->RUN_LENGTH_TABLE:[S

    .line 78
    const/16 v0, 0x20

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->DISTANCE_TABLE:[I

    .line 89
    const/16 v1, 0x13

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->CODE_LENGTHS_ORDER:[I

    .line 99
    const/16 v1, 0x120

    new-array v2, v1, [I

    sput-object v2, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->FIXED_LITERALS:[I

    .line 100
    sget-object v2, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->FIXED_LITERALS:[I

    const/4 v3, 0x0

    const/16 v4, 0x90

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5}, Ljava/util/Arrays;->fill([IIII)V

    .line 101
    sget-object v2, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->FIXED_LITERALS:[I

    const/16 v3, 0x100

    const/16 v6, 0x9

    invoke-static {v2, v4, v3, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 102
    sget-object v2, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->FIXED_LITERALS:[I

    const/16 v4, 0x118

    const/4 v6, 0x7

    invoke-static {v2, v3, v4, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 103
    sget-object v2, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->FIXED_LITERALS:[I

    invoke-static {v2, v4, v1, v5}, Ljava/util/Arrays;->fill([IIII)V

    .line 105
    new-array v0, v0, [I

    sput-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->FIXED_DISTANCE:[I

    .line 106
    sget-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->FIXED_DISTANCE:[I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 107
    return-void

    :array_0
    .array-data 2
        0x60s
        0x80s
        0xa0s
        0xc0s
        0xe0s
        0x100s
        0x120s
        0x140s
        0x161s
        0x1a1s
        0x1e1s
        0x221s
        0x262s
        0x2e2s
        0x362s
        0x3e2s
        0x463s
        0x563s
        0x663s
        0x763s
        0x864s
        0xa64s
        0xc64s
        0xe64s
        0x1065s
        0x1465s
        0x1865s
        0x1c65s
        0x70s
    .end array-data

    nop

    :array_1
    .array-data 4
        0x10
        0x20
        0x30
        0x40
        0x51
        0x71
        0x92
        0xd2
        0x113
        0x193
        0x214
        0x314
        0x415
        0x615
        0x816
        0xc16
        0x1017
        0x1817
        0x2018
        0x3018
        0x4019
        0x6019
        0x801a
        0xc01a
        0x1001b
        0x1801b
        0x2001c
        0x3001c
        0x4001d
        0x6001d
        0x8001e
        0xc001e
    .end array-data

    :array_2
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->finalBlock:Z

    .line 114
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;-><init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$1;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->memory:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

    .line 117
    new-instance v0, Lorg/apache/commons/compress/utils/BitInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, p1, v2}, Lorg/apache/commons/compress/utils/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 118
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->in:Ljava/io/InputStream;

    .line 119
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$InitialState;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$InitialState;-><init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$1;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    .line 120
    return-void
.end method

.method static synthetic access$1000()[S
    .locals 1

    .line 31
    sget-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->RUN_LENGTH_TABLE:[S

    return-object v0
.end method

.method static synthetic access$1100()[I
    .locals 1

    .line 31
    sget-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->DISTANCE_TABLE:[I

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Lorg/apache/commons/compress/utils/BitInputStream;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    .line 31
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;I)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    .line 31
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->memory:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    .line 31
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$800([I)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;
    .locals 1
    .param p0, "x0"    # [I

    .line 31
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->buildTree([I)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/commons/compress/utils/BitInputStream;Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/utils/BitInputStream;
    .param p1, "x1"    # Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->nextSymbol(Lorg/apache/commons/compress/utils/BitInputStream;Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;)I

    move-result v0

    return v0
.end method

.method private static buildTree([I)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;
    .locals 9
    .param p0, "litTable"    # [I

    .line 453
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->getCodes([I)[I

    move-result-object v0

    .line 455
    .local v0, "literalCodes":[I
    new-instance v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;-><init>(ILorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$1;)V

    .line 457
    .local v1, "root":Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 458
    aget v3, p0, v2

    .line 459
    .local v3, "len":I
    if-eqz v3, :cond_2

    .line 460
    move-object v4, v1

    .line 461
    .local v4, "node":Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;
    add-int/lit8 v5, v3, -0x1

    aget v5, v0, v5

    .line 462
    .local v5, "lit":I
    add-int/lit8 v6, v3, -0x1

    .local v6, "p":I
    :goto_1
    const/4 v7, 0x1

    if-ltz v6, :cond_1

    .line 463
    shl-int/2addr v7, v6

    and-int/2addr v7, v5

    .line 464
    .local v7, "bit":I
    if-nez v7, :cond_0

    invoke-virtual {v4}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->left()Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    move-result-object v8

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->right()Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    move-result-object v8

    :goto_2
    move-object v4, v8

    .line 462
    .end local v7    # "bit":I
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 466
    .end local v6    # "p":I
    :cond_1
    invoke-virtual {v4, v2}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->leaf(I)V

    .line 467
    add-int/lit8 v6, v3, -0x1

    aget v8, v0, v6

    add-int/2addr v8, v7

    aput v8, v0, v6

    .line 457
    .end local v3    # "len":I
    .end local v4    # "node":Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;
    .end local v5    # "lit":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 470
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method private static getCodes([I)[I
    .locals 6
    .param p0, "litTable"    # [I

    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, "max":I
    const/16 v1, 0x41

    new-array v1, v1, [I

    .line 477
    .local v1, "blCount":[I
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    .line 478
    .local v4, "aLitTable":I
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 479
    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    .line 477
    .end local v4    # "aLitTable":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 481
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 483
    const/4 v2, 0x0

    .line 484
    .local v2, "code":I
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [I

    .line 485
    .local v3, "nextCode":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-gt v4, v0, :cond_1

    .line 486
    aget v5, v1, v4

    add-int/2addr v5, v2

    shl-int/lit8 v2, v5, 0x1

    .line 487
    aput v2, v3, v4

    .line 485
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 490
    .end local v4    # "i":I
    :cond_1
    return-object v3
.end method

.method private static nextSymbol(Lorg/apache/commons/compress/utils/BitInputStream;Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;)I
    .locals 5
    .param p0, "reader"    # Lorg/apache/commons/compress/utils/BitInputStream;
    .param p1, "tree"    # Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    move-object v0, p1

    .line 374
    .local v0, "node":Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;
    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v2, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->literal:I

    if-ne v2, v1, :cond_1

    .line 375
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v1

    .line 376
    .local v1, "bit":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->leftNode:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->rightNode:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    :goto_1
    move-object v0, v3

    .line 377
    .end local v1    # "bit":J
    goto :goto_0

    .line 378
    :cond_1
    if-eqz v0, :cond_2

    iget v1, v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;->literal:I

    :cond_2
    return v1
.end method

.method private static populateDynamicTables(Lorg/apache/commons/compress/utils/BitInputStream;[I[I)V
    .locals 17
    .param p0, "reader"    # Lorg/apache/commons/compress/utils/BitInputStream;
    .param p1, "literals"    # [I
    .param p2, "distances"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v3

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    long-to-int v3, v3

    .line 384
    .local v3, "codeLengths":I
    const/16 v4, 0x13

    new-array v4, v4, [I

    .line 385
    .local v4, "codeLengthValues":[I
    const/4 v5, 0x0

    .local v5, "cLen":I
    :goto_0
    const/4 v6, 0x3

    if-ge v5, v3, :cond_0

    .line 386
    sget-object v7, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->CODE_LENGTHS_ORDER:[I

    aget v7, v7, v5

    invoke-static {v0, v6}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v8

    long-to-int v6, v8

    aput v6, v4, v7

    .line 385
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 389
    .end local v5    # "cLen":I
    :cond_0
    invoke-static {v4}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->buildTree([I)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;

    move-result-object v5

    .line 391
    .local v5, "codeLengthTree":Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;
    array-length v7, v1

    array-length v8, v2

    add-int/2addr v7, v8

    new-array v7, v7, [I

    .line 393
    .local v7, "auxBuffer":[I
    const/4 v8, -0x1

    .line 394
    .local v8, "value":I
    const/4 v9, 0x0

    .line 395
    .local v9, "length":I
    const/4 v10, 0x0

    .line 396
    .local v10, "off":I
    :goto_1
    array-length v11, v7

    if-ge v10, v11, :cond_6

    .line 397
    if-lez v9, :cond_1

    .line 398
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "off":I
    .local v11, "off":I
    aput v8, v7, v10

    .line 399
    add-int/lit8 v9, v9, -0x1

    move v10, v11

    goto :goto_1

    .line 401
    .end local v11    # "off":I
    .restart local v10    # "off":I
    :cond_1
    invoke-static {v0, v5}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->nextSymbol(Lorg/apache/commons/compress/utils/BitInputStream;Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$BinaryTreeNode;)I

    move-result v11

    .line 402
    .local v11, "symbol":I
    const/16 v12, 0x10

    if-ge v11, v12, :cond_2

    .line 403
    move v8, v11

    .line 404
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "off":I
    .local v12, "off":I
    aput v8, v7, v10

    move v10, v12

    goto :goto_2

    .line 405
    .end local v12    # "off":I
    .restart local v10    # "off":I
    :cond_2
    const-wide/16 v13, 0x3

    if-ne v11, v12, :cond_3

    .line 406
    const/4 v12, 0x2

    invoke-static {v0, v12}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v15

    add-long v12, v15, v13

    long-to-int v9, v12

    goto :goto_2

    .line 407
    :cond_3
    const/16 v12, 0x11

    if-ne v11, v12, :cond_4

    .line 408
    const/4 v8, 0x0

    .line 409
    invoke-static {v0, v6}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v15

    add-long v12, v15, v13

    long-to-int v9, v12

    goto :goto_2

    .line 410
    :cond_4
    const/16 v12, 0x12

    if-ne v11, v12, :cond_5

    .line 411
    const/4 v8, 0x0

    .line 412
    const/4 v12, 0x7

    invoke-static {v0, v12}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v12

    const-wide/16 v14, 0xb

    add-long/2addr v12, v14

    long-to-int v9, v12

    .line 414
    .end local v11    # "symbol":I
    :cond_5
    :goto_2
    goto :goto_1

    .line 417
    :cond_6
    array-length v6, v1

    const/4 v11, 0x0

    invoke-static {v7, v11, v1, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    array-length v6, v1

    array-length v12, v2

    invoke-static {v7, v6, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    return-void
.end method

.method private readBits(I)J
    .locals 2
    .param p1, "numBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-static {v0, p1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static readBits(Lorg/apache/commons/compress/utils/BitInputStream;I)J
    .locals 4
    .param p0, "reader"    # Lorg/apache/commons/compress/utils/BitInputStream;
    .param p1, "numBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v0

    .line 548
    .local v0, "r":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 551
    return-wide v0

    .line 549
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "Truncated Deflate64 Stream"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readDynamicTables()[[I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 181
    .local v0, "result":[[I
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(I)J

    move-result-wide v2

    const-wide/16 v4, 0x101

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 182
    .local v2, "literals":I
    new-array v3, v2, [I

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 184
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(I)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    long-to-int v1, v5

    .line 185
    .local v1, "distances":I
    new-array v3, v1, [I

    const/4 v5, 0x1

    aput-object v3, v0, v5

    .line 187
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    aget-object v4, v0, v4

    aget-object v5, v0, v5

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->populateDynamicTables(Lorg/apache/commons/compress/utils/BitInputStream;[I[I)V

    .line 188
    return-object v0
.end method

.method private switchToUncompressedState()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->alignWithByteBoundary()V

    .line 170
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(I)J

    move-result-wide v1

    .line 171
    .local v1, "bLen":J
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(I)J

    move-result-wide v3

    .line 172
    .local v3, "bNLen":J
    const-wide/32 v5, 0xffff

    xor-long v7, v1, v5

    and-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v1, v2, v5}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;-><init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;JLorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$1;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    .line 177
    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Illegal LEN / NLEN values"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .line 124
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$InitialState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$InitialState;-><init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$1;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    .line 125
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 126
    return-void
.end method

.method public decode([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->decode([BII)I

    move-result v0

    return v0
.end method

.method public decode([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    nop

    :goto_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->finalBlock:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 158
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 134
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;->state()Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->INITIAL:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    if-ne v0, v1, :cond_3

    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(I)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->finalBlock:Z

    .line 136
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readBits(I)J

    move-result-wide v3

    long-to-int v1, v3

    .line 137
    .local v1, "mode":I
    packed-switch v1, :pswitch_data_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported compression: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->readDynamicTables()[[I

    move-result-object v3

    .line 146
    .local v3, "tables":[[I
    new-instance v4, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;

    sget-object v5, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->DYNAMIC_CODES:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    aget-object v2, v3, v2

    aget-object v0, v3, v0

    invoke-direct {v4, p0, v5, v2, v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;-><init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;[I[I)V

    iput-object v4, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    .line 147
    goto :goto_3

    .line 142
    .end local v3    # "tables":[[I
    :pswitch_1
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;

    sget-object v2, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->FIXED_CODES:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    sget-object v3, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->FIXED_LITERALS:[I

    sget-object v4, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->FIXED_DISTANCE:[I

    invoke-direct {v0, p0, v2, v3, v4}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$HuffmanCodes;-><init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;[I[I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    .line 143
    goto :goto_3

    .line 139
    :pswitch_2
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->switchToUncompressedState()V

    .line 140
    nop

    .line 151
    .end local v1    # "mode":I
    :goto_3
    goto :goto_0

    .line 152
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->state:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;->read([BII)I

    move-result v0

    .line 153
    .local v0, "r":I
    if-eqz v0, :cond_4

    .line 154
    return v0

    .line 156
    .end local v0    # "r":I
    :cond_4
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getBytesRead()J
    .locals 2

    .line 165
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->reader:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method
