.class Lorg/apache/commons/compress/archivers/dump/TapeInputStream;
.super Ljava/io/FilterInputStream;
.source "TapeInputStream.java"


# static fields
.field private static final RECORD_SIZE:I = 0x400


# instance fields
.field private blockBuffer:[B

.field private blockSize:I

.field private bytesRead:J

.field private currBlkIdx:I

.field private isCompressed:Z

.field private readOffset:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    const/16 v0, 0x400

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 40
    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 42
    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 51
    return-void
.end method

.method private readBlock(Z)V
    .locals 11
    .param p1, "decompress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 281
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto/16 :goto_2

    .line 286
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    const/4 v3, 0x4

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    .line 287
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 289
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v0

    .line 290
    .local v0, "h":I
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 292
    .local v3, "compressed":Z
    :goto_0
    if-nez v3, :cond_2

    .line 294
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v5, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    invoke-direct {p0, v4, v2, v5}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    .line 295
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    iget v6, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    goto/16 :goto_3

    .line 298
    :cond_2
    shr-int/lit8 v4, v0, 0x1

    and-int/lit8 v4, v4, 0x7

    .line 299
    .local v4, "flags":I
    shr-int/lit8 v5, v0, 0x4

    const v6, 0xfffffff

    and-int/2addr v5, v6

    .line 300
    .local v5, "length":I
    new-array v6, v5, [B

    .line 301
    .local v6, "compBuffer":[B
    invoke-direct {p0, v6, v2, v5}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    .line 302
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    int-to-long v9, v5

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 304
    if-nez p1, :cond_3

    .line 306
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-static {v7, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_3

    .line 308
    :cond_3
    sget-object v7, Lorg/apache/commons/compress/archivers/dump/TapeInputStream$1;->$SwitchMap$org$apache$commons$compress$archivers$dump$DumpArchiveConstants$COMPRESSION_TYPE:[I

    and-int/lit8 v8, v4, 0x3

    invoke-static {v8}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->find(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 337
    new-instance v1, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>()V

    throw v1

    .line 333
    :pswitch_0
    new-instance v1, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    const-string v2, "LZO"

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :pswitch_1
    new-instance v1, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    const-string v2, "BZLIB2"

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :pswitch_2
    new-instance v7, Ljava/util/zip/Inflater;

    invoke-direct {v7}, Ljava/util/zip/Inflater;-><init>()V

    .line 314
    .local v7, "inflator":Ljava/util/zip/Inflater;
    :try_start_0
    array-length v8, v6

    invoke-virtual {v7, v6, v2, v8}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 315
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-virtual {v7, v8}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v8

    move v5, v8

    .line 317
    iget v8, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v8, :cond_4

    .line 323
    invoke-virtual {v7}, Ljava/util/zip/Inflater;->end()V

    .line 324
    nop

    .line 326
    goto :goto_3

    .line 318
    :cond_4
    :try_start_1
    new-instance v1, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    .end local v0    # "h":I
    .end local v3    # "compressed":Z
    .end local v4    # "flags":I
    .end local v5    # "length":I
    .end local v6    # "compBuffer":[B
    .end local v7    # "inflator":Ljava/util/zip/Inflater;
    .end local p1    # "decompress":Z
    throw v1
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    .restart local v0    # "h":I
    .restart local v3    # "compressed":Z
    .restart local v4    # "flags":I
    .restart local v5    # "length":I
    .restart local v6    # "compBuffer":[B
    .restart local v7    # "inflator":Ljava/util/zip/Inflater;
    .restart local p1    # "decompress":Z
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/util/zip/DataFormatException;
    :try_start_2
    new-instance v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;

    const-string v8, "Bad data"

    invoke-direct {v2, v8, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "h":I
    .end local v3    # "compressed":Z
    .end local v4    # "flags":I
    .end local v5    # "length":I
    .end local v6    # "compBuffer":[B
    .end local v7    # "inflator":Ljava/util/zip/Inflater;
    .end local p1    # "decompress":Z
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    .end local v1    # "e":Ljava/util/zip/DataFormatException;
    .restart local v0    # "h":I
    .restart local v3    # "compressed":Z
    .restart local v4    # "flags":I
    .restart local v5    # "length":I
    .restart local v6    # "compBuffer":[B
    .restart local v7    # "inflator":Ljava/util/zip/Inflater;
    .restart local p1    # "decompress":Z
    :goto_1
    invoke-virtual {v7}, Ljava/util/zip/Inflater;->end()V

    .line 324
    throw v1

    .line 283
    .end local v0    # "h":I
    .end local v3    # "compressed":Z
    .end local v4    # "flags":I
    .end local v5    # "length":I
    .end local v6    # "compBuffer":[B
    .end local v7    # "inflator":Ljava/util/zip/Inflater;
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    .line 284
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 343
    :goto_3
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 344
    iput v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 345
    return-void

    .line 278
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Input buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readFully([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 353
    .local v0, "count":I
    if-lt v0, p3, :cond_0

    .line 356
    return-void

    .line 354
    :cond_0
    new-instance v1, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ge v0, v1, :cond_0

    .line 97
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    sub-int/2addr v0, v1

    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 225
    :cond_0
    return-void
.end method

.method public getBytesRead()J
    .locals 2

    .line 362
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    return-wide v0
.end method

.method public peek()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ne v0, v1, :cond_0

    .line 239
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)V
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/dump/ShortFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "sfe":Lorg/apache/commons/compress/archivers/dump/ShortFileException;
    const/4 v1, 0x0

    return-object v1

    .line 246
    .end local v0    # "sfe":Lorg/apache/commons/compress/archivers/dump/ShortFileException;
    :cond_0
    :goto_0
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 247
    .local v0, "b":[B
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    return-object v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All reads must be multiple of record size (1024 bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    if-nez p3, :cond_0

    .line 124
    const/4 v0, 0x0

    return v0

    .line 126
    :cond_0
    rem-int/lit16 v0, p3, 0x400

    if-nez v0, :cond_4

    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, "bytes":I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 138
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ne v1, v2, :cond_1

    .line 140
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)V
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/dump/ShortFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_1

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "sfe":Lorg/apache/commons/compress/archivers/dump/ShortFileException;
    const/4 v2, -0x1

    return v2

    .line 146
    .end local v1    # "sfe":Lorg/apache/commons/compress/archivers/dump/ShortFileException;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 148
    .local v1, "n":I
    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    sub-int v3, p3, v0

    add-int/2addr v2, v3

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-gt v2, v3, :cond_2

    .line 150
    sub-int v1, p3, v0

    goto :goto_2

    .line 153
    :cond_2
    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    sub-int v1, v2, v3

    .line 157
    :goto_2
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 159
    add-int/2addr v0, v1

    .line 160
    add-int/2addr p2, v1

    .line 161
    .end local v1    # "n":I
    goto :goto_0

    .line 163
    :cond_3
    return v0

    .line 127
    .end local v0    # "bytes":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All reads must be multiple of record size (1024 bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readRecord()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 263
    .local v0, "result":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    .line 267
    return-object v0

    .line 264
    :cond_0
    new-instance v1, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw v1
.end method

.method public resetBlockSize(IZ)V
    .locals 5
    .param p1, "recsPerBlock"    # I
    .param p2, "isCompressed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    .line 73
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 77
    mul-int/lit16 v0, p1, 0x400

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 80
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 83
    .local v0, "oldBuffer":[B
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 84
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    sub-int/2addr v4, v3

    invoke-direct {p0, v1, v3, v4}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    .line 87
    iput v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 88
    iput v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 89
    return-void

    .line 74
    .end local v0    # "oldBuffer":[B
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Block with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " records found, must be at least 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 8
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const-wide/16 v0, 0x400

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 182
    const-wide/16 v0, 0x0

    .line 184
    .local v0, "bytes":J
    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_3

    .line 189
    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ne v2, v3, :cond_1

    .line 191
    sub-long v2, p1, v0

    :try_start_0
    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)V
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/dump/ShortFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_2

    .line 192
    :catch_0
    move-exception v2

    .line 193
    .local v2, "sfe":Lorg/apache/commons/compress/archivers/dump/ShortFileException;
    const-wide/16 v3, -0x1

    return-wide v3

    .line 197
    .end local v2    # "sfe":Lorg/apache/commons/compress/archivers/dump/ShortFileException;
    :cond_1
    :goto_2
    const-wide/16 v2, 0x0

    .line 199
    .local v2, "n":J
    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    int-to-long v4, v4

    sub-long v6, p1, v0

    add-long/2addr v4, v6

    iget v6, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 201
    sub-long v2, p1, v0

    goto :goto_3

    .line 204
    :cond_2
    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v4, v4

    iget v6, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    int-to-long v6, v6

    sub-long v2, v4, v6

    .line 208
    :goto_3
    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    int-to-long v4, v4

    add-long/2addr v4, v2

    long-to-int v4, v4

    iput v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 209
    add-long/2addr v0, v2

    .line 210
    .end local v2    # "n":J
    goto :goto_0

    .line 212
    :cond_3
    return-wide v0

    .line 177
    .end local v0    # "bytes":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All reads must be multiple of record size (1024 bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
