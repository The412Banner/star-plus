.class Lorg/apache/commons/compress/archivers/sevenz/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# instance fields
.field bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

.field coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

.field crc:J

.field hasCrc:Z

.field numUnpackSubStreams:I

.field packedStreams:[J

.field totalInputStreams:J

.field totalOutputStreams:J

.field unpackSizes:[J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method findBindPairForInStream(I)I
    .locals 5
    .param p1, "index"    # I

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    aget-object v1, v1, v0

    iget-wide v1, v1, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->inIndex:J

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 68
    return v0

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method findBindPairForOutStream(I)I
    .locals 5
    .param p1, "index"    # I

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 76
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    aget-object v1, v1, v0

    iget-wide v1, v1, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->outIndex:J

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 77
    return v0

    .line 75
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method getOrderedCoders()Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/sevenz/Coder;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 56
    .local v0, "l":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/sevenz/Coder;>;"
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    long-to-int v1, v2

    .line 57
    .local v1, "current":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 58
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->findBindPairForOutStream(I)I

    move-result v3

    .line 60
    .local v3, "pair":I
    if-eq v3, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    aget-object v2, v2, v3

    iget-wide v4, v2, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->inIndex:J

    long-to-int v2, v4

    :cond_0
    move v1, v2

    .line 61
    .end local v3    # "pair":I
    goto :goto_0

    .line 62
    :cond_1
    return-object v0
.end method

.method getUnpackSize()J
    .locals 4

    .line 84
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 85
    return-wide v2

    .line 87
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 88
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->findBindPairForOutStream(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 89
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 87
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    :cond_2
    return-wide v2
.end method

.method getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J
    .locals 4
    .param p1, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 96
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 99
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Folder with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " coders, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalInputStreams:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " input streams, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " output streams, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bind pairs, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " packed streams, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " unpack sizes, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "with CRC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "without CRC"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " unpack streams"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
