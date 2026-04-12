.class Lorg/apache/commons/compress/archivers/examples/Expander$4;
.super Ljava/lang/Object;
.source "Expander.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/examples/Expander;

.field final synthetic val$archive:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/examples/Expander;Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/compress/archivers/examples/Expander;

    .line 298
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/examples/Expander$4;->this$0:Lorg/apache/commons/compress/archivers/examples/Expander;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/examples/Expander$4;->val$archive:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeEntryDataTo(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/examples/Expander$4;->val$archive:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 302
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p2}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 304
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return-void

    .line 301
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p1    # "entry":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .end local p2    # "out":Ljava/io/OutputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 303
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p1    # "entry":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .restart local p2    # "out":Ljava/io/OutputStream;
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
