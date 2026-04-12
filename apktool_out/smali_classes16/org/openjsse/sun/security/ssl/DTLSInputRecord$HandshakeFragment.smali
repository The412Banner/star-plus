.class final Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
.super Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;
.source "DTLSInputRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/DTLSInputRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandshakeFragment"
.end annotation


# instance fields
.field fragmentLength:I

.field fragmentOffset:I

.field handshakeType:B

.field messageLength:I

.field messageSeq:I


# direct methods
.method constructor <init>([BBBB[BIJBIIII)V
    .locals 11
    .param p1, "fragment"    # [B
    .param p2, "contentType"    # B
    .param p3, "majorVersion"    # B
    .param p4, "minorVersion"    # B
    .param p5, "recordEnS"    # [B
    .param p6, "recordEpoch"    # I
    .param p7, "recordSeq"    # J
    .param p9, "handshakeType"    # B
    .param p10, "messageLength"    # I
    .param p11, "messageSeq"    # I
    .param p12, "fragmentOffset"    # I
    .param p13, "fragmentLength"    # I

    .line 488
    move-object v10, p0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;-><init>([BBBB[BIJZ)V

    .line 491
    move/from16 v0, p9

    iput-byte v0, v10, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->handshakeType:B

    .line 492
    move/from16 v1, p11

    iput v1, v10, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    .line 493
    move/from16 v2, p10

    iput v2, v10, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageLength:I

    .line 494
    move/from16 v3, p12

    iput v3, v10, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentOffset:I

    .line 495
    move/from16 v4, p13

    iput v4, v10, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentLength:I

    .line 496
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 474
    check-cast p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    invoke-virtual {p0, p1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->compareTo(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)I
    .locals 4
    .param p1, "o"    # Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    .line 500
    instance-of v0, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    if-eqz v0, :cond_3

    .line 501
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    .line 502
    .local v0, "other":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    iget v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    iget v2, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    if-eq v1, v2, :cond_0

    .line 504
    iget v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    iget v2, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->messageSeq:I

    sub-int/2addr v1, v2

    return v1

    .line 505
    :cond_0
    iget v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentOffset:I

    iget v2, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentOffset:I

    if-eq v1, v2, :cond_1

    .line 507
    iget v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentOffset:I

    iget v2, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentOffset:I

    sub-int/2addr v1, v2

    return v1

    .line 508
    :cond_1
    iget v1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentLength:I

    iget v2, v0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->fragmentLength:I

    if-ne v1, v2, :cond_2

    .line 510
    const/4 v1, 0x0

    return v1

    .line 517
    :cond_2
    iget v1, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordEpoch:I

    iget-wide v2, p1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->recordSeq:J

    invoke-virtual {p0, v1, v2, v3}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;->compareToSequence(IJ)I

    move-result v1

    return v1

    .line 520
    .end local v0    # "other":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    :cond_3
    invoke-super {p0, p1}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;->compareTo(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)I

    move-result v0

    return v0
.end method
