.class public final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SegmentedByteString.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n+ 2 SegmentedByteString.kt\nokio/internal/SegmentedByteStringKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n59#2,12:129\n59#2,12:141\n100#2:153\n101#2,26:155\n130#2,5:181\n137#2:186\n140#2,3:187\n59#2,8:190\n143#2,4:198\n67#2,4:202\n147#2:206\n59#2,12:207\n151#2:219\n81#2,10:220\n152#2,9:230\n91#2,4:239\n161#2,2:243\n170#2,4:245\n81#2,10:249\n174#2,3:259\n91#2,4:262\n177#2:266\n186#2,7:267\n81#2,10:274\n193#2,3:284\n91#2,4:287\n196#2:291\n200#2,4:292\n208#2,6:296\n59#2,8:302\n214#2,7:310\n67#2,4:317\n221#2,2:321\n1#3:154\n*E\n*S KotlinDebug\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n*L\n53#1,12:129\n63#1,12:141\n75#1:153\n75#1,26:155\n77#1,5:181\n79#1:186\n81#1,3:187\n81#1,8:190\n81#1,4:198\n81#1,4:202\n81#1:206\n87#1,12:207\n93#1:219\n93#1,10:220\n93#1,9:230\n93#1,4:239\n93#1,2:243\n100#1,4:245\n100#1,10:249\n100#1,3:259\n100#1,4:262\n100#1:266\n107#1,7:267\n107#1,10:274\n107#1,3:284\n107#1,4:287\n107#1:291\n119#1,4:292\n121#1,6:296\n121#1,8:302\n121#1,7:310\n121#1,4:317\n121#1,2:321\n75#1:154\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u0005\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0008\u0000\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0015\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\r\u0010\u0019\u001a\u00020\u001aH\u0010\u00a2\u0006\u0002\u0008\u001bJ\u0008\u0010\u001c\u001a\u00020\u001aH\u0016J\u0008\u0010\u001d\u001a\u00020\u0010H\u0016J\u001d\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u0001H\u0010\u00a2\u0006\u0002\u0008 J\u0018\u0010!\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001aH\u0016J\r\u0010#\u001a\u00020\u0004H\u0010\u00a2\u0006\u0002\u0008$J\u0015\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u001aH\u0010\u00a2\u0006\u0002\u0008(J\u0018\u0010)\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001aH\u0016J(\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0016J(\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0016J\u0010\u0010.\u001a\u00020\u00102\u0006\u0010/\u001a\u000200H\u0016J\u0018\u00101\u001a\u00020\u00012\u0006\u00102\u001a\u00020\u001a2\u0006\u00103\u001a\u00020\u001aH\u0016J\u0008\u00104\u001a\u00020\u0001H\u0016J\u0008\u00105\u001a\u00020\u0001H\u0016J\u0008\u00106\u001a\u00020\u0004H\u0016J\u0008\u00107\u001a\u00020\u0001H\u0002J\u0008\u00108\u001a\u00020\u0010H\u0016J\u0010\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0016J%\u00109\u001a\u00020:2\u0006\u0010=\u001a\u00020>2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0010\u00a2\u0006\u0002\u0008?J\u0008\u0010@\u001a\u00020AH\u0002R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006B"
    }
    d2 = {
        "Lokio/SegmentedByteString;",
        "Lokio/ByteString;",
        "segments",
        "",
        "",
        "directory",
        "",
        "([[B[I)V",
        "getDirectory$okio",
        "()[I",
        "getSegments$okio",
        "()[[B",
        "[[B",
        "asByteBuffer",
        "Ljava/nio/ByteBuffer;",
        "base64",
        "",
        "base64Url",
        "digest",
        "algorithm",
        "digest$okio",
        "equals",
        "",
        "other",
        "",
        "getSize",
        "",
        "getSize$okio",
        "hashCode",
        "hex",
        "hmac",
        "key",
        "hmac$okio",
        "indexOf",
        "fromIndex",
        "internalArray",
        "internalArray$okio",
        "internalGet",
        "",
        "pos",
        "internalGet$okio",
        "lastIndexOf",
        "rangeEquals",
        "offset",
        "otherOffset",
        "byteCount",
        "string",
        "charset",
        "Ljava/nio/charset/Charset;",
        "substring",
        "beginIndex",
        "endIndex",
        "toAsciiLowercase",
        "toAsciiUppercase",
        "toByteArray",
        "toByteString",
        "toString",
        "write",
        "",
        "out",
        "Ljava/io/OutputStream;",
        "buffer",
        "Lokio/Buffer;",
        "write$okio",
        "writeReplace",
        "Ljava/lang/Object;",
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
.field private final transient directory:[I

.field private final transient segments:[[B


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1
    .param p1, "segments"    # [[B
    .param p2, "directory"    # [I

    const-string/jumbo v0, "segments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    nop

    .line 39
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    iput-object p1, p0, Lokio/SegmentedByteString;->segments:[[B

    iput-object p2, p0, Lokio/SegmentedByteString;->directory:[I

    return-void
.end method

.method private final toByteString()Lokio/ByteString;
    .locals 2

    .line 115
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    .line 126
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 83
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    .line 72
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public digest$okio(Ljava/lang/String;)Lokio/ByteString;
    .locals 12
    .param p1, "algorithm"    # Ljava/lang/String;

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 53
    .local v0, "digest":Ljava/security/MessageDigest;
    move-object v1, p0

    .local v1, "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    const/4 v2, 0x0

    .line 129
    .local v2, "$i$f$forEachSegment":I
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    .line 130
    .local v3, "segmentCount$iv":I
    const/4 v4, 0x0

    .line 131
    .local v4, "s$iv":I
    const/4 v5, 0x0

    .line 132
    .local v5, "pos$iv":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 133
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v6

    add-int v7, v3, v4

    aget v6, v6, v7

    .line 134
    .local v6, "segmentPos$iv":I
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v7

    aget v7, v7, v4

    .line 136
    .local v7, "nextSegmentOffset$iv":I
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v8

    aget-object v8, v8, v4

    .local v8, "data":[B
    sub-int v9, v7, v5

    .local v9, "byteCount":I
    move v10, v6

    .local v10, "offset":I
    const/4 v11, 0x0

    .line 54
    .local v11, "$i$a$-forEachSegment-SegmentedByteString$digest$1":I
    invoke-virtual {v0, v8, v10, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 55
    nop

    .line 137
    .end local v8    # "data":[B
    .end local v9    # "byteCount":I
    .end local v10    # "offset":I
    .end local v11    # "$i$a$-forEachSegment-SegmentedByteString$digest$1":I
    move v5, v7

    .line 138
    nop

    .end local v6    # "segmentPos$iv":I
    .end local v7    # "nextSegmentOffset$iv":I
    add-int/lit8 v4, v4, 0x1

    .line 132
    goto :goto_0

    .line 140
    :cond_0
    nop

    .line 56
    .end local v1    # "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    .end local v2    # "$i$f$forEachSegment":I
    .end local v3    # "segmentCount$iv":I
    .end local v4    # "s$iv":I
    .end local v5    # "pos$iv":I
    new-instance v1, Lokio/ByteString;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string v3, "digest.digest()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 119
    move-object v0, p0

    .local v0, "$this$commonEquals$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 292
    .local v1, "$i$f$commonEquals":I
    nop

    .line 293
    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    instance-of v3, p1, Lokio/ByteString;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    invoke-virtual {v0}, Lokio/SegmentedByteString;->size()I

    move-result v5

    if-ne v3, v5, :cond_1

    move-object v3, p1

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/SegmentedByteString;->size()I

    move-result v5

    invoke-virtual {v0, v4, v3, v4, v5}, Lokio/SegmentedByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0

    .line 295
    :cond_2
    nop

    .line 292
    move v2, v4

    .line 119
    .end local v0    # "$this$commonEquals$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$commonEquals":I
    :goto_0
    return v2
.end method

.method public final getDirectory$okio()[I
    .locals 1

    .line 38
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    return-object v0
.end method

.method public final getSegments$okio()[[B
    .locals 1

    .line 37
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    return-object v0
.end method

.method public getSize$okio()I
    .locals 4

    .line 79
    move-object v0, p0

    .local v0, "$this$commonGetSize$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 186
    .local v1, "$i$f$commonGetSize":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v2

    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v0, v2, v3

    .line 79
    .end local v0    # "$this$commonGetSize$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$commonGetSize":I
    return v0
.end method

.method public hashCode()I
    .locals 18

    .line 121
    move-object/from16 v0, p0

    .local v0, "$this$commonHashCode$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 296
    .local v1, "$i$f$commonHashCode":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getHashCode$okio()I

    move-result v2

    .line 297
    .local v2, "result$iv":I
    if-eqz v2, :cond_0

    goto :goto_2

    .line 300
    :cond_0
    const/4 v2, 0x1

    .line 301
    move-object v3, v0

    .local v3, "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    const/4 v4, 0x0

    .line 302
    .local v4, "$i$f$forEachSegment":I
    invoke-virtual {v3}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    .line 303
    .local v5, "segmentCount$iv$iv":I
    const/4 v6, 0x0

    .line 304
    .local v6, "s$iv$iv":I
    const/4 v7, 0x0

    .line 305
    .local v7, "pos$iv$iv":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 306
    invoke-virtual {v3}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v8

    add-int v9, v5, v6

    aget v8, v8, v9

    .line 307
    .local v8, "segmentPos$iv$iv":I
    invoke-virtual {v3}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v9

    aget v9, v9, v6

    .line 309
    .local v9, "nextSegmentOffset$iv$iv":I
    invoke-virtual {v3}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v10

    aget-object v10, v10, v6

    .local v10, "data$iv":[B
    sub-int v11, v9, v7

    .local v11, "byteCount$iv":I
    move v12, v8

    .local v12, "offset$iv":I
    const/4 v13, 0x0

    .line 310
    .local v13, "$i$a$-forEachSegment-SegmentedByteStringKt$commonHashCode$1$iv":I
    move v14, v12

    .line 311
    .local v14, "i$iv":I
    add-int v15, v12, v11

    .line 312
    .local v15, "limit$iv":I
    :goto_1
    if-ge v14, v15, :cond_1

    .line 313
    mul-int/lit8 v16, v2, 0x1f

    aget-byte v17, v10, v14

    add-int v2, v16, v17

    .line 314
    add-int/lit8 v14, v14, 0x1

    .line 312
    goto :goto_1

    .line 316
    .end local v14    # "i$iv":I
    .end local v15    # "limit$iv":I
    :cond_1
    nop

    .line 317
    .end local v10    # "data$iv":[B
    .end local v11    # "byteCount$iv":I
    .end local v12    # "offset$iv":I
    .end local v13    # "$i$a$-forEachSegment-SegmentedByteStringKt$commonHashCode$1$iv":I
    move v7, v9

    .line 318
    nop

    .end local v8    # "segmentPos$iv$iv":I
    .end local v9    # "nextSegmentOffset$iv$iv":I
    add-int/lit8 v6, v6, 0x1

    .line 305
    goto :goto_0

    .line 320
    :cond_2
    nop

    .line 321
    .end local v3    # "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    .end local v4    # "$i$f$forEachSegment":I
    .end local v5    # "segmentCount$iv$iv":I
    .end local v6    # "s$iv$iv":I
    .end local v7    # "pos$iv$iv":I
    invoke-virtual {v0, v2}, Lokio/SegmentedByteString;->setHashCode$okio(I)V

    .line 322
    nop

    .line 121
    .end local v0    # "$this$commonHashCode$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$commonHashCode":I
    .end local v2    # "result$iv":I
    :goto_2
    return v2
.end method

.method public hex()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmac$okio(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 12
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lokio/ByteString;

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    nop

    .line 61
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 62
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v1, Ljava/security/Key;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 63
    move-object v1, p0

    .local v1, "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    const/4 v2, 0x0

    .line 141
    .local v2, "$i$f$forEachSegment":I
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    .line 142
    .local v3, "segmentCount$iv":I
    const/4 v4, 0x0

    .line 143
    .local v4, "s$iv":I
    const/4 v5, 0x0

    .line 144
    .local v5, "pos$iv":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 145
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v6

    add-int v7, v3, v4

    aget v6, v6, v7

    .line 146
    .local v6, "segmentPos$iv":I
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v7

    aget v7, v7, v4

    .line 148
    .local v7, "nextSegmentOffset$iv":I
    invoke-virtual {v1}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v8

    aget-object v8, v8, v4

    sub-int v9, v7, v5

    .local v8, "data":[B
    .local v9, "byteCount":I
    move v10, v6

    .local v10, "offset":I
    const/4 v11, 0x0

    .line 64
    .local v11, "$i$a$-forEachSegment-SegmentedByteString$hmac$1":I
    invoke-virtual {v0, v8, v10, v9}, Ljavax/crypto/Mac;->update([BII)V

    .line 65
    nop

    .line 149
    .end local v8    # "data":[B
    .end local v9    # "byteCount":I
    .end local v10    # "offset":I
    .end local v11    # "$i$a$-forEachSegment-SegmentedByteString$hmac$1":I
    move v5, v7

    .line 150
    nop

    .end local v6    # "segmentPos$iv":I
    .end local v7    # "nextSegmentOffset$iv":I
    add-int/lit8 v4, v4, 0x1

    .line 144
    goto :goto_0

    .line 152
    :cond_0
    nop

    .line 66
    .end local v1    # "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    .end local v2    # "$i$f$forEachSegment":I
    .end local v3    # "segmentCount$iv":I
    .end local v4    # "s$iv":I
    .end local v5    # "pos$iv":I
    new-instance v1, Lokio/ByteString;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    const-string v3, "mac.doFinal()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 67
    .end local v0    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public indexOf([BI)I
    .locals 1
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public internalArray$okio()[B
    .locals 1

    .line 117
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public internalGet$okio(I)B
    .locals 9
    .param p1, "pos"    # I

    .line 77
    move-object v0, p0

    .local v0, "$this$commonInternalGet$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 181
    .local v1, "$i$f$commonInternalGet":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v2

    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    int-to-long v3, v2

    int-to-long v5, p1

    const-wide/16 v7, 0x1

    invoke-static/range {v3 .. v8}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 182
    invoke-static {v0, p1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v2

    .line 183
    .local v2, "segment$iv":I
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    .line 184
    .local v3, "segmentOffset$iv":I
    :goto_0
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v4

    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    add-int/2addr v5, v2

    aget v4, v4, v5

    .line 185
    .local v4, "segmentPos$iv":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v5

    aget-object v5, v5, v2

    sub-int v6, p1, v3

    add-int/2addr v6, v4

    aget-byte v0, v5, v6

    .line 77
    .end local v0    # "$this$commonInternalGet$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$commonInternalGet":I
    .end local v2    # "segment$iv":I
    .end local v3    # "segmentOffset$iv":I
    .end local v4    # "segmentPos$iv":I
    return v0
.end method

.method public lastIndexOf([BI)I
    .locals 1
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    .line 112
    nop

    .line 111
    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v0

    .line 112
    return v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .locals 20
    .param p1, "offset"    # I
    .param p2, "other"    # Lokio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "other"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    move-object/from16 v2, p0

    .local v2, "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    const/4 v3, 0x0

    .line 245
    .local v3, "$i$f$commonRangeEquals":I
    if-ltz v0, :cond_4

    invoke-virtual {v2}, Lokio/SegmentedByteString;->size()I

    move-result v5

    sub-int v5, v5, p4

    if-le v0, v5, :cond_0

    move-object/from16 v17, v2

    goto/16 :goto_2

    .line 247
    :cond_0
    move/from16 v5, p3

    .line 248
    .local v5, "otherOffset$iv":I
    add-int v6, v0, p4

    .local v6, "endIndex$iv$iv":I
    move-object v7, v2

    .local v7, "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    const/4 v8, 0x0

    .line 249
    .local v8, "$i$f$forEachSegment":I
    invoke-static {v7, v0}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v9

    .line 250
    .local v9, "s$iv$iv":I
    move/from16 v10, p1

    .line 251
    .local v10, "pos$iv$iv":I
    :goto_0
    if-ge v10, v6, :cond_3

    .line 252
    if-nez v9, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v11

    add-int/lit8 v12, v9, -0x1

    aget v11, v11, v12

    .line 253
    .local v11, "segmentOffset$iv$iv":I
    :goto_1
    invoke-virtual {v7}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v12

    aget v12, v12, v9

    sub-int/2addr v12, v11

    .line 254
    .local v12, "segmentSize$iv$iv":I
    invoke-virtual {v7}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v13

    invoke-virtual {v7}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    array-length v14, v14

    add-int/2addr v14, v9

    aget v13, v13, v14

    .line 256
    .local v13, "segmentPos$iv$iv":I
    add-int v14, v11, v12

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    sub-int/2addr v14, v10

    .line 257
    .local v14, "byteCount$iv$iv":I
    sub-int v15, v10, v11

    add-int/2addr v15, v13

    .line 258
    .local v15, "offset$iv$iv":I
    invoke-virtual {v7}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v16

    aget-object v16, v16, v9

    .local v16, "data$iv":[B
    move/from16 v17, v14

    .local v17, "byteCount$iv":I
    move/from16 v18, v15

    .local v18, "offset$iv":I
    move-object/from16 v19, v16

    .end local v16    # "data$iv":[B
    .local v19, "data$iv":[B
    const/16 v16, 0x0

    .line 259
    .local v16, "$i$a$-forEachSegment-SegmentedByteStringKt$commonRangeEquals$1$iv":I
    move/from16 v4, v17

    move/from16 v0, v18

    move-object/from16 v17, v2

    move-object/from16 v2, v19

    .end local v18    # "offset$iv":I
    .end local v19    # "data$iv":[B
    .local v0, "offset$iv":I
    .local v2, "data$iv":[B
    .local v4, "byteCount$iv":I
    .local v17, "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    invoke-virtual {v1, v5, v2, v0, v4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v18

    if-nez v18, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    .line 260
    :cond_2
    add-int/2addr v5, v4

    .line 261
    nop

    .line 262
    .end local v0    # "offset$iv":I
    .end local v2    # "data$iv":[B
    .end local v4    # "byteCount$iv":I
    .end local v16    # "$i$a$-forEachSegment-SegmentedByteStringKt$commonRangeEquals$1$iv":I
    add-int/2addr v10, v14

    .line 263
    nop

    .end local v11    # "segmentOffset$iv$iv":I
    .end local v12    # "segmentSize$iv$iv":I
    .end local v13    # "segmentPos$iv$iv":I
    .end local v14    # "byteCount$iv$iv":I
    .end local v15    # "offset$iv$iv":I
    add-int/lit8 v9, v9, 0x1

    .line 251
    move/from16 v0, p1

    move-object/from16 v2, v17

    goto :goto_0

    .line 265
    .end local v17    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    .local v2, "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    :cond_3
    move-object/from16 v17, v2

    .line 266
    .end local v2    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    .end local v6    # "endIndex$iv$iv":I
    .end local v7    # "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    .end local v8    # "$i$f$forEachSegment":I
    .end local v9    # "s$iv$iv":I
    .end local v10    # "pos$iv$iv":I
    .restart local v17    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    const/4 v4, 0x1

    goto :goto_3

    .line 245
    .end local v5    # "otherOffset$iv":I
    .end local v17    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    .restart local v2    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    :cond_4
    move-object/from16 v17, v2

    .end local v2    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    .restart local v17    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    :goto_2
    const/4 v4, 0x0

    .line 100
    .end local v3    # "$i$f$commonRangeEquals":I
    .end local v17    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    :goto_3
    return v4
.end method

.method public rangeEquals(I[BII)Z
    .locals 21
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "other"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    move-object/from16 v3, p0

    .local v3, "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    const/4 v4, 0x0

    .line 267
    .local v4, "$i$f$commonRangeEquals":I
    nop

    .line 268
    if-ltz v0, :cond_4

    .line 267
    invoke-virtual {v3}, Lokio/SegmentedByteString;->size()I

    move-result v6

    sub-int v6, v6, p4

    if-gt v0, v6, :cond_4

    if-ltz v2, :cond_4

    .line 268
    array-length v6, v1

    sub-int v6, v6, p4

    if-le v2, v6, :cond_0

    goto :goto_2

    .line 272
    :cond_0
    move/from16 v6, p3

    .line 273
    .local v6, "otherOffset$iv":I
    add-int v7, v0, p4

    .local v7, "endIndex$iv$iv":I
    move-object v8, v3

    .local v8, "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    const/4 v9, 0x0

    .line 274
    .local v9, "$i$f$forEachSegment":I
    invoke-static {v8, v0}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v10

    .line 275
    .local v10, "s$iv$iv":I
    move/from16 v11, p1

    .line 276
    .local v11, "pos$iv$iv":I
    :goto_0
    if-ge v11, v7, :cond_3

    .line 277
    if-nez v10, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v12

    add-int/lit8 v13, v10, -0x1

    aget v12, v12, v13

    .line 278
    .local v12, "segmentOffset$iv$iv":I
    :goto_1
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v13

    aget v13, v13, v10

    sub-int/2addr v13, v12

    .line 279
    .local v13, "segmentSize$iv$iv":I
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v14

    invoke-virtual {v8}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v15

    check-cast v15, [Ljava/lang/Object;

    array-length v15, v15

    add-int/2addr v15, v10

    aget v14, v14, v15

    .line 281
    .local v14, "segmentPos$iv$iv":I
    add-int v15, v12, v13

    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    sub-int/2addr v15, v11

    .line 282
    .local v15, "byteCount$iv$iv":I
    sub-int v16, v11, v12

    add-int v16, v14, v16

    .line 283
    .local v16, "offset$iv$iv":I
    invoke-virtual {v8}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v17

    aget-object v17, v17, v10

    .local v17, "data$iv":[B
    move/from16 v18, v15

    .local v18, "byteCount$iv":I
    move/from16 v19, v16

    .local v19, "offset$iv":I
    move-object/from16 v20, v17

    .end local v17    # "data$iv":[B
    .local v20, "data$iv":[B
    const/16 v17, 0x0

    .line 284
    .local v17, "$i$a$-forEachSegment-SegmentedByteStringKt$commonRangeEquals$2$iv":I
    move/from16 v5, v18

    move/from16 v0, v19

    move-object/from16 v2, v20

    .end local v18    # "byteCount$iv":I
    .end local v19    # "offset$iv":I
    .end local v20    # "data$iv":[B
    .local v0, "offset$iv":I
    .local v2, "data$iv":[B
    .local v5, "byteCount$iv":I
    invoke-static {v2, v0, v1, v6, v5}, Lokio/-Util;->arrayRangeEquals([BI[BII)Z

    move-result v18

    if-nez v18, :cond_2

    const/4 v5, 0x0

    goto :goto_3

    .line 285
    :cond_2
    add-int/2addr v6, v5

    .line 286
    nop

    .line 287
    .end local v0    # "offset$iv":I
    .end local v2    # "data$iv":[B
    .end local v5    # "byteCount$iv":I
    .end local v17    # "$i$a$-forEachSegment-SegmentedByteStringKt$commonRangeEquals$2$iv":I
    add-int/2addr v11, v15

    .line 288
    nop

    .end local v12    # "segmentOffset$iv$iv":I
    .end local v13    # "segmentSize$iv$iv":I
    .end local v14    # "segmentPos$iv$iv":I
    .end local v15    # "byteCount$iv$iv":I
    .end local v16    # "offset$iv$iv":I
    add-int/lit8 v10, v10, 0x1

    .line 276
    move/from16 v0, p1

    move/from16 v2, p3

    goto :goto_0

    .line 290
    :cond_3
    nop

    .line 291
    .end local v7    # "endIndex$iv$iv":I
    .end local v8    # "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    .end local v9    # "$i$f$forEachSegment":I
    .end local v10    # "s$iv$iv":I
    .end local v11    # "pos$iv$iv":I
    const/4 v5, 0x1

    goto :goto_3

    .line 269
    .end local v6    # "otherOffset$iv":I
    :cond_4
    :goto_2
    const/4 v5, 0x0

    .line 107
    .end local v3    # "$this$commonRangeEquals$iv":Lokio/SegmentedByteString;
    .end local v4    # "$i$f$commonRangeEquals":I
    :goto_3
    return v5
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lokio/ByteString;
    .locals 13
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 75
    move-object v0, p0

    .local v0, "$this$commonSubstring$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 153
    .local v1, "$i$f$commonSubstring":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_a

    .line 155
    invoke-virtual {v0}, Lokio/SegmentedByteString;->size()I

    move-result v4

    if-gt p2, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const-string v5, "endIndex="

    if-eqz v4, :cond_9

    .line 157
    sub-int v4, p2, p1

    .line 158
    .local v4, "subLen$iv":I
    if-ltz v4, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-eqz v3, :cond_8

    .line 160
    nop

    .line 161
    if-nez p1, :cond_3

    invoke-virtual {v0}, Lokio/SegmentedByteString;->size()I

    move-result v3

    if-ne p2, v3, :cond_3

    move-object v2, v0

    check-cast v2, Lokio/ByteString;

    goto/16 :goto_5

    .line 162
    :cond_3
    if-ne p1, p2, :cond_4

    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto/16 :goto_5

    .line 163
    :cond_4
    nop

    .line 165
    invoke-static {v0, p1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v3

    .line 166
    .local v3, "beginSegment$iv":I
    add-int/lit8 v5, p2, -0x1

    invoke-static {v0, v5}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v5

    .line 168
    .local v5, "endSegment$iv":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    add-int/lit8 v7, v5, 0x1

    invoke-static {v6, v3, v7}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    .line 169
    .local v6, "newSegments$iv":[[B
    move-object v7, v6

    check-cast v7, [Ljava/lang/Object;

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    new-array v7, v7, [I

    .line 170
    .local v7, "newDirectory$iv":[I
    const/4 v8, 0x0

    .line 171
    .local v8, "index$iv":I
    if-gt v3, v5, :cond_6

    move v9, v3

    .line 172
    .local v9, "s$iv":I
    :goto_3
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v10

    aget v10, v10, v9

    sub-int/2addr v10, p1

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v7, v8

    .line 173
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "index$iv":I
    .local v10, "index$iv":I
    move-object v11, v6

    check-cast v11, [Ljava/lang/Object;

    array-length v11, v11

    add-int/2addr v8, v11

    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v11

    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    array-length v12, v12

    add-int/2addr v12, v9

    aget v11, v11, v12

    aput v11, v7, v8

    .line 171
    if-eq v9, v5, :cond_5

    .end local v9    # "s$iv":I
    add-int/lit8 v9, v9, 0x1

    move v8, v10

    goto :goto_3

    .restart local v9    # "s$iv":I
    :cond_5
    move v8, v10

    .line 177
    .end local v9    # "s$iv":I
    .end local v10    # "index$iv":I
    .restart local v8    # "index$iv":I
    :cond_6
    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v2

    add-int/lit8 v9, v3, -0x1

    aget v2, v2, v9

    .line 178
    .local v2, "segmentOffset$iv":I
    :goto_4
    move-object v9, v6

    check-cast v9, [Ljava/lang/Object;

    array-length v9, v9

    aget v10, v7, v9

    sub-int v11, p1, v2

    add-int/2addr v10, v11

    aput v10, v7, v9

    .line 180
    new-instance v9, Lokio/SegmentedByteString;

    invoke-direct {v9, v6, v7}, Lokio/SegmentedByteString;-><init>([[B[I)V

    check-cast v9, Lokio/ByteString;

    move-object v2, v9

    .line 75
    .end local v0    # "$this$commonSubstring$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$commonSubstring":I
    .end local v2    # "segmentOffset$iv":I
    .end local v3    # "beginSegment$iv":I
    .end local v4    # "subLen$iv":I
    .end local v5    # "endSegment$iv":I
    .end local v6    # "newSegments$iv":[[B
    .end local v7    # "newDirectory$iv":[I
    .end local v8    # "index$iv":I
    :goto_5
    return-object v2

    .line 154
    .restart local v0    # "$this$commonSubstring$iv":Lokio/SegmentedByteString;
    .restart local v1    # "$i$f$commonSubstring":I
    .restart local v4    # "subLen$iv":I
    :cond_8
    const/4 v2, 0x0

    .line 158
    .local v2, "$i$a$-require-SegmentedByteStringKt$commonSubstring$3$iv":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " < beginIndex="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-SegmentedByteStringKt$commonSubstring$3$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 154
    .end local v4    # "subLen$iv":I
    :cond_9
    const/4 v2, 0x0

    .line 155
    .local v2, "$i$a$-require-SegmentedByteStringKt$commonSubstring$2$iv":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lokio/SegmentedByteString;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-SegmentedByteStringKt$commonSubstring$2$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 154
    :cond_a
    const/4 v2, 0x0

    .line 153
    .local v2, "$i$a$-require-SegmentedByteStringKt$commonSubstring$1$iv":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beginIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-SegmentedByteStringKt$commonSubstring$1$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 1

    .line 47
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .locals 1

    .line 49
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiUppercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 16

    .line 81
    move-object/from16 v0, p0

    .local v0, "$this$commonToByteArray$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 187
    .local v1, "$i$f$commonToByteArray":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->size()I

    move-result v2

    new-array v2, v2, [B

    .line 188
    .local v2, "result$iv":[B
    const/4 v3, 0x0

    .line 189
    .local v3, "resultPos$iv":I
    move-object v4, v0

    .local v4, "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    const/4 v5, 0x0

    .line 190
    .local v5, "$i$f$forEachSegment":I
    invoke-virtual {v4}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    array-length v6, v6

    .line 191
    .local v6, "segmentCount$iv$iv":I
    const/4 v7, 0x0

    .line 192
    .local v7, "s$iv$iv":I
    const/4 v8, 0x0

    .line 193
    .local v8, "pos$iv$iv":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 194
    invoke-virtual {v4}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v9

    add-int v10, v6, v7

    aget v9, v9, v10

    .line 195
    .local v9, "segmentPos$iv$iv":I
    invoke-virtual {v4}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v10

    aget v10, v10, v7

    .line 197
    .local v10, "nextSegmentOffset$iv$iv":I
    invoke-virtual {v4}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v11

    aget-object v11, v11, v7

    .local v11, "data$iv":[B
    sub-int v12, v10, v8

    .local v12, "byteCount$iv":I
    move v13, v9

    .local v13, "offset$iv":I
    const/4 v14, 0x0

    .line 198
    .local v14, "$i$a$-forEachSegment-SegmentedByteStringKt$commonToByteArray$1$iv":I
    nop

    .line 199
    add-int v15, v13, v12

    .line 198
    invoke-static {v11, v2, v3, v13, v15}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 200
    add-int/2addr v3, v12

    .line 201
    nop

    .line 202
    .end local v11    # "data$iv":[B
    .end local v12    # "byteCount$iv":I
    .end local v13    # "offset$iv":I
    .end local v14    # "$i$a$-forEachSegment-SegmentedByteStringKt$commonToByteArray$1$iv":I
    move v8, v10

    .line 203
    nop

    .end local v9    # "segmentPos$iv$iv":I
    .end local v10    # "nextSegmentOffset$iv$iv":I
    add-int/lit8 v7, v7, 0x1

    .line 193
    goto :goto_0

    .line 205
    :cond_0
    nop

    .line 206
    .end local v4    # "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    .end local v5    # "$i$f$forEachSegment":I
    .end local v6    # "segmentCount$iv$iv":I
    .end local v7    # "s$iv$iv":I
    .end local v8    # "pos$iv$iv":I
    nop

    .line 81
    .end local v0    # "$this$commonToByteArray$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$commonToByteArray":I
    .end local v2    # "result$iv":[B
    .end local v3    # "resultPos$iv":I
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 123
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    move-object v0, p0

    .local v0, "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    const/4 v1, 0x0

    .line 207
    .local v1, "$i$f$forEachSegment":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    .line 208
    .local v2, "segmentCount$iv":I
    const/4 v3, 0x0

    .line 209
    .local v3, "s$iv":I
    const/4 v4, 0x0

    .line 210
    .local v4, "pos$iv":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 211
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v5

    add-int v6, v2, v3

    aget v5, v5, v6

    .line 212
    .local v5, "segmentPos$iv":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v6

    aget v6, v6, v3

    .line 214
    .local v6, "nextSegmentOffset$iv":I
    invoke-virtual {v0}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v7

    aget-object v7, v7, v3

    .local v7, "data":[B
    sub-int v8, v6, v4

    .local v8, "byteCount":I
    move v9, v5

    .local v9, "offset":I
    const/4 v10, 0x0

    .line 88
    .local v10, "$i$a$-forEachSegment-SegmentedByteString$write$1":I
    invoke-virtual {p1, v7, v9, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 89
    nop

    .line 215
    .end local v7    # "data":[B
    .end local v8    # "byteCount":I
    .end local v9    # "offset":I
    .end local v10    # "$i$a$-forEachSegment-SegmentedByteString$write$1":I
    move v4, v6

    .line 216
    nop

    .end local v5    # "segmentPos$iv":I
    .end local v6    # "nextSegmentOffset$iv":I
    add-int/lit8 v3, v3, 0x1

    .line 210
    goto :goto_0

    .line 218
    :cond_0
    nop

    .line 90
    .end local v0    # "$this$forEachSegment$iv":Lokio/SegmentedByteString;
    .end local v1    # "$i$f$forEachSegment":I
    .end local v2    # "segmentCount$iv":I
    .end local v3    # "s$iv":I
    .end local v4    # "pos$iv":I
    return-void
.end method

.method public write$okio(Lokio/Buffer;II)V
    .locals 24
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "buffer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    move-object/from16 v2, p0

    .local v2, "$this$commonWrite$iv":Lokio/SegmentedByteString;
    const/4 v3, 0x0

    .line 219
    .local v3, "$i$f$commonWrite":I
    add-int v4, v1, p3

    .local v4, "endIndex$iv$iv":I
    move-object v5, v2

    .local v5, "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    const/4 v6, 0x0

    .line 220
    .local v6, "$i$f$forEachSegment":I
    invoke-static {v5, v1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v7

    .line 221
    .local v7, "s$iv$iv":I
    move/from16 v8, p2

    .line 222
    .local v8, "pos$iv$iv":I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 223
    if-nez v7, :cond_0

    const/4 v9, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v9

    add-int/lit8 v10, v7, -0x1

    aget v9, v9, v10

    .line 224
    .local v9, "segmentOffset$iv$iv":I
    :goto_1
    invoke-virtual {v5}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v10

    aget v10, v10, v7

    sub-int/2addr v10, v9

    .line 225
    .local v10, "segmentSize$iv$iv":I
    invoke-virtual {v5}, Lokio/SegmentedByteString;->getDirectory$okio()[I

    move-result-object v11

    invoke-virtual {v5}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    array-length v12, v12

    add-int/2addr v12, v7

    aget v11, v11, v12

    .line 227
    .local v11, "segmentPos$iv$iv":I
    add-int v12, v9, v10

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int/2addr v12, v8

    .line 228
    .local v12, "byteCount$iv$iv":I
    sub-int v13, v8, v9

    add-int/2addr v13, v11

    .line 229
    .local v13, "offset$iv$iv":I
    invoke-virtual {v5}, Lokio/SegmentedByteString;->getSegments$okio()[[B

    move-result-object v14

    aget-object v16, v14, v7

    .local v16, "data$iv":[B
    move v14, v12

    .local v14, "byteCount$iv":I
    move/from16 v21, v13

    .local v21, "offset$iv":I
    const/16 v22, 0x0

    .line 230
    .local v22, "$i$a$-forEachSegment-SegmentedByteStringKt$commonWrite$1$iv":I
    new-instance v23, Lokio/Segment;

    add-int v18, v21, v14

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v15, v23

    move/from16 v17, v21

    invoke-direct/range {v15 .. v20}, Lokio/Segment;-><init>([BIIZZ)V

    .line 231
    .local v15, "segment$iv":Lokio/Segment;
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_1

    .line 232
    iput-object v15, v15, Lokio/Segment;->prev:Lokio/Segment;

    .line 233
    iget-object v1, v15, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v1, v15, Lokio/Segment;->next:Lokio/Segment;

    .line 234
    iget-object v1, v15, Lokio/Segment;->next:Lokio/Segment;

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_2

    .line 236
    :cond_1
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v15}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 237
    .end local v15    # "segment$iv":Lokio/Segment;
    :goto_2
    nop

    .line 238
    nop

    .line 239
    .end local v14    # "byteCount$iv":I
    .end local v16    # "data$iv":[B
    .end local v21    # "offset$iv":I
    .end local v22    # "$i$a$-forEachSegment-SegmentedByteStringKt$commonWrite$1$iv":I
    add-int/2addr v8, v12

    .line 240
    nop

    .end local v9    # "segmentOffset$iv$iv":I
    .end local v10    # "segmentSize$iv$iv":I
    .end local v11    # "segmentPos$iv$iv":I
    .end local v12    # "byteCount$iv$iv":I
    .end local v13    # "offset$iv$iv":I
    add-int/lit8 v7, v7, 0x1

    .line 222
    move/from16 v1, p2

    goto :goto_0

    .line 242
    :cond_2
    nop

    .line 243
    .end local v4    # "endIndex$iv$iv":I
    .end local v5    # "$this$forEachSegment$iv$iv":Lokio/SegmentedByteString;
    .end local v6    # "$i$f$forEachSegment":I
    .end local v7    # "s$iv$iv":I
    .end local v8    # "pos$iv$iv":I
    invoke-virtual/range {p1 .. p1}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v2}, Lokio/SegmentedByteString;->size()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$okio(J)V

    .line 244
    nop

    .line 93
    .end local v2    # "$this$commonWrite$iv":Lokio/SegmentedByteString;
    .end local v3    # "$i$f$commonWrite":I
    return-void
.end method
