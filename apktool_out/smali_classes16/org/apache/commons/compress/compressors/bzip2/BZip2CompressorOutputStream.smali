.class public Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "BZip2CompressorOutputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/compressors/bzip2/BZip2Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    }
.end annotation


# static fields
.field private static final GREATER_ICOST:I = 0xf

.field private static final LESSER_ICOST:I = 0x0

.field public static final MAX_BLOCKSIZE:I = 0x9

.field public static final MIN_BLOCKSIZE:I = 0x1


# instance fields
.field private final allowableBlockSize:I

.field private blockCRC:I

.field private final blockSize100k:I

.field private blockSorter:Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

.field private bsBuff:I

.field private bsLive:I

.field private volatile closed:Z

.field private combinedCRC:I

.field private final crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

.field private currentChar:I

.field private data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

.field private last:I

.field private nInUse:I

.field private nMTF:I

.field private out:Ljava/io/OutputStream;

.field private runLength:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 358
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 305
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 311
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 379
    const/4 v0, 0x1

    const-string v1, "blockSize("

    if-lt p2, v0, :cond_1

    .line 382
    const/16 v0, 0x9

    if-gt p2, v0, :cond_0

    .line 386
    iput p2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    .line 387
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 390
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    const v1, 0x186a0

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->allowableBlockSize:I

    .line 391
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->init()V

    .line 392
    return-void

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > 9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") < 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blockSort()V
    .locals 3

    .line 1166
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSorter:Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->blockSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    .line 1167
    return-void
.end method

.method private bsFinishedWithStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    nop

    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    if-lez v0, :cond_0

    .line 686
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    shr-int/lit8 v0, v0, 0x18

    .line 687
    .local v0, "ch":I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 688
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 689
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 690
    .end local v0    # "ch":I
    goto :goto_0

    .line 691
    :cond_0
    return-void
.end method

.method private bsPutInt(I)V
    .locals 2
    .param p1, "u"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 713
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 714
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 715
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 716
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 717
    return-void
.end method

