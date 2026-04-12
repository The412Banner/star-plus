.class public Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;
.super Ljava/lang/Object;
.source "LZ77Compressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;
    }
.end annotation


# static fields
.field private static final HASH_MASK:I = 0x7fff

.field private static final HASH_SIZE:I = 0x8000

.field private static final H_SHIFT:I = 0x5

.field private static final NO_MATCH:I = -0x1

.field static final NUMBER_OF_BYTES_IN_HASH:I = 0x3

.field private static final THE_EOD:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;


# instance fields
.field private blockStart:I

.field private final callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

.field private currentPosition:I

.field private final head:[I

.field private initialized:Z

.field private insertHash:I

.field private lookahead:I

.field private matchStart:I

.field private missedInserts:I

.field private final params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

.field private final prev:[I

.field private final wMask:I

.field private final window:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 195
    new-instance v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->THE_EOD:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/compressors/lz77support/Parameters;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;)V
    .locals 3
    .param p1, "params"    # Lorg/apache/commons/compress/compressors/lz77support/Parameters;
    .param p2, "callback"    # Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    .line 239
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 241
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 244
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 246
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 250
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    .line 259
    const-string v0, "params"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    const-string v0, "callback"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 263
    iput-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    .line 265
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result v0

    .line 266
    .local v0, "wSize":I
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    .line 267
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    .line 268
    const v2, 0x8000

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    .line 269
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 270
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    .line 271
    return-void
.end method

.method private catchUpMissedInserts()V
    .locals 3

    .line 509
    nop

    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    if-lez v0, :cond_0

    .line 510
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    goto :goto_0

    .line 512
    :cond_0
    return-void
.end method

.method private compress()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMinBackReferenceLength()I

    move-result v0

    .line 418
    .local v0, "minMatch":I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getLazyMatching()Z

    move-result v1

    .line 419
    .local v1, "lazy":Z
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getLazyMatchingThreshold()I

    move-result v2

    .line 421
    .local v2, "lazyThreshold":I
    :goto_0
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-lt v3, v0, :cond_4

    .line 422
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->catchUpMissedInserts()V

    .line 423
    const/4 v3, 0x0

    .line 424
    .local v3, "matchLength":I
    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    move-result v4

    .line 425
    .local v4, "hashHead":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget v6, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    sub-int v6, v4, v6

    iget-object v7, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v7}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxOffset()I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 427
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->longestMatch(I)I

    move-result v3

    .line 429
    if-eqz v1, :cond_0

    if-gt v3, v2, :cond_0

    iget v6, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-le v6, v0, :cond_0

    .line 431
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->longestMatchForNextPosition(I)I

    move-result v3

    .line 434
    :cond_0
    if-lt v3, v0, :cond_2

    .line 435
    iget v6, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget v7, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-eq v6, v7, :cond_1

    .line 437
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    .line 438
    iput v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 440
    :cond_1
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushBackReference(I)V

    .line 441
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertStringsInMatch(I)V

    .line 442
    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    sub-int/2addr v5, v3

    iput v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 443
    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/2addr v5, v3

    iput v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 444
    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iput v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    goto :goto_1

    .line 447
    :cond_2
    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 448
    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 449
    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v6, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v6}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxLiteralLength()I

    move-result v6

    if-lt v5, v6, :cond_3

    .line 450
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    .line 451
    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iput v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 454
    .end local v3    # "matchLength":I
    .end local v4    # "hashHead":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 455
    :cond_4
    return-void
.end method

