.class Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;
.super Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;
.source "HuffmanDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UncompressedState"
.end annotation


# instance fields
.field private final blockLength:J

.field private read:J

.field final synthetic this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;


# direct methods
.method private constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;J)V
    .locals 0
    .param p2, "blockLength"    # J

    .line 209
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;-><init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$1;)V

    .line 210
    iput-wide p2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->blockLength:J

    .line 211
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;JLorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$1;

    .line 205
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;-><init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;J)V

    return-void
.end method


# virtual methods
.method available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->blockLength:J

    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-static {v2}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$400(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Lorg/apache/commons/compress/utils/BitInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/utils/BitInputStream;->bitsAvailable()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method hasData()Z
    .locals 4

    .line 247
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->blockLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    if-nez p3, :cond_0

    .line 221
    const/4 v0, 0x0

    return v0

    .line 224
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->blockLength:J

    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    sub-long/2addr v0, v2

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 225
    .local v0, "max":I
    const/4 v1, 0x0

    .line 226
    .local v1, "readSoFar":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 228
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-static {v2}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$400(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Lorg/apache/commons/compress/utils/BitInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached()I

    move-result v2

    if-lez v2, :cond_1

    .line 229
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$500(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 230
    .local v2, "next":B
    add-int v3, p2, v1

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-static {v4}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$600(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->add(B)B

    move-result v4

    aput-byte v4, p1, v3

    .line 231
    const/4 v2, 0x1

    .line 232
    .local v2, "readNow":I
    goto :goto_1

    .line 233
    .end local v2    # "readNow":I
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-static {v2}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$700(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Ljava/io/InputStream;

    move-result-object v2

    add-int v3, p2, v1

    sub-int v4, v0, v1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 234
    .restart local v2    # "readNow":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 237
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-static {v3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$600(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

    move-result-object v3

    add-int v4, p2, v1

    invoke-virtual {v3, p1, v4, v2}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->add([BII)V

    .line 239
    :goto_1
    iget-wide v3, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    .line 240
    add-int/2addr v1, v2

    .line 241
    .end local v2    # "readNow":I
    goto :goto_0

    .line 235
    .restart local v2    # "readNow":I
    :cond_2
    new-instance v3, Ljava/io/EOFException;

    const-string v4, "Truncated Deflate64 Stream"

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 242
    .end local v2    # "readNow":I
    :cond_3
    return v0
.end method

.method state()Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
    .locals 4

    .line 215
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->blockLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->STORED:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->INITIAL:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    :goto_0
    return-object v0
.end method
