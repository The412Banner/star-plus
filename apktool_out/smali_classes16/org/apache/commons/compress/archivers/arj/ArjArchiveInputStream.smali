.class public Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "ArjArchiveInputStream.java"


# static fields
.field private static final ARJ_MAGIC_1:I = 0x60

.field private static final ARJ_MAGIC_2:I = 0xea


# instance fields
.field private final charsetName:Ljava/lang/String;

.field private currentInputStream:Ljava/io/InputStream;

.field private currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

.field private final in:Ljava/io/DataInputStream;

.field private final mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 85
    const-string v0, "CP437"

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    .line 51
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 62
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    .line 63
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->charsetName:Ljava/lang/String;

    .line 65
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readMainHeader()Lorg/apache/commons/compress/archivers/arj/MainHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;

    .line 66
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;

    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;

    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 74
    nop

    .line 75
    return-void

    .line 70
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v1, "Multi-volume ARJ files are unsupported"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "charsetName":Ljava/lang/String;
    throw v0

    .line 67
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "charsetName":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v1, "Encrypted ARJ files are unsupported"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "charsetName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "charsetName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ioException":Ljava/io/IOException;
    new-instance v1, Lorg/apache/commons/compress/archivers/ArchiveException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 296
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x60

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xea

    if-ne v2, v3, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private read16(Ljava/io/DataInputStream;)I
    .locals 2
    .param p1, "dataIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 101
    .local v0, "value":I
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->count(I)V

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    ushr-int/lit8 v1, v1, 0x10

    return v1
.end method

.method private read32(Ljava/io/DataInputStream;)I
    .locals 2
    .param p1, "dataIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 107
    .local v0, "value":I
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->count(I)V

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    return v1
.end method

.method private read8(Ljava/io/DataInputStream;)I
    .locals 2
    .param p1, "dataIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 95
    .local v0, "value":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->count(I)V

    .line 96
    return v0
.end method

