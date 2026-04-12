.class Lorg/apache/commons/compress/archivers/examples/Archiver$5;
.super Ljava/lang/Object;
.source "Archiver.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/examples/Archiver;

.field final synthetic val$target:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/compress/archivers/examples/Archiver;

    .line 246
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$5;->this$0:Lorg/apache/commons/compress/archivers/examples/Archiver;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$5;->val$target:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 9
    .param p1, "source"    # Ljava/io/File;
    .param p2, "e"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$5;->val$target:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-virtual {v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 250
    invoke-interface {p2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    const/16 v0, 0x1f58

    new-array v0, v0, [B

    .line 252
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 253
    .local v1, "n":I
    const-wide/16 v2, 0x0

    .line 254
    .local v2, "count":J
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/nio/file/OpenOption;

    invoke-static {v5, v7}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 255
    .local v4, "in":Ljava/io/InputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v1, v5

    const/4 v7, -0x1

    if-eq v7, v5, :cond_0

    .line 256
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$5;->val$target:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-virtual {v5, v0, v6, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    int-to-long v7, v1

    add-long/2addr v2, v7

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 254
    :catchall_0
    move-exception v5

    .end local v0    # "buffer":[B
    .end local v1    # "n":I
    .end local v2    # "count":J
    .end local v4    # "in":Ljava/io/InputStream;
    .end local p1    # "source":Ljava/io/File;
    .end local p2    # "e":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 259
    .restart local v0    # "buffer":[B
    .restart local v1    # "n":I
    .restart local v2    # "count":J
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local p1    # "source":Ljava/io/File;
    .restart local p2    # "e":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    :catchall_1
    move-exception v6

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v6

    .line 261
    .end local v0    # "buffer":[B
    .end local v1    # "n":I
    .end local v2    # "count":J
    .end local v4    # "in":Ljava/io/InputStream;
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$5;->val$target:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->closeArchiveEntry()V

    .line 262
    return-void
.end method