.method private bsPutUByte(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 709
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 710
    return-void
.end method

.method private bsW(II)V
    .locals 4
    .param p1, "n"    # I
    .param p2, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 695
    .local v0, "outShadow":Ljava/io/OutputStream;
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 696
    .local v1, "bsLiveShadow":I
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 698
    .local v2, "bsBuffShadow":I
    :goto_0
    const/16 v3, 0x8

    if-lt v1, v3, :cond_0

    .line 699
    shr-int/lit8 v3, v2, 0x18

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 700
    shl-int/lit8 v2, v2, 0x8

    .line 701
    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    .line 704
    :cond_0
    rsub-int/lit8 v3, v1, 0x20

    sub-int/2addr v3, p1

    shl-int v3, p2, v3

    or-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 705
    add-int v3, v1, p1

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 706
    return-void
.end method

.method public static chooseBlockSize(J)I
    .locals 4
    .param p0, "inputLength"    # J

    .line 340
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0x203a0

    div-long v0, p0, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 341
    const-wide/16 v2, 0x9

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 340
    :goto_0
    return v0
.end method

.method private endBlock()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->getFinalCRC()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockCRC:I

    .line 556
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    .line 557
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockCRC:I

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    .line 560
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 561
    return-void

    .line 565
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSort()V

    .line 578
    const/16 v0, 0x31

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 579
    const/16 v0, 0x41

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 580
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 581
    const/16 v2, 0x26

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 582
    const/16 v2, 0x53

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 583
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 586
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockCRC:I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutInt(I)V

    .line 589
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 592
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->moveToFrontCodeAndSend()V

    .line 593
    return-void
.end method

.method private endCompression()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 603
    const/16 v0, 0x72

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 604
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 605
    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 606
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 607
    const/16 v0, 0x90

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 609
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutInt(I)V

    .line 610
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsFinishedWithStream()V

    .line 611
    return-void
.end method

.method private generateMTFValues()V
    .locals 22

    .line 1177
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 1178
    .local v1, "lastShadow":I
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 1179
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 1180
    .local v3, "inUse":[Z
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 1181
    .local v4, "block":[B
    iget-object v5, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 1182
    .local v5, "fmap":[I
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    .line 1183
    .local v6, "sfmap":[C
    iget-object v7, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mtfFreq:[I

    .line 1184
    .local v7, "mtfFreq":[I
    iget-object v8, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->unseqToSeq:[B

    .line 1185
    .local v8, "unseqToSeq":[B
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->generateMTFValues_yy:[B

    .line 1188
    .local v9, "yy":[B
    const/4 v10, 0x0

    .line 1189
    .local v10, "nInUseShadow":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/16 v12, 0x100

    if-ge v11, v12, :cond_1

    .line 1190
    aget-boolean v12, v3, v11

    if-eqz v12, :cond_0

    .line 1191
    int-to-byte v12, v10

    aput-byte v12, v8, v11

    .line 1192
    add-int/lit8 v10, v10, 0x1

    .line 1189
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1195
    .end local v11    # "i":I
    :cond_1
    iput v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nInUse:I

    .line 1197
    add-int/lit8 v11, v10, 0x1

    .line 1199
    .local v11, "eob":I
    move v12, v11

    .local v12, "i":I
    :goto_1
    const/4 v13, 0x0

    if-ltz v12, :cond_2

    .line 1200
    aput v13, v7, v12

    .line 1199
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 1203
    .end local v12    # "i":I
    :cond_2
    move v12, v10

    .restart local v12    # "i":I
    :goto_2
    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_3

    .line 1204
    int-to-byte v14, v12

    aput-byte v14, v9, v12

    goto :goto_2

    .line 1207
    .end local v12    # "i":I
    :cond_3
    const/4 v12, 0x0

    .line 1208
    .local v12, "wr":I
    const/4 v14, 0x0

    .line 1210
    .local v14, "zPend":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    const/16 v17, 0x1

    if-gt v15, v1, :cond_9

    .line 1211
    aget v18, v5, v15

    aget-byte v13, v4, v18

    and-int/lit16 v13, v13, 0xff

    aget-byte v13, v8, v13

    .line 1212
    .local v13, "ll_i":B
    const/16 v16, 0x0

    aget-byte v18, v9, v16

    .line 1213
    .local v18, "tmp":B
    const/16 v20, 0x0

    move/from16 v21, v1

    move/from16 v1, v18

    .line 1215
    .end local v18    # "tmp":B
    .local v1, "tmp":B
    .local v20, "j":I
    .local v21, "lastShadow":I
    :goto_4
    if-eq v13, v1, :cond_4

    .line 1216
    add-int/lit8 v20, v20, 0x1

    .line 1217
    move/from16 v18, v1

    .line 1218
    .local v18, "tmp2":B
    aget-byte v1, v9, v20

    .line 1219
    aput-byte v18, v9, v20

    .line 1220
    .end local v18    # "tmp2":B
    goto :goto_4

    .line 1221
    :cond_4
    const/16 v16, 0x0

    aput-byte v1, v9, v16

    .line 1223
    if-nez v20, :cond_5

    .line 1224
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 1226
    :cond_5
    if-lez v14, :cond_8

    .line 1227
    add-int/lit8 v14, v14, -0x1

    .line 1229
    :goto_5
    and-int/lit8 v18, v14, 0x1

    if-nez v18, :cond_6

    .line 1230
    const/16 v16, 0x0

    aput-char v16, v6, v12

    .line 1231
    add-int/lit8 v12, v12, 0x1

    .line 1232
    aget v18, v7, v16

    add-int/lit8 v18, v18, 0x1

    aput v18, v7, v16

    goto :goto_6

    .line 1234
    :cond_6
    aput-char v17, v6, v12

    .line 1235
    add-int/lit8 v12, v12, 0x1

    .line 1236
    aget v18, v7, v17

    add-int/lit8 v18, v18, 0x1

    aput v18, v7, v17

    .line 1239
    :goto_6
    move/from16 v18, v1

    const/4 v1, 0x2

    .end local v1    # "tmp":B
    .local v18, "tmp":B
    if-lt v14, v1, :cond_7

    .line 1240
    add-int/lit8 v1, v14, -0x2

    shr-int/lit8 v14, v1, 0x1

    move/from16 v1, v18

    goto :goto_5

    .line 1245
    :cond_7
    const/4 v14, 0x0

    goto :goto_7

    .line 1226
    .end local v18    # "tmp":B
    .restart local v1    # "tmp":B
    :cond_8
    move/from16 v18, v1

    .line 1247
    .end local v1    # "tmp":B
    .restart local v18    # "tmp":B
    :goto_7
    add-int/lit8 v1, v20, 0x1

    int-to-char v1, v1

    aput-char v1, v6, v12

    .line 1248
    add-int/lit8 v12, v12, 0x1

    .line 1249
    add-int/lit8 v1, v20, 0x1

    aget v19, v7, v1

    add-int/lit8 v19, v19, 0x1

    aput v19, v7, v1

    .line 1210
    .end local v13    # "ll_i":B
    .end local v18    # "tmp":B
    .end local v20    # "j":I
    :goto_8
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v21

    const/4 v13, 0x0

    goto :goto_3

    .end local v21    # "lastShadow":I
    .local v1, "lastShadow":I
    :cond_9
    move/from16 v21, v1

    .line 1253
    .end local v1    # "lastShadow":I
    .end local v15    # "i":I
    .restart local v21    # "lastShadow":I
    if-lez v14, :cond_b

    .line 1254
    add-int/lit8 v14, v14, -0x1

    .line 1256
    :goto_9
    and-int/lit8 v1, v14, 0x1

    if-nez v1, :cond_a

    .line 1257
    const/4 v1, 0x0

    aput-char v1, v6, v12

    .line 1258
    add-int/lit8 v12, v12, 0x1

    .line 1259
    aget v13, v7, v1

    add-int/lit8 v13, v13, 0x1

    aput v13, v7, v1

    goto :goto_a

    .line 1261
    :cond_a
    const/4 v1, 0x0

    aput-char v17, v6, v12

    .line 1262
    add-int/lit8 v12, v12, 0x1

    .line 1263
    aget v13, v7, v17

    add-int/lit8 v13, v13, 0x1

    aput v13, v7, v17

    .line 1266
    :goto_a
    const/4 v13, 0x2

    if-lt v14, v13, :cond_b

    .line 1267
    add-int/lit8 v15, v14, -0x2

    shr-int/lit8 v14, v15, 0x1

    goto :goto_9

    .line 1274
    :cond_b
    int-to-char v1, v11

    aput-char v1, v6, v12

    .line 1275
    aget v1, v7, v11

    add-int/lit8 v1, v1, 0x1

    aput v1, v7, v11

    .line 1276
    add-int/lit8 v1, v12, 0x1

    iput v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    .line 1277
    return-void
.end method

.method private static hbAssignCodes([I[BIII)V
    .locals 4
    .param p0, "code"    # [I
    .param p1, "length"    # [B
    .param p2, "minLen"    # I
    .param p3, "maxLen"    # I
    .param p4, "alphaSize"    # I

    .line 672
    const/4 v0, 0x0

    .line 673
    .local v0, "vec":I
    move v1, p2

    .local v1, "n":I
    :goto_0
    if-gt v1, p3, :cond_2

    .line 674
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p4, :cond_1

    .line 675
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v1, :cond_0

    .line 676
    aput v0, p0, v2

    .line 677
    add-int/lit8 v0, v0, 0x1

    .line 674
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 680
    .end local v2    # "i":I
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 673
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 682
    .end local v1    # "n":I
    :cond_2
    return-void
.end method

.method private static hbMakeCodeLengths([B[ILorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;II)V
    .locals 17
    .param p0, "len"    # [B
    .param p1, "freq"    # [I
    .param p2, "dat"    # Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .param p3, "alphaSize"    # I
    .param p4, "maxLen"    # I

    .line 148
    move-object/from16 v0, p2

    move/from16 v1, p3

    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->heap:[I

    .line 149
    .local v2, "heap":[I
    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->weight:[I

    .line 150
    .local v3, "weight":[I
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->parent:[I

    .line 152
    .local v4, "parent":[I
    move/from16 v5, p3

    .local v5, "i":I
    :goto_0
    const/4 v6, -0x1

    add-int/2addr v5, v6

    const/4 v7, 0x1

    if-ltz v5, :cond_1

    .line 153
    add-int/lit8 v6, v5, 0x1

    aget v8, p1, v5

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    aget v7, p1, v5

    :goto_1
    shl-int/lit8 v7, v7, 0x8

    aput v7, v3, v6

    goto :goto_0

    .line 156
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x1

    .local v5, "tooLong":Z
    :goto_2
    if-eqz v5, :cond_12

    .line 157
    const/4 v5, 0x0

    .line 159
    move/from16 v8, p3

    .line 160
    .local v8, "nNodes":I
    const/4 v9, 0x0

    .line 161
    .local v9, "nHeap":I
    const/4 v10, 0x0

    aput v10, v2, v10

    .line 162
    aput v10, v3, v10

    .line 163
    const/4 v11, -0x2

    aput v11, v4, v10

    .line 165
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_3
    if-gt v10, v1, :cond_3

    .line 166
    aput v6, v4, v10

    .line 167
    add-int/lit8 v9, v9, 0x1

    .line 168
    aput v10, v2, v9

    .line 170
    move v11, v9

    .line 171
    .local v11, "zz":I
    aget v12, v2, v11

    .line 172
    .local v12, "tmp":I
    :goto_4
    aget v13, v3, v12

    shr-int/lit8 v14, v11, 0x1

    aget v14, v2, v14

    aget v14, v3, v14

    if-ge v13, v14, :cond_2

    .line 173
    shr-int/lit8 v13, v11, 0x1

    aget v13, v2, v13

    aput v13, v2, v11

    .line 174
    shr-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 176
    :cond_2
    aput v12, v2, v11

    .line 165
    .end local v11    # "zz":I
    .end local v12    # "tmp":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 179
    .end local v10    # "i":I
    :cond_3
    :goto_5
    if-le v9, v7, :cond_c

    .line 180
    aget v10, v2, v7

    .line 181
    .local v10, "n1":I
    aget v11, v2, v9

    aput v11, v2, v7

    .line 182
    add-int/lit8 v11, v9, -0x1

    .line 184
    .end local v9    # "nHeap":I
    .local v11, "nHeap":I
    const/4 v9, 0x0

    .line 185
    .local v9, "yy":I
    const/4 v12, 0x1

    .line 186
    .local v12, "zz":I
    aget v13, v2, v7

    .line 189
    .local v13, "tmp":I
    :goto_6
    shl-int/lit8 v9, v12, 0x1

    .line 191
    if-le v9, v11, :cond_4

    .line 192
    goto :goto_7

    .line 195
    :cond_4
    if-ge v9, v11, :cond_5

    add-int/lit8 v14, v9, 0x1

    aget v14, v2, v14

    aget v14, v3, v14

    aget v15, v2, v9

    aget v15, v3, v15

    if-ge v14, v15, :cond_5

    .line 197
    add-int/lit8 v9, v9, 0x1

    .line 200
    :cond_5
    aget v14, v3, v13

    aget v15, v2, v9

    aget v15, v3, v15

    if-ge v14, v15, :cond_b

    .line 201
    nop

    .line 208
    :goto_7
    aput v13, v2, v12

    .line 210
    aget v14, v2, v7

    .line 211
    .local v14, "n2":I
    aget v15, v2, v11

    aput v15, v2, v7

    .line 212
    add-int/lit8 v15, v11, -0x1

    .line 214
    .end local v11    # "nHeap":I
    .local v15, "nHeap":I
    const/4 v9, 0x0

    .line 215
    const/4 v11, 0x1

    .line 216
    .end local v12    # "zz":I
    .local v11, "zz":I
    aget v16, v2, v7

    .line 219
    .end local v13    # "tmp":I
    .local v16, "tmp":I
    :goto_8
    shl-int/lit8 v9, v11, 0x1

    .line 221
    if-le v9, v15, :cond_6

    .line 222
    goto :goto_9

    .line 225
    :cond_6
    if-ge v9, v15, :cond_7

    add-int/lit8 v12, v9, 0x1

    aget v12, v2, v12

    aget v12, v3, v12

    aget v13, v2, v9

    aget v13, v3, v13

    if-ge v12, v13, :cond_7

    .line 227
    add-int/lit8 v9, v9, 0x1

    .line 230
    :cond_7
    aget v12, v3, v16

    aget v13, v2, v9

    aget v13, v3, v13

    if-ge v12, v13, :cond_a

    .line 231
    nop

    .line 238
    :goto_9
    aput v16, v2, v11

    .line 239
    add-int/lit8 v8, v8, 0x1

    .line 240
    aput v8, v4, v14

    aput v8, v4, v10

    .line 242
    aget v12, v3, v10

    .line 243
    .local v12, "weight_n1":I
    aget v13, v3, v14

    .line 244
    .local v13, "weight_n2":I
    and-int/lit16 v6, v12, -0x100

    and-int/lit16 v7, v13, -0x100

    add-int/2addr v6, v7

    and-int/lit16 v7, v12, 0xff

    and-int/lit16 v0, v13, 0xff

    if-le v7, v0, :cond_8

    and-int/lit16 v0, v12, 0xff

    goto :goto_a

    :cond_8
    and-int/lit16 v0, v13, 0xff

    :goto_a
    const/4 v7, 0x1

    add-int/2addr v0, v7

    or-int/2addr v0, v6

    aput v0, v3, v8

    .line 251
    const/4 v0, -0x1

    aput v0, v4, v8

    .line 252
    add-int/lit8 v6, v15, 0x1

    .line 253
    .end local v15    # "nHeap":I
    .local v6, "nHeap":I
    aput v8, v2, v6

    .line 255
    const/4 v7, 0x0

    .line 256
    .end local v16    # "tmp":I
    .local v7, "tmp":I
    move v11, v6

    .line 257
    aget v7, v2, v11

    .line 258
    aget v15, v3, v7

    .line 259
    .local v15, "weight_tmp":I
    :goto_b
    shr-int/lit8 v16, v11, 0x1

    aget v16, v2, v16

    aget v0, v3, v16

    if-ge v15, v0, :cond_9

    .line 260
    shr-int/lit8 v0, v11, 0x1

    aget v0, v2, v0

    aput v0, v2, v11

    .line 261
    shr-int/lit8 v11, v11, 0x1

    const/4 v0, -0x1

    goto :goto_b

    .line 263
    :cond_9
    aput v7, v2, v11

    .line 265
    .end local v7    # "tmp":I
    .end local v9    # "yy":I
    .end local v10    # "n1":I
    .end local v11    # "zz":I
    .end local v12    # "weight_n1":I
    .end local v13    # "weight_n2":I
    .end local v14    # "n2":I
    .end local v15    # "weight_tmp":I
    move-object/from16 v0, p2

    move v9, v6

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_5

    .line 234
    .end local v6    # "nHeap":I
    .restart local v9    # "yy":I
    .restart local v10    # "n1":I
    .restart local v11    # "zz":I
    .restart local v14    # "n2":I
    .local v15, "nHeap":I
    .restart local v16    # "tmp":I
    :cond_a
    aget v0, v2, v9

    aput v0, v2, v11

    .line 235
    move v11, v9

    move-object/from16 v0, p2

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto :goto_8

    .line 204
    .end local v14    # "n2":I
    .end local v15    # "nHeap":I
    .end local v16    # "tmp":I
    .local v11, "nHeap":I
    .local v12, "zz":I
    .local v13, "tmp":I
    :cond_b
    aget v0, v2, v9

    aput v0, v2, v12

    .line 205
    move v12, v9

    move-object/from16 v0, p2

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_6

    .line 267
    .end local v10    # "n1":I
    .end local v11    # "nHeap":I
    .end local v12    # "zz":I
    .end local v13    # "tmp":I
    .local v9, "nHeap":I
    :cond_c
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_c
    if-gt v0, v1, :cond_f

    .line 268
    const/4 v6, 0x0

    .line 269
    .local v6, "j":I
    move v7, v0

    .line 271
    .local v7, "k":I
    :goto_d
    aget v10, v4, v7

    move v11, v10

    .local v11, "parent_k":I
    if-ltz v10, :cond_d

    .line 272
    move v7, v11

    .line 273
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 276
    .end local v11    # "parent_k":I
    :cond_d
    add-int/lit8 v10, v0, -0x1

    int-to-byte v11, v6

    aput-byte v11, p0, v10

    .line 277
    move/from16 v10, p4

    if-le v6, v10, :cond_e

    .line 278
    const/4 v5, 0x1

    .line 267
    .end local v6    # "j":I
    .end local v7    # "k":I
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_f
    move/from16 v10, p4

    .line 282
    .end local v0    # "i":I
    if-eqz v5, :cond_11

    .line 283
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_e
    if-ge v0, v1, :cond_10

    .line 284
    aget v6, v3, v0

    shr-int/lit8 v6, v6, 0x8

    .line 285
    .restart local v6    # "j":I
    shr-int/lit8 v7, v6, 0x1

    const/4 v11, 0x1

    add-int/2addr v7, v11

    .line 286
    .end local v6    # "j":I
    .local v7, "j":I
    shl-int/lit8 v6, v7, 0x8

    aput v6, v3, v0

    .line 283
    .end local v7    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_10
    const/4 v11, 0x1

    goto :goto_f

    .line 282
    .end local v0    # "i":I
    :cond_11
    const/4 v11, 0x1

    .line 289
    .end local v8    # "nNodes":I
    .end local v9    # "nHeap":I
    :goto_f
    move-object/from16 v0, p2

    move v7, v11

    const/4 v6, -0x1

    goto/16 :goto_2

    .line 156
    :cond_12
    move/from16 v10, p4

    .line 290
    .end local v5    # "tooLong":Z
    return-void
.end method

.method private init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 528
    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 530
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 531
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;-><init>(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSorter:Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

    .line 534
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 535
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    add-int/lit8 v0, v0, 0x30

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 537
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    .line 538
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->initBlock()V

    .line 539
    return-void
.end method

.method private initBlock()V
    .locals 4

    .line 543
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->initialiseCRC()V

    .line 544
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 547
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 548
    .local v1, "inUse":[Z
    const/16 v2, 0x100

    .local v2, "i":I
    :goto_0
    add-int/2addr v2, v0

    if-ltz v2, :cond_0

    .line 549
    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 552
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private moveToFrontCodeAndSend()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->origPtr:I

    const/16 v1, 0x18

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 1161
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->generateMTFValues()V

    .line 1162
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues()V

    .line 1163
    return-void
.end method

.method private sendMTFValues()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 721
    .local v0, "len":[[B
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nInUse:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    .line 723
    .local v1, "alphaSize":I
    const/4 v3, 0x6

    .local v3, "t":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 724
    aget-object v4, v0, v3

    .line 725
    .local v4, "len_t":[B
    move v5, v1

    .local v5, "v":I
    :goto_1
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_0

    .line 726
    const/16 v6, 0xf

    aput-byte v6, v4, v5

    goto :goto_1

    .line 728
    .end local v4    # "len_t":[B
    .end local v5    # "v":I
    :cond_0
    goto :goto_0

    .line 732
    .end local v3    # "t":I
    :cond_1
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v4, 0xc8

    if-ge v3, v4, :cond_2

    goto :goto_2

    :cond_2
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_3

    const/4 v2, 0x3

    goto :goto_2

    :cond_3
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v3, 0x4b0

    if-ge v2, v3, :cond_4

    const/4 v2, 0x4

    goto :goto_2

    :cond_4
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v3, 0x960

    if-ge v2, v3, :cond_5

    const/4 v2, 0x5

    goto :goto_2

    :cond_5
    const/4 v2, 0x6

    .line 736
    .local v2, "nGroups":I
    :goto_2
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues0(II)V

    .line 741
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues1(II)I

    move-result v3

    .line 744
    .local v3, "nSelectors":I
    invoke-direct {p0, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues2(II)V

    .line 747
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues3(II)V

    .line 750
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues4()V

    .line 753
    invoke-direct {p0, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues5(II)V

    .line 756
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues6(II)V

    .line 759
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues7()V

    .line 760
    return-void
.end method

.method private sendMTFValues0(II)V
    .locals 11
    .param p1, "nGroups"    # I
    .param p2, "alphaSize"    # I

    .line 763
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 764
    .local v0, "len":[[B
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mtfFreq:[I

    .line 766
    .local v1, "mtfFreq":[I
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    .line 767
    .local v2, "remF":I
    const/4 v3, 0x0

    .line 769
    .local v3, "gs":I
    move v4, p1

    .local v4, "nPart":I
    :goto_0
    if-lez v4, :cond_4

    .line 770
    div-int v5, v2, v4

    .line 771
    .local v5, "tFreq":I
    add-int/lit8 v6, v3, -0x1

    .line 772
    .local v6, "ge":I
    const/4 v7, 0x0

    .line 774
    .local v7, "aFreq":I
    add-int/lit8 v8, p2, -0x1

    .local v8, "a":I
    :goto_1
    if-ge v7, v5, :cond_0

    if-ge v6, v8, :cond_0

    .line 775
    add-int/lit8 v6, v6, 0x1

    aget v9, v1, v6

    add-int/2addr v7, v9

    goto :goto_1

    .line 778
    .end local v8    # "a":I
    :cond_0
    if-le v6, v3, :cond_1

    if-eq v4, p1, :cond_1

    const/4 v8, 0x1

    if-eq v4, v8, :cond_1

    sub-int v9, p1, v4

    and-int/2addr v8, v9

    if-eqz v8, :cond_1

    .line 780
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "ge":I
    .local v8, "ge":I
    aget v6, v1, v6

    sub-int/2addr v7, v6

    move v6, v8

    .line 783
    .end local v8    # "ge":I
    .restart local v6    # "ge":I
    :cond_1
    add-int/lit8 v8, v4, -0x1

    aget-object v8, v0, v8

    .line 784
    .local v8, "len_np":[B
    move v9, p2

    .local v9, "v":I
    :goto_2
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_3

    .line 785
    if-lt v9, v3, :cond_2

    if-gt v9, v6, :cond_2

    .line 786
    const/4 v10, 0x0

    aput-byte v10, v8, v9

    goto :goto_2

    .line 788
    :cond_2
    const/16 v10, 0xf

    aput-byte v10, v8, v9

    goto :goto_2

    .line 792
    .end local v9    # "v":I
    :cond_3
    add-int/lit8 v3, v6, 0x1

    .line 793
    sub-int/2addr v2, v7

    .line 769
    .end local v5    # "tFreq":I
    .end local v6    # "ge":I
    .end local v7    # "aFreq":I
    .end local v8    # "len_np":[B
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 795
    .end local v4    # "nPart":I
    :cond_4
    return-void
.end method

.method private sendMTFValues1(II)I
    .locals 37
    .param p1, "nGroups"    # I
    .param p2, "alphaSize"    # I

    .line 798
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 799
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_rfreq:[[I

    .line 800
    .local v3, "rfreq":[[I
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_fave:[I

    .line 801
    .local v4, "fave":[I
    iget-object v5, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_cost:[S

    .line 802
    .local v5, "cost":[S
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    .line 803
    .local v6, "sfmap":[C
    iget-object v7, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    .line 804
    .local v7, "selector":[B
    iget-object v8, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 805
    .local v8, "len":[[B
    const/4 v9, 0x0

    aget-object v10, v8, v9

    .line 806
    .local v10, "len_0":[B
    const/4 v11, 0x1

    aget-object v12, v8, v11

    .line 807
    .local v12, "len_1":[B
    const/4 v13, 0x2

    aget-object v14, v8, v13

    .line 808
    .local v14, "len_2":[B
    const/4 v15, 0x3

    aget-object v16, v8, v15

    .line 809
    .local v16, "len_3":[B
    const/4 v15, 0x4

    aget-object v18, v8, v15

    .line 810
    .local v18, "len_4":[B
    const/16 v19, 0x5

    aget-object v20, v8, v19

    .line 811
    .local v20, "len_5":[B
    iget v13, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    .line 813
    .local v13, "nMTFShadow":I
    const/16 v22, 0x0

    .line 815
    .local v22, "nSelectors":I
    const/16 v23, 0x0

    move/from16 v11, v23

    .local v11, "iter":I
    :goto_0
    if-ge v11, v15, :cond_c

    .line 816
    move/from16 v24, p1

    .local v24, "t":I
    :goto_1
    add-int/lit8 v24, v24, -0x1

    if-ltz v24, :cond_1

    .line 817
    aput v9, v4, v24

    .line 818
    aget-object v25, v3, v24

    .line 819
    .local v25, "rfreqt":[I
    move/from16 v26, p2

    .local v26, "i":I
    :goto_2
    add-int/lit8 v26, v26, -0x1

    if-ltz v26, :cond_0

    .line 820
    aput v9, v25, v26

    goto :goto_2

    .line 822
    .end local v25    # "rfreqt":[I
    .end local v26    # "i":I
    :cond_0
    goto :goto_1

    .line 824
    .end local v24    # "t":I
    :cond_1
    const/16 v22, 0x0

    .line 826
    const/16 v24, 0x0

    move/from16 v15, v24

    .local v15, "gs":I
    :goto_3
    iget v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    if-ge v15, v9, :cond_a

    .line 834
    add-int/lit8 v9, v15, 0x32

    const/16 v23, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v26, v2

    .end local v2    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .local v26, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    add-int/lit8 v2, v13, -0x1

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 836
    .local v2, "ge":I
    const/4 v9, 0x6

    if-ne v1, v9, :cond_3

    .line 839
    const/4 v9, 0x0

    .line 840
    .local v9, "cost0":S
    const/16 v27, 0x0

    .line 841
    .local v27, "cost1":S
    const/16 v28, 0x0

    .line 842
    .local v28, "cost2":S
    const/16 v29, 0x0

    .line 843
    .local v29, "cost3":S
    const/16 v30, 0x0

    .line 844
    .local v30, "cost4":S
    const/16 v31, 0x0

    .line 846
    .local v31, "cost5":S
    move/from16 v32, v15

    move/from16 v36, v32

    move/from16 v32, v13

    move/from16 v13, v36

    .local v13, "i":I
    .local v32, "nMTFShadow":I
    :goto_4
    if-gt v13, v2, :cond_2

    .line 847
    aget-char v33, v6, v13

    .line 848
    .local v33, "icv":I
    move/from16 v34, v11

    .end local v11    # "iter":I
    .local v34, "iter":I
    aget-byte v11, v10, v33

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v11, v9

    int-to-short v9, v11

    .line 849
    aget-byte v11, v12, v33

    and-int/lit16 v11, v11, 0xff

    add-int v11, v27, v11

    int-to-short v11, v11

    .line 850
    .end local v27    # "cost1":S
    .local v11, "cost1":S
    move/from16 v35, v9

    .end local v9    # "cost0":S
    .local v35, "cost0":S
    aget-byte v9, v14, v33

    and-int/lit16 v9, v9, 0xff

    add-int v9, v28, v9

    int-to-short v9, v9

    .line 851
    .end local v28    # "cost2":S
    .local v9, "cost2":S
    move/from16 v27, v9

    .end local v9    # "cost2":S
    .local v27, "cost2":S
    aget-byte v9, v16, v33

    and-int/lit16 v9, v9, 0xff

    add-int v9, v29, v9

    int-to-short v9, v9

    .line 852
    .end local v29    # "cost3":S
    .local v9, "cost3":S
    move/from16 v28, v9

    .end local v9    # "cost3":S
    .local v28, "cost3":S
    aget-byte v9, v18, v33

    and-int/lit16 v9, v9, 0xff

    add-int v9, v30, v9

    int-to-short v9, v9

    .line 853
    .end local v30    # "cost4":S
    .local v9, "cost4":S
    move/from16 v29, v9

    .end local v9    # "cost4":S
    .local v29, "cost4":S
    aget-byte v9, v20, v33

    and-int/lit16 v9, v9, 0xff

    add-int v9, v31, v9

    int-to-short v9, v9

    .line 846
    .end local v31    # "cost5":S
    .end local v33    # "icv":I
    .local v9, "cost5":S
    add-int/lit8 v13, v13, 0x1

    move/from16 v31, v9

    move/from16 v30, v29

    move/from16 v9, v35

    move/from16 v29, v28

    move/from16 v28, v27

    move/from16 v27, v11

    move/from16 v11, v34

    goto :goto_4

    .end local v34    # "iter":I
    .end local v35    # "cost0":S
    .local v9, "cost0":S
    .local v11, "iter":I
    .local v27, "cost1":S
    .local v28, "cost2":S
    .local v29, "cost3":S
    .restart local v30    # "cost4":S
    .restart local v31    # "cost5":S
    :cond_2
    move/from16 v34, v11

    .line 856
    .end local v11    # "iter":I
    .end local v13    # "i":I
    .restart local v34    # "iter":I
    const/4 v11, 0x0

    aput-short v9, v5, v11

    .line 857
    const/4 v11, 0x1

    aput-short v27, v5, v11

    .line 858
    const/4 v11, 0x2

    aput-short v28, v5, v11

    .line 859
    const/4 v13, 0x3

    aput-short v29, v5, v13

    .line 860
    const/16 v17, 0x4

    aput-short v30, v5, v17

    .line 861
    aput-short v31, v5, v19

    .line 863
    .end local v9    # "cost0":S
    .end local v27    # "cost1":S
    .end local v28    # "cost2":S
    .end local v29    # "cost3":S
    .end local v30    # "cost4":S
    .end local v31    # "cost5":S
    const/16 v21, 0x0

    goto :goto_8

    .line 864
    .end local v32    # "nMTFShadow":I
    .end local v34    # "iter":I
    .restart local v11    # "iter":I
    .local v13, "nMTFShadow":I
    :cond_3
    move/from16 v34, v11

    move/from16 v32, v13

    const/4 v11, 0x2

    const/4 v13, 0x3

    const/16 v17, 0x4

    .end local v11    # "iter":I
    .end local v13    # "nMTFShadow":I
    .restart local v32    # "nMTFShadow":I
    .restart local v34    # "iter":I
    move/from16 v9, p1

    .local v9, "t":I
    :goto_5
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_4

    .line 865
    const/16 v21, 0x0

    aput-short v21, v5, v9

    goto :goto_5

    .line 864
    :cond_4
    const/16 v21, 0x0

    .line 868
    .end local v9    # "t":I
    move v9, v15

    .local v9, "i":I
    :goto_6
    if-gt v9, v2, :cond_6

    .line 869
    aget-char v24, v6, v9

    .line 870
    .local v24, "icv":I
    move/from16 v25, p1

    .local v25, "t":I
    :goto_7
    add-int/lit8 v25, v25, -0x1

    if-ltz v25, :cond_5

    .line 871
    aget-short v27, v5, v25

    aget-object v28, v8, v25

    aget-byte v11, v28, v24

    and-int/lit16 v11, v11, 0xff

    add-int v11, v27, v11

    int-to-short v11, v11

    aput-short v11, v5, v25

    const/4 v11, 0x2

    goto :goto_7

    .line 868
    .end local v24    # "icv":I
    .end local v25    # "t":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    const/4 v11, 0x2

    goto :goto_6

    .line 880
    .end local v9    # "i":I
    :cond_6
    :goto_8
    const/4 v9, -0x1

    .line 881
    .local v9, "bt":I
    move/from16 v11, p1

    .local v11, "t":I
    const v24, 0x3b9ac9ff

    move/from16 v13, v24

    .local v13, "bc":I
    :goto_9
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_8

    .line 882
    move-object/from16 v25, v10

    .end local v10    # "len_0":[B
    .local v25, "len_0":[B
    aget-short v10, v5, v11

    .line 883
    .local v10, "cost_t":I
    if-ge v10, v13, :cond_7

    .line 884
    move v13, v10

    .line 885
    move v9, v11

    .line 887
    .end local v10    # "cost_t":I
    :cond_7
    move-object/from16 v10, v25

    goto :goto_9

    .line 881
    .end local v25    # "len_0":[B
    .local v10, "len_0":[B
    :cond_8
    move-object/from16 v25, v10

    .line 889
    .end local v10    # "len_0":[B
    .end local v11    # "t":I
    .end local v13    # "bc":I
    .restart local v25    # "len_0":[B
    aget v10, v4, v9

    const/4 v11, 0x1

    add-int/2addr v10, v11

    aput v10, v4, v9

    .line 890
    int-to-byte v10, v9

    aput-byte v10, v7, v22

    .line 891
    add-int/lit8 v22, v22, 0x1

    .line 896
    aget-object v10, v3, v9

    .line 897
    .local v10, "rfreq_bt":[I
    move v11, v15

    .local v11, "i":I
    :goto_a
    if-gt v11, v2, :cond_9

    .line 898
    aget-char v13, v6, v11

    aget v27, v10, v13

    const/16 v23, 0x1

    add-int/lit8 v27, v27, 0x1

    aput v27, v10, v13

    .line 897
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_9
    const/16 v23, 0x1

    .line 901
    .end local v11    # "i":I
    add-int/lit8 v15, v2, 0x1

    .line 902
    .end local v2    # "ge":I
    .end local v9    # "bt":I
    .end local v10    # "rfreq_bt":[I
    move/from16 v9, v21

    move-object/from16 v10, v25

    move-object/from16 v2, v26

    move/from16 v13, v32

    move/from16 v11, v34

    goto/16 :goto_3

    .line 826
    .end local v25    # "len_0":[B
    .end local v26    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .end local v32    # "nMTFShadow":I
    .end local v34    # "iter":I
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .local v10, "len_0":[B
    .local v11, "iter":I
    .local v13, "nMTFShadow":I
    :cond_a
    move-object/from16 v26, v2

    move-object/from16 v25, v10

    move/from16 v34, v11

    move/from16 v32, v13

    const/16 v17, 0x4

    const/16 v21, 0x0

    const/16 v23, 0x1

    .line 907
    .end local v2    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .end local v10    # "len_0":[B
    .end local v11    # "iter":I
    .end local v13    # "nMTFShadow":I
    .end local v15    # "gs":I
    .restart local v25    # "len_0":[B
    .restart local v26    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .restart local v32    # "nMTFShadow":I
    .restart local v34    # "iter":I
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_b
    if-ge v2, v1, :cond_b

    .line 908
    aget-object v9, v8, v2

    aget-object v10, v3, v2

    iget-object v11, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    const/16 v13, 0x14

    move/from16 v15, p2

    invoke-static {v9, v10, v11, v15, v13}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->hbMakeCodeLengths([B[ILorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;II)V

    .line 907
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_b
    move/from16 v15, p2

    .line 815
    .end local v2    # "t":I
    add-int/lit8 v11, v34, 0x1

    move/from16 v15, v17

    move/from16 v9, v21

    move-object/from16 v10, v25

    move-object/from16 v2, v26

    move/from16 v13, v32

    .end local v34    # "iter":I
    .restart local v11    # "iter":I
    goto/16 :goto_0

    .line 912
    .end local v11    # "iter":I
    .end local v25    # "len_0":[B
    .end local v26    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .end local v32    # "nMTFShadow":I
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .restart local v10    # "len_0":[B
    .restart local v13    # "nMTFShadow":I
    :cond_c
    return v22
.end method

.method private sendMTFValues2(II)V
    .locals 8
    .param p1, "nGroups"    # I
    .param p2, "nSelectors"    # I

    .line 918
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 919
    .local v0, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues2_pos:[B

    .line 921
    .local v1, "pos":[B
    move v2, p1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 922
    int-to-byte v3, v2

    aput-byte v3, v1, v2

    goto :goto_0

    .line 925
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, p2, :cond_2

    .line 926
    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    aget-byte v3, v3, v2

    .line 927
    .local v3, "ll_i":B
    const/4 v4, 0x0

    aget-byte v5, v1, v4

    .line 928
    .local v5, "tmp":B
    const/4 v6, 0x0

    .line 930
    .local v6, "j":I
    :goto_2
    if-eq v3, v5, :cond_1

    .line 931
    add-int/lit8 v6, v6, 0x1

    .line 932
    move v7, v5

    .line 933
    .local v7, "tmp2":B
    aget-byte v5, v1, v6

    .line 934
    aput-byte v7, v1, v6

    .line 935
    .end local v7    # "tmp2":B
    goto :goto_2

    .line 937
    :cond_1
    aput-byte v5, v1, v4

    .line 938
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selectorMtf:[B

    int-to-byte v7, v6

    aput-byte v7, v4, v2

    .line 925
    .end local v3    # "ll_i":B
    .end local v5    # "tmp":B
    .end local v6    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 940
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private sendMTFValues3(II)V
    .locals 8
    .param p1, "nGroups"    # I
    .param p2, "alphaSize"    # I

    .line 943
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_code:[[I

    .line 944
    .local v0, "code":[[I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 946
    .local v1, "len":[[B
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_0
    if-ge v2, p1, :cond_3

    .line 947
    const/16 v3, 0x20

    .line 948
    .local v3, "minLen":I
    const/4 v4, 0x0

    .line 949
    .local v4, "maxLen":I
    aget-object v5, v1, v2

    .line 950
    .local v5, "len_t":[B
    move v6, p2

    .local v6, "i":I
    :goto_1
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_2

    .line 951
    aget-byte v7, v5, v6

    and-int/lit16 v7, v7, 0xff

    .line 952
    .local v7, "l":I
    if-le v7, v4, :cond_0

    .line 953
    move v4, v7

    .line 955
    :cond_0
    if-ge v7, v3, :cond_1

    .line 956
    move v3, v7

    .line 958
    .end local v7    # "l":I
    :cond_1
    goto :goto_1

    .line 963
    .end local v6    # "i":I
    :cond_2
    aget-object v6, v0, v2

    aget-object v7, v1, v2

    invoke-static {v6, v7, v3, v4, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->hbAssignCodes([I[BIII)V

    .line 946
    .end local v3    # "minLen":I
    .end local v4    # "maxLen":I
    .end local v5    # "len_t":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 965
    .end local v2    # "t":I
    :cond_3
    return-void
.end method

.method private sendMTFValues4()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 969
    .local v0, "inUse":[Z
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sentMTFValues4_inUse16:[Z

    .line 971
    .local v1, "inUse16":[Z
    const/16 v2, 0x10

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    if-ltz v2, :cond_2

    .line 972
    const/4 v4, 0x0

    aput-boolean v4, v1, v2

    .line 973
    mul-int/lit8 v4, v2, 0x10

    .line 974
    .local v4, "i16":I
    const/16 v5, 0x10

    .local v5, "j":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_1

    .line 975
    add-int v6, v4, v5

    aget-boolean v6, v0, v6

    if-eqz v6, :cond_0

    .line 976
    aput-boolean v3, v1, v2

    goto :goto_1

    .line 979
    .end local v4    # "i16":I
    .end local v5    # "j":I
    :cond_1
    goto :goto_0

    .line 981
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    const/16 v4, 0x10

    if-ge v2, v4, :cond_3

    .line 982
    aget-boolean v4, v1, v2

    invoke-direct {p0, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 981
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 985
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 986
    .local v2, "outShadow":Ljava/io/OutputStream;
    iget v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 987
    .local v5, "bsLiveShadow":I
    iget v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 989
    .local v6, "bsBuffShadow":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v4, :cond_7

    .line 990
    aget-boolean v8, v1, v7

    if-eqz v8, :cond_6

    .line 991
    mul-int/lit8 v8, v7, 0x10

    .line 992
    .local v8, "i16":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_4
    if-ge v9, v4, :cond_6

    .line 994
    :goto_5
    const/16 v10, 0x8

    if-lt v5, v10, :cond_4

    .line 995
    shr-int/lit8 v10, v6, 0x18

    invoke-virtual {v2, v10}, Ljava/io/OutputStream;->write(I)V

    .line 996
    shl-int/lit8 v6, v6, 0x8

    .line 997
    add-int/lit8 v5, v5, -0x8

    goto :goto_5

    .line 999
    :cond_4
    add-int v10, v8, v9

    aget-boolean v10, v0, v10

    if-eqz v10, :cond_5

    .line 1000
    rsub-int/lit8 v10, v5, 0x20

    sub-int/2addr v10, v3

    shl-int v10, v3, v10

    or-int/2addr v6, v10

    .line 1002
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 992
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 989
    .end local v8    # "i16":I
    .end local v9    # "j":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1007
    .end local v7    # "i":I
    :cond_7
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1008
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1009
    return-void
.end method

.method private sendMTFValues5(II)V
    .locals 9
    .param p1, "nGroups"    # I
    .param p2, "nSelectors"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1013
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 1014
    const/16 v0, 0xf

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 1016
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 1017
    .local v0, "outShadow":Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selectorMtf:[B

    .line 1019
    .local v1, "selectorMtf":[B
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1020
    .local v2, "bsLiveShadow":I
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1022
    .local v3, "bsBuffShadow":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_3

    .line 1023
    const/4 v5, 0x0

    .local v5, "j":I
    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    .local v6, "hj":I
    :goto_1
    const/16 v7, 0x8

    if-ge v5, v6, :cond_1

    .line 1025
    :goto_2
    if-lt v2, v7, :cond_0

    .line 1026
    shr-int/lit8 v8, v3, 0x18

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write(I)V

    .line 1027
    shl-int/lit8 v3, v3, 0x8

    .line 1028
    add-int/lit8 v2, v2, -0x8

    goto :goto_2

    .line 1030
    :cond_0
    rsub-int/lit8 v7, v2, 0x20

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    shl-int v7, v8, v7

    or-int/2addr v3, v7

    .line 1031
    add-int/lit8 v2, v2, 0x1

    .line 1023
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1035
    .end local v5    # "j":I
    .end local v6    # "hj":I
    :cond_1
    :goto_3
    if-lt v2, v7, :cond_2

    .line 1036
    shr-int/lit8 v5, v3, 0x18

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 1037
    shl-int/lit8 v3, v3, 0x8

    .line 1038
    add-int/lit8 v2, v2, -0x8

    goto :goto_3

    .line 1041
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1022
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1044
    .end local v4    # "i":I
    :cond_3
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1045
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1046
    return-void
.end method

.method private sendMTFValues6(II)V
    .locals 13
    .param p1, "nGroups"    # I
    .param p2, "alphaSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1050
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 1051
    .local v0, "len":[[B
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 1053
    .local v1, "outShadow":Ljava/io/OutputStream;
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1054
    .local v2, "bsLiveShadow":I
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1056
    .local v3, "bsBuffShadow":I
    const/4 v4, 0x0

    .local v4, "t":I
    :goto_0
    if-ge v4, p1, :cond_7

    .line 1057
    aget-object v5, v0, v4

    .line 1058
    .local v5, "len_t":[B
    const/4 v6, 0x0

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    .line 1061
    .local v6, "curr":I
    :goto_1
    const/16 v7, 0x8

    if-lt v2, v7, :cond_0

    .line 1062
    shr-int/lit8 v7, v3, 0x18

    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write(I)V

    .line 1063
    shl-int/lit8 v3, v3, 0x8

    .line 1064
    add-int/lit8 v2, v2, -0x8

    goto :goto_1

    .line 1066
    :cond_0
    rsub-int/lit8 v8, v2, 0x20

    add-int/lit8 v8, v8, -0x5

    shl-int v8, v6, v8

    or-int/2addr v3, v8

    .line 1067
    add-int/lit8 v2, v2, 0x5

    .line 1069
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, p2, :cond_6

    .line 1070
    aget-byte v9, v5, v8

    and-int/lit16 v9, v9, 0xff

    .line 1071
    .local v9, "lti":I
    :goto_3
    const/4 v10, 0x2

    if-ge v6, v9, :cond_2

    .line 1073
    :goto_4
    if-lt v2, v7, :cond_1

    .line 1074
    shr-int/lit8 v11, v3, 0x18

    invoke-virtual {v1, v11}, Ljava/io/OutputStream;->write(I)V

    .line 1075
    shl-int/lit8 v3, v3, 0x8

    .line 1076
    add-int/lit8 v2, v2, -0x8

    goto :goto_4

    .line 1078
    :cond_1
    rsub-int/lit8 v11, v2, 0x20

    sub-int/2addr v11, v10

    shl-int/2addr v10, v11

    or-int/2addr v3, v10

    .line 1079
    add-int/lit8 v2, v2, 0x2

    .line 1081
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1084
    :cond_2
    :goto_5
    if-le v6, v9, :cond_4

    .line 1086
    :goto_6
    if-lt v2, v7, :cond_3

    .line 1087
    shr-int/lit8 v11, v3, 0x18

    invoke-virtual {v1, v11}, Ljava/io/OutputStream;->write(I)V

    .line 1088
    shl-int/lit8 v3, v3, 0x8

    .line 1089
    add-int/lit8 v2, v2, -0x8

    goto :goto_6

    .line 1091
    :cond_3
    rsub-int/lit8 v11, v2, 0x20

    sub-int/2addr v11, v10

    const/4 v12, 0x3

    shl-int v11, v12, v11

    or-int/2addr v3, v11

    .line 1092
    add-int/lit8 v2, v2, 0x2

    .line 1094
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 1098
    :cond_4
    :goto_7
    if-lt v2, v7, :cond_5

    .line 1099
    shr-int/lit8 v10, v3, 0x18

    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 1100
    shl-int/lit8 v3, v3, 0x8

    .line 1101
    add-int/lit8 v2, v2, -0x8

    goto :goto_7

    .line 1104
    :cond_5
    nop

    .end local v9    # "lti":I
    add-int/lit8 v2, v2, 0x1

    .line 1069
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1056
    .end local v5    # "len_t":[B
    .end local v6    # "curr":I
    .end local v8    # "i":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1108
    .end local v4    # "t":I
    :cond_7
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1109
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1110
    return-void
.end method

.method private sendMTFValues7()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1113
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 1114
    .local v1, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 1115
    .local v2, "len":[[B
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_code:[[I

    .line 1116
    .local v3, "code":[[I
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 1117
    .local v4, "outShadow":Ljava/io/OutputStream;
    iget-object v5, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    .line 1118
    .local v5, "selector":[B
    iget-object v6, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    .line 1119
    .local v6, "sfmap":[C
    iget v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    .line 1121
    .local v7, "nMTFShadow":I
    const/4 v8, 0x0

    .line 1123
    .local v8, "selCtr":I
    iget v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1124
    .local v9, "bsLiveShadow":I
    iget v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1126
    .local v10, "bsBuffShadow":I
    const/4 v11, 0x0

    .local v11, "gs":I
    :goto_0
    if-ge v11, v7, :cond_2

    .line 1127
    add-int/lit8 v12, v11, 0x32

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v13, v7, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1128
    .local v12, "ge":I
    aget-byte v13, v5, v8

    and-int/lit16 v13, v13, 0xff

    .line 1129
    .local v13, "selector_selCtr":I
    aget-object v14, v3, v13

    .line 1130
    .local v14, "code_selCtr":[I
    aget-object v15, v2, v13

    .line 1132
    .local v15, "len_selCtr":[B
    :goto_1
    if-gt v11, v12, :cond_1

    .line 1133
    aget-char v16, v6, v11

    .line 1139
    .local v16, "sfmap_i":I
    :goto_2
    move-object/from16 v17, v1

    .end local v1    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .local v17, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    const/16 v1, 0x8

    if-lt v9, v1, :cond_0

    .line 1140
    shr-int/lit8 v1, v10, 0x18

    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1141
    shl-int/lit8 v10, v10, 0x8

    .line 1142
    add-int/lit8 v9, v9, -0x8

    move-object/from16 v1, v17

    goto :goto_2

    .line 1144
    :cond_0
    aget-byte v1, v15, v16

    and-int/lit16 v1, v1, 0xff

    .line 1145
    .local v1, "n":I
    aget v18, v14, v16

    rsub-int/lit8 v19, v9, 0x20

    sub-int v19, v19, v1

    shl-int v18, v18, v19

    or-int v10, v10, v18

    .line 1146
    add-int/2addr v9, v1

    .line 1148
    nop

    .end local v1    # "n":I
    .end local v16    # "sfmap_i":I
    add-int/lit8 v11, v11, 0x1

    .line 1149
    move-object/from16 v1, v17

    goto :goto_1

    .line 1151
    .end local v17    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .local v1, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    :cond_1
    move-object/from16 v17, v1

    .end local v1    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .restart local v17    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    add-int/lit8 v11, v12, 0x1

    .line 1152
    nop

    .end local v12    # "ge":I
    .end local v13    # "selector_selCtr":I
    .end local v14    # "code_selCtr":[I
    .end local v15    # "len_selCtr":[B
    add-int/lit8 v8, v8, 0x1

    .line 1153
    goto :goto_0

    .line 1155
    .end local v11    # "gs":I
    .end local v17    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .restart local v1    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    :cond_2
    iput v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1156
    iput v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1157
    return-void
.end method

.method private write0(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 650
    and-int/lit16 p1, p1, 0xff

    .line 651
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    if-ne v0, p1, :cond_0

    .line 652
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    const/16 v1, 0xfe

    if-le v0, v1, :cond_2

    .line 653
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 654
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 655
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    goto :goto_0

    .line 659
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 660
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 661
    iput p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    goto :goto_0

    .line 664
    :cond_1
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 665
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 667
    :cond_2
    :goto_0
    return-void
.end method

.method private writeRun()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 419
    .local v0, "lastShadow":I
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->allowableBlockSize:I

    if-ge v0, v1, :cond_0

    .line 420
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 421
    .local v1, "currentCharShadow":I
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 422
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    .line 423
    int-to-byte v3, v1

    .line 425
    .local v3, "ch":B
    iget v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 426
    .local v5, "runLengthShadow":I
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v6, v1, v5}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(II)V

    .line 428
    packed-switch v5, :pswitch_data_0

    .line 450
    add-int/lit8 v5, v5, -0x4

    .line 451
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    aput-boolean v4, v6, v5

    .line 452
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 453
    .local v4, "block":[B
    add-int/lit8 v6, v0, 0x2

    aput-byte v3, v4, v6

    .line 454
    add-int/lit8 v6, v0, 0x3

    aput-byte v3, v4, v6

    .line 455
    add-int/lit8 v6, v0, 0x4

    aput-byte v3, v4, v6

    .line 456
    add-int/lit8 v6, v0, 0x5

    aput-byte v3, v4, v6

    .line 457
    add-int/lit8 v6, v0, 0x6

    int-to-byte v7, v5

    aput-byte v7, v4, v6

    .line 458
    add-int/lit8 v6, v0, 0x5

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    goto :goto_0

    .line 441
    .end local v4    # "block":[B
    :pswitch_0
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 442
    .restart local v4    # "block":[B
    add-int/lit8 v6, v0, 0x2

    aput-byte v3, v4, v6

    .line 443
    add-int/lit8 v6, v0, 0x3

    aput-byte v3, v4, v6

    .line 444
    add-int/lit8 v6, v0, 0x4

    aput-byte v3, v4, v6

    .line 445
    add-int/lit8 v6, v0, 0x3

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 447
    .end local v4    # "block":[B
    goto :goto_0

    .line 435
    :pswitch_1
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v6, v0, 0x2

    aput-byte v3, v4, v6

    .line 436
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v6, v0, 0x3

    aput-byte v3, v4, v6

    .line 437
    add-int/lit8 v4, v0, 0x2

    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 438
    goto :goto_0

    .line 430
    :pswitch_2
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v6, v0, 0x2

    aput-byte v3, v4, v6

    .line 431
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 432
    nop

    .line 463
    .end local v1    # "currentCharShadow":I
    .end local v2    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .end local v3    # "ch":B
    .end local v5    # "runLengthShadow":I
    :goto_0
    goto :goto_1

    .line 464
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->endBlock()V

    .line 465
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->initBlock()V

    .line 466
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 468
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 505
    .local v0, "outShadow":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 508
    goto :goto_0

    .line 507
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 508
    throw v1

    .line 510
    .end local v0    # "outShadow":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 475
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 476
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Unclosed BZip2CompressorOutputStream detected, will *not* close it"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 478
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 479
    return-void
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->closed:Z

    .line 486
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    if-lez v1, :cond_0

    .line 487
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 489
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 490
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->endBlock()V

    .line 491
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->endCompression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 494
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSorter:Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

    .line 495
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 496
    goto :goto_0

    .line 493
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 494
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSorter:Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

    .line 495
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 496
    throw v1

    .line 498
    :cond_1
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 515
    .local v0, "outShadow":Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 518
    :cond_0
    return-void
.end method

.method public final getBlockSize()I
    .locals 1

    .line 618
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    return v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 397
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->write0(I)V

    .line 401
    return-void

    .line 399
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "offs"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 624
    const-string v0, ") < 0."

    const-string v1, "offs("

    if-ltz p2, :cond_4

    .line 627
    if-ltz p3, :cond_3

    .line 630
    add-int v0, p2, p3

    array-length v2, p1

    if-gt v0, v2, :cond_2

    .line 635
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 639
    add-int v0, p2, p3

    .local v0, "hi":I
    :goto_0
    if-ge p2, v0, :cond_0

    .line 640
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offs":I
    .local v1, "offs":I
    aget-byte p2, p1, p2

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->write0(I)V

    move p2, v1

    goto :goto_0

    .line 642
    .end local v0    # "hi":I
    .end local v1    # "offs":I
    .restart local p2    # "offs":I
    :cond_0
    return-void

    .line 636
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") + len("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > buf.length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "len("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 625
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
