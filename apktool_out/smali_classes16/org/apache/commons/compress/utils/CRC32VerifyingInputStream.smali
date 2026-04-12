.class public Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;
.super Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;
.source "CRC32VerifyingInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JI)V
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # J
    .param p4, "expectedCrc32"    # I

    .line 37
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # J
    .param p4, "expectedCrc32"    # J

    .line 47
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;-><init>(Ljava/util/zip/Checksum;Ljava/io/InputStream;JJ)V

    .line 48
    return-void
.end method
