.class public final Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
.super Ljava/lang/Object;
.source "TarArchiveStructSparse.java"


# instance fields
.field private final numbytes:J

.field private final offset:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "offset"    # J
    .param p3, "numbytes"    # J

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->offset:J

    .line 41
    iput-wide p3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->numbytes:J

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 47
    return v0

    .line 49
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    .line 53
    .local v2, "that":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->offset:J

    iget-wide v5, v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->offset:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->numbytes:J

    iget-wide v5, v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->numbytes:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 50
    .end local v2    # "that":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    :cond_3
    :goto_1
    return v1
.end method

.method public getNumbytes()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->numbytes:J

    return-wide v0
.end method

.method public getOffset()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->offset:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 59
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->offset:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->numbytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TarArchiveStructSparse{offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->offset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numbytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->numbytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
