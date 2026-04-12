.class Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;
.super Ljava/lang/Object;
.source "DTLSInputRecord.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/DTLSInputRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;",
        ">;"
    }
.end annotation


# instance fields
.field contentType:B

.field fragment:[B

.field isCiphertext:Z

.field majorVersion:B

.field minorVersion:B

.field recordEnS:[B

.field recordEpoch:I

.field recordSeq:J


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;BBB[BIJZ)V
    .locals 11
    .param p1, "fragBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "contentType"    # B
    .param p3, "majorVersion"    # B
    .param p4, "minorVersion"    # B
    .param p5, "recordEnS"    # [B
    .param p6, "recordEpoch"    # I
    .param p7, "recordSeq"    # J
    .param p9, "isCiphertext"    # Z

    .line 413
    move-object v10, p0

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, [B

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;-><init>([BBBB[BIJZ)V

    .line 416
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, v10, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->fragment:[B

    .line 417
    iget-object v0, v10, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->fragment:[B

    move-object v1, p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 418
    return-void
.end method

.method constructor <init>([BBBB[BIJZ)V
    .locals 0
    .param p1, "fragment"    # [B
    .param p2, "contentType"    # B
    .param p3, "majorVersion"    # B
    .param p4, "minorVersion"    # B
    .param p5, "recordEnS"    # [B
    .param p6, "recordEpoch"    # I
    .param p7, "recordSeq"    # J
    .param p9, "isCiphertext"    # Z

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-boolean p9, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->isCiphertext:Z

    .line 425
    iput-byte p2, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    .line 426
    iput-byte p3, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->majorVersion:B

    .line 427
    iput-byte p4, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->minorVersion:B

    .line 428
    iput p6, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    .line 429
    iput-wide p7, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordSeq:J

    .line 430
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEnS:[B

    .line 431
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->fragment:[B

    .line 433
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 399
    check-cast p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    invoke-virtual {p0, p1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->compareTo(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)I
    .locals 3
    .param p1, "o"    # Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    .line 437
    iget-byte v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    sget-object v1, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v0, v1, :cond_1

    .line 438
    iget-byte v0, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    sget-object v1, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v0, v1, :cond_0

    .line 442
    iget v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    iget v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    .line 443
    :cond_0
    iget v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    iget v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    if-ne v0, v1, :cond_3

    iget-byte v0, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    sget-object v1, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v0, v1, :cond_3

    .line 446
    const/4 v0, 0x1

    return v0

    .line 448
    :cond_1
    iget-byte v0, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    sget-object v1, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v0, v1, :cond_3

    .line 449
    iget v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    iget v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    if-ne v0, v1, :cond_2

    iget-byte v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->contentType:B

    sget-object v1, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v0, v1, :cond_2

    .line 452
    const/4 v0, -0x1

    return v0

    .line 455
    :cond_2
    iget v0, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    iget-wide v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordSeq:J

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->compareToSequence(IJ)I

    move-result v0

    return v0

    .line 459
    :cond_3
    iget v0, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    iget-wide v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordSeq:J

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->compareToSequence(IJ)I

    move-result v0

    return v0
.end method

.method compareToSequence(IJ)I
    .locals 2
    .param p1, "epoch"    # I
    .param p2, "seq"    # J

    .line 463
    iget v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    if-le v0, p1, :cond_0

    .line 464
    const/4 v0, 0x1

    return v0

    .line 465
    :cond_0
    iget v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    if-ne v0, p1, :cond_1

    .line 466
    iget-wide v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordSeq:J

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0

    .line 468
    :cond_1
    const/4 v0, -0x1

    return v0
.end method
