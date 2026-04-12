.class public Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
.super Ljava/lang/Object;
.source "ScatterZipOutputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;,
        Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;
    }
.end annotation


# instance fields
.field private final backingStore:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

.field private isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final items:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

.field private zipEntryWriter:Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;Lorg/apache/commons/compress/archivers/zip/StreamCompressor;)V
    .locals 1
    .param p1, "backingStore"    # Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;
    .param p2, "streamCompressor"    # Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->items:Ljava/util/Queue;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->zipEntryWriter:Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;

    .line 88
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->backingStore:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    .line 89
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;)Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    .line 50
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->backingStore:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    .line 50
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->items:Ljava/util/Queue;

    return-object v0
.end method

.method public static fileBased(Ljava/io/File;)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 189
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->fileBased(Ljava/io/File;I)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static fileBased(Ljava/io/File;I)Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "compressionLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 201
    new-instance v0, Lorg/apache/commons/compress/parallel/FileBasedScatterGatherBackingStore;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/parallel/FileBasedScatterGatherBackingStore;-><init>(Ljava/io/File;)V

    .line 203
    .local v0, "bs":Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(ILorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object v1

    .line 204
    .local v1, "sc":Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;-><init>(Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;Lorg/apache/commons/compress/archivers/zip/StreamCompressor;)V

    return-object v2
.end method


# virtual methods
.method public addArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;)V
    .locals 10
    .param p1, "zipArchiveEntryRequest"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->getPayloadStream()Ljava/io/InputStream;

    move-result-object v0

    .line 100
    .local v0, "payloadStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->getMethod()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflate(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 102
    .end local v0    # "payloadStream":Ljava/io/InputStream;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->items:Ljava/util/Queue;

    new-instance v9, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getCrc32()J

    move-result-wide v3

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 103
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getBytesWrittenForLastEntry()J

    move-result-wide v5

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getBytesRead()J

    move-result-wide v7

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;JJJ)V

    .line 102
    invoke-interface {v0, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 104
    return-void

    .line 99
    .restart local v0    # "payloadStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "payloadStream":Ljava/io/InputStream;
    .end local p1    # "zipArchiveEntryRequest":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    .restart local v0    # "payloadStream":Ljava/io/InputStream;
    .restart local p1    # "zipArchiveEntryRequest":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    return-void

    .line 172
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->zipEntryWriter:Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->zipEntryWriter:Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;->close()V

    .line 175
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->backingStore:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    invoke-interface {v0}, Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->close()V

    .line 178
    nop

    .line 179
    return-void

    .line 177
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->close()V

    .line 178
    throw v0
.end method

.method public writeTo(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;)V
    .locals 6
    .param p1, "target"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->backingStore:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    invoke-interface {v0}, Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;->closeForWriting()V

    .line 115
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->backingStore:Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    invoke-interface {v0}, Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 116
    .local v0, "data":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->items:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;

    .line 117
    .local v2, "compressedEntry":Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;
    new-instance v3, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-wide v4, v2, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->compressedSize:J

    invoke-direct {v3, v0, v4, v5}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 119
    .local v3, "rawStream":Lorg/apache/commons/compress/utils/BoundedInputStream;
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->transferToArchiveEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->addRawArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    invoke-virtual {v3}, Lorg/apache/commons/compress/utils/BoundedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 121
    .end local v2    # "compressedEntry":Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;
    .end local v3    # "rawStream":Lorg/apache/commons/compress/utils/BoundedInputStream;
    goto :goto_0

    .line 117
    .restart local v2    # "compressedEntry":Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;
    .restart local v3    # "rawStream":Lorg/apache/commons/compress/utils/BoundedInputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "data":Ljava/io/InputStream;
    .end local v2    # "compressedEntry":Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;
    .end local v3    # "rawStream":Lorg/apache/commons/compress/utils/BoundedInputStream;
    .end local p1    # "target":Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    .restart local v0    # "data":Ljava/io/InputStream;
    .restart local v2    # "compressedEntry":Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;
    .restart local v3    # "rawStream":Lorg/apache/commons/compress/utils/BoundedInputStream;
    .restart local p1    # "target":Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3}, Lorg/apache/commons/compress/utils/BoundedInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "data":Ljava/io/InputStream;
    .end local p1    # "target":Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    :goto_1
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 122
    .end local v2    # "compressedEntry":Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;
    .end local v3    # "rawStream":Lorg/apache/commons/compress/utils/BoundedInputStream;
    .restart local v0    # "data":Ljava/io/InputStream;
    .restart local p1    # "target":Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 123
    .end local v0    # "data":Ljava/io/InputStream;
    :cond_1
    return-void

    .line 115
    .restart local v0    # "data":Ljava/io/InputStream;
    :catchall_3
    move-exception v1

    .end local v0    # "data":Ljava/io/InputStream;
    .end local p1    # "target":Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 122
    .restart local v0    # "data":Ljava/io/InputStream;
    .restart local p1    # "target":Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    :catchall_4
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v2
.end method

.method public zipEntryWriter()Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->zipEntryWriter:Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;-><init>(Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->zipEntryWriter:Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->zipEntryWriter:Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;

    return-object v0
.end method
