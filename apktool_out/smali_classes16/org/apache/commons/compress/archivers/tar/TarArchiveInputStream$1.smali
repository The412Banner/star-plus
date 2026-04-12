.class Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$1;
.super Ljava/lang/Object;
.source "TarArchiveInputStream.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->buildSparseInputStreams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    .line 1050
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$1;->this$0:Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1050
    check-cast p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    check-cast p2, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$1;->compare(Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;)I
    .locals 3
    .param p1, "p"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    .param p2, "q"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    .line 1053
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1054
    .local v0, "pOffset":Ljava/lang/Long;
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1055
    .local v1, "qOffset":Ljava/lang/Long;
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    return v2
.end method
