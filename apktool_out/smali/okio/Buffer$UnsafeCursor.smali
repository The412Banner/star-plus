.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -Util.kt\nokio/-Util\n*L\n1#1,1019:1\n1#2:1020\n75#3:1021\n*E\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n*L\n941#1:1021\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0008J\u0006\u0010\u0014\u001a\u00020\u0008J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nJ\u000e\u0010\u0017\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/Buffer$UnsafeCursor;",
        "Ljava/io/Closeable;",
        "()V",
        "buffer",
        "Lokio/Buffer;",
        "data",
        "",
        "end",
        "",
        "offset",
        "",
        "readWrite",
        "",
        "segment",
        "Lokio/Segment;",
        "start",
        "close",
        "",
        "expandBuffer",
        "minByteCount",
        "next",
        "resizeBuffer",
        "newSize",
        "seek",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public buffer:Lokio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lokio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 800
    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 801
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1008
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1010
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lokio/Buffer;

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1011
    move-object v1, v0

    check-cast v1, Lokio/Segment;

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 1012
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1013
    move-object v1, v0

    check-cast v1, [B

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 1014
    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1015
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 1016
    return-void

    .line 1020
    :cond_1
    const/4 v0, 0x0

    .line 1008
    .local v0, "$i$a$-check-Buffer$UnsafeCursor$close$1":I
    nop

    .end local v0    # "$i$a$-check-Buffer$UnsafeCursor$close$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final expandBuffer(I)J
    .locals 8
    .param p1, "minByteCount"    # I

    .line 985
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    .line 986
    const/16 v2, 0x2000

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 987
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_3

    .line 988
    .local v0, "buffer":Lokio/Buffer;
    iget-boolean v1, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v1, :cond_2

    .line 990
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    .line 991
    .local v3, "oldSize":J
    invoke-virtual {v0, p1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v1

    .line 992
    .local v1, "tail":Lokio/Segment;
    iget v5, v1, Lokio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    .line 993
    .local v5, "result":I
    iput v2, v1, Lokio/Segment;->limit:I

    .line 994
    int-to-long v6, v5

    add-long/2addr v6, v3

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->setSize$okio(J)V

    .line 997
    iput-object v1, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 998
    iput-wide v3, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 999
    iget-object v6, v1, Lokio/Segment;->data:[B

    iput-object v6, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 1000
    rsub-int v6, v5, 0x2000

    iput v6, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1001
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 1003
    int-to-long v6, v5

    return-wide v6

    .line 1020
    .end local v1    # "tail":Lokio/Segment;
    .end local v3    # "oldSize":J
    .end local v5    # "result":I
    :cond_2
    const/4 v1, 0x0

    .line 988
    .local v1, "$i$a$-check-Buffer$UnsafeCursor$expandBuffer$3":I
    nop

    .end local v1    # "$i$a$-check-Buffer$UnsafeCursor$expandBuffer$3":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "expandBuffer() only permitted for read/write buffers"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1020
    .end local v0    # "buffer":Lokio/Buffer;
    :cond_3
    const/4 v0, 0x0

    .line 987
    .local v0, "$i$a$-checkNotNull-Buffer$UnsafeCursor$expandBuffer$buffer$1":I
    nop

    .end local v0    # "$i$a$-checkNotNull-Buffer$UnsafeCursor$expandBuffer$buffer$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1020
    :cond_4
    const/4 v0, 0x0

    .line 986
    .local v0, "$i$a$-require-Buffer$UnsafeCursor$expandBuffer$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount > Segment.SIZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$UnsafeCursor$expandBuffer$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1020
    :cond_5
    const/4 v0, 0x0

    .line 985
    .local v0, "$i$a$-require-Buffer$UnsafeCursor$expandBuffer$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$UnsafeCursor$expandBuffer$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final next()I
    .locals 4

    .line 809
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 810
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_1
    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    .line 1020
    :cond_2
    const/4 v0, 0x0

    .line 809
    .local v0, "$i$a$-check-Buffer$UnsafeCursor$next$1":I
    nop

    .end local v0    # "$i$a$-check-Buffer$UnsafeCursor$next$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no more bytes"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final resizeBuffer(J)J
    .locals 15
    .param p1, "newSize"    # J

    .line 909
    move-object v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v3, :cond_8

    .line 910
    .local v3, "buffer":Lokio/Buffer;
    iget-boolean v4, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v4, :cond_7

    .line 912
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    .line 913
    .local v4, "oldSize":J
    cmp-long v6, v1, v4

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    if-gtz v6, :cond_4

    .line 914
    cmp-long v6, v1, v8

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_3

    .line 916
    sub-long v6, v4, v1

    .line 917
    .local v6, "bytesToSubtract":J
    :goto_1
    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    .line 918
    iget-object v10, v3, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v10, Lokio/Segment;->prev:Lokio/Segment;

    .line 919
    .local v10, "tail":Lokio/Segment;
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v11, v10, Lokio/Segment;->limit:I

    iget v12, v10, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    .line 920
    .local v11, "tailSize":I
    int-to-long v12, v11

    cmp-long v12, v12, v6

    if-gtz v12, :cond_1

    .line 921
    invoke-virtual {v10}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v12

    iput-object v12, v3, Lokio/Buffer;->head:Lokio/Segment;

    .line 922
    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 923
    int-to-long v12, v11

    sub-long/2addr v6, v12

    .line 927
    .end local v10    # "tail":Lokio/Segment;
    .end local v11    # "tailSize":I
    nop

    .line 917
    goto :goto_1

    .line 925
    .restart local v10    # "tail":Lokio/Segment;
    .restart local v11    # "tailSize":I
    :cond_1
    iget v8, v10, Lokio/Segment;->limit:I

    long-to-int v9, v6

    sub-int/2addr v8, v9

    iput v8, v10, Lokio/Segment;->limit:I

    .line 926
    nop

    .line 930
    .end local v10    # "tail":Lokio/Segment;
    .end local v11    # "tailSize":I
    :cond_2
    const/4 v8, 0x0

    move-object v9, v8

    check-cast v9, Lokio/Segment;

    iput-object v8, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 931
    iput-wide v1, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 932
    move-object v9, v8

    check-cast v9, [B

    iput-object v8, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 933
    const/4 v8, -0x1

    iput v8, v0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 934
    iput v8, v0, Lokio/Buffer$UnsafeCursor;->end:I

    .end local v6    # "bytesToSubtract":J
    goto :goto_3

    .line 1020
    :cond_3
    const/4 v6, 0x0

    .line 914
    .local v6, "$i$a$-require-Buffer$UnsafeCursor$resizeBuffer$2":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "newSize < 0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v6    # "$i$a$-require-Buffer$UnsafeCursor$resizeBuffer$2":I
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 935
    :cond_4
    cmp-long v6, v1, v4

    if-lez v6, :cond_6

    .line 937
    const/4 v6, 0x1

    .line 938
    .local v6, "needsToSeek":Z
    sub-long v10, v1, v4

    .line 939
    .local v10, "bytesToAdd":J
    :goto_2
    cmp-long v12, v10, v8

    if-lez v12, :cond_6

    .line 940
    invoke-virtual {v3, v7}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v12

    .line 941
    .local v12, "tail":Lokio/Segment;
    iget v13, v12, Lokio/Segment;->limit:I

    rsub-int v13, v13, 0x2000

    .local v13, "b$iv":I
    const/4 v14, 0x0

    .line 1021
    .local v14, "$i$f$minOf":I
    int-to-long v7, v13

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 941
    .end local v13    # "b$iv":I
    .end local v14    # "$i$f$minOf":I
    long-to-int v7, v7

    .line 942
    .local v7, "segmentBytesToAdd":I
    iget v8, v12, Lokio/Segment;->limit:I

    add-int/2addr v8, v7

    iput v8, v12, Lokio/Segment;->limit:I

    .line 943
    int-to-long v8, v7

    sub-long/2addr v10, v8

    .line 946
    if-eqz v6, :cond_5

    .line 947
    iput-object v12, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 948
    iput-wide v4, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 949
    iget-object v8, v12, Lokio/Segment;->data:[B

    iput-object v8, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 950
    iget v8, v12, Lokio/Segment;->limit:I

    sub-int/2addr v8, v7

    iput v8, v0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 951
    iget v8, v12, Lokio/Segment;->limit:I

    iput v8, v0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 952
    const/4 v6, 0x0

    .line 939
    .end local v7    # "segmentBytesToAdd":I
    .end local v12    # "tail":Lokio/Segment;
    :cond_5
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    goto :goto_2

    .line 955
    .end local v6    # "needsToSeek":Z
    .end local v10    # "bytesToAdd":J
    :cond_6
    :goto_3
    nop

    .line 957
    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->setSize$okio(J)V

    .line 959
    return-wide v4

    .line 1020
    .end local v4    # "oldSize":J
    :cond_7
    const/4 v4, 0x0

    .line 910
    .local v4, "$i$a$-check-Buffer$UnsafeCursor$resizeBuffer$1":I
    nop

    .end local v4    # "$i$a$-check-Buffer$UnsafeCursor$resizeBuffer$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "resizeBuffer() only permitted for read/write buffers"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 1020
    .end local v3    # "buffer":Lokio/Buffer;
    :cond_8
    const/4 v3, 0x0

    .line 909
    .local v3, "$i$a$-checkNotNull-Buffer$UnsafeCursor$resizeBuffer$buffer$1":I
    nop

    .end local v3    # "$i$a$-checkNotNull-Buffer$UnsafeCursor$resizeBuffer$buffer$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "not attached to a buffer"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public final seek(J)I
    .locals 17
    .param p1, "offset"    # J

    .line 819
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v3, :cond_9

    .line 820
    .local v3, "buffer":Lokio/Buffer;
    const/4 v4, -0x1

    int-to-long v5, v4

    cmp-long v5, v1, v5

    if-ltz v5, :cond_8

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-gtz v5, :cond_8

    .line 825
    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 835
    :cond_0
    const-wide/16 v4, 0x0

    .line 836
    .local v4, "min":J
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v6

    .line 837
    .local v6, "max":J
    iget-object v8, v3, Lokio/Buffer;->head:Lokio/Segment;

    .line 838
    .local v8, "head":Lokio/Segment;
    iget-object v9, v3, Lokio/Buffer;->head:Lokio/Segment;

    .line 839
    .local v9, "tail":Lokio/Segment;
    iget-object v10, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    if-eqz v10, :cond_2

    .line 840
    iget-wide v10, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v12, v0, Lokio/Buffer$UnsafeCursor;->start:I

    iget-object v13, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v13, v13, Lokio/Segment;->pos:I

    sub-int/2addr v12, v13

    int-to-long v12, v12

    sub-long/2addr v10, v12

    .line 841
    .local v10, "segmentOffset":J
    cmp-long v12, v10, v1

    if-lez v12, :cond_1

    .line 843
    move-wide v6, v10

    .line 844
    iget-object v9, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    goto :goto_0

    .line 847
    :cond_1
    move-wide v4, v10

    .line 848
    iget-object v8, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 849
    .end local v10    # "segmentOffset":J
    :cond_2
    :goto_0
    nop

    .line 852
    const/4 v10, 0x0

    .line 853
    .local v10, "next":Lokio/Segment;
    const-wide/16 v11, 0x0

    .line 854
    .local v11, "nextOffset":J
    sub-long v13, v6, v1

    sub-long v15, v1, v4

    cmp-long v13, v13, v15

    if-lez v13, :cond_3

    .line 856
    move-object v10, v8

    .line 857
    move-wide v11, v4

    .line 858
    :goto_1
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v13, v10, Lokio/Segment;->limit:I

    iget v14, v10, Lokio/Segment;->pos:I

    sub-int/2addr v13, v14

    int-to-long v13, v13

    add-long/2addr v13, v11

    cmp-long v13, v1, v13

    if-ltz v13, :cond_4

    .line 859
    iget v13, v10, Lokio/Segment;->limit:I

    iget v14, v10, Lokio/Segment;->pos:I

    sub-int/2addr v13, v14

    int-to-long v13, v13

    add-long/2addr v11, v13

    .line 860
    iget-object v10, v10, Lokio/Segment;->next:Lokio/Segment;

    .line 858
    goto :goto_1

    .line 864
    :cond_3
    move-object v10, v9

    .line 865
    move-wide v11, v6

    .line 866
    :goto_2
    cmp-long v13, v11, v1

    if-lez v13, :cond_4

    .line 867
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v10, Lokio/Segment;->prev:Lokio/Segment;

    .line 868
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v13, v10, Lokio/Segment;->limit:I

    iget v14, v10, Lokio/Segment;->pos:I

    sub-int/2addr v13, v14

    int-to-long v13, v13

    sub-long/2addr v11, v13

    .line 866
    goto :goto_2

    .line 870
    :cond_4
    nop

    .line 873
    iget-boolean v13, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v13, :cond_6

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v13, v10, Lokio/Segment;->shared:Z

    if-eqz v13, :cond_6

    .line 874
    invoke-virtual {v10}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v13

    .line 875
    .local v13, "unsharedNext":Lokio/Segment;
    iget-object v14, v3, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v14, v10, :cond_5

    .line 876
    iput-object v13, v3, Lokio/Buffer;->head:Lokio/Segment;

    .line 878
    :cond_5
    invoke-virtual {v10, v13}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v10

    .line 879
    iget-object v14, v10, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lokio/Segment;->pop()Lokio/Segment;

    .line 883
    .end local v13    # "unsharedNext":Lokio/Segment;
    :cond_6
    iput-object v10, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 884
    iput-wide v1, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 885
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v13, v10, Lokio/Segment;->data:[B

    iput-object v13, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 886
    iget v13, v10, Lokio/Segment;->pos:I

    sub-long v14, v1, v11

    long-to-int v14, v14

    add-int/2addr v13, v14

    iput v13, v0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 887
    iget v13, v10, Lokio/Segment;->limit:I

    iput v13, v0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 888
    iget v13, v0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v14, v0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v13, v14

    return v13

    .line 826
    .end local v4    # "min":J
    .end local v6    # "max":J
    .end local v8    # "head":Lokio/Segment;
    .end local v9    # "tail":Lokio/Segment;
    .end local v10    # "next":Lokio/Segment;
    .end local v11    # "nextOffset":J
    :cond_7
    :goto_3
    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, Lokio/Segment;

    iput-object v5, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 827
    iput-wide v1, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 828
    move-object v6, v5

    check-cast v6, [B

    iput-object v5, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 829
    iput v4, v0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 830
    iput v4, v0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 831
    return v4

    .line 821
    :cond_8
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 822
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "offset=%s > size=%s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "java.lang.String.format(format, *args)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 821
    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 1020
    .end local v3    # "buffer":Lokio/Buffer;
    :cond_9
    const/4 v3, 0x0

    .line 819
    .local v3, "$i$a$-checkNotNull-Buffer$UnsafeCursor$seek$buffer$1":I
    nop

    .end local v3    # "$i$a$-checkNotNull-Buffer$UnsafeCursor$seek$buffer$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "not attached to a buffer"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method
