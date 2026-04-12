.class public Lorg/apache/commons/compress/archivers/examples/Archiver;
.super Ljava/lang/Object;
.source "Archiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/examples/Archiver$Finisher;,
        Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;,
        Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private create(Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;Lorg/apache/commons/compress/archivers/examples/Archiver$Finisher;)V
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "creator"    # Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;
    .param p3, "consumer"    # Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;
    .param p4, "finisher"    # Lorg/apache/commons/compress/archivers/examples/Archiver$Finisher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    const-string v0, ""

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;)V

    .line 278
    invoke-interface {p4}, Lorg/apache/commons/compress/archivers/examples/Archiver$Finisher;->finish()V

    .line 279
    return-void
.end method

.method private create(Ljava/lang/String;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "creator"    # Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;
    .param p4, "consumer"    # Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 284
    .local v0, "children":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 285
    return-void

    .line 287
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 288
    .local v3, "f":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "/"

    goto :goto_1

    :cond_1
    const-string v5, ""

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "entryName":Ljava/lang/String;
    invoke-interface {p3, v3, v4}, Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;->create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v5

    invoke-interface {p4, v3, v5}, Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;->accept(Ljava/io/File;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 290
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 291
    invoke-direct {p0, v4, v3, p3, p4}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;)V

    .line 287
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "entryName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    :cond_3
    return-void
.end method

.method private prefersSeekableByteChannel(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .line 272
    const-string v0, "zip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "7z"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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


# virtual methods
.method public create(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/io/File;
    .param p3, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver;->prefersSeekableByteChannel(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    sget-object v3, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    sget-object v3, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 74
    .local v0, "c":Ljava/nio/channels/SeekableByteChannel;
    :try_start_0
    sget-object v1, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->CLOSING_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, v0, p3, v1}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 76
    .end local v0    # "c":Ljava/nio/channels/SeekableByteChannel;
    :cond_0
    return-void

    .line 72
    .restart local v0    # "c":Ljava/nio/channels/SeekableByteChannel;
    :catchall_0
    move-exception v1

    .end local v0    # "c":Ljava/nio/channels/SeekableByteChannel;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "target":Ljava/io/File;
    .end local p3    # "directory":Ljava/io/File;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .restart local v0    # "c":Ljava/nio/channels/SeekableByteChannel;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "target":Ljava/io/File;
    .restart local p3    # "directory":Ljava/io/File;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    .line 78
    .end local v0    # "c":Ljava/nio/channels/SeekableByteChannel;
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    .line 79
    .local v0, "o":Ljava/io/OutputStream;
    :try_start_3
    sget-object v1, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->CLOSING_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, v0, p3, v1}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 80
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 81
    .end local v0    # "o":Ljava/io/OutputStream;
    :cond_3
    return-void

    .line 78
    .restart local v0    # "o":Ljava/io/OutputStream;
    :catchall_3
    move-exception v1

    .end local v0    # "o":Ljava/io/OutputStream;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "target":Ljava/io/File;
    .end local p3    # "directory":Ljava/io/File;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 80
    .restart local v0    # "o":Ljava/io/OutputStream;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "target":Ljava/io/File;
    .restart local p3    # "directory":Ljava/io/File;
    :catchall_4
    move-exception v2

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2
.end method

.method public create(Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/File;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/io/OutputStream;
    .param p3, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    sget-object v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 104
    return-void
.end method

.method public create(Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/io/OutputStream;
    .param p3, "directory"    # Ljava/io/File;
    .param p4, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 129
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;

    invoke-direct {v0, p4}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;-><init>(Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 130
    .local v0, "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :try_start_0
    new-instance v1, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V

    .line 133
    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    return-void

    .line 129
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :catchall_0
    move-exception v1

    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "target":Ljava/io/OutputStream;
    .end local p3    # "directory":Ljava/io/File;
    .end local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "target":Ljava/io/OutputStream;
    .restart local p3    # "directory":Ljava/io/File;
    .restart local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public create(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/nio/channels/SeekableByteChannel;
    .param p3, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    sget-object v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 157
    return-void
.end method

.method public create(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/nio/channels/SeekableByteChannel;
    .param p3, "directory"    # Ljava/io/File;
    .param p4, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 183
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;

    invoke-direct {v0, p4}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;-><init>(Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 184
    .local v0, "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver;->prefersSeekableByteChannel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    invoke-static {p2}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/File;)V

    goto :goto_0

    .line 186
    :cond_0
    const-string v1, "zip"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;)V

    goto :goto_0

    .line 188
    :cond_1
    const-string v1, "7z"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V

    .line 195
    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    return-void

    .line 192
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :cond_2
    :try_start_1
    new-instance v1, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t know how to handle format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "target":Ljava/nio/channels/SeekableByteChannel;
    .end local p3    # "directory":Ljava/io/File;
    .end local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "target":Ljava/nio/channels/SeekableByteChannel;
    .restart local p3    # "directory":Ljava/io/File;
    .restart local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :catchall_0
    move-exception v1

    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "target":Ljava/nio/channels/SeekableByteChannel;
    .end local p3    # "directory":Ljava/io/File;
    .end local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "target":Ljava/nio/channels/SeekableByteChannel;
    .restart local p3    # "directory":Ljava/io/File;
    .restart local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method

.method public create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;)V
    .locals 3
    .param p1, "target"    # Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .param p2, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 208
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/Archiver$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver$1;-><init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)V

    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Archiver$2;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver$2;-><init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)V

    new-instance v2, Lorg/apache/commons/compress/archivers/examples/Archiver$3;

    invoke-direct {v2, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver$3;-><init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)V

    invoke-direct {p0, p2, v0, v1, v2}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;Lorg/apache/commons/compress/archivers/examples/Archiver$Finisher;)V

    .line 230
    return-void
.end method

.method public create(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/io/File;)V
    .locals 3
    .param p1, "target"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;
    .param p2, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/Archiver$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver$4;-><init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)V

    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Archiver$5;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver$5;-><init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)V

    new-instance v2, Lorg/apache/commons/compress/archivers/examples/Archiver$6;

    invoke-direct {v2, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver$6;-><init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)V

    invoke-direct {p0, p2, v0, v1, v2}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;Lorg/apache/commons/compress/archivers/examples/Archiver$Finisher;)V

    .line 269
    return-void
.end method
