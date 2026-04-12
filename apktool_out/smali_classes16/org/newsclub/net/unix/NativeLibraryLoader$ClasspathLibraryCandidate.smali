.class final Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;
.super Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;
.source "NativeLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/newsclub/net/unix/NativeLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClasspathLibraryCandidate"
.end annotation


# instance fields
.field private final artifactName:Ljava/lang/String;

.field private final libraryIn:Ljava/io/InputStream;

.field private final path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "artifactName"    # Ljava/lang/String;
    .param p2, "libraryNameAndVersion"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "libraryIn"    # Ljava/io/InputStream;

    .line 154
    invoke-direct {p0, p2}, Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;-><init>(Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;->artifactName:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;->path:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;->libraryIn:Ljava/io/InputStream;

    .line 158
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 190
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;->libraryIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 194
    :goto_0
    return-void
.end method

.method declared-synchronized load()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/LinkageError;
        }
    .end annotation

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;->libraryNameAndVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v0, :cond_0

    .line 163
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_0
    :try_start_1
    const-string v0, "libtmp"

    iget-object v1, p0, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;->libraryNameAndVersion:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/newsclub/net/unix/NativeLibraryLoader;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 168
    .local v0, "libFile":Ljava/io/File;
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 169
    .local v1, "out":Ljava/io/OutputStream;
    const/16 v2, 0x1000

    :try_start_3
    new-array v2, v2, [B

    .line 171
    .local v2, "buf":[B
    :goto_0
    iget-object v3, p0, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;->libraryIn:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v4, v3

    .local v4, "read":I
    if-ltz v3, :cond_1

    .line 172
    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 168
    .end local v2    # "buf":[B
    .end local v4    # "read":I
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 174
    :cond_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 175
    .end local v1    # "out":Ljava/io/OutputStream;
    :try_start_6
    iget-object v1, p0, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;->libraryIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 176
    nop

    .line 179
    nop

    .line 180
    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 184
    .end local p0    # "this":Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;->artifactName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;->libraryNameAndVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    monitor-exit p0

    return-object v1

    .line 168
    .restart local v1    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    :goto_1
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    :try_start_9
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "libFile":Ljava/io/File;
    :goto_2
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 175
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v0    # "libFile":Ljava/io/File;
    :catchall_3
    move-exception v1

    :try_start_a
    iget-object v2, p0, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;->libraryIn:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 176
    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 177
    .end local v0    # "libFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    :try_start_b
    throw v0

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/newsclub/net/unix/NativeLibraryLoader$LibraryCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;->artifactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/newsclub/net/unix/NativeLibraryLoader$ClasspathLibraryCandidate;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
