.class Lorg/apache/commons/compress/archivers/examples/Archiver$2;
.super Ljava/lang/Object;
.source "Archiver.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/examples/Archiver;

.field final synthetic val$target:Lorg/apache/commons/compress/archivers/ArchiveOutputStream;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/compress/archivers/examples/Archiver;

    .line 213
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$2;->this$0:Lorg/apache/commons/compress/archivers/examples/Archiver;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$2;->val$target:Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 4
    .param p1, "source"    # Ljava/io/File;
    .param p2, "e"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$2;->val$target:Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    invoke-virtual {v0, p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 217
    invoke-interface {p2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 219
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$2;->val$target:Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 218
    :catchall_0
    move-exception v1

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p1    # "source":Ljava/io/File;
    .end local p2    # "e":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p1    # "source":Ljava/io/File;
    .restart local p2    # "e":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2

    .line 222
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$2;->val$target:Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->closeArchiveEntry()V

    .line 223
    return-void
.end method
