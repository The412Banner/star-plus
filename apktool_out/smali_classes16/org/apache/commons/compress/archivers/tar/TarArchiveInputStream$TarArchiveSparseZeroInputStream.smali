.class Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$TarArchiveSparseZeroInputStream;
.super Ljava/io/InputStream;
.source "TarArchiveInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TarArchiveSparseZeroInputStream"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1097
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$1;

    .line 1097
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$TarArchiveSparseZeroInputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1105
    const/4 v0, 0x0

    return v0
.end method

.method public skip(J)J
    .locals 0
    .param p1, "n"    # J

    .line 1116
    return-wide p1
.end method
