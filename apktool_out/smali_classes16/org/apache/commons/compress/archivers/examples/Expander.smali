.class public Lorg/apache/commons/compress/archivers/examples/Expander;
.super Ljava/lang/Object;
.source "Expander.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;,
        Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;Ljava/io/File;)V
    .locals 8
    .param p1, "supplier"    # Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;
    .param p2, "writer"    # Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;
    .param p3, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    invoke-virtual {p3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "targetDirPath":Ljava/lang/String;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;->getNextReadableEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v1

    .line 346
    .local v1, "nextEntry":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    :goto_0
    if-eqz v1, :cond_8

    .line 347
    new-instance v2, Ljava/io/File;

    invoke-interface {v1}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 348
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 352
    invoke-interface {v1}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result v3

    const-string v4, "Failed to create directory "

    if-eqz v3, :cond_2

    .line 353
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 354
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 357
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 358
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 359
    :cond_3
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 361
    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/nio/file/OpenOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v4

    .line 362
    .local v4, "o":Ljava/io/OutputStream;
    :try_start_0
    invoke-interface {p2, v1, v4}, Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;->writeEntryDataTo(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 365
    .end local v3    # "parent":Ljava/io/File;
    .end local v4    # "o":Ljava/io/OutputStream;
    :cond_5
    :goto_2
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;->getNextReadableEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v1

    .line 366
    .end local v2    # "f":Ljava/io/File;
    goto/16 :goto_0

    .line 361
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "parent":Ljava/io/File;
    .restart local v4    # "o":Ljava/io/OutputStream;
    :catchall_0
    move-exception v5

    .end local v0    # "targetDirPath":Ljava/lang/String;
    .end local v1    # "nextEntry":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "parent":Ljava/io/File;
    .end local v4    # "o":Ljava/io/OutputStream;
    .end local p1    # "supplier":Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;
    .end local p2    # "writer":Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;
    .end local p3    # "targetDirectory":Ljava/io/File;
    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 363
    .restart local v0    # "targetDirPath":Ljava/lang/String;
    .restart local v1    # "nextEntry":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "parent":Ljava/io/File;
    .restart local v4    # "o":Ljava/io/OutputStream;
    .restart local p1    # "supplier":Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;
    .restart local p2    # "writer":Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;
    .restart local p3    # "targetDirectory":Ljava/io/File;
    :catchall_1
    move-exception v6

    if-eqz v4, :cond_6

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v6

    .line 349
    .end local v3    # "parent":Ljava/io/File;
    .end local v4    # "o":Ljava/io/OutputStream;
    :cond_7
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expanding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " would create file outside of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 367
    .end local v2    # "f":Ljava/io/File;
    :cond_8
    return-void
.end method

.method private prefersSeekableByteChannel(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .line 336
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
.method public expand(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p1, "archive"    # Ljava/io/File;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    .local v1, "i":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>()V

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->detect(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 70
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 71
    .end local v1    # "i":Ljava/io/InputStream;
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    .line 72
    return-void

    .line 68
    .restart local v1    # "i":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "i":Ljava/io/InputStream;
    .end local p1    # "archive":Ljava/io/File;
    .end local p2    # "targetDirectory":Ljava/io/File;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    .restart local v0    # "format":Ljava/lang/String;
    .restart local v1    # "i":Ljava/io/InputStream;
    .restart local p1    # "archive":Ljava/io/File;
    .restart local p2    # "targetDirectory":Ljava/io/File;
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
.end method

.method public expand(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 1
    .param p1, "archive"    # Ljava/io/InputStream;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    sget-object v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 115
    return-void
.end method

.method public expand(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 4
    .param p1, "archive"    # Ljava/io/InputStream;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .param p3, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 138
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;

    invoke-direct {v0, p3}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;-><init>(Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 139
    .local v0, "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :try_start_0
    new-instance v1, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>()V

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V

    .line 142
    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    return-void

    .line 138
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :catchall_0
    move-exception v1

    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .end local p1    # "archive":Ljava/io/InputStream;
    .end local p2    # "targetDirectory":Ljava/io/File;
    .end local p3    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .restart local p1    # "archive":Ljava/io/InputStream;
    .restart local p2    # "targetDirectory":Ljava/io/File;
    .restart local p3    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
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

.method public expand(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/io/File;
    .param p3, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander;->prefersSeekableByteChannel(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    sget-object v3, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 87
    .local v0, "c":Ljava/nio/channels/SeekableByteChannel;
    :try_start_0
    sget-object v1, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->CLOSING_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, v0, p3, v1}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 89
    .end local v0    # "c":Ljava/nio/channels/SeekableByteChannel;
    :cond_0
    return-void

    .line 86
    .restart local v0    # "c":Ljava/nio/channels/SeekableByteChannel;
    :catchall_0
    move-exception v1

    .end local v0    # "c":Ljava/nio/channels/SeekableByteChannel;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "archive":Ljava/io/File;
    .end local p3    # "targetDirectory":Ljava/io/File;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .restart local v0    # "c":Ljava/nio/channels/SeekableByteChannel;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "archive":Ljava/io/File;
    .restart local p3    # "targetDirectory":Ljava/io/File;
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

    .line 91
    .end local v0    # "c":Ljava/nio/channels/SeekableByteChannel;
    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 92
    .local v0, "i":Ljava/io/InputStream;
    :try_start_3
    sget-object v1, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->CLOSING_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, v0, p3, v1}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 93
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 94
    .end local v0    # "i":Ljava/io/InputStream;
    return-void

    .line 91
    .restart local v0    # "i":Ljava/io/InputStream;
    :catchall_3
    move-exception v1

    .end local v0    # "i":Ljava/io/InputStream;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "archive":Ljava/io/File;
    .end local p3    # "targetDirectory":Ljava/io/File;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 93
    .restart local v0    # "i":Ljava/io/InputStream;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "archive":Ljava/io/File;
    .restart local p3    # "targetDirectory":Ljava/io/File;
    :catchall_4
    move-exception v2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method

.method public expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/io/InputStream;
    .param p3, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    sget-object v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 164
    return-void
.end method

.method public expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/io/InputStream;
    .param p3, "targetDirectory"    # Ljava/io/File;
    .param p4, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 187
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;

    invoke-direct {v0, p4}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;-><init>(Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 188
    .local v0, "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :try_start_0
    new-instance v1, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V

    .line 191
    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    return-void

    .line 187
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :catchall_0
    move-exception v1

    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "archive":Ljava/io/InputStream;
    .end local p3    # "targetDirectory":Ljava/io/File;
    .end local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "archive":Ljava/io/InputStream;
    .restart local p3    # "targetDirectory":Ljava/io/File;
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

.method public expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/nio/channels/SeekableByteChannel;
    .param p3, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    sget-object v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 213
    return-void
.end method

.method public expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/nio/channels/SeekableByteChannel;
    .param p3, "targetDirectory"    # Ljava/io/File;
    .param p4, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 237
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;

    invoke-direct {v0, p4}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;-><init>(Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 238
    .local v0, "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander;->prefersSeekableByteChannel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    invoke-static {p2}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;)V

    goto :goto_0

    .line 240
    :cond_0
    const-string v1, "zip"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/File;)V

    goto :goto_0

    .line 242
    :cond_1
    const-string v1, "7z"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V

    .line 249
    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    return-void

    .line 246
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
    .end local p2    # "archive":Ljava/nio/channels/SeekableByteChannel;
    .end local p3    # "targetDirectory":Ljava/io/File;
    .end local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "archive":Ljava/nio/channels/SeekableByteChannel;
    .restart local p3    # "targetDirectory":Ljava/io/File;
    .restart local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :catchall_0
    move-exception v1

    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "archive":Ljava/nio/channels/SeekableByteChannel;
    .end local p3    # "targetDirectory":Ljava/io/File;
    .end local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 248
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "archive":Ljava/nio/channels/SeekableByteChannel;
    .restart local p3    # "targetDirectory":Ljava/io/File;
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

.method public expand(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/io/File;)V
    .locals 2
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 261
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/Expander$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$1;-><init>(Lorg/apache/commons/compress/archivers/examples/Expander;Lorg/apache/commons/compress/archivers/ArchiveInputStream;)V

    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Expander$2;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$2;-><init>(Lorg/apache/commons/compress/archivers/examples/Expander;Lorg/apache/commons/compress/archivers/ArchiveInputStream;)V

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;Ljava/io/File;)V

    .line 276
    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/File;)V
    .locals 2
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 318
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/Expander$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$5;-><init>(Lorg/apache/commons/compress/archivers/examples/Expander;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V

    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Expander$6;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$6;-><init>(Lorg/apache/commons/compress/archivers/examples/Expander;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;Ljava/io/File;)V

    .line 333
    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/File;)V
    .locals 3
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 288
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    .line 289
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Expander$3;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$3;-><init>(Lorg/apache/commons/compress/archivers/examples/Expander;Ljava/util/Enumeration;Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    new-instance v2, Lorg/apache/commons/compress/archivers/examples/Expander$4;

    invoke-direct {v2, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$4;-><init>(Lorg/apache/commons/compress/archivers/examples/Expander;Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    invoke-direct {p0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;Ljava/io/File;)V

    .line 306
    return-void
.end method
