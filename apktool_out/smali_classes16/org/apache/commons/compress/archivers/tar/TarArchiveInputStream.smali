.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "TarArchiveInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$TarArchiveSparseZeroInputStream;
    }
.end annotation


# static fields
.field private static final SMALL_BUFFER_SIZE:I = 0x100


# instance fields
.field private final blockSize:I

.field private currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

.field private currentSparseInputStreamIndex:I

.field final encoding:Ljava/lang/String;

.field private entryOffset:J

.field private entrySize:J

.field private globalPaxHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final globalSparseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;"
        }
    .end annotation
.end field

.field private hasHitEOF:Z

.field private final inputStream:Ljava/io/InputStream;

.field private final lenient:Z

.field private final recordSize:I

.field private final smallBuf:[B

.field private sparseInputStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .line 104
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I

    .line 136
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I
    .param p3, "recordSize"    # I

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IILjava/lang/String;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I
    .param p3, "recordSize"    # I
    .param p4, "encoding"    # Ljava/lang/String;

    .line 171
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;Z)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IILjava/lang/String;Z)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I
    .param p3, "recordSize"    # I
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "lenient"    # Z

    .line 186
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 56
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->smallBuf:[B

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalSparseHeaders:Ljava/util/List;

    .line 187
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    .line 189
    iput-object p4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->encoding:Ljava/lang/String;

    .line 190
    invoke-static {p4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 191
    iput p3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    .line 192
    iput p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->blockSize:I

    .line 193
    iput-boolean p5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->lenient:Z

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/lang/String;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I
    .param p3, "encoding"    # Ljava/lang/String;

    .line 148
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 126
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "lenient"    # Z

    .line 116
    const/16 v3, 0x200

    const/4 v4, 0x0

    const/16 v2, 0x2800

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;Z)V

    .line 117
    return-void
.end method

.method private applyPaxHeadersToCurrentEntry(Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;)V"
        }
    .end annotation

    .line 757
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->updateEntryFromPaxHeaders(Ljava/util/Map;)V

    .line 758
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSparseHeaders(Ljava/util/List;)V

    .line 759
    return-void
.end method

