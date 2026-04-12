.class final Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;
.super Ljava/lang/Object;
.source "DTLSOutputRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DTLSFragmenter"
.end annotation


# instance fields
.field private acquireIndex:I

.field private flightIsReady:Z

.field private final handshakeMemos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;",
            ">;"
        }
    .end annotation
.end field

.field private messageSequence:I

.field private retransmits:I

.field final synthetic this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;


# direct methods
.method private constructor <init>(Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->handshakeMemos:Ljava/util/LinkedList;

    .line 338
    const/4 p1, 0x0

    iput p1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->acquireIndex:I

    .line 339
    iput p1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->messageSequence:I

    .line 340
    iput-boolean p1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->flightIsReady:Z

    .line 352
    const/4 p1, 0x2

    iput p1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->retransmits:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$1;

    .line 335
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;-><init>(Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;)V

    return-void
.end method

.method static synthetic access$100(Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;)V
    .locals 0
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    .line 335
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->setRetransmission()V

    return-void
.end method

.method private handshakeHashing(Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;[B)V
    .locals 10
    .param p1, "hsFrag"    # Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;
    .param p2, "hsBody"    # [B

    .line 544
    iget-byte v0, p1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->handshakeType:B

    .line 545
    .local v0, "hsType":B
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->isHashable(B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    return-void

    .line 551
    :cond_0
    const/16 v1, 0xc

    new-array v2, v1, [B

    .line 554
    .local v2, "temporary":[B
    iget-byte v3, p1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->handshakeType:B

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 557
    array-length v3, p2

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v2, v5

    .line 558
    array-length v3, p2

    const/16 v6, 0x8

    shr-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v7, 0x2

    aput-byte v3, v2, v7

    .line 559
    array-length v3, p2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v8, 0x3

    aput-byte v3, v2, v8

    .line 562
    iget v3, p1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->messageSequence:I

    shr-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v9, 0x4

    aput-byte v3, v2, v9

    .line 563
    iget v3, p1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->messageSequence:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v9, 0x5

    aput-byte v3, v2, v9

    .line 566
    const/4 v3, 0x6

    aput-byte v4, v2, v3

    .line 567
    const/4 v3, 0x7

    aput-byte v4, v2, v3

    .line 568
    aput-byte v4, v2, v6

    .line 571
    const/16 v3, 0x9

    aget-byte v5, v2, v5

    aput-byte v5, v2, v3

    .line 572
    const/16 v3, 0xa

    aget-byte v5, v2, v7

    aput-byte v5, v2, v3

    .line 573
    const/16 v3, 0xb

    aget-byte v5, v2, v8

    aput-byte v5, v2, v3

    .line 575
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v3, v2, v4, v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->deliver([BII)V

    .line 576
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    array-length v3, p2

    invoke-virtual {v1, p2, v4, v3}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->deliver([BII)V

    .line 577
    return-void
.end method

.method private setRetransmission()V
    .locals 4

    .line 604
    const/4 v0, 0x0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->acquireIndex:I

    .line 605
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;

    .line 606
    .local v2, "memo":Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;
    instance-of v3, v2, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;

    if-eqz v3, :cond_0

    .line 607
    move-object v3, v2

    check-cast v3, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;

    .line 608
    .local v3, "hmemo":Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;
    iput v0, v3, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->acquireOffset:I

    .line 610
    .end local v2    # "memo":Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;
    .end local v3    # "hmemo":Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;
    :cond_0
    goto :goto_0

    .line 617
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->packetSize:I

    const/16 v1, 0x414d

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->packetSize:I

    const/16 v1, 0x100

    if-le v0, v1, :cond_2

    iget v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->retransmits:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->retransmits:I

    if-gtz v0, :cond_2

    .line 621
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->shrinkPacketSize()V

    .line 622
    const/4 v0, 0x2

    iput v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->retransmits:I

    .line 624
    :cond_2
    return-void
.end method

.method private shrinkPacketSize()V
    .locals 3

    .line 627
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->packetSize:I

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0x100

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->packetSize:I

    .line 628
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

    .line 434
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->isRetransmittable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->setRetransmission()V

    goto :goto_0

    .line 438
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 442
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->handshakeMemos:Ljava/util/LinkedList;

    iget v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->acquireIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;

    .line 443
    .local v0, "memo":Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;
    const/4 v1, 0x0

    .line 444
    .local v1, "hsMemo":Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;
    iget-byte v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->contentType:B

    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v2, v3, :cond_2

    .line 445
    move-object v1, v0

    check-cast v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;

    .line 451
    :cond_2
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget v2, v2, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->packetSize:I

    if-lez v2, :cond_3

    .line 452
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget v2, v2, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->packetSize:I

    const/16 v3, 0x414d

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 453
    .local v2, "fragLen":I
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->encodeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    const/16 v4, 0x19

    invoke-virtual {v3, v2, v4}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->calculateFragmentSize(II)I

    move-result v2

    .line 457
    const/16 v3, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 459
    .end local v2    # "fragLen":I
    :cond_3
    const/16 v2, 0x4000

    .line 463
    .restart local v2    # "fragLen":I
    :goto_1
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    invoke-virtual {v3, v2}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->calculateFragmentSize(I)I

    move-result v2

    .line 465
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 466
    .local v10, "dstPos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    .line 467
    .local v11, "dstLim":I
    add-int/lit8 v3, v10, 0xd

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->encodeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 468
    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->getExplicitNonceSize()I

    move-result v4

    add-int v12, v3, v4

    .line 469
    .local v12, "dstContent":I
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 471
    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 472
    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->fragment:[B

    array-length v4, v4

    iget v5, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->acquireOffset:I

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 475
    iget-byte v4, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->handshakeType:B

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 476
    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->fragment:[B

    array-length v4, v4

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 477
    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->fragment:[B

    array-length v4, v4

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 478
    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->fragment:[B

    array-length v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 479
    iget v4, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->messageSequence:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 480
    iget v4, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->messageSequence:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 481
    iget v4, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->acquireOffset:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 482
    iget v4, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->acquireOffset:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 483
    iget v4, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->acquireOffset:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 484
    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 485
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 486
    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 487
    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->fragment:[B

    iget v5, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->acquireOffset:I

    invoke-virtual {p1, v4, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 489
    :cond_4
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->fragment:[B

    array-length v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 490
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->fragment:[B

    invoke-virtual {p1, v4, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 493
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 494
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 496
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_5

    const-string v4, "record"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WRITE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->contentType:B

    .line 499
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/ContentType;->nameOf(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 500
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    .line 497
    invoke-static {v4, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    :cond_5
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->encodeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iget-byte v4, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->contentType:B

    iget-byte v5, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->majorVersion:B

    iget-byte v6, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->minorVersion:B

    .line 507
    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->valueOf(BB)Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v9

    .line 504
    const/16 v8, 0xd

    move-object v5, p1

    move v6, v10

    move v7, v11

    invoke-static/range {v3 .. v9}, Lorg/openjsse/sun/security/ssl/OutputRecord;->encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BLjava/nio/ByteBuffer;IIILorg/openjsse/sun/security/ssl/ProtocolVersion;)J

    move-result-wide v3

    .line 510
    .local v3, "recordSN":J
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_6

    const-string v5, "packet"

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 511
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 512
    .local v5, "temporary":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 513
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 514
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Raw write ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 515
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    .line 514
    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    .end local v5    # "temporary":Ljava/nio/ByteBuffer;
    :cond_6
    invoke-virtual {p1, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 522
    if-eqz v1, :cond_8

    .line 523
    iget v5, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->acquireOffset:I

    add-int/2addr v5, v2

    iput v5, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->acquireOffset:I

    .line 524
    iget v5, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->acquireOffset:I

    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->fragment:[B

    array-length v6, v6

    if-ne v5, v6, :cond_7

    .line 525
    iget v5, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->acquireIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->acquireIndex:I

    .line 528
    :cond_7
    new-instance v5, Lorg/openjsse/sun/security/ssl/Ciphertext;

    iget-byte v6, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->contentType:B

    iget-byte v7, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->handshakeType:B

    invoke-direct {v5, v6, v7, v3, v4}, Lorg/openjsse/sun/security/ssl/Ciphertext;-><init>(BBJ)V

    return-object v5

    .line 531
    :cond_8
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->access$400(Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-byte v5, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->contentType:B

    sget-object v6, Lorg/openjsse/sun/security/ssl/ContentType;->ALERT:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v6, v6, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v5, v6, :cond_9

    .line 533
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->close()V

    .line 536
    :cond_9
    iget v5, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->acquireIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->acquireIndex:I

    .line 537
    new-instance v5, Lorg/openjsse/sun/security/ssl/Ciphertext;

    iget-byte v6, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->contentType:B

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NOT_APPLICABLE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v7, v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-direct {v5, v6, v7, v3, v4}, Lorg/openjsse/sun/security/ssl/Ciphertext;-><init>(BBJ)V

    return-object v5
.end method

.method hasAlert()Z
    .locals 4

    .line 589
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;

    .line 590
    .local v1, "memo":Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;
    iget-byte v2, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->contentType:B

    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->ALERT:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v2, v3, :cond_0

    .line 591
    const/4 v0, 0x1

    return v0

    .line 593
    .end local v1    # "memo":Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;
    :cond_0
    goto :goto_0

    .line 595
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isEmpty()Z
    .locals 2

    .line 580
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->flightIsReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->acquireIndex:I

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->handshakeMemos:Ljava/util/LinkedList;

    .line 581
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 585
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 582
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method isRetransmittable()Z
    .locals 2

    .line 599
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->flightIsReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->acquireIndex:I

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->handshakeMemos:Ljava/util/LinkedList;

    .line 600
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 599
    :goto_0
    return v0
.end method

.method queueUpAlert(BB)V
    .locals 3
    .param p1, "level"    # B
    .param p2, "description"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    new-instance v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;-><init>(Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$1;)V

    .line 420
    .local v0, "memo":Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;
    sget-object v1, Lorg/openjsse/sun/security/ssl/ContentType;->ALERT:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    iput-byte v1, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->contentType:B

    .line 421
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    iput-byte v1, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->majorVersion:B

    .line 422
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    iput-byte v1, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->minorVersion:B

    .line 423
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeEpoch:I

    iput v1, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->encodeEpoch:I

    .line 424
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->encodeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 426
    const/4 v1, 0x2

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->fragment:[B

    .line 427
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->fragment:[B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 428
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->fragment:[B

    const/4 v2, 0x1

    aput-byte p2, v1, v2

    .line 430
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 431
    return-void
.end method

.method queueUpChangeCipherSpec()V
    .locals 4

    .line 397
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->flightIsReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 399
    iput v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->acquireIndex:I

    .line 400
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->flightIsReady:Z

    .line 403
    :cond_0
    new-instance v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;-><init>(Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$1;)V

    .line 405
    .local v0, "memo":Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;
    sget-object v2, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    iput-byte v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->contentType:B

    .line 406
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    iput-byte v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->majorVersion:B

    .line 407
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    iput-byte v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->minorVersion:B

    .line 408
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget v2, v2, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeEpoch:I

    iput v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->encodeEpoch:I

    .line 409
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iput-object v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->encodeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 411
    const/4 v2, 0x1

    new-array v3, v2, [B

    iput-object v3, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->fragment:[B

    .line 412
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;->fragment:[B

    aput-byte v2, v3, v1

    .line 414
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 415
    return-void
.end method

.method queueUpHandshake([BII)V
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->flightIsReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 360
    iput v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->acquireIndex:I

    .line 361
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->flightIsReady:Z

    .line 364
    :cond_0
    new-instance v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;-><init>(Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$1;)V

    .line 366
    .local v0, "memo":Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;
    sget-object v2, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    iput-byte v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->contentType:B

    .line 367
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    iput-byte v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->majorVersion:B

    .line 368
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    iput-byte v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->minorVersion:B

    .line 369
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget v2, v2, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeEpoch:I

    iput v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->encodeEpoch:I

    .line 370
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->this$0:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iput-object v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->encodeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 372
    aget-byte v2, p1, p2

    iput-byte v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->handshakeType:B

    .line 373
    iget v2, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->messageSequence:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->messageSequence:I

    iput v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->messageSequence:I

    .line 374
    iput v1, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->acquireOffset:I

    .line 375
    add-int/lit8 v2, p3, -0x4

    new-array v2, v2, [B

    iput-object v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->fragment:[B

    .line 378
    add-int/lit8 v2, p2, 0x4

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->fragment:[B

    add-int/lit8 v4, p3, -0x4

    invoke-static {p1, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->fragment:[B

    invoke-direct {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->handshakeHashing(Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;[B)V

    .line 381
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->handshakeMemos:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-byte v1, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->handshakeType:B

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq v1, v2, :cond_1

    iget-byte v1, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->handshakeType:B

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq v1, v2, :cond_1

    iget-byte v1, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->handshakeType:B

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_VERIFY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq v1, v2, :cond_1

    iget-byte v1, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->handshakeType:B

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO_DONE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq v1, v2, :cond_1

    iget-byte v1, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;->handshakeType:B

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-ne v1, v2, :cond_2

    .line 390
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->flightIsReady:Z

    .line 392
    :cond_2
    return-void
.end method
