.class public Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;
.source "BlockLZ4CompressorInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;
    }
.end annotation


# static fields
.field static final BACK_REFERENCE_SIZE_MASK:I = 0xf

.field static final LITERAL_SIZE_MASK:I = 0xf0

.field static final SIZE_BITS:I = 0x4

.field static final WINDOW_SIZE:I = 0x10000


# instance fields
.field private nextBackReferenceSize:I

.field private state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    const/high16 v0, 0x10000

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 45
    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->NO_BLOCK:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    .line 57
    return-void
.end method

.method private initializeBackReference()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, "backReferenceOffset":I
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    long-to-int v0, v1

    .line 139
    nop

    .line 140
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->nextBackReferenceSize:I

    int-to-long v1, v1

    .line 141
    .local v1, "backReferenceSize":J
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->nextBackReferenceSize:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    .line 142
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readSizeBytes()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 145
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 149
    const-wide/16 v3, 0x4

    add-long/2addr v3, v1

    :try_start_1
    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->startBackReference(IJ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    nop

    .line 153
    sget-object v3, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->IN_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    .line 154
    const/4 v3, 0x1

    return v3

    .line 150
    :catch_0
    move-exception v3

    .line 151
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Illegal block with bad offset found"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 146
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Illegal block with a negative match length found"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    .end local v1    # "backReferenceSize":J
    :catch_1
    move-exception v1

    .line 135
    .local v1, "ex":Ljava/io/IOException;
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->nextBackReferenceSize:I

    if-nez v2, :cond_2

    .line 136
    const/4 v2, 0x0

    return v2

    .line 138
    :cond_2
    throw v1
.end method

.method private readSizeBytes()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    const-wide/16 v0, 0x0

    .line 117
    .local v0, "accum":J
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readOneByte()I

    move-result v2

    .line 118
    .local v2, "nextByte":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 121
    int-to-long v3, v2

    add-long/2addr v0, v3

    .line 122
    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    .line 123
    return-wide v0

    .line 119
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Premature end of stream while parsing length"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private readSizes()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readOneByte()I

    move-result v0

    .line 98
    .local v0, "nextBlock":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 101
    and-int/lit8 v1, v0, 0xf

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->nextBackReferenceSize:I

    .line 102
    and-int/lit16 v1, v0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    int-to-long v1, v1

    .line 103
    .local v1, "literalSizePart":J
    const-wide/16 v3, 0xf

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 104
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readSizeBytes()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 106
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 109
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->startLiteral(J)V

    .line 110
    sget-object v3, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->IN_LITERAL:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    .line 111
    return-void

    .line 107
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Illegal block with a negative literal size found"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    .end local v1    # "literalSizePart":J
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Premature end of stream while looking for next block"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    if-nez p3, :cond_0

    .line 65
    const/4 v0, 0x0

    return v0

    .line 67
    :cond_0
    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$1;->$SwitchMap$org$apache$commons$compress$compressors$lz4$BlockLZ4CompressorInputStream$State:[I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 92
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown stream state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->initializeBackReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->EOF:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    .line 82
    return v1

    .line 86
    :cond_1
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readBackReference([BII)I

    move-result v0

    .line 87
    .local v0, "backReferenceLen":I
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->hasMoreDataInBlock()Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    sget-object v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->NO_BLOCK:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    .line 90
    :cond_2
    if-lez v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->read([BII)I

    move-result v1

    :goto_0
    return v1

    .line 71
    .end local v0    # "backReferenceLen":I
    :pswitch_2
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readSizes()V

    .line 74
    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readLiteral([BII)I

    move-result v0

    .line 75
    .local v0, "litLen":I
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->hasMoreDataInBlock()Z

    move-result v1

    if-nez v1, :cond_4

    .line 76
    sget-object v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->LOOKING_FOR_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    .line 78
    :cond_4
    if-lez v0, :cond_5

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->read([BII)I

    move-result v1

    :goto_1
    return v1

    .line 69
    .end local v0    # "litLen":I
    :pswitch_4
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