.method private readExtraData(ILjava/io/DataInputStream;Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V
    .locals 2
    .param p1, "firstHeaderSize"    # I
    .param p2, "firstHeader"    # Ljava/io/DataInputStream;
    .param p3, "localFileHeader"    # Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    const/16 v0, 0x21

    if-lt p1, v0, :cond_1

    .line 275
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v0

    iput v0, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->extendedFilePosition:I

    .line 276
    const/16 v0, 0x2d

    if-lt p1, v0, :cond_0

    .line 277
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v0

    iput v0, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeAccessed:I

    .line 278
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v0

    iput v0, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeCreated:I

    .line 279
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v0

    iput v0, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSizeEvenForVolumes:I

    .line 280
    const-wide/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->pushedBackBytes(J)V

    .line 282
    :cond_0
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->pushedBackBytes(J)V

    .line 284
    :cond_1
    return-void
.end method

.method private readFully(Ljava/io/DataInputStream;[B)V
    .locals 1
    .param p1, "dataIn"    # Ljava/io/DataInputStream;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p1, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 128
    array-length v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->count(I)V

    .line 129
    return-void
.end method

.method private readHeader()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "found":Z
    const/4 v1, 0x0

    .line 135
    .local v1, "basicHeaderBytes":[B
    :cond_0
    const/4 v2, 0x0

    .line 136
    .local v2, "first":I
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read8(Ljava/io/DataInputStream;)I

    move-result v3

    .line 138
    .local v3, "second":I
    :cond_1
    move v2, v3

    .line 139
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read8(Ljava/io/DataInputStream;)I

    move-result v3

    .line 140
    const/16 v4, 0x60

    if-eq v2, v4, :cond_2

    const/16 v4, 0xea

    if-ne v3, v4, :cond_1

    .line 141
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v4

    .line 142
    .local v4, "basicHeaderSize":I
    if-nez v4, :cond_3

    .line 144
    const/4 v5, 0x0

    return-object v5

    .line 146
    :cond_3
    const/16 v5, 0xa28

    if-gt v4, v5, :cond_4

    .line 147
    new-array v1, v4, [B

    .line 148
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v5, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readFully(Ljava/io/DataInputStream;[B)V

    .line 149
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v5

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 150
    .local v5, "basicHeaderCrc32":J
    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    .line 151
    .local v7, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual {v7, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 152
    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    cmp-long v8, v5, v8

    if-nez v8, :cond_4

    .line 153
    const/4 v0, 0x1

    .line 156
    .end local v2    # "first":I
    .end local v3    # "second":I
    .end local v4    # "basicHeaderSize":I
    .end local v5    # "basicHeaderCrc32":J
    .end local v7    # "crc32":Ljava/util/zip/CRC32;
    :cond_4
    if-eqz v0, :cond_0

    .line 157
    return-object v1
.end method

.method private readLocalFileHeader()Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readHeader()[B

    move-result-object v2

    .line 219
    .local v2, "basicHeaderBytes":[B
    if-nez v2, :cond_0

    .line 220
    const/4 v0, 0x0

    return-object v0

    .line 222
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    .line 224
    .local v3, "basicHeader":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    move v4, v0

    .line 225
    .local v4, "firstHeaderSize":I
    add-int/lit8 v0, v4, -0x1

    new-array v0, v0, [B

    move-object v5, v0

    .line 226
    .local v5, "firstHeaderBytes":[B
    invoke-virtual {v3, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 227
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v6, v0

    .line 229
    .local v6, "firstHeader":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;-><init>()V

    .line 230
    .local v0, "localFileHeader":Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->archiverVersionNumber:I

    .line 231
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->minVersionToExtract:I

    .line 232
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->hostOS:I

    .line 233
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->arjFlags:I

    .line 234
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    .line 235
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileType:I

    .line 236
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->reserved:I

    .line 237
    invoke-direct {v1, v6}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v7

    iput v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeModified:I

    .line 238
    invoke-direct {v1, v6}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iput-wide v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->compressedSize:J

    .line 239
    invoke-direct {v1, v6}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v9

    iput-wide v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSize:J

    .line 240
    invoke-direct {v1, v6}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v9

    iput-wide v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalCrc32:J

    .line 241
    invoke-direct {v1, v6}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v7

    iput v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileSpecPosition:I

    .line 242
    invoke-direct {v1, v6}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v7

    iput v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileAccessMode:I

    .line 243
    const-wide/16 v7, 0x14

    invoke-virtual {v1, v7, v8}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->pushedBackBytes(J)V

    .line 244
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->firstChapter:I

    .line 245
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->lastChapter:I

    .line 247
    invoke-direct {v1, v4, v6, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readExtraData(ILjava/io/DataInputStream;Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V

    .line 249
    invoke-direct {v1, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->name:Ljava/lang/String;

    .line 250
    invoke-direct {v1, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->comment:Ljava/lang/String;

    .line 252
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v7, "extendedHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :goto_0
    iget-object v8, v1, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {v1, v8}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v8

    move v11, v8

    .local v11, "extendedHeaderSize":I
    if-lez v8, :cond_2

    .line 255
    new-array v8, v11, [B

    .line 256
    .local v8, "extendedHeaderBytes":[B
    iget-object v12, v1, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {v1, v12, v8}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readFully(Ljava/io/DataInputStream;[B)V

    .line 257
    iget-object v12, v1, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {v1, v12}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v12

    int-to-long v12, v12

    and-long/2addr v12, v9

    .line 258
    .local v12, "extendedHeaderCrc32":J
    new-instance v14, Ljava/util/zip/CRC32;

    invoke-direct {v14}, Ljava/util/zip/CRC32;-><init>()V

    .line 259
    .local v14, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual {v14, v8}, Ljava/util/zip/CRC32;->update([B)V

    .line 260
    invoke-virtual {v14}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v15

    cmp-long v15, v12, v15

    if-nez v15, :cond_1

    .line 263
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    nop

    .end local v8    # "extendedHeaderBytes":[B
    .end local v12    # "extendedHeaderCrc32":J
    .end local v14    # "crc32":Ljava/util/zip/CRC32;
    goto :goto_0

    .line 261
    .restart local v8    # "extendedHeaderBytes":[B
    .restart local v12    # "extendedHeaderCrc32":J
    .restart local v14    # "crc32":Ljava/util/zip/CRC32;
    :cond_1
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Extended header CRC32 verification failure"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "basicHeaderBytes":[B
    .end local v3    # "basicHeader":Ljava/io/DataInputStream;
    .end local v4    # "firstHeaderSize":I
    .end local v5    # "firstHeaderBytes":[B
    .end local v6    # "firstHeader":Ljava/io/DataInputStream;
    throw v9

    .line 265
    .end local v8    # "extendedHeaderBytes":[B
    .end local v12    # "extendedHeaderCrc32":J
    .end local v14    # "crc32":Ljava/util/zip/CRC32;
    .restart local v2    # "basicHeaderBytes":[B
    .restart local v3    # "basicHeader":Ljava/io/DataInputStream;
    .restart local v4    # "firstHeaderSize":I
    .restart local v5    # "firstHeaderBytes":[B
    .restart local v6    # "firstHeader":Ljava/io/DataInputStream;
    :cond_2
    const/4 v8, 0x0

    new-array v8, v8, [[B

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[B

    iput-object v8, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->extendedHeaders:[[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    nop

    .line 268
    :try_start_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 269
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 267
    return-object v0

    .line 227
    .end local v0    # "localFileHeader":Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;
    .end local v7    # "extendedHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v11    # "extendedHeaderSize":I
    :catchall_0
    move-exception v0

    move-object v7, v0

    .end local v2    # "basicHeaderBytes":[B
    .end local v3    # "basicHeader":Ljava/io/DataInputStream;
    .end local v4    # "firstHeaderSize":I
    .end local v5    # "firstHeaderBytes":[B
    .end local v6    # "firstHeader":Ljava/io/DataInputStream;
    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 268
    .restart local v2    # "basicHeaderBytes":[B
    .restart local v3    # "basicHeader":Ljava/io/DataInputStream;
    .restart local v4    # "firstHeaderSize":I
    .restart local v5    # "firstHeaderBytes":[B
    .restart local v6    # "firstHeader":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v0

    move-object v8, v0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v9, v0

    :try_start_5
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "basicHeaderBytes":[B
    .end local v3    # "basicHeader":Ljava/io/DataInputStream;
    :goto_1
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 222
    .end local v4    # "firstHeaderSize":I
    .end local v5    # "firstHeaderBytes":[B
    .end local v6    # "firstHeader":Ljava/io/DataInputStream;
    .restart local v2    # "basicHeaderBytes":[B
    .restart local v3    # "basicHeader":Ljava/io/DataInputStream;
    :catchall_3
    move-exception v0

    move-object v4, v0

    .end local v2    # "basicHeaderBytes":[B
    .end local v3    # "basicHeader":Ljava/io/DataInputStream;
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 269
    .restart local v2    # "basicHeaderBytes":[B
    .restart local v3    # "basicHeader":Ljava/io/DataInputStream;
    :catchall_4
    move-exception v0

    move-object v5, v0

    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v5
.end method

.method private readMainHeader()Lorg/apache/commons/compress/archivers/arj/MainHeader;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readHeader()[B

    move-result-object v0

    .line 162
    .local v0, "basicHeaderBytes":[B
    if-eqz v0, :cond_3

    .line 165
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 168
    .local v1, "basicHeader":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 169
    .local v2, "firstHeaderSize":I
    add-int/lit8 v3, v2, -0x1

    new-array v3, v3, [B

    .line 170
    .local v3, "firstHeaderBytes":[B
    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 171
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 174
    .local v4, "firstHeader":Ljava/io/DataInputStream;
    new-instance v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;

    invoke-direct {v5}, Lorg/apache/commons/compress/archivers/arj/MainHeader;-><init>()V

    .line 175
    .local v5, "hdr":Lorg/apache/commons/compress/archivers/arj/MainHeader;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->archiverVersionNumber:I

    .line 176
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->minVersionToExtract:I

    .line 177
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->hostOS:I

    .line 178
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags:I

    .line 179
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->securityVersion:I

    .line 180
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->fileType:I

    .line 181
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->reserved:I

    .line 182
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->dateTimeCreated:I

    .line 183
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->dateTimeModified:I

    .line 184
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    iput-wide v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->archiveSize:J

    .line 185
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->securityEnvelopeFilePosition:I

    .line 186
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->fileSpecPosition:I

    .line 187
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->securityEnvelopeLength:I

    .line 188
    const-wide/16 v6, 0x14

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->pushedBackBytes(J)V

    .line 189
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->encryptionVersion:I

    .line 190
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->lastChapter:I

    .line 192
    const/16 v6, 0x21

    if-lt v2, v6, :cond_0

    .line 193
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjProtectionFactor:I

    .line 194
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags2:I

    .line 195
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 196
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 199
    :cond_0
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->name:Ljava/lang/String;

    .line 200
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->comment:Ljava/lang/String;

    .line 202
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v6}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v6

    .line 203
    .local v6, "extendedHeaderSize":I
    if-lez v6, :cond_2

    .line 204
    new-array v7, v6, [B

    iput-object v7, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->extendedHeaderBytes:[B

    .line 205
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    iget-object v10, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->extendedHeaderBytes:[B

    invoke-direct {p0, v7, v10}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readFully(Ljava/io/DataInputStream;[B)V

    .line 206
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v7}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v7

    int-to-long v10, v7

    and-long v7, v10, v8

    .line 207
    .local v7, "extendedHeaderCrc32":J
    new-instance v9, Ljava/util/zip/CRC32;

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    .line 208
    .local v9, "crc32":Ljava/util/zip/CRC32;
    iget-object v10, v5, Lorg/apache/commons/compress/archivers/arj/MainHeader;->extendedHeaderBytes:[B

    invoke-virtual {v9, v10}, Ljava/util/zip/CRC32;->update([B)V

    .line 209
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    cmp-long v10, v7, v10

    if-nez v10, :cond_1

    goto :goto_0

    .line 210
    :cond_1
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Extended header CRC32 verification failure"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 214
    .end local v7    # "extendedHeaderCrc32":J
    .end local v9    # "crc32":Ljava/util/zip/CRC32;
    :cond_2
    :goto_0
    return-object v5

    .line 163
    .end local v1    # "basicHeader":Ljava/io/DataInputStream;
    .end local v2    # "firstHeaderSize":I
    .end local v3    # "firstHeaderBytes":[B
    .end local v4    # "firstHeader":Ljava/io/DataInputStream;
    .end local v5    # "hdr":Lorg/apache/commons/compress/archivers/arj/MainHeader;
    .end local v6    # "extendedHeaderSize":I
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Archive ends without any headers"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "dataIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    move v2, v1

    .local v2, "nextByte":I
    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->charsetName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 118
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->charsetName:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 118
    return-object v1

    .line 121
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 121
    return-object v1

    .line 112
    .end local v2    # "nextByte":I
    :catchall_0
    move-exception v1

    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "dataIn":Ljava/io/DataInputStream;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "dataIn":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 1
    .param p1, "ae"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 342
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    .line 343
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 342
    :goto_0
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 91
    return-void
.end method

.method public getArchiveComment()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/arj/MainHeader;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveName()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/arj/MainHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    .line 322
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 323
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    .line 324
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 327
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readLocalFileHeader()Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    .line 328
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    if-eqz v0, :cond_2

    .line 329
    new-instance v0, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget-wide v2, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->compressedSize:J

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 330
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    if-nez v0, :cond_1

    .line 331
    new-instance v0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget-wide v3, v1, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSize:J

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget-wide v5, v1, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalCrc32:J

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 334
    :cond_1
    new-instance v0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;-><init>(Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V

    return-object v0

    .line 336
    :cond_2
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 337
    return-object v1
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    if-nez p3, :cond_0

    .line 349
    const/4 v0, 0x0

    return v0

    .line 351
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0

    .line 355
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported compression method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget v2, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current arj entry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
