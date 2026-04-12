.class Lorg/apache/commons/compress/compressors/bzip2/BlockSort;
.super Ljava/lang/Object;
.source "BlockSort.java"


# static fields
.field private static final CLEARMASK:I = -0x200001

.field private static final DEPTH_THRESH:I = 0xa

.field private static final FALLBACK_QSORT_SMALL_THRESH:I = 0xa

.field private static final FALLBACK_QSORT_STACK_SIZE:I = 0x64

.field private static final INCS:[I

.field private static final QSORT_STACK_SIZE:I = 0x3e8

.field private static final SETMASK:I = 0x200000

.field private static final SMALL_THRESH:I = 0x14

.field private static final STACK_SIZE:I = 0x3e8

.field private static final WORK_FACTOR:I = 0x1e


# instance fields
.field private eclass:[I

.field private firstAttempt:Z

.field private final ftab:[I

.field private final mainSort_bigDone:[Z

.field private final mainSort_copy:[I

.field private final mainSort_runningOrder:[I

.field private final quadrant:[C

.field private final stack_dd:[I

.field private final stack_hh:[I

.field private final stack_ll:[I

.field private workDone:I

.field private workLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 583
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x4
        0xd
        0x28
        0x79
        0x16c
        0x445
        0xcd0
        0x2671
        0x7354
        0x159fd
        0x40df8
        0xc29e9
        0x247dbc
    .end array-data
.end method

.method constructor <init>(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;)V
    .locals 2
    .param p1, "data"    # Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/16 v0, 0x3e8

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    .line 133
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    .line 134
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_dd:[I

    .line 136
    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_runningOrder:[I

    .line 137
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_copy:[I

    .line 138
    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_bigDone:[Z

    .line 140
    const v0, 0x10001

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->ftab:[I

    .line 150
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    .line 151
    return-void
.end method

.method private fallbackQSort3([I[III)V
    .locals 24
    .param p1, "fmap"    # [I
    .param p2, "eclass"    # [I
    .param p3, "loSt"    # I
    .param p4, "hiSt"    # I

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-wide/16 v3, 0x0

    .line 349
    .local v3, "r":J
    const/4 v5, 0x0

    .line 350
    .local v5, "sp":I
    add-int/lit8 v6, v5, 0x1

    move/from16 v7, p3

    move/from16 v8, p4

    .end local v5    # "sp":I
    .local v6, "sp":I
    invoke-direct {v0, v5, v7, v8}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    .line 352
    :goto_0
    if-lez v6, :cond_c

    .line 353
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "sp":I
    .restart local v5    # "sp":I
    invoke-direct {v0, v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpop(I)[I

    move-result-object v9

    .line 354
    .local v9, "s":[I
    const/4 v6, 0x0

    aget v10, v9, v6

    .local v10, "lo":I
    const/4 v11, 0x1

    aget v12, v9, v11

    .line 356
    .local v12, "hi":I
    sub-int v6, v12, v10

    const/16 v13, 0xa

    if-ge v6, v13, :cond_0

    .line 357
    invoke-direct {v0, v1, v2, v10, v12}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSimpleSort([I[III)V

    .line 358
    move v6, v5

    goto :goto_0

    .line 368
    :cond_0
    const-wide/16 v13, 0x1dc5

    mul-long/2addr v13, v3

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    const-wide/32 v17, 0x8000

    rem-long v13, v13, v17

    .line 369
    .end local v3    # "r":J
    .local v13, "r":J
    const-wide/16 v3, 0x3

    rem-long v17, v13, v3

    .line 371
    .local v17, "r3":J
    const-wide/16 v3, 0x0

    cmp-long v3, v17, v3

    if-nez v3, :cond_1

    .line 372
    aget v3, v1, v10

    aget v3, v2, v3

    int-to-long v3, v3

    .local v3, "med":J
    goto :goto_1

    .line 373
    .end local v3    # "med":J
    :cond_1
    cmp-long v3, v17, v15

    if-nez v3, :cond_2

    .line 374
    add-int v3, v10, v12

    ushr-int/2addr v3, v11

    aget v3, v1, v3

    aget v3, v2, v3

    int-to-long v3, v3

    .restart local v3    # "med":J
    goto :goto_1

    .line 376
    .end local v3    # "med":J
    :cond_2
    aget v3, v1, v12

    aget v3, v2, v3

    int-to-long v3, v3

    .line 379
    .restart local v3    # "med":J
    :goto_1
    move v6, v10

    .local v6, "ltLo":I
    move v15, v10

    .line 380
    .local v15, "unLo":I
    move/from16 v16, v12

    .local v16, "gtHi":I
    move/from16 v19, v12

    move/from16 v11, v19

    .line 386
    .local v11, "unHi":I
    :goto_2
    if-le v15, v11, :cond_3

    .line 387
    goto :goto_3

    .line 389
    :cond_3
    aget v20, v1, v15

    aget v20, v2, v20

    long-to-int v7, v3

    sub-int v20, v20, v7

    .line 390
    .local v20, "n":I
    if-nez v20, :cond_4

    .line 391
    invoke-direct {v0, v1, v15, v6}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    .line 392
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v15, v15, 0x1

    .line 393
    move/from16 v7, p3

    goto :goto_2

    .line 395
    :cond_4
    if-lez v20, :cond_b

    .line 396
    nop

    .line 401
    .end local v20    # "n":I
    :goto_3
    move/from16 v7, v16

    .end local v16    # "gtHi":I
    .local v7, "gtHi":I
    :goto_4
    if-le v15, v11, :cond_5

    .line 402
    goto :goto_5

    .line 404
    :cond_5
    aget v16, v1, v11

    aget v16, v2, v16

    long-to-int v2, v3

    sub-int v16, v16, v2

    .line 405
    .local v16, "n":I
    if-nez v16, :cond_6

    .line 406
    invoke-direct {v0, v1, v11, v7}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    .line 407
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v11, v11, -0x1

    .line 408
    move-object/from16 v2, p2

    goto :goto_4

    .line 410
    :cond_6
    if-gez v16, :cond_a

    .line 411
    nop

    .line 415
    .end local v16    # "n":I
    :goto_5
    if-le v15, v11, :cond_9

    .line 416
    nop

    .line 421
    if-ge v7, v6, :cond_7

    .line 422
    move-object/from16 v2, p2

    move/from16 v7, p3

    move v6, v5

    move-wide v3, v13

    goto/16 :goto_0

    .line 425
    :cond_7
    sub-int v2, v6, v10

    move-wide/from16 v21, v3

    .end local v3    # "med":J
    .local v21, "med":J
    sub-int v3, v15, v6

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fmin(II)I

    move-result v2

    .line 426
    .local v2, "n":I
    sub-int v3, v15, v2

    invoke-direct {v0, v1, v10, v3, v2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fvswap([IIII)V

    .line 427
    sub-int v3, v12, v7

    sub-int v4, v7, v11

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fmin(II)I

    move-result v3

    .line 428
    .local v3, "m":I
    add-int/lit8 v4, v11, 0x1

    sub-int v16, v12, v3

    move/from16 v20, v2

    const/16 v19, 0x1

    .end local v2    # "n":I
    .restart local v20    # "n":I
    add-int/lit8 v2, v16, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fvswap([IIII)V

    .line 430
    add-int v2, v10, v15

    sub-int/2addr v2, v6

    add-int/lit8 v2, v2, -0x1

    .line 431
    .end local v20    # "n":I
    .restart local v2    # "n":I
    sub-int v4, v7, v11

    sub-int v4, v12, v4

    add-int/lit8 v4, v4, 0x1

    .line 433
    .end local v3    # "m":I
    .local v4, "m":I
    sub-int v3, v2, v10

    move/from16 v23, v6

    .end local v6    # "ltLo":I
    .local v23, "ltLo":I
    sub-int v6, v12, v4

    if-le v3, v6, :cond_8

    .line 434
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "sp":I
    .local v3, "sp":I
    invoke-direct {v0, v5, v10, v2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    .line 435
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "sp":I
    .restart local v5    # "sp":I
    invoke-direct {v0, v3, v4, v12}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    move v6, v5

    goto :goto_6

    .line 437
    :cond_8
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "sp":I
    .restart local v3    # "sp":I
    invoke-direct {v0, v5, v4, v12}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    .line 438
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "sp":I
    .restart local v5    # "sp":I
    invoke-direct {v0, v3, v10, v2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    move v6, v5

    .line 440
    .end local v4    # "m":I
    .end local v5    # "sp":I
    .end local v9    # "s":[I
    .end local v17    # "r3":J
    .end local v21    # "med":J
    .local v6, "sp":I
    :goto_6
    move-object/from16 v2, p2

    move/from16 v7, p3

    move-wide v3, v13

    goto/16 :goto_0

    .line 418
    .end local v2    # "n":I
    .end local v23    # "ltLo":I
    .local v3, "med":J
    .restart local v5    # "sp":I
    .local v6, "ltLo":I
    .restart local v9    # "s":[I
    .restart local v17    # "r3":J
    :cond_9
    move-wide/from16 v21, v3

    move/from16 v23, v6

    const/16 v19, 0x1

    .end local v3    # "med":J
    .end local v6    # "ltLo":I
    .restart local v21    # "med":J
    .restart local v23    # "ltLo":I
    invoke-direct {v0, v1, v15, v11}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v2, p2

    move/from16 v16, v7

    move/from16 v7, p3

    goto/16 :goto_2

    .line 413
    .end local v21    # "med":J
    .end local v23    # "ltLo":I
    .restart local v3    # "med":J
    .restart local v6    # "ltLo":I
    .restart local v16    # "n":I
    :cond_a
    move-wide/from16 v21, v3

    move/from16 v23, v6

    const/16 v19, 0x1

    .end local v3    # "med":J
    .end local v6    # "ltLo":I
    .restart local v21    # "med":J
    .restart local v23    # "ltLo":I
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v2, p2

    goto/16 :goto_4

    .line 398
    .end local v7    # "gtHi":I
    .end local v21    # "med":J
    .end local v23    # "ltLo":I
    .restart local v3    # "med":J
    .restart local v6    # "ltLo":I
    .local v16, "gtHi":I
    .restart local v20    # "n":I
    :cond_b
    move-wide/from16 v21, v3

    move/from16 v23, v6

    const/16 v19, 0x1

    .end local v3    # "med":J
    .end local v6    # "ltLo":I
    .restart local v21    # "med":J
    .restart local v23    # "ltLo":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move/from16 v7, p3

    goto/16 :goto_2

    .line 441
    .end local v5    # "sp":I
    .end local v9    # "s":[I
    .end local v10    # "lo":I
    .end local v11    # "unHi":I
    .end local v12    # "hi":I
    .end local v13    # "r":J
    .end local v15    # "unLo":I
    .end local v16    # "gtHi":I
    .end local v17    # "r3":J
    .end local v20    # "n":I
    .end local v21    # "med":J
    .end local v23    # "ltLo":I
    .local v3, "r":J
    .local v6, "sp":I
    :cond_c
    return-void
.end method

.method private fallbackSimpleSort([I[III)V
    .locals 6
    .param p1, "fmap"    # [I
    .param p2, "eclass"    # [I
    .param p3, "lo"    # I
    .param p4, "hi"    # I

    .line 271
    if-ne p3, p4, :cond_0

    .line 272
    return-void

    .line 276
    :cond_0
    sub-int v0, p4, p3

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 277
    add-int/lit8 v0, p4, -0x4

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_2

    .line 278
    aget v1, p1, v0

    .line 279
    .local v1, "tmp":I
    aget v2, p2, v1

    .line 280
    .local v2, "ec_tmp":I
    add-int/lit8 v3, v0, 0x4

    .local v3, "j":I
    :goto_1
    if-gt v3, p4, :cond_1

    aget v4, p1, v3

    aget v4, p2, v4

    if-le v2, v4, :cond_1

    .line 282
    add-int/lit8 v4, v3, -0x4

    aget v5, p1, v3

    aput v5, p1, v4

    .line 281
    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 284
    :cond_1
    add-int/lit8 v4, v3, -0x4

    aput v1, p1, v4

    .line 277
    .end local v1    # "tmp":I
    .end local v2    # "ec_tmp":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 288
    .end local v0    # "i":I
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v0, p4, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, p3, :cond_4

    .line 289
    aget v1, p1, v0

    .line 290
    .restart local v1    # "tmp":I
    aget v2, p2, v1

    .line 291
    .restart local v2    # "ec_tmp":I
    add-int/lit8 v3, v0, 0x1

    .restart local v3    # "j":I
    :goto_3
    if-gt v3, p4, :cond_3

    aget v4, p1, v3

    aget v4, p2, v4

    if-le v2, v4, :cond_3

    .line 292
    add-int/lit8 v4, v3, -0x1

    aget v5, p1, v3

    aput v5, p1, v4

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 294
    :cond_3
    add-int/lit8 v4, v3, -0x1

    aput v1, p1, v4

    .line 288
    .end local v1    # "tmp":I
    .end local v2    # "ec_tmp":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 296
    .end local v0    # "i":I
    .end local v3    # "j":I
    :cond_4
    return-void
.end method

.method private fmin(II)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 320
    if-ge p1, p2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method private fpop(I)[I
    .locals 2
    .param p1, "sp"    # I

    .line 329
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    aget v0, v0, p1

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    aget v1, v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method private fpush(III)V
    .locals 1
    .param p1, "sp"    # I
    .param p2, "lz"    # I
    .param p3, "hz"    # I

    .line 324
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    aput p2, v0, p1

    .line 325
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    aput p3, v0, p1

    .line 326
    return-void
.end method

.method private fswap([III)V
    .locals 2
    .param p1, "fmap"    # [I
    .param p2, "zz1"    # I
    .param p3, "zz2"    # I

    .line 304
    aget v0, p1, p2

    .line 305
    .local v0, "zztmp":I
    aget v1, p1, p3

    aput v1, p1, p2

    .line 306
    aput v0, p1, p3

    .line 307
    return-void
.end method

.method private fvswap([IIII)V
    .locals 0
    .param p1, "fmap"    # [I
    .param p2, "yyp1"    # I
    .param p3, "yyp2"    # I
    .param p4, "yyn"    # I

    .line 313
    nop

    :goto_0
    if-lez p4, :cond_0

    .line 314
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    .line 315
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 317
    :cond_0
    return-void
.end method

.method private getEclass()[I
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    .line 452
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    return-object v0
.end method

.method private mainQSort3(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)V
    .locals 21
    .param p1, "dataShadow"    # Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .param p2, "loSt"    # I
    .param p3, "hiSt"    # I
    .param p4, "dSt"    # I
    .param p5, "last"    # I

    .line 810
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v8, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    .line 811
    .local v8, "stack_ll":[I
    iget-object v9, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    .line 812
    .local v9, "stack_hh":[I
    iget-object v10, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_dd:[I

    .line 813
    .local v10, "stack_dd":[I
    iget-object v11, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 814
    .local v11, "fmap":[I
    iget-object v12, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 816
    .local v12, "block":[B
    const/4 v0, 0x0

    aput p2, v8, v0

    .line 817
    aput p3, v9, v0

    .line 818
    aput p4, v10, v0

    .line 820
    const/4 v0, 0x1

    .local v0, "sp":I
    :goto_0
    add-int/lit8 v13, v0, -0x1

    .end local v0    # "sp":I
    .local v13, "sp":I
    if-ltz v13, :cond_c

    .line 821
    aget v14, v8, v13

    .line 822
    .local v14, "lo":I
    aget v15, v9, v13

    .line 823
    .local v15, "hi":I
    aget v5, v10, v13

    .line 825
    .local v5, "d":I
    sub-int v0, v15, v14

    const/16 v1, 0x14

    if-lt v0, v1, :cond_a

    const/16 v0, 0xa

    if-le v5, v0, :cond_0

    goto/16 :goto_7

    .line 830
    :cond_0
    add-int/lit8 v0, v5, 0x1

    .line 831
    .local v0, "d1":I
    aget v1, v11, v14

    add-int/2addr v1, v0

    aget-byte v1, v12, v1

    aget v2, v11, v15

    add-int/2addr v2, v0

    aget-byte v2, v12, v2

    add-int v3, v14, v15

    ushr-int/lit8 v3, v3, 0x1

    aget v3, v11, v3

    add-int/2addr v3, v0

    aget-byte v3, v12, v3

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->med3(BBB)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 834
    .local v1, "med":I
    move v2, v14

    .line 835
    .local v2, "unLo":I
    move v3, v15

    .line 836
    .local v3, "unHi":I
    move v4, v14

    .line 837
    .local v4, "ltLo":I
    move/from16 v16, v15

    .line 840
    .local v16, "gtHi":I
    :goto_1
    if-gt v2, v3, :cond_2

    .line 841
    aget v17, v11, v2

    add-int v17, v17, v0

    move/from16 v18, v3

    .end local v3    # "unHi":I
    .local v18, "unHi":I
    aget-byte v3, v12, v17

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v3, v1

    .line 843
    .local v3, "n":I
    if-nez v3, :cond_1

    .line 844
    aget v17, v11, v2

    .line 845
    .local v17, "temp":I
    add-int/lit8 v19, v2, 0x1

    .end local v2    # "unLo":I
    .local v19, "unLo":I
    aget v20, v11, v4

    aput v20, v11, v2

    .line 846
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "ltLo":I
    .local v2, "ltLo":I
    aput v17, v11, v4

    .line 847
    .end local v17    # "temp":I
    move v4, v2

    move/from16 v2, v19

    goto :goto_2

    .end local v19    # "unLo":I
    .local v2, "unLo":I
    .restart local v4    # "ltLo":I
    :cond_1
    if-gez v3, :cond_3

    .line 848
    add-int/lit8 v2, v2, 0x1

    .line 852
    .end local v3    # "n":I
    :goto_2
    move/from16 v3, v18

    goto :goto_1

    .line 840
    .end local v18    # "unHi":I
    .local v3, "unHi":I
    :cond_2
    move/from16 v18, v3

    .line 854
    .end local v3    # "unHi":I
    .restart local v18    # "unHi":I
    :cond_3
    move/from16 v6, v16

    move/from16 v3, v18

    .end local v16    # "gtHi":I
    .end local v18    # "unHi":I
    .restart local v3    # "unHi":I
    .local v6, "gtHi":I
    :goto_3
    if-gt v2, v3, :cond_5

    .line 855
    aget v16, v11, v3

    add-int v16, v16, v0

    aget-byte v7, v12, v16

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v7, v1

    .line 857
    .local v7, "n":I
    if-nez v7, :cond_4

    .line 858
    aget v16, v11, v3

    .line 859
    .local v16, "temp":I
    add-int/lit8 v17, v3, -0x1

    .end local v3    # "unHi":I
    .local v17, "unHi":I
    aget v18, v11, v6

    aput v18, v11, v3

    .line 860
    add-int/lit8 v3, v6, -0x1

    .end local v6    # "gtHi":I
    .local v3, "gtHi":I
    aput v16, v11, v6

    .line 861
    .end local v16    # "temp":I
    move v6, v3

    move/from16 v3, v17

    goto :goto_4

    .end local v17    # "unHi":I
    .local v3, "unHi":I
    .restart local v6    # "gtHi":I
    :cond_4
    if-lez v7, :cond_5

    .line 862
    add-int/lit8 v3, v3, -0x1

    .line 866
    .end local v7    # "n":I
    :goto_4
    move-object/from16 v7, p1

    goto :goto_3

    .line 868
    :cond_5
    if-gt v2, v3, :cond_6

    .line 869
    aget v7, v11, v2

    .line 870
    .local v7, "temp":I
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "unLo":I
    .local v16, "unLo":I
    aget v17, v11, v3

    aput v17, v11, v2

    .line 871
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "unHi":I
    .local v2, "unHi":I
    aput v7, v11, v3

    .line 872
    .end local v7    # "temp":I
    move-object/from16 v7, p1

    move v3, v2

    move/from16 v2, v16

    move/from16 v16, v6

    move-object/from16 v6, p0

    goto :goto_1

    .line 877
    .end local v16    # "unLo":I
    .local v2, "unLo":I
    .restart local v3    # "unHi":I
    :cond_6
    if-ge v6, v4, :cond_7

    .line 878
    aput v14, v8, v13

    .line 879
    aput v15, v9, v13

    .line 880
    aput v0, v10, v13

    .line 881
    add-int/lit8 v13, v13, 0x1

    move v0, v13

    goto :goto_8

    .line 883
    :cond_7
    sub-int v7, v4, v14

    move/from16 v16, v1

    .end local v1    # "med":I
    .local v16, "med":I
    sub-int v1, v2, v4

    if-ge v7, v1, :cond_8

    sub-int v1, v4, v14

    goto :goto_5

    :cond_8
    sub-int v1, v2, v4

    .line 885
    .local v1, "n":I
    :goto_5
    sub-int v7, v2, v1

    invoke-static {v11, v14, v7, v1}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->vswap([IIII)V

    .line 886
    sub-int v7, v15, v6

    move/from16 v17, v1

    .end local v1    # "n":I
    .local v17, "n":I
    sub-int v1, v6, v3

    if-ge v7, v1, :cond_9

    sub-int v1, v15, v6

    goto :goto_6

    :cond_9
    sub-int v1, v6, v3

    .line 888
    .local v1, "m":I
    :goto_6
    sub-int v7, v15, v1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v11, v2, v7, v1}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->vswap([IIII)V

    .line 890
    add-int v7, v14, v2

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    .line 891
    .end local v17    # "n":I
    .local v7, "n":I
    sub-int v17, v6, v3

    sub-int v17, v15, v17

    add-int/lit8 v17, v17, 0x1

    .line 893
    .end local v1    # "m":I
    .local v17, "m":I
    aput v14, v8, v13

    .line 894
    aput v7, v9, v13

    .line 895
    aput v5, v10, v13

    .line 896
    add-int/lit8 v13, v13, 0x1

    .line 898
    add-int/lit8 v1, v7, 0x1

    aput v1, v8, v13

    .line 899
    add-int/lit8 v1, v17, -0x1

    aput v1, v9, v13

    .line 900
    aput v0, v10, v13

    .line 901
    add-int/lit8 v13, v13, 0x1

    .line 903
    aput v17, v8, v13

    .line 904
    aput v15, v9, v13

    .line 905
    aput v5, v10, v13

    .line 906
    add-int/lit8 v13, v13, 0x1

    move v0, v13

    goto :goto_8

    .line 826
    .end local v0    # "d1":I
    .end local v2    # "unLo":I
    .end local v3    # "unHi":I
    .end local v4    # "ltLo":I
    .end local v6    # "gtHi":I
    .end local v7    # "n":I
    .end local v16    # "med":I
    .end local v17    # "m":I
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v15

    move v4, v5

    move v6, v5

    .end local v5    # "d":I
    .local v6, "d":I
    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSimpleSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 827
    return-void

    .line 826
    :cond_b
    move v0, v13

    .line 909
    .end local v6    # "d":I
    .end local v13    # "sp":I
    .end local v14    # "lo":I
    .end local v15    # "hi":I
    .local v0, "sp":I
    :goto_8
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    goto/16 :goto_0

    .line 910
    .end local v0    # "sp":I
    :cond_c
    return-void
.end method

.method private mainSimpleSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)Z
    .locals 27
    .param p1, "dataShadow"    # Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .param p2, "lo"    # I
    .param p3, "hi"    # I
    .param p4, "d"    # I
    .param p5, "lastShadow"    # I

    .line 600
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sub-int v3, v2, p2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 601
    .local v3, "bigN":I
    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    .line 602
    iget-boolean v5, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    if-eqz v5, :cond_0

    iget v5, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    iget v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    if-le v5, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 605
    :cond_1
    const/4 v5, 0x0

    .line 606
    .local v5, "hp":I
    :goto_1
    sget-object v7, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    aget v7, v7, v5

    if-ge v7, v3, :cond_2

    .line 607
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 610
    :cond_2
    iget-object v7, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 611
    .local v7, "fmap":[I
    iget-object v8, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    .line 612
    .local v8, "quadrant":[C
    iget-object v9, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 613
    .local v9, "block":[B
    add-int/lit8 v10, p5, 0x1

    .line 614
    .local v10, "lastPlus1":I
    iget-boolean v11, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    .line 615
    .local v11, "firstAttemptShadow":Z
    iget v12, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    .line 616
    .local v12, "workLimitShadow":I
    iget v13, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    .line 621
    .local v13, "workDoneShadow":I
    :goto_2
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_19

    .line 622
    sget-object v14, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    aget v14, v14, v5

    .line 623
    .local v14, "h":I
    add-int v15, p2, v14

    sub-int/2addr v15, v4

    .line 625
    .local v15, "mj":I
    add-int v16, p2, v14

    move/from16 v4, v16

    .local v4, "i":I
    :goto_3
    if-gt v4, v2, :cond_18

    .line 627
    const/16 v17, 0x3

    .local v17, "k":I
    :goto_4
    if-gt v4, v2, :cond_16

    add-int/lit8 v17, v17, -0x1

    if-ltz v17, :cond_16

    .line 628
    aget v18, v7, v4

    .line 629
    .local v18, "v":I
    add-int v19, v18, p4

    .line 630
    .local v19, "vd":I
    move/from16 v20, v4

    .line 642
    .local v20, "j":I
    const/16 v21, 0x0

    .line 643
    .local v21, "onceRunned":Z
    const/16 v22, 0x0

    .line 646
    .local v22, "a":I
    :goto_5
    if-eqz v21, :cond_3

    .line 647
    aput v22, v7, v20

    .line 648
    sub-int v6, v20, v14

    move/from16 v20, v6

    if-gt v6, v15, :cond_4

    .line 649
    move/from16 v25, v3

    goto/16 :goto_9

    .line 652
    :cond_3
    const/4 v6, 0x1

    move/from16 v21, v6

    .line 655
    :cond_4
    sub-int v6, v20, v14

    aget v22, v7, v6

    .line 656
    add-int v6, v22, p4

    .line 657
    .local v6, "i1":I
    move/from16 v23, v19

    .line 661
    .local v23, "i2":I
    add-int/lit8 v24, v6, 0x1

    aget-byte v1, v9, v24

    add-int/lit8 v24, v23, 0x1

    move/from16 v25, v3

    .end local v3    # "bigN":I
    .local v25, "bigN":I
    aget-byte v3, v9, v24

    if-ne v1, v3, :cond_14

    .line 662
    add-int/lit8 v1, v6, 0x2

    aget-byte v1, v9, v1

    add-int/lit8 v3, v23, 0x2

    aget-byte v3, v9, v3

    if-ne v1, v3, :cond_13

    .line 663
    add-int/lit8 v1, v6, 0x3

    aget-byte v1, v9, v1

    add-int/lit8 v3, v23, 0x3

    aget-byte v3, v9, v3

    if-ne v1, v3, :cond_12

    .line 664
    add-int/lit8 v1, v6, 0x4

    aget-byte v1, v9, v1

    add-int/lit8 v3, v23, 0x4

    aget-byte v3, v9, v3

    if-ne v1, v3, :cond_11

    .line 665
    add-int/lit8 v1, v6, 0x5

    aget-byte v1, v9, v1

    add-int/lit8 v3, v23, 0x5

    aget-byte v3, v9, v3

    if-ne v1, v3, :cond_10

    .line 666
    add-int/lit8 v6, v6, 0x6

    aget-byte v1, v9, v6

    add-int/lit8 v23, v23, 0x6

    aget-byte v3, v9, v23

    if-ne v1, v3, :cond_f

    .line 667
    move/from16 v1, p5

    .line 668
    .local v1, "x":I
    :goto_6
    if-lez v1, :cond_15

    .line 669
    add-int/lit8 v1, v1, -0x4

    .line 671
    add-int/lit8 v3, v6, 0x1

    aget-byte v3, v9, v3

    add-int/lit8 v24, v23, 0x1

    move/from16 v26, v1

    .end local v1    # "x":I
    .local v26, "x":I
    aget-byte v1, v9, v24

    if-ne v3, v1, :cond_e

    .line 672
    aget-char v1, v8, v6

    aget-char v3, v8, v23

    if-ne v1, v3, :cond_d

    .line 673
    add-int/lit8 v1, v6, 0x2

    aget-byte v1, v9, v1

    add-int/lit8 v3, v23, 0x2

    aget-byte v3, v9, v3

    if-ne v1, v3, :cond_c

    .line 674
    add-int/lit8 v1, v6, 0x1

    aget-char v1, v8, v1

    add-int/lit8 v3, v23, 0x1

    aget-char v3, v8, v3

    if-ne v1, v3, :cond_b

    .line 675
    add-int/lit8 v1, v6, 0x3

    aget-byte v1, v9, v1

    add-int/lit8 v3, v23, 0x3

    aget-byte v3, v9, v3

    if-ne v1, v3, :cond_a

    .line 676
    add-int/lit8 v1, v6, 0x2

    aget-char v1, v8, v1

    add-int/lit8 v3, v23, 0x2

    aget-char v3, v8, v3

    if-ne v1, v3, :cond_9

    .line 677
    add-int/lit8 v1, v6, 0x4

    aget-byte v1, v9, v1

    add-int/lit8 v3, v23, 0x4

    aget-byte v3, v9, v3

    if-ne v1, v3, :cond_8

    .line 678
    add-int/lit8 v1, v6, 0x3

    aget-char v1, v8, v1

    add-int/lit8 v3, v23, 0x3

    aget-char v3, v8, v3

    if-ne v1, v3, :cond_7

    .line 679
    add-int/lit8 v6, v6, 0x4

    if-lt v6, v10, :cond_5

    .line 680
    sub-int/2addr v6, v10

    .line 682
    :cond_5
    add-int/lit8 v1, v23, 0x4

    .end local v23    # "i2":I
    .local v1, "i2":I
    if-lt v1, v10, :cond_6

    .line 683
    sub-int/2addr v1, v10

    move/from16 v23, v1

    goto :goto_7

    .line 682
    :cond_6
    move/from16 v23, v1

    .line 685
    .end local v1    # "i2":I
    .restart local v23    # "i2":I
    :goto_7
    add-int/lit8 v13, v13, 0x1

    .line 686
    move/from16 v1, v26

    goto :goto_6

    .line 687
    :cond_7
    add-int/lit8 v1, v6, 0x3

    aget-char v1, v8, v1

    add-int/lit8 v3, v23, 0x3

    aget-char v3, v8, v3

    if-le v1, v3, :cond_15

    .line 688
    goto/16 :goto_8

    .line 692
    :cond_8
    add-int/lit8 v1, v6, 0x4

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v23, 0x4

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    if-le v1, v3, :cond_15

    .line 693
    goto/16 :goto_8

    .line 697
    :cond_9
    add-int/lit8 v1, v6, 0x2

    aget-char v1, v8, v1

    add-int/lit8 v3, v23, 0x2

    aget-char v3, v8, v3

    if-le v1, v3, :cond_15

    .line 698
    goto/16 :goto_8

    .line 702
    :cond_a
    add-int/lit8 v1, v6, 0x3

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v23, 0x3

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    if-le v1, v3, :cond_15

    .line 703
    goto/16 :goto_8

    .line 707
    :cond_b
    add-int/lit8 v1, v6, 0x1

    aget-char v1, v8, v1

    add-int/lit8 v3, v23, 0x1

    aget-char v3, v8, v3

    if-le v1, v3, :cond_15

    .line 708
    goto/16 :goto_8

    .line 712
    :cond_c
    add-int/lit8 v1, v6, 0x2

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v23, 0x2

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    if-le v1, v3, :cond_15

    .line 713
    goto/16 :goto_8

    .line 717
    :cond_d
    aget-char v1, v8, v6

    aget-char v3, v8, v23

    if-le v1, v3, :cond_15

    .line 718
    goto :goto_8

    .line 722
    :cond_e
    add-int/lit8 v1, v6, 0x1

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v23, 0x1

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    if-le v1, v3, :cond_15

    .line 723
    goto :goto_8

    .line 731
    .end local v26    # "x":I
    :cond_f
    aget-byte v1, v9, v6

    and-int/lit16 v1, v1, 0xff

    aget-byte v3, v9, v23

    and-int/lit16 v3, v3, 0xff

    if-le v1, v3, :cond_15

    .line 732
    goto :goto_8

    .line 735
    :cond_10
    add-int/lit8 v1, v6, 0x5

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v23, 0x5

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    if-le v1, v3, :cond_15

    .line 736
    goto :goto_8

    .line 740
    :cond_11
    add-int/lit8 v1, v6, 0x4

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v23, 0x4

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    if-le v1, v3, :cond_15

    .line 741
    goto :goto_8

    .line 745
    :cond_12
    add-int/lit8 v1, v6, 0x3

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v23, 0x3

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    if-le v1, v3, :cond_15

    .line 746
    goto :goto_8

    .line 750
    :cond_13
    add-int/lit8 v1, v6, 0x2

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v23, 0x2

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    if-le v1, v3, :cond_15

    .line 751
    goto :goto_8

    .line 755
    :cond_14
    add-int/lit8 v1, v6, 0x1

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v23, 0x1

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    if-le v1, v3, :cond_15

    .line 756
    nop

    .line 646
    .end local v6    # "i1":I
    .end local v23    # "i2":I
    :goto_8
    move-object/from16 v1, p1

    move/from16 v3, v25

    goto/16 :goto_5

    .line 764
    :cond_15
    :goto_9
    aput v18, v7, v20

    .line 627
    .end local v18    # "v":I
    .end local v19    # "vd":I
    .end local v20    # "j":I
    .end local v21    # "onceRunned":Z
    .end local v22    # "a":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v25

    goto/16 :goto_4

    .end local v25    # "bigN":I
    .restart local v3    # "bigN":I
    :cond_16
    move/from16 v25, v3

    .line 767
    .end local v3    # "bigN":I
    .end local v17    # "k":I
    .restart local v25    # "bigN":I
    if-eqz v11, :cond_17

    if-gt v4, v2, :cond_17

    if-le v13, v12, :cond_17

    .line 769
    goto :goto_a

    .line 625
    :cond_17
    move-object/from16 v1, p1

    move/from16 v3, v25

    goto/16 :goto_3

    .end local v25    # "bigN":I
    .restart local v3    # "bigN":I
    :cond_18
    move/from16 v25, v3

    .line 772
    .end local v3    # "bigN":I
    .end local v4    # "i":I
    .end local v14    # "h":I
    .end local v15    # "mj":I
    .restart local v25    # "bigN":I
    move-object/from16 v1, p1

    const/4 v4, 0x1

    goto/16 :goto_2

    .line 621
    .end local v25    # "bigN":I
    .restart local v3    # "bigN":I
    :cond_19
    move/from16 v25, v3

    .line 774
    .end local v3    # "bigN":I
    .restart local v25    # "bigN":I
    :goto_a
    iput v13, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    .line 775
    if-eqz v11, :cond_1a

    if-le v13, v12, :cond_1a

    const/4 v4, 0x1

    goto :goto_b

    :cond_1a
    const/4 v4, 0x0

    :goto_b
    return v4
.end method

.method private static med3(BBB)B
    .locals 1
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .line 796
    if-ge p0, p1, :cond_1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-ge p0, p2, :cond_3

    goto :goto_1

    :cond_1
    if-le p1, p2, :cond_2

    :goto_0
    move v0, p1

    goto :goto_2

    :cond_2
    if-le p0, p2, :cond_3

    :goto_1
    move v0, p2

    goto :goto_2

    :cond_3
    move v0, p0

    :goto_2
    return v0
.end method

.method private static vswap([IIII)V
    .locals 3
    .param p0, "fmap"    # [I
    .param p1, "p1"    # I
    .param p2, "p2"    # I
    .param p3, "n"    # I

    .line 787
    add-int/2addr p3, p1

    .line 788
    :goto_0
    if-ge p1, p3, :cond_0

    .line 789
    aget v0, p0, p1

    .line 790
    .local v0, "t":I
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "p1":I
    .local v1, "p1":I
    aget v2, p0, p2

    aput v2, p0, p1

    .line 791
    add-int/lit8 p1, p2, 0x1

    .end local p2    # "p2":I
    .local p1, "p2":I
    aput v0, p0, p2

    .line 792
    .end local v0    # "t":I
    move p2, p1

    move p1, v1

    goto :goto_0

    .line 793
    .end local v1    # "p1":I
    .local p1, "p1":I
    .restart local p2    # "p2":I
    :cond_0
    return-void
.end method


# virtual methods
.method blockSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .locals 3
    .param p1, "data"    # Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .param p2, "last"    # I

    .line 154
    mul-int/lit8 v0, p2, 0x1e

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    .line 158
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 159
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    .line 163
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    if-le v0, v1, :cond_1

    .line 164
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    .line 168
    :cond_1
    :goto_0
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 169
    .local v0, "fmap":[I
    const/4 v1, -0x1

    iput v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->origPtr:I

    .line 170
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-gt v1, p2, :cond_3

    .line 171
    aget v2, v0, v1

    if-nez v2, :cond_2

    .line 172
    iput v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->origPtr:I

    .line 173
    goto :goto_2

    .line 170
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 178
    .end local v1    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method final fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .locals 3
    .param p1, "data"    # Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .param p2, "last"    # I

    .line 187
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 188
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort([I[BI)V

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_2

    .line 193
    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 194
    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    aput p2, v1, v0

    .line 195
    goto :goto_2

    .line 192
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method final fallbackSort([I[BI)V
    .locals 16
    .param p1, "fmap"    # [I
    .param p2, "block"    # [B
    .param p3, "nblock"    # I

    .line 474
    move-object/from16 v0, p1

    move/from16 v1, p3

    const/16 v2, 0x101

    new-array v3, v2, [I

    .line 478
    .local v3, "ftab":[I
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->getEclass()[I

    move-result-object v4

    .line 480
    .local v4, "eclass":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 481
    const/4 v6, 0x0

    aput v6, v4, v5

    .line 480
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 487
    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    .line 488
    aget-byte v6, p2, v5

    and-int/lit16 v6, v6, 0xff

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    .line 487
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 490
    :cond_1
    const/4 v5, 0x1

    :goto_2
    if-ge v5, v2, :cond_2

    .line 491
    aget v6, v3, v5

    add-int/lit8 v7, v5, -0x1

    aget v7, v3, v7

    add-int/2addr v6, v7

    aput v6, v3, v5

    .line 490
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 494
    :cond_2
    const/4 v2, 0x0

    .end local v5    # "i":I
    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_3

    .line 495
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    .line 496
    .local v5, "j":I
    aget v6, v3, v5

    add-int/lit8 v6, v6, -0x1

    .line 497
    .local v6, "k":I
    aput v6, v3, v5

    .line 498
    aput v2, v0, v6

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 501
    .end local v5    # "j":I
    .end local v6    # "k":I
    :cond_3
    add-int/lit8 v5, v1, 0x40

    .line 502
    .local v5, "nBhtab":I
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6, v5}, Ljava/util/BitSet;-><init>(I)V

    .line 503
    .local v6, "bhtab":Ljava/util/BitSet;
    const/4 v2, 0x0

    :goto_4
    const/16 v7, 0x100

    if-ge v2, v7, :cond_4

    .line 504
    aget v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 514
    :cond_4
    const/4 v2, 0x0

    :goto_5
    const/16 v7, 0x20

    if-ge v2, v7, :cond_5

    .line 515
    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v1

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 516
    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->clear(I)V

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 520
    :cond_5
    const/4 v7, 0x1

    .line 523
    .local v7, "H":I
    :cond_6
    const/4 v8, 0x0

    .line 524
    .local v8, "j":I
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_9

    .line 525
    invoke-virtual {v6, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 526
    move v8, v2

    .line 528
    :cond_7
    aget v9, v0, v2

    sub-int/2addr v9, v7

    .line 529
    .local v9, "k":I
    if-gez v9, :cond_8

    .line 530
    add-int/2addr v9, v1

    .line 532
    :cond_8
    aput v8, v4, v9

    .line 524
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 535
    .end local v9    # "k":I
    :cond_9
    const/4 v9, 0x0

    .line 536
    .local v9, "nNotDone":I
    const/4 v10, -0x1

    .line 540
    .local v10, "r":I
    :cond_a
    :goto_7
    add-int/lit8 v11, v10, 0x1

    .line 541
    .local v11, "k":I
    invoke-virtual {v6, v11}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v11

    .line 542
    add-int/lit8 v12, v11, -0x1

    .line 543
    .local v12, "l":I
    if-lt v12, v1, :cond_b

    .line 544
    goto :goto_8

    .line 546
    :cond_b
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v6, v13}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v11

    .line 547
    add-int/lit8 v10, v11, -0x1

    .line 548
    if-lt v10, v1, :cond_d

    .line 549
    nop

    .line 569
    :goto_8
    mul-int/lit8 v7, v7, 0x2

    .line 570
    if-gt v7, v1, :cond_c

    if-nez v9, :cond_6

    .line 571
    nop

    .line 574
    :cond_c
    return-void

    .line 553
    :cond_d
    if-le v10, v12, :cond_f

    .line 554
    sub-int v13, v10, v12

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v9, v13

    .line 555
    move-object/from16 v13, p0

    invoke-direct {v13, v0, v4, v12, v10}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackQSort3([I[III)V

    .line 558
    const/4 v14, -0x1

    .line 559
    .local v14, "cc":I
    move v2, v12

    :goto_9
    if-gt v2, v10, :cond_a

    .line 560
    aget v15, v0, v2

    aget v15, v4, v15

    .line 561
    .local v15, "cc1":I
    if-eq v14, v15, :cond_e

    .line 562
    invoke-virtual {v6, v2}, Ljava/util/BitSet;->set(I)V

    .line 563
    move v14, v15

    .line 559
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 553
    .end local v14    # "cc":I
    .end local v15    # "cc1":I
    :cond_f
    move-object/from16 v13, p0

    goto :goto_7
.end method

.method final mainSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .locals 29
    .param p1, "dataShadow"    # Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .param p2, "lastShadow"    # I

    .line 917
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    iget-object v9, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_runningOrder:[I

    .line 918
    .local v9, "runningOrder":[I
    iget-object v10, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_copy:[I

    .line 919
    .local v10, "copy":[I
    iget-object v11, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_bigDone:[Z

    .line 920
    .local v11, "bigDone":[Z
    iget-object v12, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->ftab:[I

    .line 921
    .local v12, "ftab":[I
    iget-object v13, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 922
    .local v13, "block":[B
    iget-object v14, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 923
    .local v14, "fmap":[I
    iget-object v15, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    .line 924
    .local v15, "quadrant":[C
    iget v5, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    .line 925
    .local v5, "workLimitShadow":I
    iget-boolean v4, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    .line 928
    .local v4, "firstAttemptShadow":Z
    const v0, 0x10001

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 929
    aput v1, v12, v0

    goto :goto_0

    .line 937
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    const/16 v3, 0x14

    const/4 v2, 0x1

    if-ge v0, v3, :cond_1

    .line 938
    add-int v3, v8, v0

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v16, v8, 0x1

    rem-int v16, v0, v16

    add-int/lit8 v16, v16, 0x1

    aget-byte v2, v13, v16

    aput-byte v2, v13, v3

    .line 937
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 940
    .end local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v8, 0x14

    add-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 941
    aput-char v1, v15, v0

    goto :goto_2

    .line 943
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v8, 0x1

    aget-byte v0, v13, v0

    aput-byte v0, v13, v1

    .line 947
    aget-byte v0, v13, v1

    move/from16 v16, v4

    .end local v4    # "firstAttemptShadow":Z
    .local v16, "firstAttemptShadow":Z
    const/16 v4, 0xff

    and-int/2addr v0, v4

    .line 948
    .local v0, "c1":I
    const/16 v17, 0x0

    move/from16 v3, v17

    .local v3, "i":I
    :goto_3
    if-gt v3, v8, :cond_3

    .line 949
    add-int/lit8 v18, v3, 0x1

    aget-byte v1, v13, v18

    and-int/2addr v1, v4

    .line 950
    .local v1, "c2":I
    shl-int/lit8 v18, v0, 0x8

    add-int v18, v18, v1

    aget v20, v12, v18

    add-int/lit8 v20, v20, 0x1

    aput v20, v12, v18

    .line 951
    move v0, v1

    .line 948
    .end local v1    # "c2":I
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    goto :goto_3

    .line 954
    .end local v3    # "i":I
    :cond_3
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_4
    const/high16 v3, 0x10000

    if-gt v1, v3, :cond_4

    .line 955
    aget v3, v12, v1

    add-int/lit8 v18, v1, -0x1

    aget v18, v12, v18

    add-int v3, v3, v18

    aput v3, v12, v1

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 958
    .end local v1    # "i":I
    :cond_4
    aget-byte v1, v13, v2

    and-int/lit16 v0, v1, 0xff

    .line 959
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v8, :cond_5

    .line 960
    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v13, v3

    and-int/2addr v3, v4

    .line 961
    .local v3, "c2":I
    shl-int/lit8 v18, v0, 0x8

    add-int v18, v18, v3

    aget v20, v12, v18

    add-int/lit8 v20, v20, -0x1

    aput v20, v12, v18

    aput v1, v14, v20

    .line 962
    move v0, v3

    .line 959
    .end local v3    # "c2":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 965
    .end local v1    # "i":I
    :cond_5
    add-int/lit8 v1, v8, 0x1

    aget-byte v1, v13, v1

    and-int/2addr v1, v4

    shl-int/lit8 v1, v1, 0x8

    aget-byte v3, v13, v2

    and-int/2addr v3, v4

    add-int/2addr v1, v3

    aget v3, v12, v1

    sub-int/2addr v3, v2

    aput v3, v12, v1

    aput v8, v14, v3

    .line 971
    const/16 v1, 0x100

    .restart local v1    # "i":I
    :goto_6
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    .line 972
    const/4 v3, 0x0

    aput-boolean v3, v11, v1

    .line 973
    aput v1, v9, v1

    goto :goto_6

    .line 977
    .end local v1    # "i":I
    :cond_6
    const/16 v1, 0x16c

    .local v1, "h":I
    :goto_7
    if-eq v1, v2, :cond_a

    .line 978
    div-int/lit8 v1, v1, 0x3

    .line 979
    move v3, v1

    .local v3, "i":I
    :goto_8
    if-gt v3, v4, :cond_9

    .line 980
    aget v18, v9, v3

    .line 981
    .local v18, "vv":I
    add-int/lit8 v19, v18, 0x1

    shl-int/lit8 v19, v19, 0x8

    aget v19, v12, v19

    shl-int/lit8 v20, v18, 0x8

    aget v20, v12, v20

    sub-int v2, v19, v20

    .line 982
    .local v2, "a":I
    add-int/lit8 v4, v1, -0x1

    .line 983
    .local v4, "b":I
    move/from16 v20, v3

    .line 984
    .local v20, "j":I
    sub-int v22, v20, v1

    aget v22, v9, v22

    .local v22, "ro":I
    :goto_9
    add-int/lit8 v23, v22, 0x1

    shl-int/lit8 v23, v23, 0x8

    aget v23, v12, v23

    shl-int/lit8 v24, v22, 0x8

    aget v24, v12, v24

    move/from16 v25, v0

    .end local v0    # "c1":I
    .local v25, "c1":I
    sub-int v0, v23, v24

    if-le v0, v2, :cond_8

    .line 986
    aput v22, v9, v20

    .line 987
    sub-int v0, v20, v1

    .line 988
    .end local v20    # "j":I
    .local v0, "j":I
    if-gt v0, v4, :cond_7

    .line 989
    move/from16 v20, v0

    goto :goto_a

    .line 984
    :cond_7
    sub-int v20, v0, v1

    aget v22, v9, v20

    move/from16 v20, v0

    move/from16 v0, v25

    goto :goto_9

    .line 992
    .end local v0    # "j":I
    .end local v22    # "ro":I
    .restart local v20    # "j":I
    :cond_8
    :goto_a
    aput v18, v9, v20

    .line 979
    .end local v2    # "a":I
    .end local v4    # "b":I
    .end local v18    # "vv":I
    .end local v20    # "j":I
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v25

    const/4 v2, 0x1

    const/16 v4, 0xff

    goto :goto_8

    .end local v25    # "c1":I
    .local v0, "c1":I
    :cond_9
    move/from16 v25, v0

    .end local v0    # "c1":I
    .restart local v25    # "c1":I
    const/4 v2, 0x1

    const/16 v4, 0xff

    .end local v3    # "i":I
    goto :goto_7

    .line 977
    .end local v25    # "c1":I
    .restart local v0    # "c1":I
    :cond_a
    move/from16 v25, v0

    .line 999
    .end local v0    # "c1":I
    .end local v1    # "h":I
    .restart local v25    # "c1":I
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_b
    const/16 v3, 0xff

    if-gt v4, v3, :cond_18

    .line 1003
    aget v18, v9, v4

    .line 1012
    .local v18, "ss":I
    const/4 v0, 0x0

    move v2, v0

    .local v2, "j":I
    :goto_c
    const/high16 v1, 0x200000

    const v0, -0x200001

    if-gt v2, v3, :cond_e

    .line 1013
    shl-int/lit8 v19, v18, 0x8

    add-int v19, v19, v2

    .line 1014
    .local v19, "sb":I
    aget v20, v12, v19

    .line 1015
    .local v20, "ftab_sb":I
    and-int v3, v20, v1

    if-eq v3, v1, :cond_d

    .line 1016
    and-int v3, v20, v0

    .line 1017
    .local v3, "lo":I
    add-int/lit8 v23, v19, 0x1

    aget v23, v12, v23

    and-int v0, v23, v0

    const/16 v21, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 1018
    .local v0, "hi":I
    if-le v0, v3, :cond_b

    .line 1019
    const/16 v23, 0x2

    move/from16 v24, v0

    .end local v0    # "hi":I
    .local v24, "hi":I
    move-object/from16 v0, p0

    move/from16 v26, v1

    move-object/from16 v1, p1

    move/from16 v27, v21

    move/from16 v21, v2

    .end local v2    # "j":I
    .local v21, "j":I
    move v2, v3

    move/from16 v17, v3

    const/16 v7, 0x14

    const/16 v22, 0xff

    .end local v3    # "lo":I
    .local v17, "lo":I
    move/from16 v3, v24

    move v7, v4

    move-object/from16 v28, v9

    move/from16 v9, v22

    .end local v4    # "i":I
    .end local v9    # "runningOrder":[I
    .local v7, "i":I
    .local v28, "runningOrder":[I
    move/from16 v4, v23

    move v9, v5

    .end local v5    # "workLimitShadow":I
    .local v9, "workLimitShadow":I
    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainQSort3(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)V

    .line 1020
    if-eqz v16, :cond_c

    iget v0, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    if-le v0, v9, :cond_c

    .line 1022
    return-void

    .line 1018
    .end local v7    # "i":I
    .end local v17    # "lo":I
    .end local v21    # "j":I
    .end local v24    # "hi":I
    .end local v28    # "runningOrder":[I
    .restart local v0    # "hi":I
    .restart local v2    # "j":I
    .restart local v3    # "lo":I
    .restart local v4    # "i":I
    .restart local v5    # "workLimitShadow":I
    .local v9, "runningOrder":[I
    :cond_b
    move/from16 v24, v0

    move/from16 v26, v1

    move/from16 v17, v3

    move v7, v4

    move-object/from16 v28, v9

    move/from16 v27, v21

    move/from16 v21, v2

    move v9, v5

    .line 1025
    .end local v0    # "hi":I
    .end local v2    # "j":I
    .end local v3    # "lo":I
    .end local v4    # "i":I
    .end local v5    # "workLimitShadow":I
    .restart local v7    # "i":I
    .local v9, "workLimitShadow":I
    .restart local v17    # "lo":I
    .restart local v21    # "j":I
    .restart local v24    # "hi":I
    .restart local v28    # "runningOrder":[I
    :cond_c
    or-int v0, v20, v26

    aput v0, v12, v19

    goto :goto_d

    .line 1015
    .end local v7    # "i":I
    .end local v17    # "lo":I
    .end local v21    # "j":I
    .end local v24    # "hi":I
    .end local v28    # "runningOrder":[I
    .restart local v2    # "j":I
    .restart local v4    # "i":I
    .restart local v5    # "workLimitShadow":I
    .local v9, "runningOrder":[I
    :cond_d
    move/from16 v21, v2

    move v7, v4

    move-object/from16 v28, v9

    const/16 v27, 0x1

    move v9, v5

    .line 1012
    .end local v2    # "j":I
    .end local v4    # "i":I
    .end local v5    # "workLimitShadow":I
    .end local v19    # "sb":I
    .end local v20    # "ftab_sb":I
    .restart local v7    # "i":I
    .local v9, "workLimitShadow":I
    .restart local v21    # "j":I
    .restart local v28    # "runningOrder":[I
    :goto_d
    add-int/lit8 v2, v21, 0x1

    move v4, v7

    move v5, v9

    move-object/from16 v9, v28

    const/16 v3, 0xff

    move-object/from16 v7, p1

    .end local v21    # "j":I
    .restart local v2    # "j":I
    goto :goto_c

    .end local v7    # "i":I
    .end local v28    # "runningOrder":[I
    .restart local v4    # "i":I
    .restart local v5    # "workLimitShadow":I
    .local v9, "runningOrder":[I
    :cond_e
    move/from16 v26, v1

    move/from16 v21, v2

    move v7, v4

    move-object/from16 v28, v9

    const/16 v27, 0x1

    move v9, v5

    .line 1033
    .end local v2    # "j":I
    .end local v4    # "i":I
    .end local v5    # "workLimitShadow":I
    .restart local v7    # "i":I
    .local v9, "workLimitShadow":I
    .restart local v28    # "runningOrder":[I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_e
    const/16 v2, 0xff

    if-gt v1, v2, :cond_f

    .line 1034
    shl-int/lit8 v2, v1, 0x8

    add-int v2, v2, v18

    aget v2, v12, v2

    and-int/2addr v2, v0

    aput v2, v10, v1

    .line 1033
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1037
    .end local v1    # "j":I
    :cond_f
    shl-int/lit8 v1, v18, 0x8

    aget v1, v12, v1

    and-int/2addr v1, v0

    .restart local v1    # "j":I
    add-int/lit8 v2, v18, 0x1

    shl-int/lit8 v2, v2, 0x8

    aget v2, v12, v2

    and-int/2addr v2, v0

    .local v2, "hj":I
    :goto_f
    if-ge v1, v2, :cond_12

    .line 1038
    aget v3, v14, v1

    .line 1039
    .local v3, "fmap_j":I
    aget-byte v4, v13, v3

    const/16 v5, 0xff

    and-int/2addr v4, v5

    .line 1040
    .end local v25    # "c1":I
    .local v4, "c1":I
    aget-boolean v5, v11, v4

    if-nez v5, :cond_11

    .line 1041
    aget v5, v10, v4

    if-nez v3, :cond_10

    move/from16 v17, v8

    goto :goto_10

    :cond_10
    add-int/lit8 v17, v3, -0x1

    :goto_10
    aput v17, v14, v5

    .line 1042
    aget v5, v10, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v10, v4

    .line 1037
    .end local v3    # "fmap_j":I
    :cond_11
    add-int/lit8 v1, v1, 0x1

    move/from16 v25, v4

    goto :goto_f

    .line 1046
    .end local v1    # "j":I
    .end local v2    # "hj":I
    .end local v4    # "c1":I
    .restart local v25    # "c1":I
    :cond_12
    const/16 v1, 0x100

    .restart local v1    # "j":I
    :goto_11
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_13

    .line 1047
    shl-int/lit8 v2, v1, 0x8

    add-int v2, v2, v18

    aget v3, v12, v2

    or-int v3, v3, v26

    aput v3, v12, v2

    goto :goto_11

    .line 1058
    .end local v1    # "j":I
    :cond_13
    aput-boolean v27, v11, v18

    .line 1060
    const/16 v1, 0xff

    if-ge v7, v1, :cond_17

    .line 1061
    shl-int/lit8 v2, v18, 0x8

    aget v2, v12, v2

    and-int/2addr v2, v0

    .line 1062
    .local v2, "bbStart":I
    add-int/lit8 v3, v18, 0x1

    shl-int/lit8 v3, v3, 0x8

    aget v3, v12, v3

    and-int/2addr v0, v3

    sub-int/2addr v0, v2

    .line 1063
    .local v0, "bbSize":I
    const/4 v3, 0x0

    .line 1065
    .local v3, "shifts":I
    :goto_12
    shr-int v4, v0, v3

    const v5, 0xfffe

    if-le v4, v5, :cond_14

    .line 1066
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1069
    :cond_14
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_13
    if-ge v4, v0, :cond_16

    .line 1070
    add-int v5, v2, v4

    aget v5, v14, v5

    .line 1071
    .local v5, "a2update":I
    shr-int v1, v4, v3

    int-to-char v1, v1

    .line 1072
    .local v1, "qVal":C
    aput-char v1, v15, v5

    .line 1073
    move/from16 v17, v0

    const/16 v0, 0x14

    .end local v0    # "bbSize":I
    .local v17, "bbSize":I
    if-ge v5, v0, :cond_15

    .line 1074
    add-int v20, v5, v8

    add-int/lit8 v20, v20, 0x1

    aput-char v1, v15, v20

    .line 1069
    .end local v1    # "qVal":C
    .end local v5    # "a2update":I
    :cond_15
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v17

    const/16 v1, 0xff

    goto :goto_13

    .end local v17    # "bbSize":I
    .restart local v0    # "bbSize":I
    :cond_16
    move/from16 v17, v0

    const/16 v0, 0x14

    .end local v0    # "bbSize":I
    .restart local v17    # "bbSize":I
    goto :goto_14

    .line 1060
    .end local v2    # "bbStart":I
    .end local v3    # "shifts":I
    .end local v4    # "j":I
    .end local v17    # "bbSize":I
    :cond_17
    const/16 v0, 0x14

    .line 999
    .end local v18    # "ss":I
    :goto_14
    add-int/lit8 v4, v7, 0x1

    move-object/from16 v7, p1

    move v5, v9

    move-object/from16 v9, v28

    .end local v7    # "i":I
    .local v4, "i":I
    goto/16 :goto_b

    .line 1080
    .end local v4    # "i":I
    .end local v28    # "runningOrder":[I
    .local v5, "workLimitShadow":I
    .local v9, "runningOrder":[I
    :cond_18
    return-void
.end method
