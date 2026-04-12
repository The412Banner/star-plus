.class public Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
.source "JarArchiveInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static matches([BI)Z
    .locals 1
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 76
    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->matches([BI)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;->getNextJarEntry()Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextJarEntry()Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;->getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    .line 57
    .local v0, "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    :goto_0
    return-object v1
.end method
