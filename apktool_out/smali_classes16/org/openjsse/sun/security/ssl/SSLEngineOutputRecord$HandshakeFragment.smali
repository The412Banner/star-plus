.class final Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;
.super Ljava/lang/Object;
.source "SSLEngineOutputRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HandshakeFragment"
.end annotation


# instance fields
.field private handshakeMemos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;)V
    .locals 1
    .param p1, "this$0"    # Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    .line 368
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->handshakeMemos:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method acquireCiphertext(Ljava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/Ciphertext;
    .locals 13
    .param p1, "dstBuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    const/4 v0, 0x0

    return-object v0

    .line 424
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;

    .line 425
    .local v0, "memo":Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;
    const/4 v1, 0x0

    .line 426
    .local v1, "hsMemo":Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;
    iget-byte v2, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->contentType:B

    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v2, v3, :cond_1

    .line 427
    move-object v1, v0

    check-cast v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;

    .line 433
    :cond_1
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    iget v2, v2, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->packetSize:I

    if-lez v2, :cond_2

    .line 434
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    iget v2, v2, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->packetSize:I

    const/16 v3, 0x4145

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 435
    .local v2, "fragLen":I
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->encodeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    const/4 v4, 0x5

    invoke-virtual {v3, v2, v4}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->calculateFragmentSize(II)I

    move-result v2

    goto :goto_0

    .line 438
    .end local v2    # "fragLen":I
    :cond_2
    const/16 v2, 0x4000

    .line 442
    .restart local v2    # "fragLen":I
    :goto_0
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    invoke-virtual {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->calculateFragmentSize(I)I

    move-result v2

    .line 444
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 445
    .local v10, "dstPos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    .line 446
    .local v11, "dstLim":I
    add-int/lit8 v3, v10, 0x5

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->encodeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 447
    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->getExplicitNonceSize()I

    move-result v4

    add-int v12, v3, v4

    .line 448
    .local v12, "dstContent":I
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 450
    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 451
    move v4, v2

    .line 452
    .local v4, "remainingFragLen":I
    :goto_1
    if-lez v4, :cond_6

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 453
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->fragment:[B

    array-length v5, v5

    .line 454
    .local v5, "memoFragLen":I
    iget v6, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->acquireOffset:I

    if-nez v6, :cond_4

    .line 456
    const/4 v6, 0x4

    if-gt v4, v6, :cond_3

    .line 457
    goto :goto_2

    .line 460
    :cond_3
    iget-byte v6, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->handshakeType:B

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 461
    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 462
    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 463
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 465
    add-int/lit8 v4, v4, -0x4

    .line 468
    :cond_4
    iget v6, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->acquireOffset:I

    sub-int v6, v5, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 470
    .local v6, "chipLen":I
    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->fragment:[B

    iget v8, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->acquireOffset:I

    invoke-virtual {p1, v7, v8, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 472
    iget v7, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->acquireOffset:I

    add-int/2addr v7, v6

    iput v7, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->acquireOffset:I

    .line 473
    iget v7, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->acquireOffset:I

    if-ne v7, v5, :cond_5

    .line 474
    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 477
    if-le v4, v6, :cond_5

    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->handshakeMemos:Ljava/util/LinkedList;

    .line 478
    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 481
    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;

    .line 482
    .local v7, "rm":Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;
    iget-byte v8, v7, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->contentType:B

    sget-object v9, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v9, v9, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v8, v9, :cond_6

    iget-object v8, v7, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->encodeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iget-object v9, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->encodeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    if-ne v8, v9, :cond_6

    .line 484
    move-object v1, v7

    check-cast v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;

    .line 492
    .end local v7    # "rm":Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;
    :cond_5
    sub-int/2addr v4, v6

    .line 493
    .end local v5    # "memoFragLen":I
    .end local v6    # "chipLen":I
    goto :goto_1

    .line 494
    .end local v4    # "remainingFragLen":I
    :cond_6
    :goto_2
    goto :goto_3

    .line 495
    :cond_7
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->fragment:[B

    array-length v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 496
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->fragment:[B

    invoke-virtual {p1, v4, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 498
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 501
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 502
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 504
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_8

    const-string v4, "record"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WRITE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->contentType:B

    .line 507
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/ContentType;->nameOf(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 508
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    .line 505
    invoke-static {v4, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    :cond_8
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->encodeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iget-byte v4, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->contentType:B

    iget-byte v5, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->majorVersion:B

    iget-byte v6, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->minorVersion:B

    .line 516
    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->valueOf(BB)Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v9

    .line 512
    const/4 v8, 0x5

    move-object v5, p1

    move v6, v10

    move v7, v11

    invoke-static/range {v3 .. v9}, Lorg/openjsse/sun/security/ssl/OutputRecord;->encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BLjava/nio/ByteBuffer;IIILorg/openjsse/sun/security/ssl/ProtocolVersion;)J

    move-result-wide v3

    .line 519
    .local v3, "recordSN":J
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_9

    const-string v5, "packet"

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 520
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 521
    .local v5, "temporary":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 522
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 523
    const-string v6, "Raw write"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    .end local v5    # "temporary":Ljava/nio/ByteBuffer;
    :cond_9
    invoke-virtual {p1, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 530
    if-eqz v1, :cond_a

    .line 531
    new-instance v5, Lorg/openjsse/sun/security/ssl/Ciphertext;

    iget-byte v6, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->contentType:B

    iget-byte v7, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->handshakeType:B

    invoke-direct {v5, v6, v7, v3, v4}, Lorg/openjsse/sun/security/ssl/Ciphertext;-><init>(BBJ)V

    return-object v5

    .line 534
    :cond_a
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->access$200(Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-byte v5, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->contentType:B

    sget-object v6, Lorg/openjsse/sun/security/ssl/ContentType;->ALERT:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v6, v6, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v5, v6, :cond_b

    .line 536
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->close()V

    .line 539
    :cond_b
    new-instance v5, Lorg/openjsse/sun/security/ssl/Ciphertext;

    iget-byte v6, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->contentType:B

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NOT_APPLICABLE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v7, v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-direct {v5, v6, v7, v3, v4}, Lorg/openjsse/sun/security/ssl/Ciphertext;-><init>(BBJ)V

    return-object v5
.end method

.method hasAlert()Z
    .locals 4

    .line 549
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;

    .line 550
    .local v1, "memo":Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;
    iget-byte v2, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->contentType:B

    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->ALERT:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v2, v3, :cond_0

    .line 551
    const/4 v0, 0x1

    return v0

    .line 553
    .end local v1    # "memo":Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;
    :cond_0
    goto :goto_0

    .line 555
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .line 545
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method queueUpAlert(BB)V
    .locals 3
    .param p1, "level"    # B
    .param p2, "description"    # B

    .line 405
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;-><init>(Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$1;)V

    .line 407
    .local v0, "memo":Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;
    sget-object v1, Lorg/openjsse/sun/security/ssl/ContentType;->ALERT:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    iput-byte v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->contentType:B

    .line 408
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    iput-byte v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->majorVersion:B

    .line 409
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    iput-byte v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->minorVersion:B

    .line 410
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->encodeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 412
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->fragment:[B

    .line 413
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->fragment:[B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 414
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->fragment:[B

    const/4 v2, 0x1

    aput-byte p2, v1, v2

    .line 416
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 417
    return-void
.end method

.method queueUpChangeCipherSpec()V
    .locals 4

    .line 391
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;-><init>(Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$1;)V

    .line 393
    .local v0, "memo":Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;
    sget-object v1, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    iput-byte v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->contentType:B

    .line 394
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    iput-byte v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->majorVersion:B

    .line 395
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    iput-byte v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->minorVersion:B

    .line 396
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->encodeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 398
    const/4 v1, 0x1

    new-array v2, v1, [B

    iput-object v2, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->fragment:[B

    .line 399
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;->fragment:[B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    .line 401
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 402
    return-void
.end method

.method queueUpFragment([BII)V
    .locals 5
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;-><init>(Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$1;)V

    .line 375
    .local v0, "memo":Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;
    sget-object v1, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    iput-byte v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->contentType:B

    .line 376
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    iput-byte v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->majorVersion:B

    .line 377
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    iput-byte v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->minorVersion:B

    .line 378
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->this$0:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->encodeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 380
    aget-byte v1, p1, p2

    iput-byte v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->handshakeType:B

    .line 381
    const/4 v1, 0x0

    iput v1, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->acquireOffset:I

    .line 382
    add-int/lit8 v2, p3, -0x4

    new-array v2, v2, [B

    iput-object v2, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->fragment:[B

    .line 385
    add-int/lit8 v2, p2, 0x4

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;->fragment:[B

    add-int/lit8 v4, p3, -0x4

    invoke-static {p1, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 388
    return-void
.end method
