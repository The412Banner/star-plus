.class public Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;
.super Ljava/lang/Object;
.source "ScatterZipOutputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipEntryWriter"
.end annotation


# instance fields
.field private final itemsIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final itemsIteratorData:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;)V
    .locals 1
    .param p1, "scatter"    # Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->access$000(Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;)Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;->closeForWriting()V

    .line 131
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->access$100(Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;->itemsIterator:Ljava/util/Iterator;

    .line 132
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->access$000(Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;)Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;->itemsIteratorData:Ljava/io/InputStream;

    .line 133
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;->itemsIteratorData:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;->itemsIteratorData:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 140
    :cond_0
    return-void
.end method

.method public writeNextZipEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;)V
    .locals 5
    .param p1, "target"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;->itemsIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;

    .line 144
    .local v0, "compressedEntry":Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;
    new-instance v1, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;->itemsIteratorData:Ljava/io/InputStream;

    iget-wide v3, v0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->compressedSize:J

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 145
    .local v1, "rawStream":Lorg/apache/commons/compress/utils/BoundedInputStream;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->transferToArchiveEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->addRawArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {v1}, Lorg/apache/commons/compress/utils/BoundedInputStream;->close()V

    .line 147
    .end local v1    # "rawStream":Lorg/apache/commons/compress/utils/BoundedInputStream;
    return-void

    .line 144
    .restart local v1    # "rawStream":Lorg/apache/commons/compress/utils/BoundedInputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "compressedEntry":Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;
    .end local v1    # "rawStream":Lorg/apache/commons/compress/utils/BoundedInputStream;
    .end local p1    # "target":Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    .restart local v0    # "compressedEntry":Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;
    .restart local v1    # "rawStream":Lorg/apache/commons/compress/utils/BoundedInputStream;
    .restart local p1    # "target":Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-virtual {v1}, Lorg/apache/commons/compress/utils/BoundedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
.end method
