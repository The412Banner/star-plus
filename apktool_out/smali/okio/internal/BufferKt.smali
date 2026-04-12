.class public final Lokio/internal/BufferKt;
.super Ljava/lang/Object;
.source "Buffer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/internal/BufferKt\n+ 2 -Util.kt\nokio/-Util\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1489:1\n105#1,20:1512\n105#1,20:1545\n105#1:1565\n107#1,18:1567\n105#1,20:1585\n66#2:1490\n66#2:1491\n66#2:1492\n66#2:1493\n66#2:1494\n66#2:1495\n66#2:1496\n66#2:1497\n66#2:1498\n66#2:1499\n66#2:1500\n66#2:1501\n72#2:1502\n72#2:1503\n69#2:1504\n69#2:1505\n69#2:1506\n69#2:1507\n69#2:1508\n69#2:1509\n69#2:1510\n69#2:1511\n75#2:1532\n78#2:1534\n66#2:1535\n66#2:1536\n66#2:1537\n66#2:1538\n66#2:1539\n66#2:1540\n66#2:1541\n66#2:1542\n66#2:1543\n66#2:1544\n78#2:1566\n1#3:1533\n*E\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/internal/BufferKt\n*L\n400#1,20:1512\n1235#1,20:1545\n1266#1:1565\n1266#1,18:1567\n1300#1,20:1585\n171#1:1490\n195#1:1491\n314#1:1492\n319#1:1493\n341#1:1494\n342#1:1495\n343#1:1496\n344#1:1497\n348#1:1498\n349#1:1499\n350#1:1500\n351#1:1501\n373#1:1502\n374#1:1503\n378#1:1504\n379#1:1505\n380#1:1506\n381#1:1507\n382#1:1508\n383#1:1509\n384#1:1510\n385#1:1511\n412#1:1532\n836#1:1534\n850#1:1535\n852#1:1536\n856#1:1537\n858#1:1538\n862#1:1539\n864#1:1540\n868#1:1541\n870#1:1542\n890#1:1543\n893#1:1544\n1279#1:1566\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000v\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a0\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0008H\u0000\u001a\r\u0010\u0011\u001a\u00020\u0012*\u00020\u0013H\u0080\u0008\u001a\r\u0010\u0014\u001a\u00020\u0005*\u00020\u0013H\u0080\u0008\u001a\r\u0010\u0015\u001a\u00020\u0013*\u00020\u0013H\u0080\u0008\u001a%\u0010\u0016\u001a\u00020\u0013*\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\u0008\u001a\u0017\u0010\u001a\u001a\u00020\n*\u00020\u00132\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0080\u0008\u001a\u0015\u0010\u001d\u001a\u00020\u001e*\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u0005H\u0080\u0008\u001a\r\u0010 \u001a\u00020\u0008*\u00020\u0013H\u0080\u0008\u001a%\u0010!\u001a\u00020\u0005*\u00020\u00132\u0006\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0005H\u0080\u0008\u001a\u001d\u0010!\u001a\u00020\u0005*\u00020\u00132\u0006\u0010\u000e\u001a\u00020%2\u0006\u0010#\u001a\u00020\u0005H\u0080\u0008\u001a\u001d\u0010&\u001a\u00020\u0005*\u00020\u00132\u0006\u0010\'\u001a\u00020%2\u0006\u0010#\u001a\u00020\u0005H\u0080\u0008\u001a-\u0010(\u001a\u00020\n*\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020%2\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0008H\u0080\u0008\u001a\u0015\u0010)\u001a\u00020\u0008*\u00020\u00132\u0006\u0010*\u001a\u00020\u0001H\u0080\u0008\u001a%\u0010)\u001a\u00020\u0008*\u00020\u00132\u0006\u0010*\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0008H\u0080\u0008\u001a\u001d\u0010)\u001a\u00020\u0005*\u00020\u00132\u0006\u0010*\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010+\u001a\u00020\u0005*\u00020\u00132\u0006\u0010*\u001a\u00020,H\u0080\u0008\u001a\r\u0010-\u001a\u00020\u001e*\u00020\u0013H\u0080\u0008\u001a\r\u0010.\u001a\u00020\u0001*\u00020\u0013H\u0080\u0008\u001a\u0015\u0010.\u001a\u00020\u0001*\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\u0008\u001a\r\u0010/\u001a\u00020%*\u00020\u0013H\u0080\u0008\u001a\u0015\u0010/\u001a\u00020%*\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\u0008\u001a\r\u00100\u001a\u00020\u0005*\u00020\u0013H\u0080\u0008\u001a\u0015\u00101\u001a\u00020\u0012*\u00020\u00132\u0006\u0010*\u001a\u00020\u0001H\u0080\u0008\u001a\u001d\u00101\u001a\u00020\u0012*\u00020\u00132\u0006\u0010*\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\u0008\u001a\r\u00102\u001a\u00020\u0005*\u00020\u0013H\u0080\u0008\u001a\r\u00103\u001a\u00020\u0008*\u00020\u0013H\u0080\u0008\u001a\r\u00104\u001a\u00020\u0005*\u00020\u0013H\u0080\u0008\u001a\r\u00105\u001a\u000206*\u00020\u0013H\u0080\u0008\u001a\u0015\u00107\u001a\u000208*\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\u0008\u001a\r\u00109\u001a\u00020\u0008*\u00020\u0013H\u0080\u0008\u001a\u000f\u0010:\u001a\u0004\u0018\u000108*\u00020\u0013H\u0080\u0008\u001a\u0015\u0010;\u001a\u000208*\u00020\u00132\u0006\u0010<\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010=\u001a\u00020\u0008*\u00020\u00132\u0006\u0010>\u001a\u00020?H\u0080\u0008\u001a\u0015\u0010@\u001a\u00020\u0012*\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\u0008\u001a\r\u0010A\u001a\u00020%*\u00020\u0013H\u0080\u0008\u001a\u0015\u0010A\u001a\u00020%*\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0008H\u0080\u0008\u001a\u0015\u0010B\u001a\u00020\u000c*\u00020\u00132\u0006\u0010C\u001a\u00020\u0008H\u0080\u0008\u001a\u0015\u0010D\u001a\u00020\u0013*\u00020\u00132\u0006\u0010E\u001a\u00020\u0001H\u0080\u0008\u001a%\u0010D\u001a\u00020\u0013*\u00020\u00132\u0006\u0010E\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0008H\u0080\u0008\u001a\u001d\u0010D\u001a\u00020\u0012*\u00020\u00132\u0006\u0010E\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\u0008\u001a)\u0010D\u001a\u00020\u0013*\u00020\u00132\u0006\u0010F\u001a\u00020%2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0008H\u0080\u0008\u001a\u001d\u0010D\u001a\u00020\u0013*\u00020\u00132\u0006\u0010E\u001a\u00020G2\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010H\u001a\u00020\u0005*\u00020\u00132\u0006\u0010E\u001a\u00020GH\u0080\u0008\u001a\u0015\u0010I\u001a\u00020\u0013*\u00020\u00132\u0006\u0010\"\u001a\u00020\u0008H\u0080\u0008\u001a\u0015\u0010J\u001a\u00020\u0013*\u00020\u00132\u0006\u0010K\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010L\u001a\u00020\u0013*\u00020\u00132\u0006\u0010K\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010M\u001a\u00020\u0013*\u00020\u00132\u0006\u0010N\u001a\u00020\u0008H\u0080\u0008\u001a\u0015\u0010O\u001a\u00020\u0013*\u00020\u00132\u0006\u0010K\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010P\u001a\u00020\u0013*\u00020\u00132\u0006\u0010Q\u001a\u00020\u0008H\u0080\u0008\u001a%\u0010R\u001a\u00020\u0013*\u00020\u00132\u0006\u0010S\u001a\u0002082\u0006\u0010T\u001a\u00020\u00082\u0006\u0010U\u001a\u00020\u0008H\u0080\u0008\u001a\u0015\u0010V\u001a\u00020\u0013*\u00020\u00132\u0006\u0010W\u001a\u00020\u0008H\u0080\u0008\u001a\u0014\u0010X\u001a\u000208*\u00020\u00132\u0006\u0010Y\u001a\u00020\u0005H\u0000\u001a?\u0010Z\u001a\u0002H[\"\u0004\u0008\u0000\u0010[*\u00020\u00132\u0006\u0010#\u001a\u00020\u00052\u001a\u0010\\\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H[0]H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010^\u001a\u001e\u0010_\u001a\u00020\u0008*\u00020\u00132\u0006\u0010>\u001a\u00020?2\u0008\u0008\u0002\u0010`\u001a\u00020\nH\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006a"
    }
    d2 = {
        "HEX_DIGIT_BYTES",
        "",
        "getHEX_DIGIT_BYTES",
        "()[B",
        "OVERFLOW_DIGIT_START",
        "",
        "OVERFLOW_ZONE",
        "SEGMENTING_THRESHOLD",
        "",
        "rangeEquals",
        "",
        "segment",
        "Lokio/Segment;",
        "segmentPos",
        "bytes",
        "bytesOffset",
        "bytesLimit",
        "commonClear",
        "",
        "Lokio/Buffer;",
        "commonCompleteSegmentByteCount",
        "commonCopy",
        "commonCopyTo",
        "out",
        "offset",
        "byteCount",
        "commonEquals",
        "other",
        "",
        "commonGet",
        "",
        "pos",
        "commonHashCode",
        "commonIndexOf",
        "b",
        "fromIndex",
        "toIndex",
        "Lokio/ByteString;",
        "commonIndexOfElement",
        "targetBytes",
        "commonRangeEquals",
        "commonRead",
        "sink",
        "commonReadAll",
        "Lokio/Sink;",
        "commonReadByte",
        "commonReadByteArray",
        "commonReadByteString",
        "commonReadDecimalLong",
        "commonReadFully",
        "commonReadHexadecimalUnsignedLong",
        "commonReadInt",
        "commonReadLong",
        "commonReadShort",
        "",
        "commonReadUtf8",
        "",
        "commonReadUtf8CodePoint",
        "commonReadUtf8Line",
        "commonReadUtf8LineStrict",
        "limit",
        "commonSelect",
        "options",
        "Lokio/Options;",
        "commonSkip",
        "commonSnapshot",
        "commonWritableSegment",
        "minimumCapacity",
        "commonWrite",
        "source",
        "byteString",
        "Lokio/Source;",
        "commonWriteAll",
        "commonWriteByte",
        "commonWriteDecimalLong",
        "v",
        "commonWriteHexadecimalUnsignedLong",
        "commonWriteInt",
        "i",
        "commonWriteLong",
        "commonWriteShort",
        "s",
        "commonWriteUtf8",
        "string",
        "beginIndex",
        "endIndex",
        "commonWriteUtf8CodePoint",
        "codePoint",
        "readUtf8Line",
        "newline",
        "seek",
        "T",
        "lambda",
        "Lkotlin/Function2;",
        "(Lokio/Buffer;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "selectPrefix",
        "selectTruncated",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final HEX_DIGIT_BYTES:[B

.field public static final OVERFLOW_DIGIT_START:J = -0x7L

.field public static final OVERFLOW_ZONE:J = -0xcccccccccccccccL

.field public static final SEGMENTING_THRESHOLD:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "0123456789abcdef"

    invoke-static {v0}, Lokio/-Platform;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lokio/internal/BufferKt;->HEX_DIGIT_BYTES:[B

    return-void
.end method

.method public static final commonClear(Lokio/Buffer;)V
    .locals 3
    .param p0, "$this$commonClear"    # Lokio/Buffer;

    const/4 v0, 0x0

    .local v0, "$i$f$commonClear":I
    const-string v1, "$this$commonClear"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    return-void
.end method

.method public static final commonCompleteSegmentByteCount(Lokio/Buffer;)J
    .locals 6
    .param p0, "$this$commonCompleteSegmentByteCount"    # Lokio/Buffer;

    const/4 v0, 0x0

    .local v0, "$i$f$commonCompleteSegmentByteCount":I
    const-string v1, "$this$commonCompleteSegmentByteCount"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 273
    .local v1, "result":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-wide v3

    .line 276
    :cond_0
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 277
    .local v3, "tail":Lokio/Segment;
    iget v4, v3, Lokio/Segment;->limit:I

    const/16 v5, 0x2000

    if-ge v4, v5, :cond_1

    iget-boolean v4, v3, Lokio/Segment;->owner:Z

    if-eqz v4, :cond_1

    .line 278
    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v1, v4

    .line 281
    :cond_1
    return-wide v1
.end method

.method public static final commonCopy(Lokio/Buffer;)Lokio/Buffer;
    .locals 7
    .param p0, "$this$commonCopy"    # Lokio/Buffer;

    const/4 v0, 0x0

    .local v0, "$i$f$commonCopy":I
    const-string v1, "$this$commonCopy"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1426
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 1427
    .local v1, "result":Lokio/Buffer;
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return-object v1

    .line 1429
    :cond_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1430
    .local v2, "head":Lokio/Segment;
    invoke-virtual {v2}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v3

    .line 1432
    .local v3, "headCopy":Lokio/Segment;
    iput-object v3, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1433
    iget-object v4, v1, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v4, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 1434
    iget-object v4, v3, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v4, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 1436
    iget-object v4, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 1437
    .local v4, "s":Lokio/Segment;
    :goto_0
    if-eq v4, v2, :cond_1

    .line 1438
    iget-object v5, v3, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 1439
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 1437
    goto :goto_0

    .line 1442
    :cond_1
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lokio/Buffer;->setSize$okio(J)V

    .line 1443
    return-object v1
.end method

.method public static final commonCopyTo(Lokio/Buffer;Lokio/Buffer;JJ)Lokio/Buffer;
    .locals 13
    .param p0, "$this$commonCopyTo"    # Lokio/Buffer;
    .param p1, "out"    # Lokio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    .local v2, "$i$f$commonCopyTo":I
    const-string v3, "$this$commonCopyTo"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "out"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    move-wide v5, p2

    .line 238
    .local v5, "offset":J
    move-wide/from16 v9, p4

    .line 239
    .local v9, "byteCount":J
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 240
    const-wide/16 v3, 0x0

    cmp-long v7, v9, v3

    if-nez v7, :cond_0

    return-object v0

    .line 242
    :cond_0
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v7

    add-long/2addr v7, v9

    invoke-virtual {p1, v7, v8}, Lokio/Buffer;->setSize$okio(J)V

    .line 245
    iget-object v7, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 246
    .local v7, "s":Lokio/Segment;
    :goto_0
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v8, v7, Lokio/Segment;->limit:I

    iget v11, v7, Lokio/Segment;->pos:I

    sub-int/2addr v8, v11

    int-to-long v11, v8

    cmp-long v8, v5, v11

    if-ltz v8, :cond_1

    .line 247
    iget v8, v7, Lokio/Segment;->limit:I

    iget v11, v7, Lokio/Segment;->pos:I

    sub-int/2addr v8, v11

    int-to-long v11, v8

    sub-long/2addr v5, v11

    .line 248
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    .line 246
    goto :goto_0

    .line 252
    :cond_1
    :goto_1
    cmp-long v8, v9, v3

    if-lez v8, :cond_3

    .line 253
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v8

    .line 254
    .local v8, "copy":Lokio/Segment;
    iget v11, v8, Lokio/Segment;->pos:I

    long-to-int v12, v5

    add-int/2addr v11, v12

    iput v11, v8, Lokio/Segment;->pos:I

    .line 255
    iget v11, v8, Lokio/Segment;->pos:I

    long-to-int v12, v9

    add-int/2addr v11, v12

    iget v12, v8, Lokio/Segment;->limit:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v8, Lokio/Segment;->limit:I

    .line 256
    iget-object v11, v1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v11, :cond_2

    .line 257
    iput-object v8, v8, Lokio/Segment;->prev:Lokio/Segment;

    .line 258
    iget-object v11, v8, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v11, v8, Lokio/Segment;->next:Lokio/Segment;

    .line 259
    iget-object v11, v8, Lokio/Segment;->next:Lokio/Segment;

    iput-object v11, v1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_2

    .line 261
    :cond_2
    iget-object v11, v1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v11, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, v8}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 262
    :goto_2
    nop

    .line 263
    iget v11, v8, Lokio/Segment;->limit:I

    iget v12, v8, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    sub-long/2addr v9, v11

    .line 264
    const-wide/16 v5, 0x0

    .line 265
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    .line 252
    .end local v8    # "copy":Lokio/Segment;
    goto :goto_1

    .line 268
    :cond_3
    return-object v0
.end method

.method public static final commonEquals(Lokio/Buffer;Ljava/lang/Object;)Z
    .locals 21
    .param p0, "$this$commonEquals"    # Lokio/Buffer;
    .param p1, "other"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .local v2, "$i$f$commonEquals":I
    const-string v3, "$this$commonEquals"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1376
    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    return v3

    .line 1377
    :cond_0
    instance-of v4, v1, Lokio/Buffer;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    return v5

    .line 1378
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    move-object v4, v1

    check-cast v4, Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2

    return v5

    .line 1379
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    return v3

    .line 1381
    :cond_3
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1382
    .local v4, "sa":Lokio/Segment;
    move-object v6, v1

    check-cast v6, Lokio/Buffer;

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1383
    .local v6, "sb":Lokio/Segment;
    iget v7, v4, Lokio/Segment;->pos:I

    .line 1384
    .local v7, "posA":I
    iget v10, v6, Lokio/Segment;->pos:I

    .line 1386
    .local v10, "posB":I
    const-wide/16 v11, 0x0

    .line 1387
    .local v11, "pos":J
    const-wide/16 v13, 0x0

    .line 1388
    .local v13, "count":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v15

    cmp-long v15, v11, v15

    if-gez v15, :cond_8

    .line 1389
    iget v15, v4, Lokio/Segment;->limit:I

    sub-int/2addr v15, v7

    iget v8, v6, Lokio/Segment;->limit:I

    sub-int/2addr v8, v10

    invoke-static {v15, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v13, v8

    .line 1391
    const-wide/16 v8, 0x0

    :goto_1
    cmp-long v15, v8, v13

    if-gez v15, :cond_5

    .line 1392
    .local v8, "i":J
    iget-object v15, v4, Lokio/Segment;->data:[B

    add-int/lit8 v17, v7, 0x1

    .end local v7    # "posA":I
    .local v17, "posA":I
    aget-byte v7, v15, v7

    iget-object v15, v6, Lokio/Segment;->data:[B

    add-int/lit8 v18, v10, 0x1

    .end local v10    # "posB":I
    .local v18, "posB":I
    aget-byte v10, v15, v10

    if-eq v7, v10, :cond_4

    return v5

    .line 1391
    :cond_4
    const-wide/16 v19, 0x1

    add-long v19, v8, v19

    move/from16 v7, v17

    move/from16 v10, v18

    move-wide/from16 v8, v19

    .end local v8    # "i":J
    goto :goto_1

    .line 1395
    .end local v17    # "posA":I
    .end local v18    # "posB":I
    .restart local v7    # "posA":I
    .restart local v10    # "posB":I
    :cond_5
    iget v8, v4, Lokio/Segment;->limit:I

    if-ne v7, v8, :cond_6

    .line 1396
    iget-object v8, v4, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v8

    .line 1397
    iget v7, v4, Lokio/Segment;->pos:I

    .line 1400
    :cond_6
    iget v8, v6, Lokio/Segment;->limit:I

    if-ne v10, v8, :cond_7

    .line 1401
    iget-object v8, v6, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v6, v8

    .line 1402
    iget v8, v6, Lokio/Segment;->pos:I

    move v10, v8

    .line 1404
    :cond_7
    add-long/2addr v11, v13

    .line 1388
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 1407
    :cond_8
    return v3
.end method

.method public static final commonGet(Lokio/Buffer;J)B
    .locals 13
    .param p0, "$this$commonGet"    # Lokio/Buffer;
    .param p1, "pos"    # J

    const/4 v0, 0x0

    .local v0, "$i$f$commonGet":I
    const-string v1, "$this$commonGet"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 400
    move-object v1, p0

    .local v1, "$this$seek$iv":Lokio/Buffer;
    const/4 v2, 0x0

    .line 1512
    .local v2, "$i$f$seek":I
    iget-object v3, v1, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v3, :cond_3

    .line 401
    nop

    .line 1514
    .local v3, "s$iv":Lokio/Segment;
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v4

    sub-long/2addr v4, p1

    cmp-long v4, v4, p1

    if-gez v4, :cond_1

    .line 1516
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v4

    .line 1517
    .local v4, "offset$iv":J
    :goto_0
    cmp-long v6, v4, p1

    if-lez v6, :cond_0

    .line 1518
    iget-object v6, v3, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v6

    .line 1519
    iget v6, v3, Lokio/Segment;->limit:I

    iget v7, v3, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 1517
    goto :goto_0

    .line 1521
    :cond_0
    move-object v6, v3

    .local v6, "s":Lokio/Segment;
    move-wide v7, v4

    .local v7, "offset":J
    const/4 v9, 0x0

    .line 401
    .local v9, "$i$a$-seek-BufferKt$commonGet$1":I
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v6, Lokio/Segment;->data:[B

    iget v11, v6, Lokio/Segment;->pos:I

    int-to-long v11, v11

    add-long/2addr v11, p1

    sub-long/2addr v11, v7

    long-to-int v11, v11

    aget-byte v10, v10, v11

    return v10

    .line 1524
    .end local v4    # "offset$iv":J
    .end local v6    # "s":Lokio/Segment;
    .end local v7    # "offset":J
    .end local v9    # "$i$a$-seek-BufferKt$commonGet$1":I
    :cond_1
    const-wide/16 v4, 0x0

    .line 1525
    .restart local v4    # "offset$iv":J
    :goto_1
    nop

    .line 1526
    iget v6, v3, Lokio/Segment;->limit:I

    iget v7, v3, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v6, v4

    .line 1527
    .local v6, "nextOffset$iv":J
    cmp-long v8, v6, p1

    if-lez v8, :cond_2

    .line 1531
    .end local v6    # "nextOffset$iv":J
    move-object v6, v3

    .local v6, "s":Lokio/Segment;
    move-wide v7, v4

    .restart local v7    # "offset":J
    const/4 v9, 0x0

    .line 401
    .restart local v9    # "$i$a$-seek-BufferKt$commonGet$1":I
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v6, Lokio/Segment;->data:[B

    iget v11, v6, Lokio/Segment;->pos:I

    int-to-long v11, v11

    add-long/2addr v11, p1

    sub-long/2addr v11, v7

    long-to-int v11, v11

    aget-byte v10, v10, v11

    return v10

    .line 1528
    .end local v7    # "offset":J
    .end local v9    # "$i$a$-seek-BufferKt$commonGet$1":I
    .local v6, "nextOffset$iv":J
    :cond_2
    iget-object v8, v3, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v8

    .line 1529
    move-wide v4, v6

    .line 1525
    .end local v6    # "nextOffset$iv":J
    goto :goto_1

    .line 1512
    .end local v3    # "s$iv":Lokio/Segment;
    .end local v4    # "offset$iv":J
    :cond_3
    const-wide/16 v3, -0x1

    .local v3, "offset":J
    const/4 v5, 0x0

    check-cast v5, Lokio/Segment;

    .local v5, "s":Lokio/Segment;
    const/4 v6, 0x0

    .line 401
    .local v6, "$i$a$-seek-BufferKt$commonGet$1":I
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v5, Lokio/Segment;->data:[B

    iget v8, v5, Lokio/Segment;->pos:I

    int-to-long v8, v8

    add-long/2addr v8, p1

    sub-long/2addr v8, v3

    long-to-int v8, v8

    aget-byte v7, v7, v8

    return v7
.end method

.method public static final commonHashCode(Lokio/Buffer;)I
    .locals 7
    .param p0, "$this$commonHashCode"    # Lokio/Buffer;

    const/4 v0, 0x0

    .local v0, "$i$f$commonHashCode":I
    const-string v1, "$this$commonHashCode"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1411
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_2

    .line 1412
    .local v1, "s":Lokio/Segment;
    const/4 v2, 0x1

    .line 1413
    .local v2, "result":I
    :cond_0
    nop

    .line 1414
    iget v3, v1, Lokio/Segment;->pos:I

    .line 1415
    .local v3, "pos":I
    iget v4, v1, Lokio/Segment;->limit:I

    .line 1416
    .local v4, "limit":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 1417
    mul-int/lit8 v5, v2, 0x1f

    iget-object v6, v1, Lokio/Segment;->data:[B

    aget-byte v6, v6, v3

    add-int v2, v5, v6

    .line 1418
    add-int/lit8 v3, v3, 0x1

    .line 1416
    goto :goto_0

    .line 1420
    :cond_1
    iget-object v5, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v5

    .line 1421
    iget-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v1, v5, :cond_0

    .line 1422
    .end local v3    # "pos":I
    .end local v4    # "limit":I
    return v2

    .line 1411
    .end local v1    # "s":Lokio/Segment;
    .end local v2    # "result":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static final commonIndexOf(Lokio/Buffer;BJJ)J
    .locals 29
    .param p0, "$this$commonIndexOf"    # Lokio/Buffer;
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .param p4, "toIndex"    # J

    move/from16 v0, p1

    const/4 v1, 0x0

    .local v1, "$i$f$commonIndexOf":I
    const-string v2, "$this$commonIndexOf"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1228
    move-wide/from16 v4, p2

    .line 1229
    .local v4, "fromIndex":J
    move-wide/from16 v6, p4

    .line 1230
    .local v6, "toIndex":J
    const-wide/16 v8, 0x0

    cmp-long v2, v8, v4

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v2, v6, v4

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_10

    .line 1232
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    .line 1233
    :cond_2
    cmp-long v2, v4, v6

    const-wide/16 v8, -0x1

    if-nez v2, :cond_3

    return-wide v8

    .line 1235
    :cond_3
    move-wide v10, v4

    .local v10, "fromIndex$iv":J
    move-object/from16 v2, p0

    .local v2, "$this$seek$iv":Lokio/Buffer;
    const/4 v12, 0x0

    .line 1545
    .local v12, "$i$f$seek":I
    iget-object v13, v2, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v13, :cond_f

    .line 1257
    nop

    .line 1547
    .local v13, "s$iv":Lokio/Segment;
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v14

    sub-long/2addr v14, v10

    cmp-long v14, v14, v10

    if-gez v14, :cond_9

    .line 1549
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v14

    .line 1550
    .local v14, "offset$iv":J
    :goto_2
    cmp-long v16, v14, v10

    if-lez v16, :cond_4

    .line 1551
    iget-object v8, v13, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v8

    .line 1552
    iget v8, v13, Lokio/Segment;->limit:I

    iget v9, v13, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v14, v8

    .line 1550
    const-wide/16 v8, -0x1

    goto :goto_2

    .line 1554
    :cond_4
    move-object v8, v13

    .local v8, "s":Lokio/Segment;
    move-wide/from16 v17, v14

    .local v17, "offset":J
    const/4 v9, 0x0

    .line 1236
    .local v9, "$i$a$-seek-BufferKt$commonIndexOf$2":I
    if-eqz v8, :cond_8

    move-object/from16 v19, v8

    .line 1237
    .local v19, "s":Lokio/Segment;
    move-wide/from16 v20, v17

    move-object/from16 v28, v19

    move/from16 v19, v1

    move-object/from16 v1, v28

    .line 1240
    .local v1, "s":Lokio/Segment;
    .local v19, "$i$f$commonIndexOf":I
    .local v20, "offset":J
    :goto_3
    cmp-long v22, v20, v6

    if-gez v22, :cond_7

    .line 1241
    move-object/from16 v22, v2

    .end local v2    # "$this$seek$iv":Lokio/Buffer;
    .local v22, "$this$seek$iv":Lokio/Buffer;
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1242
    .local v2, "data":[B
    iget v3, v1, Lokio/Segment;->limit:I

    move-object/from16 v23, v8

    move/from16 v24, v9

    .end local v8    # "s":Lokio/Segment;
    .end local v9    # "$i$a$-seek-BufferKt$commonIndexOf$2":I
    .local v23, "s":Lokio/Segment;
    .local v24, "$i$a$-seek-BufferKt$commonIndexOf$2":I
    int-to-long v8, v3

    iget v3, v1, Lokio/Segment;->pos:I

    move/from16 v25, v12

    move-object/from16 v26, v13

    .end local v12    # "$i$f$seek":I
    .end local v13    # "s$iv":Lokio/Segment;
    .local v25, "$i$f$seek":I
    .local v26, "s$iv":Lokio/Segment;
    int-to-long v12, v3

    add-long/2addr v12, v6

    sub-long v12, v12, v20

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v3, v8

    .line 1243
    .local v3, "limit":I
    iget v8, v1, Lokio/Segment;->pos:I

    int-to-long v8, v8

    add-long/2addr v8, v4

    sub-long v8, v8, v20

    long-to-int v8, v8

    .line 1244
    .local v8, "pos":I
    :goto_4
    if-ge v8, v3, :cond_6

    .line 1245
    aget-byte v9, v2, v8

    if-ne v9, v0, :cond_5

    .line 1246
    iget v9, v1, Lokio/Segment;->pos:I

    sub-int v9, v8, v9

    int-to-long v12, v9

    add-long v12, v12, v20

    return-wide v12

    .line 1248
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 1244
    goto :goto_4

    .line 1252
    :cond_6
    iget v9, v1, Lokio/Segment;->limit:I

    iget v12, v1, Lokio/Segment;->pos:I

    sub-int/2addr v9, v12

    int-to-long v12, v9

    add-long v20, v20, v12

    .line 1253
    move-wide/from16 v4, v20

    .line 1254
    iget-object v9, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v9

    .line 1240
    .end local v2    # "data":[B
    .end local v3    # "limit":I
    .end local v8    # "pos":I
    move-object/from16 v3, p0

    move-object/from16 v2, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    move/from16 v12, v25

    move-object/from16 v13, v26

    goto :goto_3

    .line 1257
    .end local v22    # "$this$seek$iv":Lokio/Buffer;
    .end local v23    # "s":Lokio/Segment;
    .end local v24    # "$i$a$-seek-BufferKt$commonIndexOf$2":I
    .end local v25    # "$i$f$seek":I
    .end local v26    # "s$iv":Lokio/Segment;
    .local v2, "$this$seek$iv":Lokio/Buffer;
    .local v8, "s":Lokio/Segment;
    .restart local v9    # "$i$a$-seek-BufferKt$commonIndexOf$2":I
    .restart local v12    # "$i$f$seek":I
    .restart local v13    # "s$iv":Lokio/Segment;
    :cond_7
    move-object/from16 v22, v2

    .end local v2    # "$this$seek$iv":Lokio/Buffer;
    .restart local v22    # "$this$seek$iv":Lokio/Buffer;
    const-wide/16 v2, -0x1

    return-wide v2

    .line 1236
    .end local v19    # "$i$f$commonIndexOf":I
    .end local v20    # "offset":J
    .end local v22    # "$this$seek$iv":Lokio/Buffer;
    .local v1, "$i$f$commonIndexOf":I
    .restart local v2    # "$this$seek$iv":Lokio/Buffer;
    :cond_8
    move-object/from16 v22, v2

    const-wide/16 v2, -0x1

    .end local v2    # "$this$seek$iv":Lokio/Buffer;
    .restart local v22    # "$this$seek$iv":Lokio/Buffer;
    return-wide v2

    .line 1557
    .end local v8    # "s":Lokio/Segment;
    .end local v9    # "$i$a$-seek-BufferKt$commonIndexOf$2":I
    .end local v14    # "offset$iv":J
    .end local v17    # "offset":J
    .end local v22    # "$this$seek$iv":Lokio/Buffer;
    .restart local v2    # "$this$seek$iv":Lokio/Buffer;
    :cond_9
    move/from16 v19, v1

    move-object/from16 v22, v2

    move/from16 v25, v12

    .end local v1    # "$i$f$commonIndexOf":I
    .end local v2    # "$this$seek$iv":Lokio/Buffer;
    .end local v12    # "$i$f$seek":I
    .restart local v19    # "$i$f$commonIndexOf":I
    .restart local v22    # "$this$seek$iv":Lokio/Buffer;
    .restart local v25    # "$i$f$seek":I
    const-wide/16 v1, 0x0

    .line 1558
    .local v1, "offset$iv":J
    :goto_5
    nop

    .line 1559
    iget v3, v13, Lokio/Segment;->limit:I

    iget v8, v13, Lokio/Segment;->pos:I

    sub-int/2addr v3, v8

    int-to-long v8, v3

    add-long/2addr v8, v1

    .line 1560
    .local v8, "nextOffset$iv":J
    cmp-long v3, v8, v10

    if-lez v3, :cond_e

    .line 1564
    .end local v8    # "nextOffset$iv":J
    move-object v3, v13

    .local v3, "s":Lokio/Segment;
    move-wide v8, v1

    .local v8, "offset":J
    const/4 v12, 0x0

    .line 1236
    .local v12, "$i$a$-seek-BufferKt$commonIndexOf$2":I
    if-eqz v3, :cond_d

    move-object v14, v3

    .line 1237
    .local v14, "s":Lokio/Segment;
    move-wide/from16 v17, v8

    .line 1240
    .restart local v17    # "offset":J
    :goto_6
    cmp-long v15, v17, v6

    if-gez v15, :cond_c

    .line 1241
    iget-object v15, v14, Lokio/Segment;->data:[B

    .line 1242
    .local v15, "data":[B
    move-wide/from16 v20, v1

    .end local v1    # "offset$iv":J
    .local v20, "offset$iv":J
    iget v1, v14, Lokio/Segment;->limit:I

    int-to-long v1, v1

    move-object/from16 v23, v3

    .end local v3    # "s":Lokio/Segment;
    .restart local v23    # "s":Lokio/Segment;
    iget v3, v14, Lokio/Segment;->pos:I

    move-wide/from16 v26, v8

    .end local v8    # "offset":J
    .local v26, "offset":J
    int-to-long v8, v3

    add-long/2addr v8, v6

    sub-long v8, v8, v17

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 1243
    .local v1, "limit":I
    iget v2, v14, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, v4

    sub-long v2, v2, v17

    long-to-int v2, v2

    .line 1244
    .local v2, "pos":I
    :goto_7
    if-ge v2, v1, :cond_b

    .line 1245
    aget-byte v3, v15, v2

    if-ne v3, v0, :cond_a

    .line 1246
    iget v3, v14, Lokio/Segment;->pos:I

    sub-int v3, v2, v3

    int-to-long v8, v3

    add-long v8, v8, v17

    return-wide v8

    .line 1248
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 1244
    goto :goto_7

    .line 1252
    :cond_b
    iget v3, v14, Lokio/Segment;->limit:I

    iget v8, v14, Lokio/Segment;->pos:I

    sub-int/2addr v3, v8

    int-to-long v8, v3

    add-long v17, v17, v8

    .line 1253
    move-wide/from16 v4, v17

    .line 1254
    iget-object v3, v14, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v3

    .line 1240
    .end local v1    # "limit":I
    .end local v2    # "pos":I
    .end local v15    # "data":[B
    move-wide/from16 v1, v20

    move-object/from16 v3, v23

    move-wide/from16 v8, v26

    goto :goto_6

    .line 1257
    .end local v20    # "offset$iv":J
    .end local v23    # "s":Lokio/Segment;
    .end local v26    # "offset":J
    .local v1, "offset$iv":J
    .restart local v3    # "s":Lokio/Segment;
    .restart local v8    # "offset":J
    :cond_c
    move-wide/from16 v20, v1

    .end local v1    # "offset$iv":J
    .restart local v20    # "offset$iv":J
    const-wide/16 v1, -0x1

    return-wide v1

    .line 1236
    .end local v14    # "s":Lokio/Segment;
    .end local v17    # "offset":J
    .end local v20    # "offset$iv":J
    .restart local v1    # "offset$iv":J
    :cond_d
    move-wide/from16 v20, v1

    const-wide/16 v1, -0x1

    .end local v1    # "offset$iv":J
    .restart local v20    # "offset$iv":J
    return-wide v1

    .line 1561
    .end local v3    # "s":Lokio/Segment;
    .end local v12    # "$i$a$-seek-BufferKt$commonIndexOf$2":I
    .end local v20    # "offset$iv":J
    .restart local v1    # "offset$iv":J
    .local v8, "nextOffset$iv":J
    :cond_e
    move-wide/from16 v20, v1

    .end local v1    # "offset$iv":J
    .restart local v20    # "offset$iv":J
    iget-object v1, v13, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v1

    .line 1562
    move-wide v1, v8

    .line 1558
    .end local v8    # "nextOffset$iv":J
    .end local v20    # "offset$iv":J
    .restart local v1    # "offset$iv":J
    goto :goto_5

    .line 1545
    .end local v13    # "s$iv":Lokio/Segment;
    .end local v19    # "$i$f$commonIndexOf":I
    .end local v22    # "$this$seek$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    .local v1, "$i$f$commonIndexOf":I
    .local v2, "$this$seek$iv":Lokio/Buffer;
    .local v12, "$i$f$seek":I
    :cond_f
    move/from16 v19, v1

    move/from16 v25, v12

    .end local v1    # "$i$f$commonIndexOf":I
    .end local v12    # "$i$f$seek":I
    .restart local v19    # "$i$f$commonIndexOf":I
    .restart local v25    # "$i$f$seek":I
    const-wide/16 v1, -0x1

    .local v1, "offset":J
    const/4 v3, 0x0

    check-cast v3, Lokio/Segment;

    .restart local v3    # "s":Lokio/Segment;
    const/4 v8, 0x0

    .line 1236
    .local v8, "$i$a$-seek-BufferKt$commonIndexOf$2":I
    const-wide/16 v12, -0x1

    return-wide v12

    .line 1533
    .end local v2    # "$this$seek$iv":Lokio/Buffer;
    .end local v3    # "s":Lokio/Segment;
    .end local v8    # "$i$a$-seek-BufferKt$commonIndexOf$2":I
    .end local v10    # "fromIndex$iv":J
    .end local v19    # "$i$f$commonIndexOf":I
    .end local v25    # "$i$f$seek":I
    .local v1, "$i$f$commonIndexOf":I
    :cond_10
    move/from16 v19, v1

    .end local v1    # "$i$f$commonIndexOf":I
    .restart local v19    # "$i$f$commonIndexOf":I
    const/4 v1, 0x0

    .line 1230
    .local v1, "$i$a$-require-BufferKt$commonIndexOf$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fromIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " toIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-BufferKt$commonIndexOf$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public static final commonIndexOf(Lokio/Buffer;Lokio/ByteString;J)J
    .locals 32
    .param p0, "$this$commonIndexOf"    # Lokio/Buffer;
    .param p1, "bytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J

    const/4 v0, 0x0

    .local v0, "$i$f$commonIndexOf":I
    const-string v1, "$this$commonIndexOf"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bytes"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1262
    move-wide/from16 v4, p2

    .line 1263
    .local v4, "fromIndex":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v1

    const/4 v6, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_0
    if-eqz v1, :cond_10

    .line 1264
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v6

    :goto_1
    if-eqz v1, :cond_f

    .line 1266
    move-wide v8, v4

    .local v8, "fromIndex$iv":J
    move-object/from16 v1, p0

    .local v1, "$this$seek$iv":Lokio/Buffer;
    const/4 v10, 0x0

    .line 1565
    .local v10, "$i$f$seek":I
    iget-object v11, v1, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v11, :cond_e

    .line 1292
    nop

    .line 1567
    .local v11, "s$iv":Lokio/Segment;
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v14

    sub-long/2addr v14, v8

    cmp-long v14, v14, v8

    if-gez v14, :cond_7

    .line 1569
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v17

    .line 1570
    .local v17, "offset$iv":J
    :goto_2
    cmp-long v14, v17, v8

    if-lez v14, :cond_2

    .line 1571
    iget-object v14, v11, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v14

    .line 1572
    iget v14, v11, Lokio/Segment;->limit:I

    iget v12, v11, Lokio/Segment;->pos:I

    sub-int/2addr v14, v12

    int-to-long v12, v14

    sub-long v17, v17, v12

    .line 1570
    goto :goto_2

    .line 1574
    :cond_2
    move-object v12, v11

    .local v12, "s":Lokio/Segment;
    move-wide/from16 v13, v17

    .local v13, "offset":J
    const/16 v19, 0x0

    .line 1267
    .local v19, "$i$a$-seek-BufferKt$commonIndexOf$5":I
    if-eqz v12, :cond_6

    move-object/from16 v20, v12

    .line 1268
    .local v20, "s":Lokio/Segment;
    move-wide/from16 v21, v13

    .line 1272
    .local v21, "offset":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v7

    .line 1273
    .local v7, "targetByteArray":[B
    aget-byte v6, v7, v6

    .line 1274
    .local v6, "b0":B
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v15

    .line 1275
    .local v15, "bytesSize":I
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v25

    move/from16 v16, v0

    move-object/from16 v27, v1

    .end local v0    # "$i$f$commonIndexOf":I
    .end local v1    # "$this$seek$iv":Lokio/Buffer;
    .local v16, "$i$f$commonIndexOf":I
    .local v27, "$this$seek$iv":Lokio/Buffer;
    int-to-long v0, v15

    sub-long v25, v25, v0

    const-wide/16 v0, 0x1

    add-long v25, v25, v0

    move-object/from16 v0, v20

    .line 1276
    .end local v20    # "s":Lokio/Segment;
    .local v0, "s":Lokio/Segment;
    .local v25, "resultLimit":J
    :goto_3
    cmp-long v1, v21, v25

    if-gez v1, :cond_5

    .line 1278
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1279
    .local v1, "data":[B
    iget v2, v0, Lokio/Segment;->limit:I

    .local v2, "a$iv":I
    iget v3, v0, Lokio/Segment;->pos:I

    move/from16 v20, v10

    move-object/from16 v23, v11

    .end local v10    # "$i$f$seek":I
    .end local v11    # "s$iv":Lokio/Segment;
    .local v20, "$i$f$seek":I
    .local v23, "s$iv":Lokio/Segment;
    int-to-long v10, v3

    add-long v10, v10, v25

    sub-long v10, v10, v21

    .local v10, "b$iv":J
    const/4 v3, 0x0

    .line 1566
    .local v3, "$i$f$minOf":I
    move-wide/from16 v28, v13

    move-object v14, v12

    .end local v12    # "s":Lokio/Segment;
    .end local v13    # "offset":J
    .local v14, "s":Lokio/Segment;
    .local v28, "offset":J
    int-to-long v12, v2

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 1279
    .end local v2    # "a$iv":I
    .end local v3    # "$i$f$minOf":I
    .end local v10    # "b$iv":J
    long-to-int v2, v12

    .line 1280
    .local v2, "segmentLimit":I
    iget v3, v0, Lokio/Segment;->pos:I

    int-to-long v10, v3

    add-long/2addr v10, v4

    sub-long v10, v10, v21

    long-to-int v3, v10

    :goto_4
    if-ge v3, v2, :cond_4

    .line 1281
    .local v3, "pos":I
    aget-byte v10, v1, v3

    if-ne v10, v6, :cond_3

    add-int/lit8 v10, v3, 0x1

    const/4 v11, 0x1

    invoke-static {v0, v10, v7, v11, v15}, Lokio/internal/BufferKt;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1282
    iget v10, v0, Lokio/Segment;->pos:I

    sub-int v10, v3, v10

    int-to-long v10, v10

    add-long v10, v10, v21

    return-wide v10

    .line 1280
    :cond_3
    nop

    .end local v3    # "pos":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1287
    :cond_4
    iget v3, v0, Lokio/Segment;->limit:I

    iget v10, v0, Lokio/Segment;->pos:I

    sub-int/2addr v3, v10

    int-to-long v10, v3

    add-long v21, v21, v10

    .line 1288
    move-wide/from16 v4, v21

    .line 1289
    iget-object v3, v0, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v3

    .line 1276
    .end local v1    # "data":[B
    .end local v2    # "segmentLimit":I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v12, v14

    move/from16 v10, v20

    move-object/from16 v11, v23

    move-wide/from16 v13, v28

    goto :goto_3

    .line 1292
    .end local v14    # "s":Lokio/Segment;
    .end local v20    # "$i$f$seek":I
    .end local v23    # "s$iv":Lokio/Segment;
    .end local v28    # "offset":J
    .local v10, "$i$f$seek":I
    .restart local v11    # "s$iv":Lokio/Segment;
    .restart local v12    # "s":Lokio/Segment;
    .restart local v13    # "offset":J
    :cond_5
    const-wide/16 v1, -0x1

    return-wide v1

    .line 1267
    .end local v6    # "b0":B
    .end local v7    # "targetByteArray":[B
    .end local v15    # "bytesSize":I
    .end local v16    # "$i$f$commonIndexOf":I
    .end local v21    # "offset":J
    .end local v25    # "resultLimit":J
    .end local v27    # "$this$seek$iv":Lokio/Buffer;
    .local v0, "$i$f$commonIndexOf":I
    .local v1, "$this$seek$iv":Lokio/Buffer;
    :cond_6
    move-object/from16 v27, v1

    const-wide/16 v1, -0x1

    .end local v1    # "$this$seek$iv":Lokio/Buffer;
    .restart local v27    # "$this$seek$iv":Lokio/Buffer;
    return-wide v1

    .line 1577
    .end local v12    # "s":Lokio/Segment;
    .end local v13    # "offset":J
    .end local v17    # "offset$iv":J
    .end local v19    # "$i$a$-seek-BufferKt$commonIndexOf$5":I
    .end local v27    # "$this$seek$iv":Lokio/Buffer;
    .restart local v1    # "$this$seek$iv":Lokio/Buffer;
    :cond_7
    move/from16 v16, v0

    move-object/from16 v27, v1

    move/from16 v20, v10

    .end local v0    # "$i$f$commonIndexOf":I
    .end local v1    # "$this$seek$iv":Lokio/Buffer;
    .end local v10    # "$i$f$seek":I
    .restart local v16    # "$i$f$commonIndexOf":I
    .restart local v20    # "$i$f$seek":I
    .restart local v27    # "$this$seek$iv":Lokio/Buffer;
    const-wide/16 v0, 0x0

    .line 1578
    .local v0, "offset$iv":J
    :goto_5
    nop

    .line 1579
    iget v2, v11, Lokio/Segment;->limit:I

    iget v3, v11, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 1580
    .local v2, "nextOffset$iv":J
    cmp-long v7, v2, v8

    if-lez v7, :cond_d

    .line 1584
    .end local v2    # "nextOffset$iv":J
    move-object v2, v11

    .local v2, "s":Lokio/Segment;
    move-wide v12, v0

    .local v12, "offset":J
    const/4 v3, 0x0

    .line 1267
    .local v3, "$i$a$-seek-BufferKt$commonIndexOf$5":I
    if-eqz v2, :cond_c

    move-object v7, v2

    .line 1268
    .local v7, "s":Lokio/Segment;
    move-wide v14, v12

    .line 1272
    .local v14, "offset":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v10

    .line 1273
    .local v10, "targetByteArray":[B
    aget-byte v6, v10, v6

    .line 1274
    .restart local v6    # "b0":B
    move-wide/from16 v17, v0

    .end local v0    # "offset$iv":J
    .restart local v17    # "offset$iv":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v0

    .line 1275
    .local v0, "bytesSize":I
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v21

    move-object/from16 v19, v2

    .end local v2    # "s":Lokio/Segment;
    .local v19, "s":Lokio/Segment;
    int-to-long v1, v0

    sub-long v21, v21, v1

    const-wide/16 v23, 0x1

    add-long v21, v21, v23

    .line 1276
    .local v21, "resultLimit":J
    :goto_6
    cmp-long v1, v14, v21

    if-gez v1, :cond_b

    .line 1278
    iget-object v1, v7, Lokio/Segment;->data:[B

    .line 1279
    .local v1, "data":[B
    iget v2, v7, Lokio/Segment;->limit:I

    move/from16 v25, v3

    .end local v3    # "$i$a$-seek-BufferKt$commonIndexOf$5":I
    .local v2, "a$iv":I
    .local v25, "$i$a$-seek-BufferKt$commonIndexOf$5":I
    iget v3, v7, Lokio/Segment;->pos:I

    move-wide/from16 v28, v8

    .end local v8    # "fromIndex$iv":J
    .local v28, "fromIndex$iv":J
    int-to-long v8, v3

    add-long v8, v8, v21

    sub-long/2addr v8, v14

    .local v8, "b$iv":J
    const/4 v3, 0x0

    .line 1566
    .local v3, "$i$f$minOf":I
    move-wide/from16 v30, v12

    .end local v12    # "offset":J
    .local v30, "offset":J
    int-to-long v12, v2

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 1279
    .end local v2    # "a$iv":I
    .end local v3    # "$i$f$minOf":I
    .end local v8    # "b$iv":J
    long-to-int v2, v12

    .line 1280
    .local v2, "segmentLimit":I
    iget v3, v7, Lokio/Segment;->pos:I

    int-to-long v8, v3

    add-long/2addr v8, v4

    sub-long/2addr v8, v14

    long-to-int v3, v8

    :goto_7
    if-ge v3, v2, :cond_a

    .line 1281
    .local v3, "pos":I
    aget-byte v8, v1, v3

    if-ne v8, v6, :cond_8

    add-int/lit8 v8, v3, 0x1

    const/4 v9, 0x1

    invoke-static {v7, v8, v10, v9, v0}, Lokio/internal/BufferKt;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1282
    iget v8, v7, Lokio/Segment;->pos:I

    sub-int v8, v3, v8

    int-to-long v8, v8

    add-long/2addr v8, v14

    return-wide v8

    .line 1281
    :cond_8
    const/4 v9, 0x1

    .line 1280
    :cond_9
    nop

    .end local v3    # "pos":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1287
    :cond_a
    const/4 v9, 0x1

    iget v3, v7, Lokio/Segment;->limit:I

    iget v8, v7, Lokio/Segment;->pos:I

    sub-int/2addr v3, v8

    int-to-long v12, v3

    add-long/2addr v14, v12

    .line 1288
    move-wide v4, v14

    .line 1289
    iget-object v3, v7, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v3

    .line 1276
    .end local v1    # "data":[B
    .end local v2    # "segmentLimit":I
    move/from16 v3, v25

    move-wide/from16 v8, v28

    move-wide/from16 v12, v30

    goto :goto_6

    .line 1292
    .end local v25    # "$i$a$-seek-BufferKt$commonIndexOf$5":I
    .end local v28    # "fromIndex$iv":J
    .end local v30    # "offset":J
    .local v3, "$i$a$-seek-BufferKt$commonIndexOf$5":I
    .local v8, "fromIndex$iv":J
    .restart local v12    # "offset":J
    :cond_b
    const-wide/16 v1, -0x1

    return-wide v1

    .line 1267
    .end local v6    # "b0":B
    .end local v7    # "s":Lokio/Segment;
    .end local v10    # "targetByteArray":[B
    .end local v14    # "offset":J
    .end local v17    # "offset$iv":J
    .end local v19    # "s":Lokio/Segment;
    .end local v21    # "resultLimit":J
    .local v0, "offset$iv":J
    .local v2, "s":Lokio/Segment;
    :cond_c
    const-wide/16 v1, -0x1

    return-wide v1

    .line 1581
    .end local v3    # "$i$a$-seek-BufferKt$commonIndexOf$5":I
    .end local v12    # "offset":J
    .local v2, "nextOffset$iv":J
    :cond_d
    move-wide/from16 v17, v0

    move-wide/from16 v28, v8

    const/4 v9, 0x1

    const-wide/16 v23, 0x1

    .end local v0    # "offset$iv":J
    .end local v8    # "fromIndex$iv":J
    .restart local v17    # "offset$iv":J
    .restart local v28    # "fromIndex$iv":J
    iget-object v0, v11, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v0

    .line 1582
    move-wide v0, v2

    .line 1578
    .end local v2    # "nextOffset$iv":J
    .end local v17    # "offset$iv":J
    .restart local v0    # "offset$iv":J
    move-wide/from16 v8, v28

    goto/16 :goto_5

    .line 1565
    .end local v11    # "s$iv":Lokio/Segment;
    .end local v16    # "$i$f$commonIndexOf":I
    .end local v20    # "$i$f$seek":I
    .end local v27    # "$this$seek$iv":Lokio/Buffer;
    .end local v28    # "fromIndex$iv":J
    .local v0, "$i$f$commonIndexOf":I
    .local v1, "$this$seek$iv":Lokio/Buffer;
    .restart local v8    # "fromIndex$iv":J
    .local v10, "$i$f$seek":I
    :cond_e
    move/from16 v16, v0

    .end local v0    # "$i$f$commonIndexOf":I
    .restart local v16    # "$i$f$commonIndexOf":I
    const-wide/16 v0, -0x1

    .local v0, "offset":J
    const/4 v2, 0x0

    check-cast v2, Lokio/Segment;

    .local v2, "s":Lokio/Segment;
    const/4 v3, 0x0

    .line 1267
    .restart local v3    # "$i$a$-seek-BufferKt$commonIndexOf$5":I
    const-wide/16 v6, -0x1

    return-wide v6

    .line 1533
    .end local v1    # "$this$seek$iv":Lokio/Buffer;
    .end local v2    # "s":Lokio/Segment;
    .end local v3    # "$i$a$-seek-BufferKt$commonIndexOf$5":I
    .end local v8    # "fromIndex$iv":J
    .end local v10    # "$i$f$seek":I
    .end local v16    # "$i$f$commonIndexOf":I
    .local v0, "$i$f$commonIndexOf":I
    :cond_f
    move/from16 v16, v0

    .end local v0    # "$i$f$commonIndexOf":I
    .restart local v16    # "$i$f$commonIndexOf":I
    const/4 v0, 0x0

    .line 1264
    .local v0, "$i$a$-require-BufferKt$commonIndexOf$4":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferKt$commonIndexOf$4":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1533
    .end local v16    # "$i$f$commonIndexOf":I
    .local v0, "$i$f$commonIndexOf":I
    :cond_10
    move/from16 v16, v0

    .end local v0    # "$i$f$commonIndexOf":I
    .restart local v16    # "$i$f$commonIndexOf":I
    const/4 v0, 0x0

    .line 1263
    .local v0, "$i$a$-require-BufferKt$commonIndexOf$3":I
    nop

    .end local v0    # "$i$a$-require-BufferKt$commonIndexOf$3":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final commonIndexOfElement(Lokio/Buffer;Lokio/ByteString;J)J
    .locals 28
    .param p0, "$this$commonIndexOfElement"    # Lokio/Buffer;
    .param p1, "targetBytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .local v1, "$i$f$commonIndexOfElement":I
    const-string v2, "$this$commonIndexOfElement"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "targetBytes"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1297
    move-wide/from16 v4, p2

    .line 1298
    .local v4, "fromIndex":J
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    const/4 v6, 0x0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    if-eqz v2, :cond_19

    .line 1300
    move-wide v8, v4

    .local v8, "fromIndex$iv":J
    move-object/from16 v2, p0

    .local v2, "$this$seek$iv":Lokio/Buffer;
    const/4 v10, 0x0

    .line 1585
    .local v10, "$i$f$seek":I
    iget-object v11, v2, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v11, :cond_18

    .line 1348
    nop

    .line 1350
    nop

    .line 1587
    .local v11, "s$iv":Lokio/Segment;
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v14

    sub-long/2addr v14, v8

    cmp-long v14, v14, v8

    const/4 v15, 0x2

    if-gez v14, :cond_c

    .line 1589
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v16

    .line 1590
    .local v16, "offset$iv":J
    :goto_1
    cmp-long v14, v16, v8

    if-lez v14, :cond_1

    .line 1591
    iget-object v14, v11, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v14

    .line 1592
    iget v14, v11, Lokio/Segment;->limit:I

    iget v12, v11, Lokio/Segment;->pos:I

    sub-int/2addr v14, v12

    int-to-long v12, v14

    sub-long v16, v16, v12

    .line 1590
    goto :goto_1

    .line 1594
    :cond_1
    move-object v12, v11

    .local v12, "s":Lokio/Segment;
    move-wide/from16 v13, v16

    .local v13, "offset":J
    const/16 v18, 0x0

    .line 1301
    .local v18, "$i$a$-seek-BufferKt$commonIndexOfElement$2":I
    if-eqz v12, :cond_b

    move-object/from16 v19, v12

    .line 1302
    .local v19, "s":Lokio/Segment;
    move-wide/from16 v20, v13

    .line 1307
    .local v20, "offset":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v7

    if-ne v7, v15, :cond_6

    .line 1309
    invoke-virtual {v0, v6}, Lokio/ByteString;->getByte(I)B

    move-result v6

    .line 1310
    .local v6, "b0":B
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lokio/ByteString;->getByte(I)B

    move-result v7

    move-object/from16 v15, v19

    .line 1311
    .end local v19    # "s":Lokio/Segment;
    .local v7, "b1":B
    .local v15, "s":Lokio/Segment;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gez v19, :cond_5

    .line 1312
    move/from16 v23, v1

    .end local v1    # "$i$f$commonIndexOfElement":I
    .local v23, "$i$f$commonIndexOfElement":I
    iget-object v1, v15, Lokio/Segment;->data:[B

    .line 1313
    .local v1, "data":[B
    move-object/from16 v24, v2

    .end local v2    # "$this$seek$iv":Lokio/Buffer;
    .local v24, "$this$seek$iv":Lokio/Buffer;
    iget v2, v15, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, v4

    sub-long v2, v2, v20

    long-to-int v2, v2

    .line 1314
    .local v2, "pos":I
    iget v3, v15, Lokio/Segment;->limit:I

    .line 1315
    .local v3, "limit":I
    :goto_3
    if-ge v2, v3, :cond_4

    .line 1316
    move/from16 v19, v3

    .end local v3    # "limit":I
    .local v19, "limit":I
    aget-byte v3, v1, v2

    .line 1317
    .local v3, "b":I
    if-eq v3, v6, :cond_3

    if-ne v3, v7, :cond_2

    goto :goto_4

    .line 1320
    :cond_2
    nop

    .end local v3    # "b":I
    add-int/lit8 v2, v2, 0x1

    .line 1315
    move/from16 v3, v19

    goto :goto_3

    .line 1318
    .restart local v3    # "b":I
    :cond_3
    :goto_4
    move-object/from16 v22, v1

    .end local v1    # "data":[B
    .local v22, "data":[B
    iget v1, v15, Lokio/Segment;->pos:I

    sub-int v1, v2, v1

    move/from16 v25, v2

    .end local v2    # "pos":I
    .local v25, "pos":I
    int-to-long v1, v1

    add-long v1, v1, v20

    return-wide v1

    .line 1324
    .end local v19    # "limit":I
    .end local v22    # "data":[B
    .end local v25    # "pos":I
    .restart local v1    # "data":[B
    .restart local v2    # "pos":I
    .local v3, "limit":I
    :cond_4
    move-object/from16 v22, v1

    move/from16 v25, v2

    move/from16 v19, v3

    .end local v1    # "data":[B
    .end local v2    # "pos":I
    .end local v3    # "limit":I
    .restart local v19    # "limit":I
    .restart local v22    # "data":[B
    .restart local v25    # "pos":I
    iget v1, v15, Lokio/Segment;->limit:I

    iget v2, v15, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long v20, v20, v1

    .line 1325
    move-wide/from16 v4, v20

    .line 1326
    iget-object v1, v15, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v1

    .line 1311
    .end local v19    # "limit":I
    .end local v22    # "data":[B
    .end local v25    # "pos":I
    move-object/from16 v3, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    goto :goto_2

    .end local v23    # "$i$f$commonIndexOfElement":I
    .end local v24    # "$this$seek$iv":Lokio/Buffer;
    .local v1, "$i$f$commonIndexOfElement":I
    .local v2, "$this$seek$iv":Lokio/Buffer;
    :cond_5
    move/from16 v23, v1

    move-object/from16 v24, v2

    .end local v1    # "$i$f$commonIndexOfElement":I
    .end local v2    # "$this$seek$iv":Lokio/Buffer;
    .restart local v23    # "$i$f$commonIndexOfElement":I
    .restart local v24    # "$this$seek$iv":Lokio/Buffer;
    goto :goto_8

    .line 1330
    .end local v6    # "b0":B
    .end local v7    # "b1":B
    .end local v15    # "s":Lokio/Segment;
    .end local v23    # "$i$f$commonIndexOfElement":I
    .end local v24    # "$this$seek$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonIndexOfElement":I
    .restart local v2    # "$this$seek$iv":Lokio/Buffer;
    .local v19, "s":Lokio/Segment;
    :cond_6
    move/from16 v23, v1

    move-object/from16 v24, v2

    .end local v1    # "$i$f$commonIndexOfElement":I
    .end local v2    # "$this$seek$iv":Lokio/Buffer;
    .restart local v23    # "$i$f$commonIndexOfElement":I
    .restart local v24    # "$this$seek$iv":Lokio/Buffer;
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v1

    move-object/from16 v2, v19

    .line 1331
    .end local v19    # "s":Lokio/Segment;
    .local v1, "targetByteArray":[B
    .local v2, "s":Lokio/Segment;
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v25

    cmp-long v3, v20, v25

    if-gez v3, :cond_a

    .line 1332
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1333
    .local v3, "data":[B
    iget v7, v2, Lokio/Segment;->pos:I

    int-to-long v6, v7

    add-long/2addr v6, v4

    sub-long v6, v6, v20

    long-to-int v6, v6

    .line 1334
    .local v6, "pos":I
    iget v7, v2, Lokio/Segment;->limit:I

    .line 1335
    .local v7, "limit":I
    :goto_6
    if-ge v6, v7, :cond_9

    .line 1336
    aget-byte v15, v3, v6

    .line 1337
    .local v15, "b":I
    move-object/from16 v22, v3

    .end local v3    # "data":[B
    .restart local v22    # "data":[B
    array-length v3, v1

    move-wide/from16 v25, v4

    const/4 v4, 0x0

    .end local v4    # "fromIndex":J
    .local v25, "fromIndex":J
    :goto_7
    if-ge v4, v3, :cond_8

    aget-byte v5, v1, v4

    .line 1338
    .local v5, "t":B
    if-ne v15, v5, :cond_7

    iget v3, v2, Lokio/Segment;->pos:I

    sub-int v3, v6, v3

    int-to-long v3, v3

    add-long v3, v3, v20

    return-wide v3

    .line 1337
    :cond_7
    nop

    .end local v5    # "t":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1340
    :cond_8
    nop

    .end local v15    # "b":I
    add-int/lit8 v6, v6, 0x1

    .line 1335
    move-object/from16 v3, v22

    move-wide/from16 v4, v25

    goto :goto_6

    .line 1344
    .end local v22    # "data":[B
    .end local v25    # "fromIndex":J
    .restart local v3    # "data":[B
    .restart local v4    # "fromIndex":J
    :cond_9
    move-object/from16 v22, v3

    move-wide/from16 v25, v4

    .end local v3    # "data":[B
    .end local v4    # "fromIndex":J
    .restart local v22    # "data":[B
    .restart local v25    # "fromIndex":J
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long v20, v20, v3

    .line 1345
    move-wide/from16 v4, v20

    .line 1346
    .end local v25    # "fromIndex":J
    .restart local v4    # "fromIndex":J
    iget-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v3

    .line 1331
    .end local v6    # "pos":I
    .end local v7    # "limit":I
    .end local v22    # "data":[B
    const/4 v6, 0x0

    goto :goto_5

    :cond_a
    move-wide/from16 v25, v4

    .end local v4    # "fromIndex":J
    .restart local v25    # "fromIndex":J
    move-object v15, v2

    .line 1348
    .end local v1    # "targetByteArray":[B
    .end local v2    # "s":Lokio/Segment;
    .end local v25    # "fromIndex":J
    .restart local v4    # "fromIndex":J
    .local v15, "s":Lokio/Segment;
    :goto_8
    nop

    .line 1350
    const-wide/16 v1, -0x1

    return-wide v1

    .line 1301
    .end local v15    # "s":Lokio/Segment;
    .end local v20    # "offset":J
    .end local v23    # "$i$f$commonIndexOfElement":I
    .end local v24    # "$this$seek$iv":Lokio/Buffer;
    .local v1, "$i$f$commonIndexOfElement":I
    .local v2, "$this$seek$iv":Lokio/Buffer;
    :cond_b
    move/from16 v23, v1

    const-wide/16 v1, -0x1

    .end local v1    # "$i$f$commonIndexOfElement":I
    .restart local v23    # "$i$f$commonIndexOfElement":I
    return-wide v1

    .line 1597
    .end local v12    # "s":Lokio/Segment;
    .end local v13    # "offset":J
    .end local v16    # "offset$iv":J
    .end local v18    # "$i$a$-seek-BufferKt$commonIndexOfElement$2":I
    .end local v23    # "$i$f$commonIndexOfElement":I
    .restart local v1    # "$i$f$commonIndexOfElement":I
    :cond_c
    move/from16 v23, v1

    move-object/from16 v24, v2

    .end local v1    # "$i$f$commonIndexOfElement":I
    .end local v2    # "$this$seek$iv":Lokio/Buffer;
    .restart local v23    # "$i$f$commonIndexOfElement":I
    .restart local v24    # "$this$seek$iv":Lokio/Buffer;
    const-wide/16 v1, 0x0

    .line 1598
    .local v1, "offset$iv":J
    :goto_9
    nop

    .line 1599
    iget v3, v11, Lokio/Segment;->limit:I

    iget v6, v11, Lokio/Segment;->pos:I

    sub-int/2addr v3, v6

    int-to-long v6, v3

    add-long/2addr v6, v1

    .line 1600
    .local v6, "nextOffset$iv":J
    cmp-long v3, v6, v8

    if-lez v3, :cond_17

    .line 1604
    .end local v6    # "nextOffset$iv":J
    move-object v3, v11

    .local v3, "s":Lokio/Segment;
    move-wide v6, v1

    .local v6, "offset":J
    const/4 v12, 0x0

    .line 1301
    .local v12, "$i$a$-seek-BufferKt$commonIndexOfElement$2":I
    if-eqz v3, :cond_16

    move-object v13, v3

    .line 1302
    .local v13, "s":Lokio/Segment;
    move-wide/from16 v16, v6

    .line 1307
    .local v16, "offset":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v14

    if-ne v14, v15, :cond_11

    .line 1309
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lokio/ByteString;->getByte(I)B

    move-result v14

    .line 1310
    .local v14, "b0":B
    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Lokio/ByteString;->getByte(I)B

    move-result v15

    .line 1311
    .local v15, "b1":B
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v18

    cmp-long v18, v16, v18

    if-gez v18, :cond_10

    .line 1312
    iget-object v0, v13, Lokio/Segment;->data:[B

    .line 1313
    .local v0, "data":[B
    move-wide/from16 v18, v1

    .end local v1    # "offset$iv":J
    .local v18, "offset$iv":J
    iget v1, v13, Lokio/Segment;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, v4

    sub-long v1, v1, v16

    long-to-int v1, v1

    .line 1314
    .local v1, "pos":I
    iget v2, v13, Lokio/Segment;->limit:I

    .line 1315
    .local v2, "limit":I
    :goto_b
    if-ge v1, v2, :cond_f

    .line 1316
    move/from16 v20, v2

    .end local v2    # "limit":I
    .local v20, "limit":I
    aget-byte v2, v0, v1

    .line 1317
    .local v2, "b":I
    if-eq v2, v14, :cond_e

    if-ne v2, v15, :cond_d

    goto :goto_c

    .line 1320
    :cond_d
    nop

    .end local v2    # "b":I
    add-int/lit8 v1, v1, 0x1

    .line 1315
    move/from16 v2, v20

    goto :goto_b

    .line 1318
    .restart local v2    # "b":I
    :cond_e
    :goto_c
    move-object/from16 v21, v0

    .end local v0    # "data":[B
    .local v21, "data":[B
    iget v0, v13, Lokio/Segment;->pos:I

    sub-int v0, v1, v0

    move/from16 v22, v1

    .end local v1    # "pos":I
    .local v22, "pos":I
    int-to-long v0, v0

    add-long v0, v0, v16

    return-wide v0

    .line 1324
    .end local v20    # "limit":I
    .end local v21    # "data":[B
    .end local v22    # "pos":I
    .restart local v0    # "data":[B
    .restart local v1    # "pos":I
    .local v2, "limit":I
    :cond_f
    move-object/from16 v21, v0

    move/from16 v22, v1

    move/from16 v20, v2

    .end local v0    # "data":[B
    .end local v1    # "pos":I
    .end local v2    # "limit":I
    .restart local v20    # "limit":I
    .restart local v21    # "data":[B
    .restart local v22    # "pos":I
    iget v0, v13, Lokio/Segment;->limit:I

    iget v1, v13, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long v16, v16, v0

    .line 1325
    move-wide/from16 v4, v16

    .line 1326
    iget-object v0, v13, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v0

    .line 1311
    .end local v20    # "limit":I
    .end local v21    # "data":[B
    .end local v22    # "pos":I
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    goto :goto_a

    .end local v18    # "offset$iv":J
    .local v1, "offset$iv":J
    :cond_10
    move-wide/from16 v18, v1

    .end local v1    # "offset$iv":J
    .restart local v18    # "offset$iv":J
    move-object/from16 v22, v3

    goto/16 :goto_10

    .line 1330
    .end local v14    # "b0":B
    .end local v15    # "b1":B
    .end local v18    # "offset$iv":J
    .restart local v1    # "offset$iv":J
    :cond_11
    move-wide/from16 v18, v1

    const/4 v14, 0x0

    .end local v1    # "offset$iv":J
    .restart local v18    # "offset$iv":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v0

    .line 1331
    .local v0, "targetByteArray":[B
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v1, v16, v1

    if-gez v1, :cond_15

    .line 1332
    iget-object v1, v13, Lokio/Segment;->data:[B

    .line 1333
    .local v1, "data":[B
    iget v2, v13, Lokio/Segment;->pos:I

    int-to-long v14, v2

    add-long/2addr v14, v4

    sub-long v14, v14, v16

    long-to-int v2, v14

    .line 1334
    .local v2, "pos":I
    iget v14, v13, Lokio/Segment;->limit:I

    .line 1335
    .local v14, "limit":I
    :goto_e
    if-ge v2, v14, :cond_14

    .line 1336
    aget-byte v15, v1, v2

    .line 1337
    .local v15, "b":I
    move-object/from16 v21, v1

    .end local v1    # "data":[B
    .restart local v21    # "data":[B
    array-length v1, v0

    move-object/from16 v22, v3

    const/4 v3, 0x0

    .end local v3    # "s":Lokio/Segment;
    .local v22, "s":Lokio/Segment;
    :goto_f
    if-ge v3, v1, :cond_13

    move/from16 v25, v1

    aget-byte v1, v0, v3

    .line 1338
    .local v1, "t":B
    if-ne v15, v1, :cond_12

    iget v3, v13, Lokio/Segment;->pos:I

    sub-int v3, v2, v3

    move-object/from16 v26, v0

    move/from16 v27, v1

    .end local v0    # "targetByteArray":[B
    .end local v1    # "t":B
    .local v26, "targetByteArray":[B
    .local v27, "t":B
    int-to-long v0, v3

    add-long v0, v0, v16

    return-wide v0

    .line 1337
    .end local v26    # "targetByteArray":[B
    .end local v27    # "t":B
    .restart local v0    # "targetByteArray":[B
    .restart local v1    # "t":B
    :cond_12
    move-object/from16 v26, v0

    move/from16 v27, v1

    .end local v0    # "targetByteArray":[B
    .end local v1    # "t":B
    .restart local v26    # "targetByteArray":[B
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v25

    goto :goto_f

    .line 1340
    .end local v26    # "targetByteArray":[B
    .restart local v0    # "targetByteArray":[B
    :cond_13
    move-object/from16 v26, v0

    .end local v0    # "targetByteArray":[B
    .end local v15    # "b":I
    .restart local v26    # "targetByteArray":[B
    add-int/lit8 v2, v2, 0x1

    .line 1335
    move-object/from16 v1, v21

    move-object/from16 v3, v22

    goto :goto_e

    .line 1344
    .end local v21    # "data":[B
    .end local v22    # "s":Lokio/Segment;
    .end local v26    # "targetByteArray":[B
    .restart local v0    # "targetByteArray":[B
    .local v1, "data":[B
    .restart local v3    # "s":Lokio/Segment;
    :cond_14
    move-object/from16 v26, v0

    move-object/from16 v21, v1

    move-object/from16 v22, v3

    .end local v0    # "targetByteArray":[B
    .end local v1    # "data":[B
    .end local v3    # "s":Lokio/Segment;
    .restart local v21    # "data":[B
    .restart local v22    # "s":Lokio/Segment;
    .restart local v26    # "targetByteArray":[B
    iget v0, v13, Lokio/Segment;->limit:I

    iget v1, v13, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long v16, v16, v0

    .line 1345
    move-wide/from16 v4, v16

    .line 1346
    iget-object v0, v13, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v0

    .line 1331
    .end local v2    # "pos":I
    .end local v14    # "limit":I
    .end local v21    # "data":[B
    move-object/from16 v0, v26

    const/4 v14, 0x0

    goto :goto_d

    .end local v22    # "s":Lokio/Segment;
    .end local v26    # "targetByteArray":[B
    .restart local v0    # "targetByteArray":[B
    .restart local v3    # "s":Lokio/Segment;
    :cond_15
    move-object/from16 v26, v0

    move-object/from16 v22, v3

    .line 1348
    .end local v0    # "targetByteArray":[B
    .end local v3    # "s":Lokio/Segment;
    .restart local v22    # "s":Lokio/Segment;
    :goto_10
    nop

    .line 1350
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1301
    .end local v13    # "s":Lokio/Segment;
    .end local v16    # "offset":J
    .end local v18    # "offset$iv":J
    .end local v22    # "s":Lokio/Segment;
    .local v1, "offset$iv":J
    .restart local v3    # "s":Lokio/Segment;
    :cond_16
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1601
    .end local v3    # "s":Lokio/Segment;
    .end local v12    # "$i$a$-seek-BufferKt$commonIndexOfElement$2":I
    .local v6, "nextOffset$iv":J
    :cond_17
    move-wide/from16 v18, v1

    const/4 v0, 0x1

    .end local v1    # "offset$iv":J
    .restart local v18    # "offset$iv":J
    iget-object v1, v11, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v1

    .line 1602
    move-wide v1, v6

    .line 1598
    .end local v6    # "nextOffset$iv":J
    .end local v18    # "offset$iv":J
    .restart local v1    # "offset$iv":J
    move-object/from16 v0, p1

    goto/16 :goto_9

    .line 1585
    .end local v11    # "s$iv":Lokio/Segment;
    .end local v23    # "$i$f$commonIndexOfElement":I
    .end local v24    # "$this$seek$iv":Lokio/Buffer;
    .local v1, "$i$f$commonIndexOfElement":I
    .local v2, "$this$seek$iv":Lokio/Buffer;
    :cond_18
    move-object/from16 v24, v2

    .end local v2    # "$this$seek$iv":Lokio/Buffer;
    .restart local v24    # "$this$seek$iv":Lokio/Buffer;
    const-wide/16 v0, -0x1

    .local v0, "offset":J
    const/4 v2, 0x0

    check-cast v2, Lokio/Segment;

    .local v2, "s":Lokio/Segment;
    const/4 v3, 0x0

    .line 1301
    .local v3, "$i$a$-seek-BufferKt$commonIndexOfElement$2":I
    const-wide/16 v6, -0x1

    return-wide v6

    .line 1533
    .end local v0    # "offset":J
    .end local v2    # "s":Lokio/Segment;
    .end local v3    # "$i$a$-seek-BufferKt$commonIndexOfElement$2":I
    .end local v8    # "fromIndex$iv":J
    .end local v10    # "$i$f$seek":I
    .end local v24    # "$this$seek$iv":Lokio/Buffer;
    :cond_19
    move/from16 v23, v1

    .end local v1    # "$i$f$commonIndexOfElement":I
    .restart local v23    # "$i$f$commonIndexOfElement":I
    const/4 v0, 0x0

    .line 1298
    .local v0, "$i$a$-require-BufferKt$commonIndexOfElement$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferKt$commonIndexOfElement$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final commonRangeEquals(Lokio/Buffer;JLokio/ByteString;II)Z
    .locals 7
    .param p0, "$this$commonRangeEquals"    # Lokio/Buffer;
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I

    const/4 v0, 0x0

    .local v0, "$i$f$commonRangeEquals":I
    const-string v1, "$this$commonRangeEquals"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bytes"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1360
    nop

    .line 1361
    nop

    .line 1362
    nop

    .line 1363
    nop

    .line 1364
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    if-ltz p4, :cond_3

    if-ltz p5, :cond_3

    .line 1363
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    sub-long/2addr v3, p1

    int-to-long v5, p5

    cmp-long v1, v3, v5

    if-ltz v1, :cond_3

    .line 1364
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_0

    goto :goto_1

    .line 1367
    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, p5, :cond_2

    .line 1368
    .local v1, "i":I
    int-to-long v3, v1

    add-long/2addr v3, p1

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v3

    add-int v4, p4, v1

    invoke-virtual {p3, v4}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1369
    return v2

    .line 1367
    :cond_1
    nop

    .end local v1    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1372
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 1365
    :cond_3
    :goto_1
    return v2
.end method

.method public static final commonRead(Lokio/Buffer;[B)I
    .locals 3
    .param p0, "$this$commonRead"    # Lokio/Buffer;
    .param p1, "sink"    # [B

    const/4 v0, 0x0

    .local v0, "$i$f$commonRead":I
    const-string v1, "$this$commonRead"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "sink"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2}, Lokio/Buffer;->read([BII)I

    move-result v1

    return v1
.end method

.method public static final commonRead(Lokio/Buffer;[BII)I
    .locals 8
    .param p0, "$this$commonRead"    # Lokio/Buffer;
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const/4 v0, 0x0

    .local v0, "$i$f$commonRead":I
    const-string v1, "$this$commonRead"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "sink"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    array-length v1, p1

    int-to-long v2, v1

    int-to-long v4, p2

    int-to-long v6, p3

    invoke-static/range {v2 .. v7}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 615
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_1

    .line 616
    .local v1, "s":Lokio/Segment;
    iget v2, v1, Lokio/Segment;->limit:I

    iget v3, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 617
    .local v2, "toCopy":I
    iget-object v3, v1, Lokio/Segment;->data:[B

    .line 618
    iget v4, v1, Lokio/Segment;->pos:I

    iget v5, v1, Lokio/Segment;->pos:I

    add-int/2addr v5, v2

    .line 617
    invoke-static {v3, p1, p2, v4, v5}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 621
    iget v3, v1, Lokio/Segment;->pos:I

    add-int/2addr v3, v2

    iput v3, v1, Lokio/Segment;->pos:I

    .line 622
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    int-to-long v5, v2

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .line 624
    iget v3, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    if-ne v3, v4, :cond_0

    .line 625
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 626
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 629
    :cond_0
    return v2

    .line 615
    .end local v1    # "s":Lokio/Segment;
    .end local v2    # "toCopy":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static final commonRead(Lokio/Buffer;Lokio/Buffer;J)J
    .locals 7
    .param p0, "$this$commonRead"    # Lokio/Buffer;
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const/4 v0, 0x0

    .local v0, "$i$f$commonRead":I
    const-string v1, "$this$commonRead"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "sink"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1219
    move-wide v1, p2

    .line 1220
    .local v1, "byteCount":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    .line 1221
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_1

    const-wide/16 v3, -0x1

    return-wide v3

    .line 1222
    :cond_1
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 1223
    :cond_2
    invoke-virtual {p1, p0, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 1224
    return-wide v1

    .line 1533
    :cond_3
    const/4 v3, 0x0

    .line 1220
    .local v3, "$i$a$-require-BufferKt$commonRead$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteCount < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require-BufferKt$commonRead$1":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4
.end method

.method public static final commonReadAll(Lokio/Buffer;Lokio/Sink;)J
    .locals 5
    .param p0, "$this$commonReadAll"    # Lokio/Buffer;
    .param p1, "sink"    # Lokio/Sink;

    const/4 v0, 0x0

    .local v0, "$i$f$commonReadAll":I
    const-string v1, "$this$commonReadAll"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "sink"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 785
    .local v1, "byteCount":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 786
    invoke-interface {p1, p0, v1, v2}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 788
    :cond_0
    return-wide v1
.end method

.method public static final commonReadByte(Lokio/Buffer;)B
    .locals 10
    .param p0, "$this$commonReadByte"    # Lokio/Buffer;

    const/4 v0, 0x0

    .local v0, "$i$f$commonReadByte":I
    const-string v1, "$this$commonReadByte"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 288
    .local v1, "segment":Lokio/Segment;
    iget v2, v1, Lokio/Segment;->pos:I

    .line 289
    .local v2, "pos":I
    iget v3, v1, Lokio/Segment;->limit:I

    .line 291
    .local v3, "limit":I
    iget-object v4, v1, Lokio/Segment;->data:[B

    .line 292
    .local v4, "data":[B
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "pos":I
    .local v5, "pos":I
    aget-byte v2, v4, v2

    .line 293
    .local v2, "b":B
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->setSize$okio(J)V

    .line 295
    if-ne v5, v3, :cond_0

    .line 296
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 297
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 299
    :cond_0
    iput v5, v1, Lokio/Segment;->pos:I

    .line 300
    :goto_0
    nop

    .line 302
    return v2

    .line 285
    .end local v1    # "segment":Lokio/Segment;
    .end local v2    # "b":B
    .end local v3    # "limit":I
    .end local v4    # "data":[B
    .end local v5    # "pos":I
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final commonReadByteArray(Lokio/Buffer;)[B
    .locals 3
    .param p0, "$this$commonReadByteArray"    # Lokio/Buffer;

    const/4 v0, 0x0

    .local v0, "$i$f$commonReadByteArray":I
    const-string v1, "$this$commonReadByteArray"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    return-object v1
.end method

.method public static final commonReadByteArray(Lokio/Buffer;J)[B
    .locals 4
    .param p0, "$this$commonReadByteArray"    # Lokio/Buffer;
    .param p1, "byteCount"    # J

    const/4 v0, 0x0

    .local v0, "$i$f$commonReadByteArray":I
    const-string v1, "$this$commonReadByteArray"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    const v1, 0x7fffffff

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 594
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-ltz v1, :cond_1

    .line 596
    long-to-int v1, p1

    new-array v1, v1, [B

    .line 597
    .local v1, "result":[B
    invoke-virtual {p0, v1}, Lokio/Buffer;->readFully([B)V

    .line 598
    return-object v1

    .line 594
    .end local v1    # "result":[B
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1533
    :cond_2
    const/4 v1, 0x0

    .line 593
    .local v1, "$i$a$-require-BufferKt$commonReadByteArray$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-BufferKt$commonReadByteArray$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public static final commonReadByteString(Lokio/Buffer;)Lokio/ByteString;
    .locals 3
    .param p0, "$this$commonReadByteString"    # Lokio/Buffer;

    const/4 v0, 0x0

    .local v0, "$i$f$commonReadByteString":I
    const-string v1, "$this$commonReadByteString"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public static final commonReadByteString(Lokio/Buffer;J)Lokio/ByteString;
    .locals 4
    .param p0, "$this$commonReadByteString"    # Lokio/Buffer;
    .param p1, "byteCount"    # J

    const/4 v0, 0x0

    .local v0, "$i$f$commonReadByteString":I
    const-string v1, "$this$commonReadByteString"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 755
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    const v1, 0x7fffffff

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 756
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-ltz v1, :cond_2

    .line 758
    const/16 v1, 0x1000

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 759
    long-to-int v1, p1

    invoke-virtual {p0, v1}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v1

    move-object v2, v1

    .line 1533
    .local v2, "it":Lokio/ByteString;
    const/4 v3, 0x0

    .line 759
    .local v3, "$i$a$-also-BufferKt$commonReadByteString$2":I
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->skip(J)V

    .end local v2    # "it":Lokio/ByteString;
    .end local v3    # "$i$a$-also-BufferKt$commonReadByteString$2":I
    return-object v1

    .line 761
    :cond_1
    new-instance v1, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V

    return-object v1

    .line 756
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1533
    :cond_3
    const/4 v1, 0x0

    .line 755
    .local v1, "$i$a$-require-BufferKt$commonReadByteString$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-BufferKt$commonReadByteString$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public static final commonReadDecimalLong(Lokio/Buffer;)J
    .locals 18
    .param p0, "$this$commonReadDecimalLong"    # Lokio/Buffer;

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "$i$f$commonReadDecimalLong":I
    const-string v2, "$this$commonReadDecimalLong"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 639
    const-wide/16 v2, 0x0

    .line 640
    .local v2, "value":J
    const/4 v4, 0x0

    .line 641
    .local v4, "seen":I
    const/4 v5, 0x0

    .line 642
    .local v5, "negative":Z
    const/4 v6, 0x0

    .line 644
    .local v6, "done":Z
    const-wide/16 v7, -0x7

    .line 646
    .local v7, "overflowDigit":J
    :goto_0
    nop

    .line 647
    iget-object v9, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 649
    .local v9, "segment":Lokio/Segment;
    iget-object v10, v9, Lokio/Segment;->data:[B

    .line 650
    .local v10, "data":[B
    iget v11, v9, Lokio/Segment;->pos:I

    .line 651
    .local v11, "pos":I
    iget v12, v9, Lokio/Segment;->limit:I

    .line 653
    .local v12, "limit":I
    :goto_1
    if-ge v11, v12, :cond_7

    .line 654
    aget-byte v13, v10, v11

    .line 655
    .local v13, "b":B
    const/16 v14, 0x30

    int-to-byte v14, v14

    if-lt v13, v14, :cond_4

    const/16 v15, 0x39

    int-to-byte v15, v15

    if-gt v13, v15, :cond_4

    .line 656
    sub-int/2addr v14, v13

    .line 659
    .local v14, "digit":I
    const-wide v15, -0xcccccccccccccccL

    cmp-long v17, v2, v15

    if-ltz v17, :cond_2

    cmp-long v15, v2, v15

    if-nez v15, :cond_0

    move v15, v1

    .end local v1    # "$i$f$commonReadDecimalLong":I
    .local v15, "$i$f$commonReadDecimalLong":I
    int-to-long v0, v14

    cmp-long v0, v0, v7

    if-gez v0, :cond_1

    goto :goto_2

    .end local v15    # "$i$f$commonReadDecimalLong":I
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    :cond_0
    move v15, v1

    .line 664
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v15    # "$i$f$commonReadDecimalLong":I
    :cond_1
    const-wide/16 v0, 0xa

    mul-long/2addr v2, v0

    .line 665
    int-to-long v0, v14

    add-long/2addr v2, v0

    move/from16 v16, v6

    move-object/from16 v17, v10

    .end local v14    # "digit":I
    goto :goto_3

    .line 659
    .end local v15    # "$i$f$commonReadDecimalLong":I
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v14    # "digit":I
    :cond_2
    move v15, v1

    .line 660
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v15    # "$i$f$commonReadDecimalLong":I
    :goto_2
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v13}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    .line 661
    .local v0, "buffer":Lokio/Buffer;
    if-nez v5, :cond_3

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    .line 662
    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    move/from16 v16, v6

    .end local v6    # "done":Z
    .local v16, "done":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v10

    .end local v10    # "data":[B
    .local v17, "data":[B
    const-string v10, "Number too large: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 655
    .end local v0    # "buffer":Lokio/Buffer;
    .end local v14    # "digit":I
    .end local v15    # "$i$f$commonReadDecimalLong":I
    .end local v16    # "done":Z
    .end local v17    # "data":[B
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v6    # "done":Z
    .restart local v10    # "data":[B
    :cond_4
    move v15, v1

    move/from16 v16, v6

    move-object/from16 v17, v10

    .line 666
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .end local v6    # "done":Z
    .end local v10    # "data":[B
    .restart local v15    # "$i$f$commonReadDecimalLong":I
    .restart local v16    # "done":Z
    .restart local v17    # "data":[B
    const/16 v0, 0x2d

    int-to-byte v0, v0

    if-ne v13, v0, :cond_5

    if-nez v4, :cond_5

    .line 667
    const/4 v5, 0x1

    .line 668
    const-wide/16 v0, 0x1

    sub-long/2addr v7, v0

    .line 677
    :goto_3
    nop

    .line 678
    add-int/lit8 v11, v11, 0x1

    .line 679
    nop

    .end local v13    # "b":B
    add-int/lit8 v4, v4, 0x1

    .line 653
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v6, v16

    move-object/from16 v10, v17

    goto/16 :goto_1

    .line 670
    .restart local v13    # "b":B
    :cond_5
    if-eqz v4, :cond_6

    .line 675
    const/4 v0, 0x1

    .line 676
    .end local v16    # "done":Z
    .local v0, "done":Z
    move v6, v0

    goto :goto_4

    .line 671
    .end local v0    # "done":Z
    .restart local v16    # "done":Z
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v13}, Lokio/-Util;->toHexString(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 653
    .end local v13    # "b":B
    .end local v15    # "$i$f$commonReadDecimalLong":I
    .end local v16    # "done":Z
    .end local v17    # "data":[B
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v6    # "done":Z
    .restart local v10    # "data":[B
    :cond_7
    move v15, v1

    move/from16 v16, v6

    move-object/from16 v17, v10

    .line 682
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .end local v10    # "data":[B
    .restart local v15    # "$i$f$commonReadDecimalLong":I
    .restart local v17    # "data":[B
    :goto_4
    if-ne v11, v12, :cond_8

    .line 683
    invoke-virtual {v9}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 684
    invoke-static {v9}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_5

    .line 686
    :cond_8
    move-object/from16 v1, p0

    iput v11, v9, Lokio/Segment;->pos:I

    .line 687
    :goto_5
    nop

    .line 688
    if-nez v6, :cond_a

    iget-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    move-object v0, v1

    move v1, v15

    goto/16 :goto_0

    .line 690
    .end local v9    # "segment":Lokio/Segment;
    .end local v11    # "pos":I
    .end local v12    # "limit":I
    .end local v17    # "data":[B
    :cond_a
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v9

    int-to-long v11, v4

    sub-long/2addr v9, v11

    invoke-virtual {v1, v9, v10}, Lokio/Buffer;->setSize$okio(J)V

    .line 691
    if-eqz v5, :cond_b

    move-wide v9, v2

    goto :goto_7

    :cond_b
    neg-long v9, v2

    :goto_7
    return-wide v9

    .line 636
    .end local v2    # "value":J
    .end local v4    # "seen":I
    .end local v5    # "negative":Z
    .end local v6    # "done":Z
    .end local v7    # "overflowDigit":J
    .end local v15    # "$i$f$commonReadDecimalLong":I
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    :cond_c
    move v15, v1

    move-object v1, v0

    .end local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v15    # "$i$f$commonReadDecimalLong":I
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final commonReadFully(Lokio/Buffer;Lokio/Buffer;J)V
    .locals 3
    .param p0, "$this$commonReadFully"    # Lokio/Buffer;
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const/4 v0, 0x0

    .local v0, "$i$f$commonReadFully":I
    const-string v1, "$this$commonReadFully"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "sink"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-ltz v1, :cond_0

    .line 780
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 781
    return-void

    .line 777
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {p1, p0, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 778
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final commonReadFully(Lokio/Buffer;[B)V
    .locals 4
    .param p0, "$this$commonReadFully"    # Lokio/Buffer;
    .param p1, "sink"    # [B

    const/4 v0, 0x0

    .local v0, "$i$f$commonReadFully":I
    const-string v1, "$this$commonReadFully"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "sink"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    const/4 v1, 0x0

    .line 605
    .local v1, "offset":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 606
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v1, v2}, Lokio/Buffer;->read([BII)I

    move-result v2

    .line 607
    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 608
    add-int/2addr v1, v2

    .line 605
    .end local v2    # "read":I
    goto :goto_0

    .line 607
    .restart local v2    # "read":I
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 610
    .end local v2    # "read":I
    :cond_1
    return-void
.end method

.method public static final commonReadHexadecimalUnsignedLong(Lokio/Buffer;)J
    .locals 15
    .param p0, "$this$commonReadHexadecimalUnsignedLong"    # Lokio/Buffer;

    const/4 v0, 0x0

    .local v0, "$i$f$commonReadHexadecimalUnsignedLong":I
    const-string v1, "$this$commonReadHexadecimalUnsignedLong"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    .line 697
    const-wide/16 v1, 0x0

    .line 698
    .local v1, "value":J
    const/4 v5, 0x0

    .line 699
    .local v5, "seen":I
    const/4 v6, 0x0

    .line 701
    .local v6, "done":Z
    :cond_0
    nop

    .line 702
    iget-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 704
    .local v7, "segment":Lokio/Segment;
    iget-object v8, v7, Lokio/Segment;->data:[B

    .line 705
    .local v8, "data":[B
    iget v9, v7, Lokio/Segment;->pos:I

    .line 706
    .local v9, "pos":I
    iget v10, v7, Lokio/Segment;->limit:I

    .line 708
    .local v10, "limit":I
    :goto_0
    if-ge v9, v10, :cond_6

    .line 709
    const/4 v11, 0x0

    .line 711
    .local v11, "digit":I
    aget-byte v12, v8, v9

    .line 712
    .local v12, "b":B
    const/16 v13, 0x30

    int-to-byte v13, v13

    if-lt v12, v13, :cond_1

    const/16 v14, 0x39

    int-to-byte v14, v14

    if-gt v12, v14, :cond_1

    .line 713
    sub-int v11, v12, v13

    goto :goto_1

    .line 714
    :cond_1
    const/16 v13, 0x61

    int-to-byte v13, v13

    if-lt v12, v13, :cond_2

    const/16 v14, 0x66

    int-to-byte v14, v14

    if-gt v12, v14, :cond_2

    .line 715
    sub-int v13, v12, v13

    add-int/lit8 v11, v13, 0xa

    goto :goto_1

    .line 716
    :cond_2
    const/16 v13, 0x41

    int-to-byte v13, v13

    if-lt v12, v13, :cond_4

    const/16 v14, 0x46

    int-to-byte v14, v14

    if-gt v12, v14, :cond_4

    .line 717
    sub-int v13, v12, v13

    add-int/lit8 v11, v13, 0xa

    .line 726
    :goto_1
    nop

    .line 729
    const-wide/high16 v13, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v13, v1

    cmp-long v13, v13, v3

    if-nez v13, :cond_3

    .line 734
    const/4 v13, 0x4

    shl-long/2addr v1, v13

    .line 735
    int-to-long v13, v11

    or-long/2addr v1, v13

    .line 736
    add-int/lit8 v9, v9, 0x1

    .line 737
    nop

    .end local v11    # "digit":I
    .end local v12    # "b":B
    add-int/lit8 v5, v5, 0x1

    .line 708
    goto :goto_0

    .line 730
    .restart local v11    # "digit":I
    .restart local v12    # "b":B
    :cond_3
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v3

    .line 731
    .local v3, "buffer":Lokio/Buffer;
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Number too large: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 719
    .end local v3    # "buffer":Lokio/Buffer;
    :cond_4
    if-eqz v5, :cond_5

    .line 724
    const/4 v6, 0x1

    .line 725
    goto :goto_2

    .line 720
    :cond_5
    new-instance v3, Ljava/lang/NumberFormatException;

    .line 721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lokio/-Util;->toHexString(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 720
    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 740
    .end local v11    # "digit":I
    .end local v12    # "b":B
    :cond_6
    :goto_2
    if-ne v9, v10, :cond_7

    .line 741
    invoke-virtual {v7}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v11

    iput-object v11, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 742
    invoke-static {v7}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_3

    .line 744
    :cond_7
    iput v9, v7, Lokio/Segment;->pos:I

    .line 745
    :goto_3
    nop

    .line 746
    if-nez v6, :cond_8

    iget-object v11, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v11, :cond_0

    .line 748
    .end local v7    # "segment":Lokio/Segment;
    .end local v8    # "data":[B
    .end local v9    # "pos":I
    .end local v10    # "limit":I
    :cond_8
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    int-to-long v7, v5

    sub-long/2addr v3, v7

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .line 749
    return-wide v1

    .line 695
    .end local v1    # "value":J
    .end local v5    # "seen":I
    .end local v6    # "done":Z
    :cond_9
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final commonReadInt(Lokio/Buffer;)I
    .locals 11
    .param p0, "$this$commonReadInt"    # Lokio/Buffer;

    const/4 v0, 0x0

    .local v0, "$i$f$commonReadInt":I
    const-string v1, "$this$commonReadInt"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 335
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 336
    .local v1, "segment":Lokio/Segment;
    iget v2, v1, Lokio/Segment;->pos:I

    .line 337
    .local v2, "pos":I
    iget v5, v1, Lokio/Segment;->limit:I

    .line 340
    .local v5, "limit":I
    sub-int v6, v5, v2

    int-to-long v6, v6

    cmp-long v6, v6, v3

    if-gez v6, :cond_0

    .line 341
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v3

    .local v3, "$this$and$iv":B
    const/16 v4, 0xff

    .local v4, "other$iv":I
    const/4 v6, 0x0

    .line 1494
    .local v6, "$i$f$and":I
    and-int/2addr v3, v4

    .line 341
    .end local v3    # "$this$and$iv":B
    .end local v4    # "other$iv":I
    .end local v6    # "$i$f$and":I
    shl-int/lit8 v3, v3, 0x18

    .line 342
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v4

    .local v4, "$this$and$iv":B
    const/16 v6, 0xff

    .local v6, "other$iv":I
    const/4 v7, 0x0

    .line 1495
    .local v7, "$i$f$and":I
    and-int/2addr v4, v6

    .line 342
    .end local v4    # "$this$and$iv":B
    .end local v6    # "other$iv":I
    .end local v7    # "$i$f$and":I
    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    .line 343
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v4

    .restart local v4    # "$this$and$iv":B
    const/16 v6, 0xff

    .restart local v6    # "other$iv":I
    const/4 v7, 0x0

    .line 1496
    .restart local v7    # "$i$f$and":I
    and-int/2addr v4, v6

    .line 343
    .end local v4    # "$this$and$iv":B
    .end local v6    # "other$iv":I
    .end local v7    # "$i$f$and":I
    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    .line 344
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v4

    .restart local v4    # "$this$and$iv":B
    const/16 v6, 0xff

    .restart local v6    # "other$iv":I
    const/4 v7, 0x0

    .line 1497
    .restart local v7    # "$i$f$and":I
    and-int/2addr v4, v6

    .line 344
    .end local v4    # "$this$and$iv":B
    .end local v6    # "other$iv":I
    .end local v7    # "$i$f$and":I
    or-int/2addr v3, v4

    .line 341
    return v3

    .line 347
    :cond_0
    iget-object v6, v1, Lokio/Segment;->data:[B

    .line 348
    .local v6, "data":[B
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "pos":I
    .local v7, "pos":I
    aget-byte v2, v6, v2

    .local v2, "$this$and$iv":B
    const/16 v8, 0xff

    .local v8, "other$iv":I
    const/4 v9, 0x0

    .line 1498
    .local v9, "$i$f$and":I
    and-int/2addr v2, v8

    .line 348
    .end local v2    # "$this$and$iv":B
    .end local v8    # "other$iv":I
    .end local v9    # "$i$f$and":I
    shl-int/lit8 v2, v2, 0x18

    .line 349
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    aget-byte v7, v6, v7

    .local v7, "$this$and$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv":I
    const/4 v10, 0x0

    .line 1499
    .local v10, "$i$f$and":I
    and-int/2addr v7, v9

    .line 349
    .end local v7    # "$this$and$iv":B
    .end local v9    # "other$iv":I
    .end local v10    # "$i$f$and":I
    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v2, v7

    .line 350
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .local v7, "pos":I
    aget-byte v8, v6, v8

    .local v8, "$this$and$iv":B
    const/16 v9, 0xff

    .restart local v9    # "other$iv":I
    const/4 v10, 0x0

    .line 1500
    .restart local v10    # "$i$f$and":I
    and-int/2addr v8, v9

    .line 350
    .end local v8    # "$this$and$iv":B
    .end local v9    # "other$iv":I
    .end local v10    # "$i$f$and":I
    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v2, v8

    .line 351
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    aget-byte v7, v6, v7

    .local v7, "$this$and$iv":B
    const/16 v9, 0xff

    .restart local v9    # "other$iv":I
    const/4 v10, 0x0

    .line 1501
    .restart local v10    # "$i$f$and":I
    and-int/2addr v7, v9

    .line 351
    .end local v7    # "$this$and$iv":B
    .end local v9    # "other$iv":I
    .end local v10    # "$i$f$and":I
    or-int/2addr v2, v7

    .line 348
    nop

    .line 352
    .local v2, "i":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v9

    sub-long/2addr v9, v3

    invoke-virtual {p0, v9, v10}, Lokio/Buffer;->setSize$okio(J)V

    .line 354
    if-ne v8, v5, :cond_1

    .line 355
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 356
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 358
    :cond_1
    iput v8, v1, Lokio/Segment;->pos:I

    .line 359
    :goto_0
    nop

    .line 361
    return v2

    .line 333
    .end local v1    # "segment":Lokio/Segment;
    .end local v2    # "i":I
    .end local v5    # "limit":I
    .end local v6    # "data":[B
    .end local v8    # "pos":I
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final commonReadLong(Lokio/Buffer;)J
    .locals 15
    .param p0, "$this$commonReadLong"    # Lokio/Buffer;

    move-object v0, p0

    const/4 v1, 0x0

    .local v1, "$i$f$commonReadLong":I
    const-string v2, "$this$commonReadLong"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 367
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 368
    .local v2, "segment":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->pos:I

    .line 369
    .local v3, "pos":I
    iget v6, v2, Lokio/Segment;->limit:I

    .line 372
    .local v6, "limit":I
    sub-int v7, v6, v3

    int-to-long v7, v7

    cmp-long v7, v7, v4

    const/16 v8, 0x20

    if-gez v7, :cond_0

    .line 373
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v4

    .local v4, "$this$and$iv":I
    const-wide v9, 0xffffffffL

    .local v9, "other$iv":J
    const/4 v5, 0x0

    .line 1502
    .local v5, "$i$f$and":I
    int-to-long v11, v4

    and-long v4, v11, v9

    .line 373
    .end local v4    # "$this$and$iv":I
    .end local v5    # "$i$f$and":I
    .end local v9    # "other$iv":J
    shl-long/2addr v4, v8

    .line 374
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v7

    .local v7, "$this$and$iv":I
    const-wide v8, 0xffffffffL

    .local v8, "other$iv":J
    const/4 v10, 0x0

    .line 1503
    .local v10, "$i$f$and":I
    int-to-long v11, v7

    and-long v7, v11, v8

    .line 374
    .end local v7    # "$this$and$iv":I
    .end local v8    # "other$iv":J
    .end local v10    # "$i$f$and":I
    or-long/2addr v4, v7

    .line 373
    return-wide v4

    .line 377
    :cond_0
    iget-object v7, v2, Lokio/Segment;->data:[B

    .line 378
    .local v7, "data":[B
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "pos":I
    .local v9, "pos":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv":B
    const-wide/16 v10, 0xff

    .local v10, "other$iv":J
    const/4 v12, 0x0

    .line 1504
    .local v12, "$i$f$and":I
    int-to-long v13, v3

    and-long/2addr v10, v13

    .line 378
    .end local v3    # "$this$and$iv":B
    .end local v10    # "other$iv":J
    .end local v12    # "$i$f$and":I
    const/16 v3, 0x38

    shl-long/2addr v10, v3

    .line 379
    add-int/lit8 v3, v9, 0x1

    .end local v9    # "pos":I
    .local v3, "pos":I
    aget-byte v9, v7, v9

    .local v9, "$this$and$iv":B
    const-wide/16 v12, 0xff

    .local v12, "other$iv":J
    const/4 v14, 0x0

    .line 1505
    .local v14, "$i$f$and":I
    int-to-long v4, v9

    and-long/2addr v4, v12

    .line 379
    .end local v9    # "$this$and$iv":B
    .end local v12    # "other$iv":J
    .end local v14    # "$i$f$and":I
    const/16 v9, 0x30

    shl-long/2addr v4, v9

    or-long/2addr v4, v10

    .line 380
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "pos":I
    .local v9, "pos":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv":B
    const-wide/16 v10, 0xff

    .restart local v10    # "other$iv":J
    const/4 v12, 0x0

    .line 1506
    .local v12, "$i$f$and":I
    int-to-long v13, v3

    and-long/2addr v10, v13

    .line 380
    .end local v3    # "$this$and$iv":B
    .end local v10    # "other$iv":J
    .end local v12    # "$i$f$and":I
    const/16 v3, 0x28

    shl-long/2addr v10, v3

    or-long v3, v4, v10

    .line 381
    add-int/lit8 v5, v9, 0x1

    .end local v9    # "pos":I
    .local v5, "pos":I
    aget-byte v9, v7, v9

    .local v9, "$this$and$iv":B
    const-wide/16 v10, 0xff

    .restart local v10    # "other$iv":J
    const/4 v12, 0x0

    .line 1507
    .restart local v12    # "$i$f$and":I
    int-to-long v13, v9

    and-long v9, v13, v10

    .line 381
    .end local v9    # "$this$and$iv":B
    .end local v10    # "other$iv":J
    .end local v12    # "$i$f$and":I
    shl-long v8, v9, v8

    or-long/2addr v3, v8

    .line 382
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pos":I
    .local v8, "pos":I
    aget-byte v5, v7, v5

    .local v5, "$this$and$iv":B
    const-wide/16 v9, 0xff

    .local v9, "other$iv":J
    const/4 v11, 0x0

    .line 1508
    .local v11, "$i$f$and":I
    int-to-long v12, v5

    and-long/2addr v9, v12

    .line 382
    .end local v5    # "$this$and$iv":B
    .end local v9    # "other$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v5, 0x18

    shl-long/2addr v9, v5

    or-long/2addr v3, v9

    .line 383
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "pos":I
    .local v5, "pos":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv":J
    const/4 v11, 0x0

    .line 1509
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v8

    and-long v8, v12, v9

    .line 383
    .end local v8    # "$this$and$iv":B
    .end local v9    # "other$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v10, 0x10

    shl-long/2addr v8, v10

    or-long/2addr v3, v8

    .line 384
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pos":I
    .local v8, "pos":I
    aget-byte v5, v7, v5

    .local v5, "$this$and$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv":J
    const/4 v11, 0x0

    .line 1510
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v5

    and-long/2addr v9, v12

    .line 384
    .end local v5    # "$this$and$iv":B
    .end local v9    # "other$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v5, 0x8

    shl-long/2addr v9, v5

    or-long/2addr v3, v9

    .line 385
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "pos":I
    .local v5, "pos":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv":J
    const/4 v11, 0x0

    .line 1511
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v8

    and-long v8, v12, v9

    .line 385
    .end local v8    # "$this$and$iv":B
    .end local v9    # "other$iv":J
    .end local v11    # "$i$f$and":I
    or-long/2addr v3, v8

    .line 378
    nop

    .line 386
    .local v3, "v":J
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x8

    sub-long/2addr v8, v10

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->setSize$okio(J)V

    .line 388
    if-ne v5, v6, :cond_1

    .line 389
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v8

    iput-object v8, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 390
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 392
    :cond_1
    iput v5, v2, Lokio/Segment;->pos:I

    .line 393
    :goto_0
    nop

    .line 395
    return-wide v3

    .line 365
    .end local v2    # "segment":Lokio/Segment;
    .end local v3    # "v":J
    .end local v5    # "pos":I
    .end local v6    # "limit":I
    .end local v7    # "data":[B
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public static final commonReadShort(Lokio/Buffer;)S
    .locals 11
    .param p0, "$this$commonReadShort"    # Lokio/Buffer;

    const/4 v0, 0x0

    .local v0, "$i$f$commonReadShort":I
    const-string v1, "$this$commonReadShort"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 308
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 309
    .local v1, "segment":Lokio/Segment;
    iget v2, v1, Lokio/Segment;->pos:I

    .line 310
    .local v2, "pos":I
    iget v5, v1, Lokio/Segment;->limit:I

    .line 313
    .local v5, "limit":I
    sub-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 314
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v3

    .local v3, "$this$and$iv":B
    const/16 v4, 0xff

    .local v4, "other$iv":I
    const/4 v6, 0x0

    .line 1492
    .local v6, "$i$f$and":I
    and-int/2addr v3, v4

    .line 314
    .end local v3    # "$this$and$iv":B
    .end local v4    # "other$iv":I
    .end local v6    # "$i$f$and":I
    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v4

    .local v4, "$this$and$iv":B
    const/16 v6, 0xff

    .local v6, "other$iv":I
    const/4 v7, 0x0

    .line 1492
    .local v7, "$i$f$and":I
    and-int/2addr v4, v6

    .line 314
    .end local v4    # "$this$and$iv":B
    .end local v6    # "other$iv":I
    .end local v7    # "$i$f$and":I
    or-int/2addr v3, v4

    .line 315
    .local v3, "s":I
    int-to-short v4, v3

    return v4

    .line 318
    .end local v3    # "s":I
    :cond_0
    iget-object v6, v1, Lokio/Segment;->data:[B

    .line 319
    .local v6, "data":[B
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "pos":I
    .local v7, "pos":I
    aget-byte v2, v6, v2

    .local v2, "$this$and$iv":B
    const/16 v8, 0xff

    .local v8, "other$iv":I
    const/4 v9, 0x0

    .line 1493
    .local v9, "$i$f$and":I
    and-int/2addr v2, v8

    .line 319
    .end local v2    # "$this$and$iv":B
    .end local v8    # "other$iv":I
    .end local v9    # "$i$f$and":I
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    aget-byte v7, v6, v7

    .local v7, "$this$and$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv":I
    const/4 v10, 0x0

    .line 1493
    .local v10, "$i$f$and":I
    and-int/2addr v7, v9

    .line 319
    .end local v7    # "$this$and$iv":B
    .end local v9    # "other$iv":I
    .end local v10    # "$i$f$and":I
    or-int/2addr v2, v7

    .line 320
    .local v2, "s":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v9

    sub-long/2addr v9, v3

    invoke-virtual {p0, v9, v10}, Lokio/Buffer;->setSize$okio(J)V

    .line 322
    if-ne v8, v5, :cond_1

    .line 323
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 324
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 326
    :cond_1
    iput v8, v1, Lokio/Segment;->pos:I

    .line 327
    :goto_0
    nop

    .line 329
    int-to-short v3, v2

    return v3

    .line 306
    .end local v1    # "segment":Lokio/Segment;
    .end local v2    # "s":I
    .end local v5    # "limit":I
    .end local v6    # "data":[B
    .end local v8    # "pos":I
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final commonReadUtf8(Lokio/Buffer;J)Ljava/lang/String;
    .locals 7
    .param p0, "$this$commonReadUtf8"    # Lokio/Buffer;
    .param p1, "byteCount"    # J

    const/4 v0, 0x0

    .local v0, "$i$f$commonReadUtf8":I
    const-string v1, "$this$commonReadUtf8"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    const/4 v4, 0x0

    if-ltz v3, :cond_0

    const v3, 0x7fffffff

    int-to-long v5, v3

    cmp-long v3, p1, v5

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_5

    .line 793
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-ltz v3, :cond_4

    .line 794
    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    const-string v1, ""

    return-object v1

    .line 796
    :cond_1
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 797
    .local v1, "s":Lokio/Segment;
    iget v2, v1, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    iget v5, v1, Lokio/Segment;->limit:I

    int-to-long v5, v5

    cmp-long v2, v2, v5

    if-lez v2, :cond_2

    .line 800
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v2

    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-static {v2, v4, v4, v3, v5}, Lokio/internal/_Utf8Kt;->commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 803
    :cond_2
    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->pos:I

    long-to-int v5, p1

    add-int/2addr v4, v5

    invoke-static {v2, v3, v4}, Lokio/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    move-result-object v2

    .line 804
    .local v2, "result":Ljava/lang/String;
    iget v3, v1, Lokio/Segment;->pos:I

    long-to-int v4, p1

    add-int/2addr v3, v4

    iput v3, v1, Lokio/Segment;->pos:I

    .line 805
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    sub-long/2addr v3, p1

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .line 807
    iget v3, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    if-ne v3, v4, :cond_3

    .line 808
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 809
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 812
    :cond_3
    return-object v2

    .line 793
    .end local v1    # "s":Lokio/Segment;
    .end local v2    # "result":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1533
    :cond_5
    const/4 v1, 0x0

    .line 792
    .local v1, "$i$a$-require-BufferKt$commonReadUtf8$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-BufferKt$commonReadUtf8$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public static final commonReadUtf8CodePoint(Lokio/Buffer;)I
    .locals 11
    .param p0, "$this$commonReadUtf8CodePoint"    # Lokio/Buffer;

    const/4 v0, 0x0

    .local v0, "$i$f$commonReadUtf8CodePoint":I
    const-string v1, "$this$commonReadUtf8CodePoint"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_b

    .line 844
    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v1

    .line 845
    .local v1, "b0":B
    const/4 v2, 0x0

    .line 846
    .local v2, "codePoint":I
    const/4 v3, 0x0

    .line 847
    .local v3, "byteCount":I
    const/4 v4, 0x0

    .line 849
    .local v4, "min":I
    nop

    .line 850
    const/16 v5, 0x80

    .local v5, "other$iv":I
    move v6, v1

    .local v6, "$this$and$iv":B
    const/4 v7, 0x0

    .line 1535
    .local v7, "$i$f$and":I
    and-int/2addr v5, v6

    .end local v5    # "other$iv":I
    .end local v6    # "$this$and$iv":B
    .end local v7    # "$i$f$and":I
    const v6, 0xfffd

    if-nez v5, :cond_0

    .line 852
    const/16 v5, 0x7f

    .restart local v5    # "other$iv":I
    move v7, v1

    .local v7, "$this$and$iv":B
    const/4 v8, 0x0

    .line 1536
    .local v8, "$i$f$and":I
    and-int v2, v7, v5

    .line 853
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    const/4 v3, 0x1

    .line 854
    const/4 v4, 0x0

    goto :goto_0

    .line 856
    :cond_0
    const/16 v5, 0xe0

    .restart local v5    # "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1537
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    const/16 v7, 0xc0

    if-ne v5, v7, :cond_1

    .line 858
    const/16 v5, 0x1f

    .restart local v5    # "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1538
    .restart local v8    # "$i$f$and":I
    and-int v2, v7, v5

    .line 859
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    const/4 v3, 0x2

    .line 860
    const/16 v4, 0x80

    goto :goto_0

    .line 862
    :cond_1
    const/16 v5, 0xf0

    .restart local v5    # "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1539
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    const/16 v7, 0xe0

    if-ne v5, v7, :cond_2

    .line 864
    const/16 v5, 0xf

    .restart local v5    # "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1540
    .restart local v8    # "$i$f$and":I
    and-int v2, v7, v5

    .line 865
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    const/4 v3, 0x3

    .line 866
    const/16 v4, 0x800

    goto :goto_0

    .line 868
    :cond_2
    const/16 v5, 0xf8

    .restart local v5    # "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1541
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    const/16 v7, 0xf0

    if-ne v5, v7, :cond_a

    .line 870
    const/4 v5, 0x7

    .restart local v5    # "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1542
    .restart local v8    # "$i$f$and":I
    and-int v2, v7, v5

    .line 871
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    const/4 v3, 0x4

    .line 872
    const/high16 v4, 0x10000

    .line 879
    :goto_0
    nop

    .line 881
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v7

    int-to-long v9, v3

    cmp-long v5, v7, v9

    if-ltz v5, :cond_9

    .line 888
    const/4 v5, 0x1

    :goto_1
    if-ge v5, v3, :cond_4

    .line 889
    .local v5, "i":I
    int-to-long v7, v5

    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v7

    .line 890
    .local v7, "b":B
    const/16 v8, 0xc0

    .local v8, "other$iv":I
    move v9, v7

    .local v9, "$this$and$iv":B
    const/4 v10, 0x0

    .line 1543
    .local v10, "$i$f$and":I
    and-int/2addr v8, v9

    .line 890
    .end local v8    # "other$iv":I
    .end local v9    # "$this$and$iv":B
    .end local v10    # "$i$f$and":I
    const/16 v9, 0x80

    if-ne v8, v9, :cond_3

    .line 892
    shl-int/lit8 v2, v2, 0x6

    .line 893
    const/16 v8, 0x3f

    .restart local v8    # "other$iv":I
    move v9, v7

    .restart local v9    # "$this$and$iv":B
    const/4 v10, 0x0

    .line 1544
    .restart local v10    # "$i$f$and":I
    and-int/2addr v8, v9

    .line 893
    .end local v8    # "other$iv":I
    .end local v9    # "$this$and$iv":B
    .end local v10    # "$i$f$and":I
    or-int/2addr v2, v8

    .line 897
    .end local v7    # "b":B
    nop

    .line 888
    nop

    .end local v5    # "i":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 895
    .restart local v5    # "i":I
    .restart local v7    # "b":B
    :cond_3
    int-to-long v8, v5

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 896
    return v6

    .line 900
    .end local v5    # "i":I
    .end local v7    # "b":B
    :cond_4
    int-to-long v7, v3

    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->skip(J)V

    .line 902
    nop

    .line 903
    const v5, 0x10ffff

    if-le v2, v5, :cond_5

    .line 904
    goto :goto_3

    .line 906
    :cond_5
    const v5, 0xd800

    if-le v5, v2, :cond_6

    goto :goto_2

    :cond_6
    const v5, 0xdfff

    if-lt v5, v2, :cond_7

    .line 907
    goto :goto_3

    .line 909
    :cond_7
    :goto_2
    if-ge v2, v4, :cond_8

    .line 910
    goto :goto_3

    .line 912
    :cond_8
    move v6, v2

    .line 902
    :goto_3
    return v6

    .line 882
    :cond_9
    new-instance v5, Ljava/io/EOFException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "size < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (to read code point prefixed 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lokio/-Util;->toHexString(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 876
    :cond_a
    const-wide/16 v7, 0x1

    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->skip(J)V

    .line 877
    return v6

    .line 842
    .end local v1    # "b0":B
    .end local v2    # "codePoint":I
    .end local v3    # "byteCount":I
    .end local v4    # "min":I
    :cond_b
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final commonReadUtf8Line(Lokio/Buffer;)Ljava/lang/String;
    .locals 7
    .param p0, "$this$commonReadUtf8Line"    # Lokio/Buffer;

    const/4 v0, 0x0

    .local v0, "$i$f$commonReadUtf8Line":I
    const-string v1, "$this$commonReadUtf8Line"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    const/16 v1, 0xa

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v1

    .line 818
    .local v1, "newline":J
    nop

    .line 819
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {p0, v1, v2}, Lokio/internal/BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 820
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 821
    :cond_1
    const/4 v3, 0x0

    .line 818
    :goto_0
    return-object v3
.end method

.method public static final commonReadUtf8LineStrict(Lokio/Buffer;J)Ljava/lang/String;
    .locals 16
    .param p0, "$this$commonReadUtf8LineStrict"    # Lokio/Buffer;
    .param p1, "limit"    # J

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    const/4 v9, 0x0

    .local v9, "$i$f$commonReadUtf8LineStrict":I
    const-string v0, "$this$commonReadUtf8LineStrict"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 827
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, v7, v0

    const-wide/16 v10, 0x1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-long v0, v7, v10

    :goto_1
    move-wide v12, v0

    .line 828
    .local v12, "scanLength":J
    const/16 v0, 0xa

    int-to-byte v14, v0

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move-wide v4, v12

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v4

    .line 829
    .local v4, "newline":J
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-eqz v0, :cond_2

    invoke-static {v6, v4, v5}, Lokio/internal/BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 830
    :cond_2
    nop

    .line 831
    nop

    .line 832
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v12, v0

    if-gez v0, :cond_3

    .line 831
    sub-long v0, v12, v10

    invoke-virtual {v6, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    int-to-byte v1, v1

    if-ne v0, v1, :cond_3

    .line 832
    invoke-virtual {v6, v12, v13}, Lokio/Buffer;->getByte(J)B

    move-result v0

    if-ne v0, v14, :cond_3

    .line 833
    invoke-static {v6, v12, v13}, Lokio/internal/BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 835
    :cond_3
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 836
    .local v1, "data":Lokio/Buffer;
    const/16 v0, 0x20

    .local v0, "a$iv":I
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .local v2, "b$iv":J
    const/4 v10, 0x0

    .line 1534
    .local v10, "$i$f$minOf":I
    int-to-long v14, v0

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 836
    .end local v0    # "a$iv":I
    .end local v2    # "b$iv":J
    .end local v10    # "$i$f$minOf":I
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v10, v4

    .end local v4    # "newline":J
    .local v10, "newline":J
    move-wide v4, v14

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 837
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    .line 838
    nop

    .line 837
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 838
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2026

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 837
    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1533
    .end local v1    # "data":Lokio/Buffer;
    .end local v10    # "newline":J
    .end local v12    # "scanLength":J
    :cond_4
    const/4 v0, 0x0

    .line 826
    .local v0, "$i$a$-require-BufferKt$commonReadUtf8LineStrict$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferKt$commonReadUtf8LineStrict$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final commonSelect(Lokio/Buffer;Lokio/Options;)I
    .locals 5
    .param p0, "$this$commonSelect"    # Lokio/Buffer;
    .param p1, "options"    # Lokio/Options;

    const/4 v0, 0x0

    .local v0, "$i$f$commonSelect":I
    const-string v1, "$this$commonSelect"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "options"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1, v3, v1, v2}, Lokio/internal/BufferKt;->selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I

    move-result v1

    .line 767
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v2

    .line 770
    :cond_0
    invoke-virtual {p1}, Lokio/Options;->getByteStrings$okio()[Lokio/ByteString;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    .line 771
    .local v2, "selectedSize":I
    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 772
    return v1
.end method

.method public static final commonSkip(Lokio/Buffer;J)V
    .locals 9
    .param p0, "$this$commonSkip"    # Lokio/Buffer;
    .param p1, "byteCount"    # J

    const/4 v0, 0x0

    .local v0, "$i$f$commonSkip":I
    const-string v1, "$this$commonSkip"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    move-wide v1, p1

    .line 409
    .local v1, "byteCount":J
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 410
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v3, :cond_1

    .line 412
    .local v3, "head":Lokio/Segment;
    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    .local v4, "b$iv":I
    const/4 v5, 0x0

    .line 1532
    .local v5, "$i$f$minOf":I
    int-to-long v6, v4

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 412
    .end local v4    # "b$iv":I
    .end local v5    # "$i$f$minOf":I
    long-to-int v4, v6

    .line 413
    .local v4, "toSkip":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v5

    int-to-long v7, v4

    sub-long/2addr v5, v7

    invoke-virtual {p0, v5, v6}, Lokio/Buffer;->setSize$okio(J)V

    .line 414
    int-to-long v5, v4

    sub-long/2addr v1, v5

    .line 415
    iget v5, v3, Lokio/Segment;->pos:I

    add-int/2addr v5, v4

    iput v5, v3, Lokio/Segment;->pos:I

    .line 417
    iget v5, v3, Lokio/Segment;->pos:I

    iget v6, v3, Lokio/Segment;->limit:I

    if-ne v5, v6, :cond_0

    .line 418
    invoke-virtual {v3}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 419
    invoke-static {v3}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 409
    .end local v3    # "head":Lokio/Segment;
    .end local v4    # "toSkip":I
    :cond_0
    goto :goto_0

    .line 410
    :cond_1
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 422
    :cond_2
    return-void
.end method

.method public static final commonSnapshot(Lokio/Buffer;)Lokio/ByteString;
    .locals 5
    .param p0, "$this$commonSnapshot"    # Lokio/Buffer;

    const/4 v0, 0x0

    .local v0, "$i$f$commonSnapshot":I
    const-string v1, "$this$commonSnapshot"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1448
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const v3, 0x7fffffff

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1449
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v1

    return-object v1

    .line 1533
    :cond_1
    const/4 v1, 0x0

    .line 1448
    .local v1, "$i$a$-check-BufferKt$commonSnapshot$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size > Int.MAX_VALUE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-check-BufferKt$commonSnapshot$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public static final commonSnapshot(Lokio/Buffer;I)Lokio/ByteString;
    .locals 8
    .param p0, "$this$commonSnapshot"    # Lokio/Buffer;
    .param p1, "byteCount"    # I

    const/4 v0, 0x0

    .local v0, "$i$f$commonSnapshot":I
    const-string v1, "$this$commonSnapshot"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1454
    if-nez p1, :cond_0

    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-object v1

    .line 1455
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    int-to-long v6, p1

    invoke-static/range {v2 .. v7}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1458
    const/4 v1, 0x0

    .line 1459
    .local v1, "offset":I
    const/4 v2, 0x0

    .line 1460
    .local v2, "segmentCount":I
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1461
    .local v3, "s":Lokio/Segment;
    :goto_0
    if-ge v1, p1, :cond_2

    .line 1462
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    if-eq v4, v5, :cond_1

    .line 1465
    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 1466
    add-int/lit8 v2, v2, 0x1

    .line 1467
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 1461
    goto :goto_0

    .line 1463
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "s.limit == s.pos"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 1471
    :cond_2
    new-array v4, v2, [[B

    .line 1472
    .local v4, "segments":[[B
    mul-int/lit8 v5, v2, 0x2

    new-array v5, v5, [I

    .line 1473
    .local v5, "directory":[I
    const/4 v1, 0x0

    .line 1474
    const/4 v2, 0x0

    .line 1475
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1476
    :goto_1
    if-ge v1, p1, :cond_3

    .line 1477
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v3, Lokio/Segment;->data:[B

    aput-object v6, v4, v2

    .line 1478
    iget v6, v3, Lokio/Segment;->limit:I

    iget v7, v3, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 1480
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v5, v2

    .line 1481
    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    array-length v6, v6

    add-int/2addr v6, v2

    iget v7, v3, Lokio/Segment;->pos:I

    aput v7, v5, v6

    .line 1482
    const/4 v6, 0x1

    iput-boolean v6, v3, Lokio/Segment;->shared:Z

    .line 1483
    add-int/lit8 v2, v2, 0x1

    .line 1484
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 1476
    goto :goto_1

    .line 1486
    :cond_3
    nop

    .line 1487
    new-instance v6, Lokio/SegmentedByteString;

    move-object v7, v4

    check-cast v7, [[B

    invoke-direct {v6, v7, v5}, Lokio/SegmentedByteString;-><init>([[B[I)V

    check-cast v6, Lokio/ByteString;

    return-object v6
.end method

.method public static final commonWritableSegment(Lokio/Buffer;I)Lokio/Segment;
    .locals 4
    .param p0, "$this$commonWritableSegment"    # Lokio/Buffer;
    .param p1, "minimumCapacity"    # I

    const/4 v0, 0x0

    .local v0, "$i$f$commonWritableSegment":I
    const-string v1, "$this$commonWritableSegment"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    const/16 v1, 0x2000

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 545
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_1

    .line 546
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v1

    .line 547
    .local v1, "result":Lokio/Segment;
    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 548
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 549
    iput-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 550
    return-object v1

    .line 553
    .end local v1    # "result":Lokio/Segment;
    :cond_1
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 554
    .local v2, "tail":Lokio/Segment;
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v2, Lokio/Segment;->limit:I

    add-int/2addr v3, p1

    if-gt v3, v1, :cond_2

    iget-boolean v1, v2, Lokio/Segment;->owner:Z

    if-nez v1, :cond_3

    .line 555
    :cond_2
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v1

    invoke-virtual {v2, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v2

    .line 557
    :cond_3
    return-object v2

    .line 1533
    .end local v2    # "tail":Lokio/Segment;
    :cond_4
    const/4 v1, 0x0

    .line 543
    .local v1, "$i$a$-require-BufferKt$commonWritableSegment$1":I
    nop

    .end local v1    # "$i$a$-require-BufferKt$commonWritableSegment$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unexpected capacity"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final commonWrite(Lokio/Buffer;Lokio/ByteString;II)Lokio/Buffer;
    .locals 2
    .param p0, "$this$commonWrite"    # Lokio/Buffer;
    .param p1, "byteString"    # Lokio/ByteString;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const/4 v0, 0x0

    .local v0, "$i$f$commonWrite":I
    const-string v1, "$this$commonWrite"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "byteString"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1, p0, p2, p3}, Lokio/ByteString;->write$okio(Lokio/Buffer;II)V

    .line 430
    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;Lokio/Source;J)Lokio/Buffer;
    .locals 7
    .param p0, "$this$commonWrite"    # Lokio/Buffer;
    .param p1, "source"    # Lokio/Source;
    .param p2, "byteCount"    # J

    const/4 v0, 0x0

    .local v0, "$i$f$commonWrite":I
    const-string v1, "$this$commonWrite"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "source"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    move-wide v1, p2

    .line 1070
    .local v1, "byteCount":J
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1071
    invoke-interface {p1, p0, v1, v2}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    .line 1072
    .local v3, "read":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 1073
    sub-long/2addr v1, v3

    .line 1070
    .end local v3    # "read":J
    goto :goto_0

    .line 1072
    .restart local v3    # "read":J
    :cond_0
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 1075
    .end local v3    # "read":J
    :cond_1
    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;[B)Lokio/Buffer;
    .locals 3
    .param p0, "$this$commonWrite"    # Lokio/Buffer;
    .param p1, "source"    # [B

    const/4 v0, 0x0

    .local v0, "$i$f$commonWrite":I
    const-string v1, "$this$commonWrite"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "source"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v1

    return-object v1
.end method

.method public static final commonWrite(Lokio/Buffer;[BII)Lokio/Buffer;
    .locals 9
    .param p0, "$this$commonWrite"    # Lokio/Buffer;
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const/4 v0, 0x0

    .local v0, "$i$f$commonWrite":I
    const-string v1, "$this$commonWrite"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "source"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    move v1, p2

    .line 568
    .local v1, "offset":I
    array-length v2, p1

    int-to-long v3, v2

    int-to-long v5, v1

    int-to-long v7, p3

    invoke-static/range {v3 .. v8}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 570
    add-int v2, v1, p3

    .line 571
    .local v2, "limit":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 572
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v3

    .line 574
    .local v3, "tail":Lokio/Segment;
    sub-int v4, v2, v1

    iget v5, v3, Lokio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 575
    .local v4, "toCopy":I
    nop

    .line 576
    iget-object v5, v3, Lokio/Segment;->data:[B

    .line 577
    iget v6, v3, Lokio/Segment;->limit:I

    .line 578
    nop

    .line 579
    add-int v7, v1, v4

    .line 575
    invoke-static {p1, v5, v6, v1, v7}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 582
    add-int/2addr v1, v4

    .line 583
    iget v5, v3, Lokio/Segment;->limit:I

    add-int/2addr v5, v4

    iput v5, v3, Lokio/Segment;->limit:I

    .line 571
    .end local v3    # "tail":Lokio/Segment;
    .end local v4    # "toCopy":I
    goto :goto_0

    .line 586
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    int-to-long v5, p3

    add-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .line 587
    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;Lokio/Buffer;J)V
    .locals 10
    .param p0, "$this$commonWrite"    # Lokio/Buffer;
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const/4 v0, 0x0

    .local v0, "$i$f$commonWrite":I
    const-string v1, "$this$commonWrite"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "source"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1127
    move-wide v5, p2

    .line 1178
    .local v5, "byteCount":J
    const/4 v7, 0x0

    if-eq p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    if-eqz v1, :cond_7

    .line 1179
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1181
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-lez v1, :cond_6

    .line 1183
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Lokio/Segment;->limit:I

    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, v5, v1

    if-gez v1, :cond_4

    .line 1184
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 1185
    .local v1, "tail":Lokio/Segment;
    :goto_2
    nop

    .line 1186
    if-eqz v1, :cond_3

    iget-boolean v2, v1, Lokio/Segment;->owner:Z

    if-eqz v2, :cond_3

    iget v2, v1, Lokio/Segment;->limit:I

    int-to-long v2, v2

    add-long/2addr v2, v5

    iget-boolean v4, v1, Lokio/Segment;->shared:Z

    if-eqz v4, :cond_2

    move v4, v7

    goto :goto_3

    :cond_2
    iget v4, v1, Lokio/Segment;->pos:I

    :goto_3
    int-to-long v8, v4

    sub-long/2addr v2, v8

    const/16 v4, 0x2000

    int-to-long v8, v4

    cmp-long v2, v2, v8

    if-gtz v2, :cond_3

    .line 1188
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v3, v5

    invoke-virtual {v2, v1, v3}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1189
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {p1, v2, v3}, Lokio/Buffer;->setSize$okio(J)V

    .line 1190
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->setSize$okio(J)V

    .line 1191
    return-void

    .line 1195
    :cond_3
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v3, v5

    invoke-virtual {v2, v3}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v2

    iput-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1196
    .end local v1    # "tail":Lokio/Segment;
    :cond_4
    nop

    .line 1200
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1201
    .local v1, "segmentToMove":Lokio/Segment;
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v1, Lokio/Segment;->limit:I

    iget v3, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 1202
    .local v2, "movedByteCount":J
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1203
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v4, :cond_5

    .line 1204
    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1205
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 1206
    iget-object v4, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v4, v1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_4

    .line 1208
    :cond_5
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 1209
    .local v4, "tail":Lokio/Segment;
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v4

    .line 1210
    invoke-virtual {v4}, Lokio/Segment;->compact()V

    .line 1211
    .end local v4    # "tail":Lokio/Segment;
    :goto_4
    nop

    .line 1212
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {p1, v8, v9}, Lokio/Buffer;->setSize$okio(J)V

    .line 1213
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v8

    add-long/2addr v8, v2

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->setSize$okio(J)V

    .line 1214
    sub-long/2addr v5, v2

    .line 1181
    .end local v1    # "segmentToMove":Lokio/Segment;
    .end local v2    # "movedByteCount":J
    goto/16 :goto_1

    .line 1216
    :cond_6
    return-void

    .line 1533
    :cond_7
    const/4 v1, 0x0

    .line 1178
    .local v1, "$i$a$-require-BufferKt$commonWrite$1":I
    nop

    .end local v1    # "$i$a$-require-BufferKt$commonWrite$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "source == this"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static synthetic commonWrite$default(Lokio/Buffer;Lokio/ByteString;IIILjava/lang/Object;)Lokio/Buffer;
    .locals 0
    .param p0, "$this$commonWrite"    # Lokio/Buffer;
    .param p1, "byteString"    # Lokio/ByteString;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 426
    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 427
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p3

    :cond_1
    const/4 p4, 0x0

    .local p4, "$i$f$commonWrite":I
    const-string p5, "$this$commonWrite"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "byteString"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1, p0, p2, p3}, Lokio/ByteString;->write$okio(Lokio/Buffer;II)V

    .line 430
    return-object p0
.end method

.method public static final commonWriteAll(Lokio/Buffer;Lokio/Source;)J
    .locals 7
    .param p0, "$this$commonWriteAll"    # Lokio/Buffer;
    .param p1, "source"    # Lokio/Source;

    const/4 v0, 0x0

    .local v0, "$i$f$commonWriteAll":I
    const-string v1, "$this$commonWriteAll"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "source"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    const-wide/16 v1, 0x0

    .line 1060
    .local v1, "totalBytesRead":J
    :goto_0
    nop

    .line 1061
    const/16 v3, 0x2000

    int-to-long v3, v3

    invoke-interface {p1, p0, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    .line 1062
    .local v3, "readCount":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    .line 1065
    .end local v3    # "readCount":J
    return-wide v1

    .line 1063
    .restart local v3    # "readCount":J
    :cond_0
    add-long/2addr v1, v3

    .line 1060
    .end local v3    # "readCount":J
    goto :goto_0
.end method

.method public static final commonWriteByte(Lokio/Buffer;I)Lokio/Buffer;
    .locals 6
    .param p0, "$this$commonWriteByte"    # Lokio/Buffer;
    .param p1, "b"    # I

    const/4 v0, 0x0

    .local v0, "$i$f$commonWriteByte":I
    const-string v1, "$this$commonWriteByte"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1079
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v1

    .line 1080
    .local v1, "tail":Lokio/Segment;
    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->limit:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lokio/Segment;->limit:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    .line 1081
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->setSize$okio(J)V

    .line 1082
    return-object p0
.end method

.method public static final commonWriteDecimalLong(Lokio/Buffer;J)Lokio/Buffer;
    .locals 16
    .param p0, "$this$commonWriteDecimalLong"    # Lokio/Buffer;
    .param p1, "v"    # J

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "$i$f$commonWriteDecimalLong":I
    const-string v2, "$this$commonWriteDecimalLong"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    move-wide/from16 v2, p1

    .line 435
    .local v2, "v":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 437
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v4

    return-object v4

    .line 440
    :cond_0
    const/4 v6, 0x0

    .line 441
    .local v6, "negative":Z
    cmp-long v7, v2, v4

    if-gez v7, :cond_2

    .line 442
    neg-long v2, v2

    .line 443
    cmp-long v7, v2, v4

    if-gez v7, :cond_1

    .line 444
    const-string v4, "-9223372036854775808"

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v4

    return-object v4

    .line 446
    :cond_1
    const/4 v6, 0x1

    .line 450
    :cond_2
    nop

    .line 451
    const-wide/32 v7, 0x5f5e100

    cmp-long v7, v2, v7

    const/16 v8, 0xa

    if-gez v7, :cond_a

    .line 452
    const-wide/16 v9, 0x2710

    cmp-long v7, v2, v9

    if-gez v7, :cond_6

    .line 453
    const-wide/16 v9, 0x64

    cmp-long v7, v2, v9

    if-gez v7, :cond_4

    .line 454
    const-wide/16 v9, 0xa

    cmp-long v7, v2, v9

    if-gez v7, :cond_3

    const/4 v7, 0x1

    goto/16 :goto_4

    .line 455
    :cond_3
    nop

    .line 454
    const/4 v7, 0x2

    goto/16 :goto_4

    .line 456
    :cond_4
    const-wide/16 v9, 0x3e8

    cmp-long v7, v2, v9

    if-gez v7, :cond_5

    const/4 v7, 0x3

    goto :goto_0

    .line 457
    :cond_5
    const/4 v7, 0x4

    .line 456
    :goto_0
    nop

    .line 453
    goto/16 :goto_4

    .line 458
    :cond_6
    const-wide/32 v9, 0xf4240

    cmp-long v7, v2, v9

    if-gez v7, :cond_8

    .line 459
    const-wide/32 v9, 0x186a0

    cmp-long v7, v2, v9

    if-gez v7, :cond_7

    const/4 v7, 0x5

    goto :goto_1

    .line 460
    :cond_7
    nop

    .line 459
    const/4 v7, 0x6

    goto :goto_1

    .line 461
    :cond_8
    const-wide/32 v9, 0x989680

    cmp-long v7, v2, v9

    if-gez v7, :cond_9

    const/4 v7, 0x7

    goto :goto_1

    .line 462
    :cond_9
    const/16 v7, 0x8

    .line 461
    :goto_1
    nop

    .line 458
    nop

    .line 452
    goto/16 :goto_4

    .line 463
    :cond_a
    const-wide v9, 0xe8d4a51000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_e

    .line 464
    const-wide v9, 0x2540be400L

    cmp-long v7, v2, v9

    if-gez v7, :cond_c

    .line 465
    const-wide/32 v9, 0x3b9aca00

    cmp-long v7, v2, v9

    if-gez v7, :cond_b

    const/16 v7, 0x9

    goto :goto_4

    .line 466
    :cond_b
    nop

    .line 465
    move v7, v8

    goto :goto_4

    .line 467
    :cond_c
    const-wide v9, 0x174876e800L

    cmp-long v7, v2, v9

    if-gez v7, :cond_d

    const/16 v7, 0xb

    goto :goto_2

    .line 468
    :cond_d
    const/16 v7, 0xc

    .line 467
    :goto_2
    nop

    .line 464
    goto :goto_4

    .line 469
    :cond_e
    const-wide v9, 0x38d7ea4c68000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_11

    .line 470
    const-wide v9, 0x9184e72a000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_f

    const/16 v7, 0xd

    goto :goto_4

    .line 471
    :cond_f
    const-wide v9, 0x5af3107a4000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_10

    const/16 v7, 0xe

    goto :goto_3

    .line 472
    :cond_10
    const/16 v7, 0xf

    .line 471
    :goto_3
    nop

    .line 470
    goto :goto_4

    .line 473
    :cond_11
    const-wide v9, 0x16345785d8a0000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_13

    .line 474
    const-wide v9, 0x2386f26fc10000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_12

    const/16 v7, 0x10

    goto :goto_4

    .line 475
    :cond_12
    nop

    .line 474
    const/16 v7, 0x11

    goto :goto_4

    .line 476
    :cond_13
    const-wide v9, 0xde0b6b3a7640000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_14

    const/16 v7, 0x12

    goto :goto_4

    .line 477
    :cond_14
    const/16 v7, 0x13

    .line 476
    :goto_4
    nop

    .line 473
    nop

    .line 469
    nop

    .line 463
    nop

    .line 451
    nop

    .line 450
    nop

    .line 478
    .local v7, "width":I
    if-eqz v6, :cond_15

    .line 479
    add-int/lit8 v7, v7, 0x1

    .line 482
    :cond_15
    invoke-virtual {v0, v7}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v9

    .line 483
    .local v9, "tail":Lokio/Segment;
    iget-object v10, v9, Lokio/Segment;->data:[B

    .line 484
    .local v10, "data":[B
    iget v11, v9, Lokio/Segment;->limit:I

    add-int/2addr v11, v7

    .line 485
    .local v11, "pos":I
    :goto_5
    cmp-long v12, v2, v4

    if-eqz v12, :cond_16

    .line 486
    int-to-long v12, v8

    rem-long v14, v2, v12

    long-to-int v14, v14

    .line 487
    .local v14, "digit":I
    add-int/lit8 v11, v11, -0x1

    invoke-static {}, Lokio/internal/BufferKt;->getHEX_DIGIT_BYTES()[B

    move-result-object v15

    aget-byte v15, v15, v14

    aput-byte v15, v10, v11

    .line 488
    div-long/2addr v2, v12

    .line 485
    .end local v14    # "digit":I
    goto :goto_5

    .line 490
    :cond_16
    if-eqz v6, :cond_17

    .line 491
    add-int/lit8 v11, v11, -0x1

    const/16 v4, 0x2d

    int-to-byte v4, v4

    aput-byte v4, v10, v11

    .line 494
    :cond_17
    iget v4, v9, Lokio/Segment;->limit:I

    add-int/2addr v4, v7

    iput v4, v9, Lokio/Segment;->limit:I

    .line 495
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v12, v7

    add-long/2addr v4, v12

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$okio(J)V

    .line 496
    return-object v0
.end method

.method public static final commonWriteHexadecimalUnsignedLong(Lokio/Buffer;J)Lokio/Buffer;
    .locals 16
    .param p0, "$this$commonWriteHexadecimalUnsignedLong"    # Lokio/Buffer;
    .param p1, "v"    # J

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "$i$f$commonWriteHexadecimalUnsignedLong":I
    const-string v2, "$this$commonWriteHexadecimalUnsignedLong"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    move-wide/from16 v2, p1

    .line 501
    .local v2, "v":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 503
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v4

    return-object v4

    .line 508
    :cond_0
    move-wide v4, v2

    .line 509
    .local v4, "x":J
    const/4 v6, 0x1

    ushr-long v7, v4, v6

    or-long/2addr v4, v7

    .line 510
    const/4 v7, 0x2

    ushr-long v8, v4, v7

    or-long/2addr v4, v8

    .line 511
    const/4 v8, 0x4

    ushr-long v9, v4, v8

    or-long/2addr v4, v9

    .line 512
    const/16 v9, 0x8

    ushr-long v10, v4, v9

    or-long/2addr v4, v10

    .line 513
    const/16 v10, 0x10

    ushr-long v11, v4, v10

    or-long/2addr v4, v11

    .line 514
    const/16 v11, 0x20

    ushr-long v12, v4, v11

    or-long/2addr v4, v12

    .line 518
    ushr-long v12, v4, v6

    const-wide v14, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v12, v14

    sub-long/2addr v4, v12

    .line 519
    ushr-long v12, v4, v7

    const-wide v14, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v12, v14

    and-long/2addr v14, v4

    add-long/2addr v12, v14

    .line 520
    .end local v4    # "x":J
    .local v12, "x":J
    ushr-long v4, v12, v8

    add-long/2addr v4, v12

    const-wide v14, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v4, v14

    .line 521
    .end local v12    # "x":J
    .restart local v4    # "x":J
    ushr-long v12, v4, v9

    add-long/2addr v4, v12

    .line 522
    ushr-long v9, v4, v10

    add-long/2addr v4, v9

    .line 523
    const-wide/16 v9, 0x3f

    and-long v12, v4, v9

    ushr-long v14, v4, v11

    and-long/2addr v9, v14

    add-long/2addr v12, v9

    .line 526
    .end local v4    # "x":J
    .restart local v12    # "x":J
    const/4 v4, 0x3

    int-to-long v4, v4

    add-long/2addr v4, v12

    int-to-long v9, v8

    div-long/2addr v4, v9

    long-to-int v4, v4

    .line 528
    .local v4, "width":I
    invoke-virtual {v0, v4}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v5

    .line 529
    .local v5, "tail":Lokio/Segment;
    iget-object v7, v5, Lokio/Segment;->data:[B

    .line 530
    .local v7, "data":[B
    iget v9, v5, Lokio/Segment;->limit:I

    add-int/2addr v9, v4

    sub-int/2addr v9, v6

    .line 531
    .local v9, "pos":I
    iget v6, v5, Lokio/Segment;->limit:I

    .line 532
    .local v6, "start":I
    :goto_0
    if-lt v9, v6, :cond_1

    .line 533
    invoke-static {}, Lokio/internal/BufferKt;->getHEX_DIGIT_BYTES()[B

    move-result-object v10

    const-wide/16 v14, 0xf

    and-long/2addr v14, v2

    long-to-int v11, v14

    aget-byte v10, v10, v11

    aput-byte v10, v7, v9

    .line 534
    ushr-long/2addr v2, v8

    .line 535
    add-int/lit8 v9, v9, -0x1

    .line 532
    goto :goto_0

    .line 537
    :cond_1
    iget v8, v5, Lokio/Segment;->limit:I

    add-int/2addr v8, v4

    iput v8, v5, Lokio/Segment;->limit:I

    .line 538
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v10

    int-to-long v14, v4

    add-long/2addr v10, v14

    invoke-virtual {v0, v10, v11}, Lokio/Buffer;->setSize$okio(J)V

    .line 539
    return-object v0
.end method

.method public static final commonWriteInt(Lokio/Buffer;I)Lokio/Buffer;
    .locals 8
    .param p0, "$this$commonWriteInt"    # Lokio/Buffer;
    .param p1, "i"    # I

    const/4 v0, 0x0

    .local v0, "$i$f$commonWriteInt":I
    const-string v1, "$this$commonWriteInt"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1097
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v1

    .line 1098
    .local v1, "tail":Lokio/Segment;
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1099
    .local v2, "data":[B
    iget v3, v1, Lokio/Segment;->limit:I

    .line 1100
    .local v3, "limit":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .local v4, "limit":I
    ushr-int/lit8 v5, p1, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 1101
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    ushr-int/lit8 v5, p1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1102
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .restart local v4    # "limit":I
    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 1103
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    and-int/lit16 v5, p1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1104
    iput v3, v1, Lokio/Segment;->limit:I

    .line 1105
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->setSize$okio(J)V

    .line 1106
    return-object p0
.end method

.method public static final commonWriteLong(Lokio/Buffer;J)Lokio/Buffer;
    .locals 10
    .param p0, "$this$commonWriteLong"    # Lokio/Buffer;
    .param p1, "v"    # J

    const/4 v0, 0x0

    .local v0, "$i$f$commonWriteLong":I
    const-string v1, "$this$commonWriteLong"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1110
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v2

    .line 1111
    .local v2, "tail":Lokio/Segment;
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1112
    .local v3, "data":[B
    iget v4, v2, Lokio/Segment;->limit:I

    .line 1113
    .local v4, "limit":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit":I
    .local v5, "limit":I
    const/16 v6, 0x38

    ushr-long v6, p1, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1114
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit":I
    .restart local v4    # "limit":I
    const/16 v6, 0x30

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1115
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit":I
    .restart local v5    # "limit":I
    const/16 v6, 0x28

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1116
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit":I
    .restart local v4    # "limit":I
    const/16 v6, 0x20

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1117
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit":I
    .restart local v5    # "limit":I
    const/16 v6, 0x18

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1118
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit":I
    .restart local v4    # "limit":I
    const/16 v6, 0x10

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1119
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit":I
    .restart local v5    # "limit":I
    ushr-long v6, p1, v1

    and-long/2addr v6, v8

    long-to-int v1, v6

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    .line 1120
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "limit":I
    .local v1, "limit":I
    and-long v6, p1, v8

    long-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 1121
    iput v1, v2, Lokio/Segment;->limit:I

    .line 1122
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->setSize$okio(J)V

    .line 1123
    return-object p0
.end method

.method public static final commonWriteShort(Lokio/Buffer;I)Lokio/Buffer;
    .locals 8
    .param p0, "$this$commonWriteShort"    # Lokio/Buffer;
    .param p1, "s"    # I

    const/4 v0, 0x0

    .local v0, "$i$f$commonWriteShort":I
    const-string v1, "$this$commonWriteShort"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1086
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v1

    .line 1087
    .local v1, "tail":Lokio/Segment;
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1088
    .local v2, "data":[B
    iget v3, v1, Lokio/Segment;->limit:I

    .line 1089
    .local v3, "limit":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .local v4, "limit":I
    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 1090
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    and-int/lit16 v5, p1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1091
    iput v3, v1, Lokio/Segment;->limit:I

    .line 1092
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->setSize$okio(J)V

    .line 1093
    return-object p0
.end method

.method public static final commonWriteUtf8(Lokio/Buffer;Ljava/lang/String;II)Lokio/Buffer;
    .locals 17
    .param p0, "$this$commonWriteUtf8"    # Lokio/Buffer;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    .local v4, "$i$f$commonWriteUtf8":I
    const-string v5, "$this$commonWriteUtf8"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "string"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 917
    const/4 v6, 0x1

    if-ltz v2, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_f

    .line 918
    if-lt v3, v2, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_e

    .line 919
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v3, v7, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_d

    .line 922
    move/from16 v7, p2

    .line 923
    .local v7, "i":I
    :goto_3
    if-ge v7, v3, :cond_c

    .line 924
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 926
    .local v8, "c":I
    nop

    .line 927
    const/16 v9, 0x80

    if-ge v8, v9, :cond_5

    .line 928
    invoke-virtual {v0, v6}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v10

    .line 929
    .local v10, "tail":Lokio/Segment;
    iget-object v11, v10, Lokio/Segment;->data:[B

    .line 930
    .local v11, "data":[B
    iget v12, v10, Lokio/Segment;->limit:I

    sub-int/2addr v12, v7

    .line 931
    .local v12, "segmentOffset":I
    rsub-int v13, v12, 0x2000

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 934
    .local v13, "runLimit":I
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "i":I
    .local v14, "i":I
    add-int/2addr v7, v12

    int-to-byte v15, v8

    aput-byte v15, v11, v7

    .line 938
    :goto_4
    if-ge v14, v13, :cond_4

    .line 939
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 940
    if-lt v8, v9, :cond_3

    goto :goto_5

    .line 941
    :cond_3
    add-int/lit8 v7, v14, 0x1

    .end local v14    # "i":I
    .restart local v7    # "i":I
    add-int/2addr v14, v12

    int-to-byte v15, v8

    aput-byte v15, v11, v14

    .line 938
    move v14, v7

    goto :goto_4

    .line 944
    .end local v7    # "i":I
    .restart local v14    # "i":I
    :cond_4
    :goto_5
    add-int v7, v14, v12

    iget v9, v10, Lokio/Segment;->limit:I

    sub-int/2addr v7, v9

    .line 945
    .local v7, "runSize":I
    iget v9, v10, Lokio/Segment;->limit:I

    add-int/2addr v9, v7

    iput v9, v10, Lokio/Segment;->limit:I

    .line 946
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v15

    int-to-long v5, v7

    add-long/2addr v5, v15

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$okio(J)V

    move v7, v14

    const/4 v13, 0x1

    .end local v7    # "runSize":I
    .end local v10    # "tail":Lokio/Segment;
    .end local v11    # "data":[B
    .end local v12    # "segmentOffset":I
    .end local v13    # "runLimit":I
    goto/16 :goto_9

    .line 949
    .end local v14    # "i":I
    .local v7, "i":I
    :cond_5
    const/16 v5, 0x800

    const/4 v6, 0x2

    if-ge v8, v5, :cond_6

    .line 951
    invoke-virtual {v0, v6}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v5

    .line 953
    .local v5, "tail":Lokio/Segment;
    iget-object v10, v5, Lokio/Segment;->data:[B

    iget v11, v5, Lokio/Segment;->limit:I

    shr-int/lit8 v12, v8, 0x6

    or-int/lit16 v12, v12, 0xc0

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 954
    iget-object v10, v5, Lokio/Segment;->data:[B

    iget v11, v5, Lokio/Segment;->limit:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    and-int/lit8 v12, v8, 0x3f

    or-int/2addr v9, v12

    int-to-byte v9, v9

    aput-byte v9, v10, v11

    .line 956
    iget v9, v5, Lokio/Segment;->limit:I

    add-int/2addr v9, v6

    iput v9, v5, Lokio/Segment;->limit:I

    .line 957
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v11, 0x2

    add-long/2addr v9, v11

    invoke-virtual {v0, v9, v10}, Lokio/Buffer;->setSize$okio(J)V

    .line 958
    nop

    .end local v5    # "tail":Lokio/Segment;
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x1

    goto/16 :goto_9

    .line 961
    :cond_6
    const v5, 0xd800

    const/16 v11, 0x3f

    if-lt v8, v5, :cond_b

    const v5, 0xdfff

    if-le v8, v5, :cond_7

    goto/16 :goto_8

    .line 978
    :cond_7
    add-int/lit8 v12, v7, 0x1

    if-ge v12, v3, :cond_8

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    goto :goto_6

    :cond_8
    const/4 v12, 0x0

    .line 979
    .local v12, "low":I
    :goto_6
    const v13, 0xdbff

    if-gt v8, v13, :cond_a

    const v13, 0xdc00

    if-gt v13, v12, :cond_a

    if-ge v5, v12, :cond_9

    goto :goto_7

    .line 986
    :cond_9
    and-int/lit16 v5, v8, 0x3ff

    shl-int/lit8 v5, v5, 0xa

    and-int/lit16 v13, v12, 0x3ff

    or-int/2addr v5, v13

    const/high16 v13, 0x10000

    add-int/2addr v5, v13

    .line 989
    .local v5, "codePoint":I
    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v14

    .line 991
    .local v14, "tail":Lokio/Segment;
    iget-object v15, v14, Lokio/Segment;->data:[B

    iget v13, v14, Lokio/Segment;->limit:I

    shr-int/lit8 v10, v5, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    aput-byte v10, v15, v13

    .line 992
    iget-object v10, v14, Lokio/Segment;->data:[B

    iget v13, v14, Lokio/Segment;->limit:I

    const/4 v15, 0x1

    add-int/2addr v13, v15

    shr-int/lit8 v15, v5, 0xc

    and-int/2addr v15, v11

    or-int/2addr v15, v9

    int-to-byte v15, v15

    aput-byte v15, v10, v13

    .line 993
    iget-object v10, v14, Lokio/Segment;->data:[B

    iget v13, v14, Lokio/Segment;->limit:I

    add-int/2addr v13, v6

    shr-int/lit8 v6, v5, 0x6

    and-int/2addr v6, v11

    or-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v10, v13

    .line 994
    iget-object v6, v14, Lokio/Segment;->data:[B

    iget v10, v14, Lokio/Segment;->limit:I

    const/4 v11, 0x3

    add-int/2addr v10, v11

    and-int/lit8 v11, v5, 0x3f

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v6, v10

    .line 996
    iget v6, v14, Lokio/Segment;->limit:I

    const/4 v9, 0x4

    add-int/2addr v6, v9

    iput v6, v14, Lokio/Segment;->limit:I

    .line 997
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v15, 0x4

    add-long/2addr v9, v15

    invoke-virtual {v0, v9, v10}, Lokio/Buffer;->setSize$okio(J)V

    .line 998
    add-int/lit8 v7, v7, 0x2

    const/4 v13, 0x1

    goto :goto_9

    .line 980
    .end local v5    # "codePoint":I
    .end local v14    # "tail":Lokio/Segment;
    :cond_a
    :goto_7
    invoke-virtual {v0, v11}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 981
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x1

    goto :goto_9

    .line 963
    .end local v12    # "low":I
    :cond_b
    :goto_8
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v10

    .line 965
    .restart local v10    # "tail":Lokio/Segment;
    iget-object v5, v10, Lokio/Segment;->data:[B

    iget v12, v10, Lokio/Segment;->limit:I

    shr-int/lit8 v13, v8, 0xc

    or-int/lit16 v13, v13, 0xe0

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 966
    iget-object v5, v10, Lokio/Segment;->data:[B

    iget v12, v10, Lokio/Segment;->limit:I

    const/4 v13, 0x1

    add-int/2addr v12, v13

    shr-int/lit8 v14, v8, 0x6

    and-int/2addr v11, v14

    or-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v5, v12

    .line 967
    iget-object v5, v10, Lokio/Segment;->data:[B

    iget v11, v10, Lokio/Segment;->limit:I

    add-int/2addr v11, v6

    and-int/lit8 v6, v8, 0x3f

    or-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v5, v11

    .line 969
    iget v5, v10, Lokio/Segment;->limit:I

    const/4 v6, 0x3

    add-int/2addr v5, v6

    iput v5, v10, Lokio/Segment;->limit:I

    .line 970
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v11, 0x3

    add-long/2addr v5, v11

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$okio(J)V

    .line 971
    nop

    .end local v10    # "tail":Lokio/Segment;
    add-int/lit8 v7, v7, 0x1

    .line 999
    .end local v8    # "c":I
    :goto_9
    nop

    .line 1001
    nop

    .line 923
    move v6, v13

    goto/16 :goto_3

    .line 1004
    :cond_c
    return-object v0

    .line 1533
    .end local v7    # "i":I
    :cond_d
    const/4 v5, 0x0

    .line 919
    .local v5, "$i$a$-require-BufferKt$commonWriteUtf8$3":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endIndex > string.length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require-BufferKt$commonWriteUtf8$3":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 1533
    :cond_e
    const/4 v5, 0x0

    .line 918
    .local v5, "$i$a$-require-BufferKt$commonWriteUtf8$2":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endIndex < beginIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require-BufferKt$commonWriteUtf8$2":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 1533
    :cond_f
    const/4 v5, 0x0

    .line 917
    .local v5, "$i$a$-require-BufferKt$commonWriteUtf8$1":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "beginIndex < 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require-BufferKt$commonWriteUtf8$1":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6
.end method

.method public static final commonWriteUtf8CodePoint(Lokio/Buffer;I)Lokio/Buffer;
    .locals 10
    .param p0, "$this$commonWriteUtf8CodePoint"    # Lokio/Buffer;
    .param p1, "codePoint"    # I

    const/4 v0, 0x0

    .local v0, "$i$f$commonWriteUtf8CodePoint":I
    const-string v1, "$this$commonWriteUtf8CodePoint"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    nop

    .line 1009
    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    .line 1011
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto/16 :goto_1

    .line 1013
    :cond_0
    const/16 v2, 0x800

    const/4 v3, 0x2

    if-ge p1, v2, :cond_1

    .line 1015
    invoke-virtual {p0, v3}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v2

    .line 1017
    .local v2, "tail":Lokio/Segment;
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    shr-int/lit8 v6, p1, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1018
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v6, p1, 0x3f

    or-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v4, v5

    .line 1020
    iget v1, v2, Lokio/Segment;->limit:I

    add-int/2addr v1, v3

    iput v1, v2, Lokio/Segment;->limit:I

    .line 1021
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .end local v2    # "tail":Lokio/Segment;
    goto/16 :goto_1

    .line 1023
    :cond_1
    const v2, 0xd800

    const/16 v4, 0x3f

    if-le v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const v2, 0xdfff

    if-lt v2, p1, :cond_3

    .line 1025
    invoke-virtual {p0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto/16 :goto_1

    .line 1027
    :cond_3
    :goto_0
    const/high16 v2, 0x10000

    const/4 v5, 0x3

    if-ge p1, v2, :cond_4

    .line 1029
    invoke-virtual {p0, v5}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v2

    .line 1031
    .restart local v2    # "tail":Lokio/Segment;
    iget-object v6, v2, Lokio/Segment;->data:[B

    iget v7, v2, Lokio/Segment;->limit:I

    shr-int/lit8 v8, p1, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1032
    iget-object v6, v2, Lokio/Segment;->data:[B

    iget v7, v2, Lokio/Segment;->limit:I

    add-int/lit8 v7, v7, 0x1

    shr-int/lit8 v8, p1, 0x6

    and-int/2addr v4, v8

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v6, v7

    .line 1033
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v6, v2, Lokio/Segment;->limit:I

    add-int/2addr v6, v3

    and-int/lit8 v3, p1, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v4, v6

    .line 1035
    iget v1, v2, Lokio/Segment;->limit:I

    add-int/2addr v1, v5

    iput v1, v2, Lokio/Segment;->limit:I

    .line 1036
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    add-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .end local v2    # "tail":Lokio/Segment;
    goto :goto_1

    .line 1038
    :cond_4
    const v2, 0x10ffff

    if-gt p1, v2, :cond_5

    .line 1040
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v6

    .line 1042
    .local v6, "tail":Lokio/Segment;
    iget-object v7, v6, Lokio/Segment;->data:[B

    iget v8, v6, Lokio/Segment;->limit:I

    shr-int/lit8 v9, p1, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1043
    iget-object v7, v6, Lokio/Segment;->data:[B

    iget v8, v6, Lokio/Segment;->limit:I

    add-int/lit8 v8, v8, 0x1

    shr-int/lit8 v9, p1, 0xc

    and-int/2addr v9, v4

    or-int/2addr v9, v1

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1044
    iget-object v7, v6, Lokio/Segment;->data:[B

    iget v8, v6, Lokio/Segment;->limit:I

    add-int/2addr v8, v3

    shr-int/lit8 v3, p1, 0x6

    and-int/2addr v3, v4

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v7, v8

    .line 1045
    iget-object v3, v6, Lokio/Segment;->data:[B

    iget v4, v6, Lokio/Segment;->limit:I

    add-int/2addr v4, v5

    and-int/lit8 v5, p1, 0x3f

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    .line 1047
    iget v1, v6, Lokio/Segment;->limit:I

    add-int/2addr v1, v2

    iput v1, v6, Lokio/Segment;->limit:I

    .line 1048
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->setSize$okio(J)V

    .line 1053
    .end local v6    # "tail":Lokio/Segment;
    :goto_1
    nop

    .line 1055
    return-object p0

    .line 1051
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected code point: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lokio/-Util;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final getHEX_DIGIT_BYTES()[B
    .locals 1

    .line 38
    sget-object v0, Lokio/internal/BufferKt;->HEX_DIGIT_BYTES:[B

    return-object v0
.end method

.method public static final rangeEquals(Lokio/Segment;I[BII)Z
    .locals 7
    .param p0, "segment"    # Lokio/Segment;
    .param p1, "segmentPos"    # I
    .param p2, "bytes"    # [B
    .param p3, "bytesOffset"    # I
    .param p4, "bytesLimit"    # I

    const-string/jumbo v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    move-object v0, p0

    .line 56
    .local v0, "segment":Lokio/Segment;
    move v1, p1

    .line 57
    .local v1, "segmentPos":I
    iget v2, v0, Lokio/Segment;->limit:I

    .line 58
    .local v2, "segmentLimit":I
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 60
    .local v3, "data":[B
    move v4, p3

    .line 61
    .local v4, "i":I
    :goto_0
    if-ge v4, p4, :cond_2

    .line 62
    if-ne v1, v2, :cond_0

    .line 63
    iget-object v5, v0, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v5

    .line 64
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 65
    iget v1, v0, Lokio/Segment;->pos:I

    .line 66
    iget v2, v0, Lokio/Segment;->limit:I

    .line 69
    :cond_0
    aget-byte v5, v3, v1

    aget-byte v6, p2, v4

    if-eq v5, v6, :cond_1

    .line 70
    const/4 v5, 0x0

    return v5

    .line 73
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 61
    goto :goto_0

    .line 77
    :cond_2
    const/4 v5, 0x1

    return v5
.end method

.method public static final readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;
    .locals 5
    .param p0, "$this$readUtf8Line"    # Lokio/Buffer;
    .param p1, "newline"    # J

    const-string v0, "$this$readUtf8Line"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    nop

    .line 82
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_0

    sub-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v3, 0xd

    int-to-byte v3, v3

    if-ne v0, v3, :cond_0

    .line 84
    sub-long v0, p1, v1

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "result":Ljava/lang/String;
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 86
    nop

    .end local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0    # "result":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 92
    nop

    .line 81
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method public static final seek(Lokio/Buffer;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$seek"    # Lokio/Buffer;
    .param p1, "fromIndex"    # J
    .param p3, "lambda"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokio/Buffer;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lokio/Segment;",
            "-",
            "Ljava/lang/Long;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$seek":I
    const-string v1, "$this$seek"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lambda"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_3

    .line 107
    .local v1, "s":Lokio/Segment;
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    .line 109
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 110
    .local v2, "offset":J
    :goto_0
    cmp-long v4, v2, p1

    if-lez v4, :cond_0

    .line 111
    iget-object v4, v1, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v4

    .line 112
    iget v4, v1, Lokio/Segment;->limit:I

    iget v5, v1, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 110
    goto :goto_0

    .line 114
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p3, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 117
    .end local v2    # "offset":J
    :cond_1
    const-wide/16 v2, 0x0

    .line 118
    .restart local v2    # "offset":J
    :goto_1
    nop

    .line 119
    iget v4, v1, Lokio/Segment;->limit:I

    iget v5, v1, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 120
    .local v4, "nextOffset":J
    cmp-long v6, v4, p1

    if-lez v6, :cond_2

    .line 124
    .end local v4    # "nextOffset":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p3, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 121
    .restart local v4    # "nextOffset":J
    :cond_2
    iget-object v6, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v6

    .line 122
    move-wide v2, v4

    .line 118
    .end local v4    # "nextOffset":J
    goto :goto_1

    .line 105
    .end local v1    # "s":Lokio/Segment;
    .end local v2    # "offset":J
    :cond_3
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p3, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final selectPrefix(Lokio/Buffer;Lokio/Options;Z)I
    .locals 19
    .param p0, "$this$selectPrefix"    # Lokio/Buffer;
    .param p1, "options"    # Lokio/Options;
    .param p2, "selectTruncated"    # Z

    move-object/from16 v0, p0

    const-string v1, "$this$selectPrefix"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "options"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v4, -0x1

    if-eqz v1, :cond_f

    .line 143
    .local v1, "head":Lokio/Segment;
    move-object v5, v1

    .line 144
    .local v5, "s":Lokio/Segment;
    iget-object v6, v1, Lokio/Segment;->data:[B

    .line 145
    .local v6, "data":[B
    iget v7, v1, Lokio/Segment;->pos:I

    .line 146
    .local v7, "pos":I
    iget v8, v1, Lokio/Segment;->limit:I

    .line 148
    .local v8, "limit":I
    invoke-virtual/range {p1 .. p1}, Lokio/Options;->getTrie$okio()[I

    move-result-object v9

    .line 149
    .local v9, "trie":[I
    const/4 v10, 0x0

    .line 151
    .local v10, "triePos":I
    const/4 v11, -0x1

    .line 153
    .local v11, "prefixIndex":I
    :goto_0
    nop

    .line 154
    nop

    .line 155
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "triePos":I
    .local v12, "triePos":I
    aget v10, v9, v10

    .line 157
    .local v10, "scanOrSelect":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "triePos":I
    .local v13, "triePos":I
    aget v12, v9, v12

    .line 158
    .local v12, "possiblePrefixIndex":I
    if-eq v12, v4, :cond_0

    .line 159
    move v11, v12

    .line 162
    :cond_0
    const/4 v14, 0x0

    .line 164
    .local v14, "nextStep":I
    if-nez v5, :cond_1

    .line 165
    goto :goto_3

    .line 166
    :cond_1
    if-gez v10, :cond_9

    .line 168
    mul-int/lit8 v16, v10, -0x1

    .line 169
    .local v16, "scanByteCount":I
    add-int v4, v13, v16

    .line 170
    .local v4, "trieLimit":I
    :goto_1
    nop

    .line 171
    add-int/lit8 v15, v7, 0x1

    .end local v7    # "pos":I
    .local v15, "pos":I
    aget-byte v7, v6, v7

    .local v7, "$this$and$iv":B
    const/16 v17, 0xff

    .local v17, "other$iv":I
    const/16 v18, 0x0

    .line 1490
    .local v18, "$i$f$and":I
    and-int v7, v7, v17

    .line 171
    .end local v7    # "$this$and$iv":B
    .end local v17    # "other$iv":I
    .end local v18    # "$i$f$and":I
    nop

    .line 172
    .local v7, "byte":I
    add-int/lit8 v3, v13, 0x1

    .end local v13    # "triePos":I
    .local v3, "triePos":I
    aget v13, v9, v13

    if-eq v7, v13, :cond_2

    return v11

    .line 173
    :cond_2
    if-ne v3, v4, :cond_3

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    .line 176
    .local v13, "scanComplete":Z
    :goto_2
    if-ne v15, v8, :cond_7

    .line 177
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v5, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v0

    .line 178
    iget v0, v5, Lokio/Segment;->pos:I

    .line 179
    .end local v15    # "pos":I
    .local v0, "pos":I
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 180
    iget v8, v5, Lokio/Segment;->limit:I

    .line 181
    if-ne v5, v1, :cond_6

    .line 182
    if-nez v13, :cond_5

    move v7, v0

    move v13, v3

    .line 225
    .end local v0    # "pos":I
    .end local v3    # "triePos":I
    .end local v4    # "trieLimit":I
    .end local v10    # "scanOrSelect":I
    .end local v12    # "possiblePrefixIndex":I
    .end local v14    # "nextStep":I
    .end local v16    # "scanByteCount":I
    .local v7, "pos":I
    .local v13, "triePos":I
    :goto_3
    if-eqz p2, :cond_4

    const/16 v17, -0x2

    return v17

    .line 226
    :cond_4
    return v11

    .line 183
    .restart local v0    # "pos":I
    .restart local v3    # "triePos":I
    .restart local v4    # "trieLimit":I
    .local v7, "byte":I
    .restart local v10    # "scanOrSelect":I
    .restart local v12    # "possiblePrefixIndex":I
    .local v13, "scanComplete":Z
    .restart local v14    # "nextStep":I
    .restart local v16    # "scanByteCount":I
    :cond_5
    const/16 v17, -0x2

    const/4 v15, 0x0

    move-object v5, v15

    check-cast v5, Lokio/Segment;

    goto :goto_4

    .line 181
    :cond_6
    const/16 v17, -0x2

    goto :goto_4

    .line 176
    .end local v0    # "pos":I
    .restart local v15    # "pos":I
    :cond_7
    const/16 v17, -0x2

    move v0, v15

    .line 187
    .end local v15    # "pos":I
    .restart local v0    # "pos":I
    :goto_4
    if-eqz v13, :cond_8

    .line 188
    aget v14, v9, v3

    .line 189
    move v7, v0

    goto :goto_6

    .line 170
    .end local v7    # "byte":I
    .end local v13    # "scanComplete":Z
    :cond_8
    move v7, v0

    move v13, v3

    move-object/from16 v0, p0

    goto :goto_1

    .line 194
    .end local v0    # "pos":I
    .end local v3    # "triePos":I
    .end local v4    # "trieLimit":I
    .end local v16    # "scanByteCount":I
    .local v7, "pos":I
    .local v13, "triePos":I
    :cond_9
    const/16 v17, -0x2

    move v0, v10

    .line 195
    .local v0, "selectChoiceCount":I
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "pos":I
    .local v3, "pos":I
    aget-byte v4, v6, v7

    .local v4, "$this$and$iv":B
    const/16 v7, 0xff

    .local v7, "other$iv":I
    const/4 v15, 0x0

    .line 1491
    .local v15, "$i$f$and":I
    and-int/2addr v4, v7

    .line 195
    .end local v4    # "$this$and$iv":B
    .end local v7    # "other$iv":I
    .end local v15    # "$i$f$and":I
    nop

    .line 196
    .local v4, "byte":I
    add-int v7, v13, v0

    .line 197
    .local v7, "selectLimit":I
    :goto_5
    nop

    .line 198
    if-ne v13, v7, :cond_a

    return v11

    .line 200
    :cond_a
    aget v15, v9, v13

    if-ne v4, v15, :cond_e

    .line 201
    add-int v15, v13, v0

    aget v14, v9, v15

    .line 202
    nop

    .line 209
    if-ne v3, v8, :cond_c

    .line 210
    iget-object v15, v5, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v15

    .line 211
    iget v3, v5, Lokio/Segment;->pos:I

    .line 212
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 213
    iget v8, v5, Lokio/Segment;->limit:I

    .line 214
    if-ne v5, v1, :cond_b

    .line 215
    const/4 v15, 0x0

    move-object v5, v15

    check-cast v5, Lokio/Segment;

    move v7, v3

    move v3, v13

    goto :goto_6

    .line 214
    :cond_b
    move v7, v3

    move v3, v13

    goto :goto_6

    .line 209
    :cond_c
    move v7, v3

    move v3, v13

    .line 218
    .end local v0    # "selectChoiceCount":I
    .end local v4    # "byte":I
    .end local v13    # "triePos":I
    .local v3, "triePos":I
    .local v7, "pos":I
    :goto_6
    nop

    .line 220
    if-ltz v14, :cond_d

    return v14

    .line 221
    :cond_d
    neg-int v10, v14

    .line 154
    .end local v3    # "triePos":I
    .end local v12    # "possiblePrefixIndex":I
    .end local v14    # "nextStep":I
    .local v10, "triePos":I
    const/4 v4, -0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 205
    .restart local v0    # "selectChoiceCount":I
    .local v3, "pos":I
    .restart local v4    # "byte":I
    .local v7, "selectLimit":I
    .local v10, "scanOrSelect":I
    .restart local v12    # "possiblePrefixIndex":I
    .restart local v13    # "triePos":I
    .restart local v14    # "nextStep":I
    :cond_e
    const/4 v15, 0x0

    add-int/lit8 v13, v13, 0x1

    .line 197
    goto :goto_5

    .line 141
    .end local v0    # "selectChoiceCount":I
    .end local v1    # "head":Lokio/Segment;
    .end local v3    # "pos":I
    .end local v4    # "byte":I
    .end local v5    # "s":Lokio/Segment;
    .end local v6    # "data":[B
    .end local v7    # "selectLimit":I
    .end local v8    # "limit":I
    .end local v9    # "trie":[I
    .end local v10    # "scanOrSelect":I
    .end local v11    # "prefixIndex":I
    .end local v12    # "possiblePrefixIndex":I
    .end local v13    # "triePos":I
    .end local v14    # "nextStep":I
    :cond_f
    const/16 v17, -0x2

    if-eqz p2, :cond_10

    move/from16 v3, v17

    goto :goto_7

    :cond_10
    const/4 v3, -0x1

    :goto_7
    return v3
.end method

.method public static synthetic selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 140
    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lokio/internal/BufferKt;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    move-result p0

    return p0
.end method
