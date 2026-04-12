.class public abstract Lcom/winlator/cmod/core/TarCompressorUtils;
.super Ljava/lang/Object;
.source "TarCompressorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;,
        Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDirectory(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;)V
    .locals 6
    .param p0, "tar"    # Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 60
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 62
    .local v3, "file":Ljava/io/File;
    if-eqz p3, :cond_1

    invoke-interface {p3, v3}, Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;->shouldInclude(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 63
    goto :goto_1

    .line 65
    :cond_1
    invoke-static {v3}, Lcom/winlator/cmod/core/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/winlator/cmod/core/TarCompressorUtils;->addLinkFile(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "entryName":Ljava/lang/String;
    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 70
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->closeArchiveEntry()V

    .line 71
    invoke-static {p0, v3, v4, p3}, Lcom/winlator/cmod/core/TarCompressorUtils;->addDirectory(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;)V

    .line 72
    .end local v4    # "entryName":Ljava/lang/String;
    goto :goto_1

    .line 73
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/winlator/cmod/core/TarCompressorUtils;->addFile(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_4
    return-void
.end method

.method private static addFile(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p0, "tar"    # Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;

    .line 39
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 40
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .local v0, "inStream":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v0, p0}, Lcom/winlator/cmod/core/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 43
    .end local v0    # "inStream":Ljava/io/BufferedInputStream;
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->closeArchiveEntry()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 40
    .restart local v0    # "inStream":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "tar":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "entryName":Ljava/lang/String;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 45
    .end local v0    # "inStream":Ljava/io/BufferedInputStream;
    .restart local p0    # "tar":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "entryName":Ljava/lang/String;
    :catch_0
    move-exception v0

    :goto_1
    nop

    .line 46
    return-void
.end method

.method private static addLinkFile(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p0, "tar"    # Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;

    .line 50
    :try_start_0
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    const/16 v1, 0x32

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;B)V

    .line 51
    .local v0, "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    invoke-static {p1}, Lcom/winlator/cmod/core/FileUtils;->readSymlink(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLinkName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 53
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->closeArchiveEntry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 56
    return-void
.end method

.method public static archive([Ljava/io/File;Ljava/io/File;Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;)V
    .locals 7
    .param p0, "files"    # [Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "filter"    # Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;

    .line 215
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .local v0, "outStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 217
    .local v1, "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;
    const/4 v2, 0x2

    :try_start_2
    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->setLongFileMode(I)V

    .line 218
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 219
    .local v4, "file":Ljava/io/File;
    if-eqz p2, :cond_0

    invoke-interface {p2, v4}, Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;->shouldInclude(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 220
    goto :goto_1

    .line 222
    :cond_0
    invoke-static {v4}, Lcom/winlator/cmod/core/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 223
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/winlator/cmod/core/TarCompressorUtils;->addLinkFile(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "basePath":Ljava/lang/String;
    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 227
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closeArchiveEntry()V

    .line 228
    invoke-static {v1, v4, v5, p2}, Lcom/winlator/cmod/core/TarCompressorUtils;->addDirectory(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;)V

    .line 229
    .end local v5    # "basePath":Ljava/lang/String;
    goto :goto_1

    .line 230
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/winlator/cmod/core/TarCompressorUtils;->addFile(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 218
    .end local v4    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v1    # "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 236
    .end local v0    # "outStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 215
    .restart local v0    # "outStream":Ljava/io/OutputStream;
    .restart local v1    # "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "outStream":Ljava/io/OutputStream;
    .end local p0    # "files":[Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "filter":Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v1    # "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;
    .restart local v0    # "outStream":Ljava/io/OutputStream;
    .restart local p0    # "files":[Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "filter":Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;
    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "files":[Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "filter":Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;
    :goto_3
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 234
    .end local v0    # "outStream":Ljava/io/OutputStream;
    .restart local p0    # "files":[Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "filter":Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 237
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    return-void
.end method

.method public static compress(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Ljava/io/File;Ljava/io/File;I)V
    .locals 2
    .param p0, "type"    # Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "level"    # I

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, p3, v1}, Lcom/winlator/cmod/core/TarCompressorUtils;->compress(Lcom/winlator/cmod/core/TarCompressorUtils$Type;[Ljava/io/File;Ljava/io/File;ILcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;)V

    .line 79
    return-void
.end method

.method public static compress(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Ljava/io/File;Ljava/io/File;ILcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;)V
    .locals 2
    .param p0, "type"    # Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "level"    # I
    .param p4, "filter"    # Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2, p3, p4}, Lcom/winlator/cmod/core/TarCompressorUtils;->compress(Lcom/winlator/cmod/core/TarCompressorUtils$Type;[Ljava/io/File;Ljava/io/File;ILcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;)V

    .line 83
    return-void
.end method

.method public static compress(Lcom/winlator/cmod/core/TarCompressorUtils$Type;[Ljava/io/File;Ljava/io/File;ILcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;)V
    .locals 7
    .param p0, "type"    # Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .param p1, "files"    # [Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "level"    # I
    .param p4, "filter"    # Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;

    .line 86
    :try_start_0
    invoke-static {p0, p2, p3}, Lcom/winlator/cmod/core/TarCompressorUtils;->getCompressorOutputStream(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Ljava/io/File;I)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v0, "outStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 88
    .local v1, "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;
    const/4 v2, 0x2

    :try_start_2
    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->setLongFileMode(I)V

    .line 89
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 90
    .local v4, "file":Ljava/io/File;
    if-eqz p4, :cond_0

    invoke-interface {p4, v4}, Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;->shouldInclude(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 91
    goto :goto_1

    .line 93
    :cond_0
    invoke-static {v4}, Lcom/winlator/cmod/core/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/winlator/cmod/core/TarCompressorUtils;->addLinkFile(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "basePath":Ljava/lang/String;
    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 98
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closeArchiveEntry()V

    .line 99
    invoke-static {v1, v4, v5, p4}, Lcom/winlator/cmod/core/TarCompressorUtils;->addDirectory(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;)V

    .line 100
    .end local v5    # "basePath":Ljava/lang/String;
    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/winlator/cmod/core/TarCompressorUtils;->addFile(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 89
    .end local v4    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v1    # "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;
    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 107
    .end local v0    # "outStream":Ljava/io/OutputStream;
    :cond_4
    goto :goto_4

    .line 86
    .restart local v0    # "outStream":Ljava/io/OutputStream;
    .restart local v1    # "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "outStream":Ljava/io/OutputStream;
    .end local p0    # "type":Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .end local p1    # "files":[Ljava/io/File;
    .end local p2    # "destination":Ljava/io/File;
    .end local p3    # "level":I
    .end local p4    # "filter":Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v1    # "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;
    .restart local v0    # "outStream":Ljava/io/OutputStream;
    .restart local p0    # "type":Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .restart local p1    # "files":[Ljava/io/File;
    .restart local p2    # "destination":Ljava/io/File;
    .restart local p3    # "level":I
    .restart local p4    # "filter":Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "type":Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .end local p1    # "files":[Ljava/io/File;
    .end local p2    # "destination":Ljava/io/File;
    .end local p3    # "level":I
    .end local p4    # "filter":Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;
    :cond_5
    :goto_3
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 105
    .end local v0    # "outStream":Ljava/io/OutputStream;
    .restart local p0    # "type":Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .restart local p1    # "files":[Ljava/io/File;
    .restart local p2    # "destination":Ljava/io/File;
    .restart local p3    # "level":I
    .restart local p4    # "filter":Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    return-void
.end method

.method public static extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Z
    .locals 1
    .param p0, "type"    # Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Landroid/net/Uri;
    .param p3, "destination"    # Ljava/io/File;

    .line 125
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    move-result v0

    return v0
.end method

.method public static extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z
    .locals 3
    .param p0, "type"    # Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Landroid/net/Uri;
    .param p3, "destination"    # Ljava/io/File;
    .param p4, "onExtractFileListener"    # Lcom/winlator/cmod/core/OnExtractFileListener;

    .line 129
    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 131
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p3, p4}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Ljava/io/InputStream;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    move-result v0

    return v0

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p0, v1, p3, p4}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Ljava/io/InputStream;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/io/FileNotFoundException;
    return v0
.end method

.method public static extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .locals 1
    .param p0, "type"    # Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetFile"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/io/File;

    .line 112
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    move-result v0

    return v0
.end method

.method public static extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z
    .locals 2
    .param p0, "type"    # Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetFile"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/io/File;
    .param p4, "onExtractFileListener"    # Lcom/winlator/cmod/core/OnExtractFileListener;

    .line 117
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p0, v0, p3, p4}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Ljava/io/InputStream;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "type"    # Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .param p1, "source"    # Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;

    .line 143
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Ljava/io/File;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    move-result v0

    return v0
.end method

.method public static extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Ljava/io/File;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z
    .locals 4
    .param p0, "type"    # Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .param p1, "source"    # Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "onExtractFileListener"    # Lcom/winlator/cmod/core/OnExtractFileListener;

    .line 147
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v3, 0x10000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {p0, v1, p2, p3}, Lcom/winlator/cmod/core/TarCompressorUtils;->extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Ljava/io/InputStream;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/io/FileNotFoundException;
    return v0

    .line 147
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_0
    return v0
.end method

.method private static extract(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Ljava/io/InputStream;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z
    .locals 8
    .param p0, "type"    # Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "onExtractFileListener"    # Lcom/winlator/cmod/core/OnExtractFileListener;

    .line 157
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 158
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/winlator/cmod/core/TarCompressorUtils;->getCompressorInputStream(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .local v1, "inStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {v2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 161
    .local v2, "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-object v4, v3

    .local v4, "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    if-eqz v3, :cond_8

    .line 162
    invoke-virtual {v2, v4}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    .local v3, "file":Ljava/io/File;
    if-eqz p3, :cond_2

    .line 166
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v5

    invoke-interface {p3, v3, v5, v6}, Lcom/winlator/cmod/core/OnExtractFileListener;->onExtractFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object v5

    move-object v3, v5

    .line 167
    if-nez v3, :cond_2

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 174
    :cond_3
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSymbolicLink()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 175
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getLinkName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/winlator/cmod/core/FileUtils;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 178
    :cond_4
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v7, 0x10000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 179
    .local v5, "outStream":Ljava/io/BufferedOutputStream;
    :try_start_3
    invoke-static {v2, v5}, Lcom/winlator/cmod/core/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_6

    .line 180
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 187
    :try_start_5
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 179
    :cond_5
    return v0

    .line 180
    :cond_6
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 184
    .end local v5    # "outStream":Ljava/io/BufferedOutputStream;
    :cond_7
    :goto_1
    const/16 v5, 0x1f9

    invoke-static {v3, v5}, Lcom/winlator/cmod/core/FileUtils;->chmod(Ljava/io/File;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 185
    .end local v3    # "file":Ljava/io/File;
    goto :goto_0

    .line 178
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "outStream":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v6

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    :try_start_9
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local v2    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .end local p0    # "type":Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .end local p1    # "source":Ljava/io/InputStream;
    .end local p2    # "destination":Ljava/io/File;
    .end local p3    # "onExtractFileListener":Lcom/winlator/cmod/core/OnExtractFileListener;
    :goto_2
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 186
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v1    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .restart local p0    # "type":Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .restart local p1    # "source":Ljava/io/InputStream;
    .restart local p2    # "destination":Ljava/io/File;
    .restart local p3    # "onExtractFileListener":Lcom/winlator/cmod/core/OnExtractFileListener;
    :cond_8
    nop

    .line 187
    :try_start_a
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v1, :cond_9

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 186
    :cond_9
    const/4 v0, 0x1

    return v0

    .line 158
    .end local v4    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :catchall_2
    move-exception v3

    :try_start_c
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v4

    :try_start_d
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local p0    # "type":Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .end local p1    # "source":Ljava/io/InputStream;
    .end local p2    # "destination":Ljava/io/File;
    .end local p3    # "onExtractFileListener":Lcom/winlator/cmod/core/OnExtractFileListener;
    :goto_3
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .end local v2    # "tar":Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .restart local v1    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "type":Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .restart local p1    # "source":Ljava/io/InputStream;
    .restart local p2    # "destination":Ljava/io/File;
    .restart local p3    # "onExtractFileListener":Lcom/winlator/cmod/core/OnExtractFileListener;
    :catchall_4
    move-exception v2

    if-eqz v1, :cond_a

    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v3

    :try_start_f
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "type":Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .end local p1    # "source":Ljava/io/InputStream;
    .end local p2    # "destination":Ljava/io/File;
    .end local p3    # "onExtractFileListener":Lcom/winlator/cmod/core/OnExtractFileListener;
    :cond_a
    :goto_4
    throw v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    .line 188
    .end local v1    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "type":Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .restart local p1    # "source":Ljava/io/InputStream;
    .restart local p2    # "destination":Ljava/io/File;
    .restart local p3    # "onExtractFileListener":Lcom/winlator/cmod/core/OnExtractFileListener;
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    return v0
.end method

.method public static extractTar(Ljava/io/File;Ljava/io/File;Lcom/winlator/cmod/core/OnExtractFileListener;)Z
    .locals 12
    .param p0, "source"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "onExtractFileListener"    # Lcom/winlator/cmod/core/OnExtractFileListener;

    .line 240
    const-string v0, "RestoreOp"

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 241
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v4, 0x10000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .local v2, "inStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {v3, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 244
    .local v3, "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    const/4 v5, 0x0

    .line 245
    .local v5, "topLevelDirectory":Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-object v7, v6

    .local v7, "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    if-eqz v6, :cond_9

    .line 246
    invoke-virtual {v3, v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, "entryName":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 251
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 252
    move-object v5, v6

    .line 253
    goto :goto_0

    .line 258
    :cond_2
    const-string v8, "/tmp/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 259
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping tmp directory: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    goto :goto_0

    .line 264
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 265
    .local v8, "adjustedName":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    .local v9, "file":Ljava/io/File;
    if-eqz p2, :cond_4

    .line 268
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/winlator/cmod/core/OnExtractFileListener;->onExtractFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object v10

    move-object v9, v10

    .line 269
    if-nez v9, :cond_4

    goto :goto_0

    .line 272
    :cond_4
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 273
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 275
    :cond_5
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSymbolicLink()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 276
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getLinkName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/winlator/cmod/core/FileUtils;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 278
    :cond_6
    new-instance v10, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 279
    .local v10, "outStream":Ljava/io/BufferedOutputStream;
    :try_start_3
    invoke-static {v3, v10}, Lcom/winlator/cmod/core/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v11, :cond_7

    .line 280
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 287
    :try_start_5
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 279
    return v1

    .line 280
    :cond_7
    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    .line 284
    .end local v10    # "outStream":Ljava/io/BufferedOutputStream;
    :cond_8
    :goto_1
    const/16 v10, 0x1f9

    invoke-static {v9, v10}, Lcom/winlator/cmod/core/FileUtils;->chmod(Ljava/io/File;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 285
    .end local v6    # "entryName":Ljava/lang/String;
    .end local v8    # "adjustedName":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    goto/16 :goto_0

    .line 278
    .restart local v6    # "entryName":Ljava/lang/String;
    .restart local v8    # "adjustedName":Ljava/lang/String;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "outStream":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v4

    :try_start_8
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v11

    :try_start_9
    invoke-virtual {v4, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "inStream":Ljava/io/InputStream;
    .end local v3    # "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "onExtractFileListener":Lcom/winlator/cmod/core/OnExtractFileListener;
    :goto_2
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 286
    .end local v6    # "entryName":Ljava/lang/String;
    .end local v8    # "adjustedName":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "onExtractFileListener":Lcom/winlator/cmod/core/OnExtractFileListener;
    :cond_9
    nop

    .line 287
    :try_start_a
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 286
    const/4 v0, 0x1

    return v0

    .line 241
    .end local v5    # "topLevelDirectory":Ljava/lang/String;
    .end local v7    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :catchall_2
    move-exception v4

    :try_start_c
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v5

    :try_start_d
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "inStream":Ljava/io/InputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "onExtractFileListener":Lcom/winlator/cmod/core/OnExtractFileListener;
    :goto_3
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .end local v3    # "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "onExtractFileListener":Lcom/winlator/cmod/core/OnExtractFileListener;
    :catchall_4
    move-exception v3

    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v4

    :try_start_f
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "destination":Ljava/io/File;
    .end local p2    # "onExtractFileListener":Lcom/winlator/cmod/core/OnExtractFileListener;
    :goto_4
    throw v3
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    .line 287
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "destination":Ljava/io/File;
    .restart local p2    # "onExtractFileListener":Lcom/winlator/cmod/core/OnExtractFileListener;
    :catch_0
    move-exception v2

    .line 288
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Failed to extract tar file"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    return v1

    .line 240
    .end local v2    # "e":Ljava/io/IOException;
    :cond_a
    :goto_5
    return v1
.end method

.method private static getCompressorInputStream(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "type"    # Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .param p1, "source"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->XZ:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    if-ne p0, v0, :cond_0

    .line 196
    new-instance v0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 198
    :cond_0
    sget-object v0, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    if-ne p0, v0, :cond_1

    .line 199
    new-instance v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 201
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getCompressorOutputStream(Lcom/winlator/cmod/core/TarCompressorUtils$Type;Ljava/io/File;I)Ljava/io/OutputStream;
    .locals 4
    .param p0, "type"    # Lcom/winlator/cmod/core/TarCompressorUtils$Type;
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->XZ:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    const/high16 v1, 0x10000

    if-ne p0, v0, :cond_0

    .line 206
    new-instance v0, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v2, p2}, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-object v0

    .line 208
    :cond_0
    sget-object v0, Lcom/winlator/cmod/core/TarCompressorUtils$Type;->ZSTD:Lcom/winlator/cmod/core/TarCompressorUtils$Type;

    if-ne p0, v0, :cond_1

    .line 209
    new-instance v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v2, p2}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-object v0

    .line 211
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