.method private buildSparseInputStreams()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1044
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    .line 1045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    .line 1047
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSparseHeaders()Ljava/util/List;

    move-result-object v0

    .line 1049
    .local v0, "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1050
    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$1;

    invoke-direct {v1, p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$1;-><init>(Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;)V

    .line 1058
    .local v1, "sparseHeaderComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1061
    .end local v1    # "sparseHeaderComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    :cond_0
    if-eqz v0, :cond_5

    .line 1063
    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$TarArchiveSparseZeroInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$TarArchiveSparseZeroInputStream;-><init>(Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$1;)V

    .line 1064
    .local v1, "zeroInputStream":Ljava/io/InputStream;
    const-wide/16 v2, 0x0

    .line 1065
    .local v2, "offset":J
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    .line 1066
    .local v5, "sparseHeader":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1067
    goto :goto_1

    .line 1070
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    .line 1075
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 1076
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    new-instance v7, Lorg/apache/commons/compress/utils/BoundedInputStream;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-direct {v7, v1, v10, v11}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    :cond_2
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 1081
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    new-instance v7, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v9

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    :cond_3
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v6

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v8

    add-long v2, v6, v8

    .line 1085
    .end local v5    # "sparseHeader":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    goto :goto_0

    .line 1071
    .restart local v5    # "sparseHeader":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Corrupted struct sparse detected"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1088
    .end local v1    # "zeroInputStream":Ljava/io/InputStream;
    .end local v2    # "offset":J
    .end local v5    # "sparseHeader":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    :cond_5
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1089
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    .line 1091
    :cond_6
    return-void
.end method

.method private consumeRemainderOfLastBlock()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 985
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getBytesRead()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->blockSize:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    .line 986
    .local v0, "bytesReadOfLastBlock":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 987
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->blockSize:I

    int-to-long v3, v3

    sub-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v2

    .line 988
    .local v2, "skipped":J
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->count(J)V

    .line 990
    .end local v2    # "skipped":J
    :cond_0
    return-void
.end method

.method private getRecord()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readRecord()[B

    move-result-object v0

    .line 484
    .local v0, "headerBuf":[B
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isEOFRecord([B)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->setAtEOF(Z)V

    .line 485
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isAtEOF()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 486
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->tryToConsumeSecondEOFRecord()V

    .line 487
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->consumeRemainderOfLastBlock()V

    .line 488
    const/4 v0, 0x0

    .line 490
    :cond_0
    return-object v0
.end method

.method private isDirectory()Z
    .locals 1

    .line 787
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static matches([BI)Z
    .locals 8
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 1002
    const/16 v0, 0x109

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 1003
    return v1

    .line 1006
    :cond_0
    const-string v0, "ustar\u0000"

    const/16 v2, 0x101

    const/4 v3, 0x6

    invoke-static {v0, p0, v2, v3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x107

    if-eqz v4, :cond_1

    .line 1009
    const-string v4, "00"

    invoke-static {v4, p0, v7, v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1012
    return v5

    .line 1014
    :cond_1
    const-string v4, "ustar "

    invoke-static {v4, p0, v2, v3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1018
    const-string v4, " \u0000"

    invoke-static {v4, p0, v7, v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1021
    const-string v4, "0\u0000"

    invoke-static {v4, p0, v7, v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1025
    :cond_2
    return v5

    .line 1028
    :cond_3
    invoke-static {v0, p0, v2, v3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1031
    const-string v0, "\u0000\u0000"

    invoke-static {v0, p0, v7, v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v5

    goto :goto_0

    :cond_4
    nop

    .line 1028
    :goto_0
    return v1
.end method

.method private parsePAX01SparseHeaders(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "sparseMap"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v0, "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "sparseHeaderStrings":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 589
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 590
    .local v3, "sparseOffset":J
    add-int/lit8 v5, v2, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 591
    .local v5, "sparseNumbytes":J
    new-instance v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    invoke-direct {v7, v3, v4, v5, v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;-><init>(JJ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    .end local v3    # "sparseOffset":J
    .end local v5    # "sparseNumbytes":J
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 594
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private parsePAX1XSparseHeaders()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v0, "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    const-wide/16 v1, 0x0

    .line 611
    .local v1, "bytesRead":J
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readLineOfNumberForPax1X(Ljava/io/InputStream;)[J

    move-result-object v3

    .line 612
    .local v3, "readResult":[J
    const/4 v4, 0x0

    aget-wide v5, v3, v4

    .line 613
    .local v5, "sparseHeadersCount":J
    const/4 v7, 0x1

    aget-wide v8, v3, v7

    add-long/2addr v1, v8

    .line 614
    :goto_0
    const-wide/16 v8, 0x1

    sub-long v8, v5, v8

    .end local v5    # "sparseHeadersCount":J
    .local v8, "sparseHeadersCount":J
    const-wide/16 v10, 0x0

    cmp-long v5, v5, v10

    if-lez v5, :cond_0

    .line 615
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readLineOfNumberForPax1X(Ljava/io/InputStream;)[J

    move-result-object v3

    .line 616
    aget-wide v5, v3, v4

    .line 617
    .local v5, "sparseOffset":J
    aget-wide v10, v3, v7

    add-long/2addr v1, v10

    .line 619
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-direct {p0, v10}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readLineOfNumberForPax1X(Ljava/io/InputStream;)[J

    move-result-object v3

    .line 620
    aget-wide v10, v3, v4

    .line 621
    .local v10, "sparseNumbytes":J
    aget-wide v12, v3, v7

    add-long/2addr v1, v12

    .line 622
    new-instance v12, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    invoke-direct {v12, v5, v6, v10, v11}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;-><init>(JJ)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    .end local v5    # "sparseOffset":J
    .end local v10    # "sparseNumbytes":J
    move-wide v5, v8

    goto :goto_0

    .line 626
    :cond_0
    iget v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v4, v4

    iget v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v6, v6

    rem-long v6, v1, v6

    sub-long/2addr v4, v6

    .line 627
    .local v4, "bytesToSkip":J
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-static {v6, v4, v5}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    .line 628
    return-object v0
.end method

.method private paxHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v0, "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    invoke-virtual {p0, p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->parsePaxHeaders(Ljava/io/InputStream;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 558
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "GNU.sparse.map"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 559
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->parsePAX01SparseHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 561
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 562
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->applyPaxHeadersToCurrentEntry(Ljava/util/Map;Ljava/util/List;)V

    .line 565
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxGNU1XSparse()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 566
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->parsePAX1XSparseHeaders()Ljava/util/List;

    move-result-object v0

    .line 567
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSparseHeaders(Ljava/util/List;)V

    .line 572
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->buildSparseInputStreams()V

    .line 573
    return-void
.end method

.method private readGlobalPaxHeaders()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalSparseHeaders:Ljava/util/List;

    invoke-virtual {p0, p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->parsePaxHeaders(Ljava/io/InputStream;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    .line 525
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 526
    return-void
.end method

.method private readLineOfNumberForPax1X(Ljava/io/InputStream;)[J
    .locals 10
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    const-wide/16 v0, 0x0

    .line 642
    .local v0, "result":J
    const-wide/16 v2, 0x0

    .line 644
    .local v2, "bytesRead":J
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    move v5, v4

    .local v5, "number":I
    const/16 v6, 0xa

    const-wide/16 v7, 0x1

    if-eq v4, v6, :cond_1

    .line 645
    add-long/2addr v2, v7

    .line 646
    const/4 v4, -0x1

    if-eq v5, v4, :cond_0

    .line 649
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v0

    add-int/lit8 v4, v5, -0x30

    int-to-long v8, v4

    add-long v0, v6, v8

    goto :goto_0

    .line 647
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Unexpected EOF when reading parse information of 1.X PAX format"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 651
    :cond_1
    add-long/2addr v2, v7

    .line 653
    const/4 v4, 0x2

    new-array v4, v4, [J

    const/4 v6, 0x0

    aput-wide v0, v4, v6

    const/4 v6, 0x1

    aput-wide v2, v4, v6

    return-object v4
.end method

.method private readOldGNUSparse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isExtended()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 771
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecord()[B

    move-result-object v0

    .line 772
    .local v0, "headerBuf":[B
    if-nez v0, :cond_1

    .line 773
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 774
    goto :goto_0

    .line 776
    :cond_1
    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;-><init>([B)V

    .line 777
    .local v1, "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSparseHeaders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->getSparseHeaders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 778
    .end local v0    # "headerBuf":[B
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->isExtended()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    .end local v1    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->buildSparseInputStreams()V

    .line 784
    return-void
.end method

.method private readSparse([BII)I
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "numToRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 905
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 909
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_1

    .line 910
    return v2

    .line 913
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 914
    .local v0, "currentInputStream":Ljava/io/InputStream;
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 918
    .local v1, "readLen":I
    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_2

    .line 919
    return v1

    .line 923
    :cond_2
    if-ne v1, v2, :cond_3

    .line 924
    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    .line 925
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readSparse([BII)I

    move-result v2

    return v2

    .line 930
    :cond_3
    if-ge v1, p3, :cond_5

    .line 931
    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    .line 932
    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-direct {p0, p1, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readSparse([BII)I

    move-result v3

    .line 933
    .local v3, "readLenOfNext":I
    if-ne v3, v2, :cond_4

    .line 934
    return v1

    .line 937
    :cond_4
    add-int v2, v1, v3

    return v2

    .line 941
    .end local v3    # "readLenOfNext":I
    :cond_5
    return v1

    .line 906
    .end local v0    # "currentInputStream":Ljava/io/InputStream;
    .end local v1    # "readLen":I
    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method private skipRecordPadding()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    iget v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v4, v4

    rem-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 428
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 429
    .local v0, "numRecords":J
    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    sub-long/2addr v2, v4

    .line 430
    .local v2, "padding":J
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-static {v4, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v4

    .line 431
    .local v4, "skipped":J
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->count(J)V

    .line 433
    .end local v0    # "numRecords":J
    .end local v2    # "padding":J
    .end local v4    # "skipped":J
    :cond_0
    return-void
.end method

.method private skipSparse(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 294
    :cond_0
    const-wide/16 v0, 0x0

    .line 296
    .local v0, "bytesSkipped":J
    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_2

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 297
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 298
    .local v2, "currentInputStream":Ljava/io/InputStream;
    sub-long v3, p1, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 300
    cmp-long v3, v0, p1

    if-gez v3, :cond_1

    .line 301
    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    .line 303
    .end local v2    # "currentInputStream":Ljava/io/InputStream;
    :cond_1
    goto :goto_0

    .line 305
    :cond_2
    return-wide v0

    .line 291
    .end local v0    # "bytesSkipped":J
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private tryToConsumeSecondEOFRecord()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 813
    const/4 v0, 0x1

    .line 814
    .local v0, "shouldReset":Z
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    .line 815
    .local v1, "marked":Z
    if-eqz v1, :cond_0

    .line 816
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    .line 819
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readRecord()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isEOFRecord([B)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 821
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 822
    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->pushedBackBytes(J)V

    .line 823
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 826
    :cond_1
    return-void

    .line 821
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 822
    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->pushedBackBytes(J)V

    .line 823
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 825
    :cond_2
    throw v2
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    return v0

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getRealSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 240
    const v0, 0x7fffffff

    return v0

    .line 242
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getRealSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 2
    .param p1, "ae"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 951
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_0

    .line 952
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 953
    .local v0, "te":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSparse()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 955
    .end local v0    # "te":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 205
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 206
    .end local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 210
    return-void
.end method

.method public getCurrentEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .locals 1

    .line 964
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object v0
.end method

.method protected getLongNameData()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 444
    .local v0, "longName":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 445
    .local v1, "length":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->smallBuf:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->read([B)I

    move-result v2

    move v1, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    .line 446
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->smallBuf:[B

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 449
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-nez v2, :cond_1

    .line 452
    const/4 v2, 0x0

    return-object v2

    .line 454
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 456
    .local v2, "longNameData":[B
    array-length v1, v2

    .line 457
    :goto_1
    if-lez v1, :cond_2

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, v2, v4

    if-nez v4, :cond_2

    .line 458
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 460
    :cond_2
    array-length v4, v2

    if-eq v1, v4, :cond_3

    .line 461
    new-array v4, v1, [B

    .line 462
    .local v4, "l":[B
    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    move-object v2, v4

    .line 465
    .end local v4    # "l":[B
    :cond_3
    return-object v2
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 799
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isAtEOF()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 349
    return-object v1

    .line 352
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_1

    .line 354
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {p0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    .line 357
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->skipRecordPadding()V

    .line 360
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecord()[B

    move-result-object v0

    .line 362
    .local v0, "headerBuf":[B
    if-nez v0, :cond_2

    .line 364
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 365
    return-object v1

    .line 369
    :cond_2
    :try_start_0
    new-instance v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    iget-boolean v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->lenient:Z

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    nop

    .line 374
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    .line 375
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    .line 377
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNULongLinkEntry()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 378
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getLongNameData()[B

    move-result-object v2

    .line 379
    .local v2, "longLinkData":[B
    if-nez v2, :cond_3

    .line 383
    return-object v1

    .line 385
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v4, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLinkName(Ljava/lang/String;)V

    .line 388
    .end local v2    # "longLinkData":[B
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNULongNameEntry()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 389
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getLongNameData()[B

    move-result-object v2

    .line 390
    .local v2, "longNameData":[B
    if-nez v2, :cond_5

    .line 394
    return-object v1

    .line 396
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v3, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setName(Ljava/lang/String;)V

    .line 399
    .end local v2    # "longNameData":[B
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGlobalPaxHeader()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 400
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readGlobalPaxHeaders()V

    .line 403
    :cond_7
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxHeader()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 404
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->paxHeaders()V

    goto :goto_0

    .line 405
    :cond_8
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 406
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalSparseHeaders:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->applyPaxHeadersToCurrentEntry(Ljava/util/Map;Ljava/util/List;)V

    .line 409
    :cond_9
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isOldGNUSparse()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 410
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readOldGNUSparse()V

    .line 417
    :cond_a
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    .line 419
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object v1

    .line 370
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error detected parsing the header"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getRecordSize()I
    .locals 1

    .line 218
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    return v0
.end method

.method protected final isAtEOF()Z
    .locals 1

    .line 972
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    return v0
.end method

.method protected isEOFRecord([B)Z
    .locals 1
    .param p1, "record"    # [B

    .line 501
    if-eqz p1, :cond_1

    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    invoke-static {p1, v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isArrayZero([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .param p1, "markLimit"    # I

    monitor-enter p0

    .line 325
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method parsePaxHeaders(Ljava/io/InputStream;Ljava/util/List;)Ljava/util/Map;
    .locals 18
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    .local p2, "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    move-object/from16 v0, p2

    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v2, p0

    iget-object v3, v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 681
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 685
    .local v3, "offset":Ljava/lang/Long;
    :goto_0
    const/4 v4, 0x0

    .line 686
    .local v4, "len":I
    const/4 v5, 0x0

    .line 687
    .local v5, "read":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v6

    move v7, v6

    .local v7, "ch":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_a

    .line 688
    add-int/lit8 v5, v5, 0x1

    .line 689
    const/16 v6, 0xa

    if-ne v7, v6, :cond_0

    .line 690
    move/from16 v16, v4

    goto/16 :goto_6

    .line 691
    :cond_0
    const/16 v6, 0x20

    if-ne v7, v6, :cond_9

    .line 693
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 694
    .local v6, "coll":Ljava/io/ByteArrayOutputStream;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v11

    move v7, v11

    if-eq v11, v10, :cond_8

    .line 695
    add-int/lit8 v5, v5, 0x1

    .line 696
    const/16 v11, 0x3d

    if-ne v7, v11, :cond_7

    .line 697
    const-string v11, "UTF-8"

    invoke-virtual {v6, v11}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 699
    .local v12, "keyword":Ljava/lang/String;
    sub-int v13, v4, v5

    .line 700
    .local v13, "restLen":I
    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 701
    invoke-interface {v1, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v16, v4

    goto/16 :goto_6

    .line 703
    :cond_1
    new-array v14, v13, [B

    .line 704
    .local v14, "rest":[B
    move-object/from16 v15, p1

    invoke-static {v15, v14}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v10

    .line 705
    .local v10, "got":I
    if-ne v10, v13, :cond_6

    .line 713
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v9, v13, -0x1

    const/4 v2, 0x0

    invoke-direct {v8, v14, v2, v9, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v2, v8

    .line 715
    .local v2, "value":Ljava/lang/String;
    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string v8, "GNU.sparse.offset"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 719
    if-eqz v3, :cond_2

    .line 721
    new-instance v8, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    move-object v9, v14

    .end local v14    # "rest":[B
    .local v9, "rest":[B
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object v11, v3

    move/from16 v16, v4

    const-wide/16 v3, 0x0

    .end local v3    # "offset":Ljava/lang/Long;
    .end local v4    # "len":I
    .local v11, "offset":Ljava/lang/Long;
    .local v16, "len":I
    invoke-direct {v8, v14, v15, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;-><init>(JJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 719
    .end local v9    # "rest":[B
    .end local v11    # "offset":Ljava/lang/Long;
    .end local v16    # "len":I
    .restart local v3    # "offset":Ljava/lang/Long;
    .restart local v4    # "len":I
    .restart local v14    # "rest":[B
    :cond_2
    move-object v11, v3

    move/from16 v16, v4

    move-object v9, v14

    .line 723
    .end local v3    # "offset":Ljava/lang/Long;
    .end local v4    # "len":I
    .end local v14    # "rest":[B
    .restart local v9    # "rest":[B
    .restart local v11    # "offset":Ljava/lang/Long;
    .restart local v16    # "len":I
    :goto_3
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .end local v11    # "offset":Ljava/lang/Long;
    .restart local v3    # "offset":Ljava/lang/Long;
    goto :goto_4

    .line 718
    .end local v9    # "rest":[B
    .end local v16    # "len":I
    .restart local v4    # "len":I
    .restart local v14    # "rest":[B
    :cond_3
    move-object v11, v3

    move/from16 v16, v4

    move-object v9, v14

    .line 727
    .end local v4    # "len":I
    .end local v14    # "rest":[B
    .restart local v9    # "rest":[B
    .restart local v16    # "len":I
    :goto_4
    const-string v4, "GNU.sparse.numbytes"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 728
    if-eqz v3, :cond_4

    .line 732
    new-instance v4, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v17, v9

    .end local v9    # "rest":[B
    .local v17, "rest":[B
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v4, v14, v15, v8, v9}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;-><init>(JJ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    const/4 v3, 0x0

    goto :goto_5

    .line 729
    .end local v17    # "rest":[B
    .restart local v9    # "rest":[B
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v8, "Failed to read Paxheader.GNU.sparse.offset is expected before GNU.sparse.numbytes shows up."

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 727
    :cond_5
    move-object/from16 v17, v9

    .line 736
    .end local v2    # "value":Ljava/lang/String;
    .end local v9    # "rest":[B
    .end local v10    # "got":I
    :goto_5
    goto :goto_6

    .line 706
    .end local v16    # "len":I
    .restart local v4    # "len":I
    .restart local v10    # "got":I
    .restart local v14    # "rest":[B
    :cond_6
    move-object v11, v3

    move/from16 v16, v4

    .end local v3    # "offset":Ljava/lang/Long;
    .end local v4    # "len":I
    .restart local v11    # "offset":Ljava/lang/Long;
    .restart local v16    # "len":I
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read Paxheader. Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes, read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 738
    .end local v10    # "got":I
    .end local v11    # "offset":Ljava/lang/Long;
    .end local v12    # "keyword":Ljava/lang/String;
    .end local v13    # "restLen":I
    .end local v14    # "rest":[B
    .end local v16    # "len":I
    .restart local v3    # "offset":Ljava/lang/Long;
    .restart local v4    # "len":I
    :cond_7
    move-object v11, v3

    move/from16 v16, v4

    .end local v3    # "offset":Ljava/lang/Long;
    .end local v4    # "len":I
    .restart local v11    # "offset":Ljava/lang/Long;
    .restart local v16    # "len":I
    int-to-byte v2, v7

    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v2, p0

    const/4 v10, -0x1

    goto/16 :goto_2

    .line 694
    .end local v11    # "offset":Ljava/lang/Long;
    .end local v16    # "len":I
    .restart local v3    # "offset":Ljava/lang/Long;
    .restart local v4    # "len":I
    :cond_8
    move-object v11, v3

    move/from16 v16, v4

    .end local v3    # "offset":Ljava/lang/Long;
    .end local v4    # "len":I
    .restart local v11    # "offset":Ljava/lang/Long;
    .restart local v16    # "len":I
    goto :goto_6

    .line 742
    .end local v6    # "coll":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "offset":Ljava/lang/Long;
    .end local v16    # "len":I
    .restart local v3    # "offset":Ljava/lang/Long;
    .restart local v4    # "len":I
    :cond_9
    move-object v11, v3

    move/from16 v16, v4

    .end local v3    # "offset":Ljava/lang/Long;
    .end local v4    # "len":I
    .restart local v11    # "offset":Ljava/lang/Long;
    .restart local v16    # "len":I
    mul-int/lit8 v4, v16, 0xa

    .line 743
    .end local v16    # "len":I
    .restart local v4    # "len":I
    add-int/lit8 v2, v7, -0x30

    add-int/2addr v4, v2

    move-object/from16 v2, p0

    goto/16 :goto_1

    .line 687
    .end local v11    # "offset":Ljava/lang/Long;
    .restart local v3    # "offset":Ljava/lang/Long;
    :cond_a
    move-object v11, v3

    move/from16 v16, v4

    .line 745
    .end local v4    # "len":I
    .restart local v16    # "len":I
    :goto_6
    const/4 v2, -0x1

    if-ne v7, v2, :cond_c

    .line 746
    nop

    .line 749
    .end local v5    # "read":I
    .end local v7    # "ch":I
    .end local v16    # "len":I
    if-eqz v3, :cond_b

    .line 751
    new-instance v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;-><init>(JJ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_b
    return-object v1

    .line 748
    :cond_c
    move-object/from16 v2, p0

    goto/16 :goto_0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "numToRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 843
    if-nez p3, :cond_0

    .line 844
    const/4 v0, 0x0

    return v0

    .line 846
    :cond_0
    const/4 v0, 0x0

    .line 848
    .local v0, "totalRead":I
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isAtEOF()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_8

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 852
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v1, :cond_7

    .line 856
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSparse()Z

    move-result v1

    if-nez v1, :cond_2

    .line 857
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    cmp-long v1, v3, v5

    if-ltz v1, :cond_3

    .line 858
    return v2

    .line 862
    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getRealSize()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-ltz v1, :cond_3

    .line 863
    return v2

    .line 867
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->available()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 869
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSparse()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 871
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readSparse([BII)I

    move-result v0

    goto :goto_0

    .line 873
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 876
    :goto_0
    if-ne v0, v2, :cond_6

    .line 877
    if-gtz p3, :cond_5

    .line 880
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->setAtEOF(Z)V

    goto :goto_1

    .line 878
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Truncated TAR archive"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 882
    :cond_6
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->count(I)V

    .line 883
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    .line 886
    :goto_1
    return v0

    .line 853
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No current tar entry"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 849
    :cond_8
    :goto_2
    return v2
.end method

.method protected readRecord()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    new-array v0, v0, [B

    .line 514
    .local v0, "record":[B
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 515
    .local v1, "readNow":I
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->count(I)V

    .line 516
    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    if-eq v1, v2, :cond_0

    .line 517
    const/4 v2, 0x0

    return-object v2

    .line 520
    :cond_0
    return-object v0
.end method

.method public declared-synchronized reset()V
    .locals 0

    monitor-enter p0

    .line 332
    monitor-exit p0

    return-void
.end method

.method protected final setAtEOF(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 976
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    .line 977
    return-void
.end method

.method protected final setCurrentEntry(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V
    .locals 0
    .param p1, "e"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 968
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 969
    return-void
.end method

.method public skip(J)J
    .locals 6
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 268
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getRealSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    sub-long/2addr v0, v2

    .line 270
    .local v0, "available":J
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSparse()Z

    move-result v2

    if-nez v2, :cond_1

    .line 271
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v2

    .local v2, "skipped":J
    goto :goto_0

    .line 273
    .end local v2    # "skipped":J
    :cond_1
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->skipSparse(J)J

    move-result-wide v2

    .line 275
    .restart local v2    # "skipped":J
    :goto_0
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->count(J)V

    .line 276
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    .line 277
    return-wide v2

    .line 265
    .end local v0    # "available":J
    .end local v2    # "skipped":J
    :cond_2
    :goto_1
    return-wide v0
.end method
