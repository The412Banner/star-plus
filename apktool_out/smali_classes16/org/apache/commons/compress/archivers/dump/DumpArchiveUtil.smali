.class Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;
.super Ljava/lang/Object;
.source "DumpArchiveUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static calculateChecksum([B)I
    .locals 3
    .param p0, "buffer"    # [B

    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "calc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 46
    mul-int/lit8 v2, v1, 0x4

    invoke-static {p0, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v2

    add-int/2addr v0, v2

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "i":I
    :cond_0
    nop

    .line 50
    const/16 v1, 0x1c

    invoke-static {p0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v1

    sub-int v1, v0, v1

    const v2, 0x149de

    sub-int/2addr v2, v1

    .line 49
    return v2
.end method

.method public static final convert16([BI)I
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I

    .line 111
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([BII)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static final convert32([BI)I
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I

    .line 100
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([BII)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static final convert64([BI)J
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I

    .line 89
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method static decode(Lorg/apache/commons/compress/archivers/zip/ZipEncoding;[BII)Ljava/lang/String;
    .locals 1
    .param p0, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getIno([B)I
    .locals 1
    .param p0, "buffer"    # [B

    .line 78
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v0

    return v0
.end method

.method public static final verify([B)Z
    .locals 4
    .param p0, "buffer"    # [B

    .line 60
    const/16 v0, 0x18

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v0

    .line 62
    .local v0, "magic":I
    const v1, 0xea6c

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 63
    return v2

    .line 67
    :cond_0
    const/16 v1, 0x1c

    invoke-static {p0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v1

    .line 69
    .local v1, "checksum":I
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->calculateChecksum([B)I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