.method private doCompress([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    sub-int/2addr v0, v1

    .line 376
    .local v0, "spaceLeft":I
    if-le p3, v0, :cond_0

    .line 377
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->slide()V

    .line 379
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/2addr v2, v3

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 381
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMinBackReferenceLength()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 382
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialize()V

    .line 384
    :cond_1
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    if-eqz v1, :cond_2

    .line 385
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->compress()V

    .line 387
    :cond_2
    return-void
.end method

.method private flushBackReference(I)V
    .locals 4
    .param p1, "matchLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    new-instance v1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    sub-int/2addr v2, v3

    invoke-direct {v1, v2, p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;-><init>(II)V

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;->accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    .line 516
    return-void
.end method

.method private flushLiteralBlock()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    new-instance v1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;-><init>([BII)V

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;->accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    .line 520
    return-void
.end method

.method private initialize()V
    .locals 3

    .line 410
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 411
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    aget-byte v2, v2, v0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->nextHash(IB)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    .line 414
    return-void
.end method

.method private insertString(I)I
    .locals 3
    .param p1, "pos"    # I

    .line 465
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    add-int/lit8 v2, p1, -0x1

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->nextHash(IB)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 466
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    aget v0, v0, v1

    .line 467
    .local v0, "hashHead":I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    and-int/2addr v2, p1

    aput v0, v1, v2

    .line 468
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    aput p1, v1, v2

    .line 469
    return v0
.end method

.method private insertStringsInMatch(I)V
    .locals 3
    .param p1, "matchLength"    # I

    .line 500
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v1, v1, -0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 502
    .local v0, "stop":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 503
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 505
    .end local v1    # "i":I
    :cond_0
    sub-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    .line 506
    return-void
.end method

.method private longestMatch(I)I
    .locals 12
    .param p1, "matchHead"    # I

    .line 531
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMinBackReferenceLength()I

    move-result v0

    .line 532
    .local v0, "minLength":I
    add-int/lit8 v1, v0, -0x1

    .line 533
    .local v1, "longestMatchLength":I
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxBackReferenceLength()I

    move-result v2

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 534
    .local v2, "maxPossibleLength":I
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v4}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxOffset()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 535
    .local v3, "minIndex":I
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v4}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getNiceBackReferenceLength()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 536
    .local v4, "niceBackReferenceLength":I
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v5}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxCandidates()I

    move-result v5

    .line 537
    .local v5, "maxCandidates":I
    const/4 v6, 0x0

    .local v6, "candidates":I
    :goto_0
    if-ge v6, v5, :cond_3

    if-lt p1, v3, :cond_3

    .line 538
    const/4 v7, 0x0

    .line 539
    .local v7, "currentLength":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_1

    .line 540
    iget-object v9, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    add-int v10, p1, v8

    aget-byte v9, v9, v10

    iget-object v10, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    iget v11, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/2addr v11, v8

    aget-byte v10, v10, v11

    if-eq v9, v10, :cond_0

    .line 541
    goto :goto_2

    .line 543
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 539
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 545
    .end local v8    # "i":I
    :cond_1
    :goto_2
    if-le v7, v1, :cond_2

    .line 546
    move v1, v7

    .line 547
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 548
    if-lt v7, v4, :cond_2

    .line 550
    goto :goto_3

    .line 553
    :cond_2
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    iget v9, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    and-int/2addr v9, p1

    aget p1, v8, v9

    .line 537
    .end local v7    # "currentLength":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 555
    .end local v6    # "candidates":I
    :cond_3
    :goto_3
    return v1
.end method

.method private longestMatchForNextPosition(I)I
    .locals 7
    .param p1, "prevMatchLength"    # I

    .line 474
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 475
    .local v0, "prevMatchStart":I
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 477
    .local v1, "prevInsertHash":I
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 478
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 479
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    move-result v2

    .line 480
    .local v2, "hashHead":I
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    and-int/2addr v4, v5

    aget v3, v3, v4

    .line 481
    .local v3, "prevHashHead":I
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->longestMatch(I)I

    move-result v4

    .line 483
    .local v4, "matchLength":I
    if-gt v4, p1, :cond_0

    .line 485
    move v4, p1

    .line 486
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 489
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    iget v6, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    aput v3, v5, v6

    .line 490
    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 491
    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 492
    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 494
    :cond_0
    return v4
.end method

.method private nextHash(IB)I
    .locals 2
    .param p1, "oldHash"    # I
    .param p2, "nextByte"    # B

    .line 369
    and-int/lit16 v0, p2, 0xff

    .line 370
    .local v0, "nextVal":I
    shl-int/lit8 v1, p1, 0x5

    xor-int/2addr v1, v0

    and-int/lit16 v1, v1, 0x7fff

    return v1
.end method

.method private slide()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result v0

    .line 391
    .local v0, "wSize":I
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    if-ge v1, v0, :cond_0

    .line 392
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    .line 393
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 395
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 397
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 398
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 399
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const v2, 0x8000

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2

    .line 400
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    aget v2, v2, v1

    .line 401
    .local v2, "h":I
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    if-lt v2, v0, :cond_1

    sub-int v3, v2, v0

    :cond_1
    aput v3, v4, v1

    .line 399
    .end local v2    # "h":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 404
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    aget v2, v2, v1

    .line 405
    .local v2, "p":I
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    if-lt v2, v0, :cond_3

    sub-int v5, v2, v0

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    aput v5, v4, v1

    .line 403
    .end local v2    # "p":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 407
    .end local v1    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public compress([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->compress([BII)V

    .line 282
    return-void
.end method

.method public compress([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result v0

    .line 295
    .local v0, "wSize":I
    :goto_0
    if-le p3, v0, :cond_0

    .line 296
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->doCompress([BII)V

    .line 297
    add-int/2addr p2, v0

    .line 298
    sub-int/2addr p3, v0

    goto :goto_0

    .line 300
    :cond_0
    if-lez p3, :cond_1

    .line 301
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->doCompress([BII)V

    .line 303
    :cond_1
    return-void
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-lez v0, :cond_1

    .line 316
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 317
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    .line 319
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    sget-object v1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->THE_EOD:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;->accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    .line 320
    return-void
.end method

.method public prefill([B)V
    .locals 4
    .param p1, "data"    # [B

    .line 334
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-nez v0, :cond_2

    .line 339
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result v0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 340
    .local v0, "len":I
    array-length v1, p1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 343
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialize()V

    .line 344
    add-int/lit8 v1, v0, -0x3

    add-int/lit8 v1, v1, 0x1

    .line 345
    .local v1, "stop":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 346
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x2

    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    .line 349
    .end local v1    # "stop":I
    goto :goto_1

    .line 350
    :cond_1
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    .line 352
    :goto_1
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 353
    return-void

    .line 335
    .end local v0    # "len":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The compressor has already started to accept data, can\'t prefill anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
