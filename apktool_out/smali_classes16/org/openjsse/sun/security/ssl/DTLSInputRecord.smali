.class final Lorg/openjsse/sun/security/ssl/DTLSInputRecord;
.super Lorg/openjsse/sun/security/ssl/InputRecord;
.source "DTLSInputRecord.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/DTLSRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;,
        Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFlight;,
        Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HoleDescriptor;,
        Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;,
        Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;
    }
.end annotation


# instance fields
.field private readEpoch:I

.field private reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V
    .locals 1
    .param p1, "handshakeHash"    # Lorg/openjsse/sun/security/ssl/HandshakeHash;

    .line 50
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->nullDTlsReadCipher()Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/ssl/InputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->readEpoch:I

    .line 52
    return-void
.end method

.method static synthetic access$100(Lorg/openjsse/sun/security/ssl/DTLSInputRecord;)I
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/DTLSInputRecord;

    .line 45
    iget v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->readEpoch:I

    return v0
.end method

.method static synthetic access$200(BBB[BIJLjava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    .locals 1
    .param p0, "x0"    # B
    .param p1, "x1"    # B
    .param p2, "x2"    # B
    .param p3, "x3"    # [B
    .param p4, "x4"    # I
    .param p5, "x5"    # J
    .param p7, "x6"    # Ljava/nio/ByteBuffer;

    .line 45
    invoke-static/range {p0 .. p7}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->parseHandshakeMessage(BBB[BIJLjava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    move-result-object v0

    return-object v0
.end method

.method private bytesInCompletePacket(Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "packet"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 310
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 311
    const/4 v0, -0x1

    return v0

    .line 315
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 318
    .local v0, "pos":I
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 319
    .local v2, "contentType":B
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/ContentType;->valueOf(B)Lorg/openjsse/sun/security/ssl/ContentType;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 325
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 326
    .local v3, "majorVersion":B
    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 327
    .local v4, "minorVersion":B
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v4, v6, v5}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isNegotiable(BBZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 335
    add-int/lit8 v5, v0, 0xb

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v0, 0xc

    .line 336
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    .line 337
    .local v5, "fragLen":I
    const/16 v1, 0x4800

    if-gt v5, v1, :cond_1

    .line 343
    return v5

    .line 338
    :cond_1
    new-instance v6, Ljavax/net/ssl/SSLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Record overflow, fragment length ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") MUST not exceed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 329
    .end local v5    # "fragLen":I
    :cond_2
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized record version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 330
    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(BB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , plaintext connection?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    .end local v3    # "majorVersion":B
    .end local v4    # "minorVersion":B
    :cond_3
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v3, "Unrecognized SSL message, plaintext connection?"

    invoke-direct {v1, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseHandshakeMessage(BBB[BIJLjava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    .locals 23
    .param p0, "contentType"    # B
    .param p1, "majorVersion"    # B
    .param p2, "minorVersion"    # B
    .param p3, "recordEnS"    # [B
    .param p4, "recordEpoch"    # I
    .param p5, "recordSeq"    # J
    .param p7, "plaintextFragment"    # Ljava/nio/ByteBuffer;

    .line 351
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 352
    .local v0, "remaining":I
    const/16 v1, 0xc

    const/4 v2, 0x0

    const-string v3, "ssl"

    const/4 v4, 0x0

    if-ge v0, v1, :cond_1

    .line 353
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const-string v1, "Discard invalid record: too small record to hold a handshake fragment"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    :cond_0
    return-object v4

    .line 362
    :cond_1
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 363
    .local v1, "handshakeType":B
    nop

    .line 364
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 365
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .line 366
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    or-int v19, v5, v6

    .line 367
    .local v19, "messageLength":I
    nop

    .line 368
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 369
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    or-int v20, v5, v6

    .line 370
    .local v20, "messageSeq":I
    nop

    .line 371
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 372
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .line 373
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    or-int v21, v5, v6

    .line 374
    .local v21, "fragmentOffset":I
    nop

    .line 375
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 376
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .line 377
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    or-int v15, v5, v6

    .line 378
    .local v15, "fragmentLength":I
    add-int/lit8 v5, v0, -0xc

    if-ge v5, v15, :cond_3

    .line 379
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_2

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    const-string v3, "Discard invalid record: not a complete handshake fragment in the record"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    :cond_2
    return-object v4

    .line 388
    :cond_3
    new-array v2, v15, [B

    .line 389
    .local v2, "fragment":[B
    move-object/from16 v3, p7

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 391
    new-instance v4, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    move-object v5, v4

    move-object v6, v2

    move/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-wide/from16 v12, p5

    move v14, v1

    move/from16 v22, v15

    .end local v15    # "fragmentLength":I
    .local v22, "fragmentLength":I
    move/from16 v15, v19

    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, v22

    invoke-direct/range {v5 .. v18}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;-><init>([BBBB[BIJBIIII)V

    return-object v4
.end method


# virtual methods
.method acquirePlaintext()Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->acquirePlaintext()Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method bytesInCompletePacket([Ljava/nio/ByteBuffer;II)I
    .locals 1
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    aget-object v0, p1, p2

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->bytesInCompletePacket(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method changeReadCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;)V
    .locals 1
    .param p1, "readCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    .line 56
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    .line 57
    iget v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->readEpoch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->readEpoch:I

    .line 58
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_0
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->isClosed:Z

    if-nez v0, :cond_0

    .line 63
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/InputRecord;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/DTLSInputRecord;
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method decode(Ljava/nio/ByteBuffer;)[Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 35
    .param p1, "packet"    # Ljava/nio/ByteBuffer;

    .line 118
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-boolean v0, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->isClosed:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 119
    return-object v3

    .line 122
    :cond_0
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_1

    const-string v0, "packet"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const-string v0, "Raw read"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 128
    .local v4, "srcPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    .line 130
    .local v5, "srcLim":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    .line 131
    .local v15, "contentType":B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    .line 132
    .local v13, "majorVersion":B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    .line 133
    .local v14, "minorVersion":B
    const/16 v0, 0x8

    new-array v12, v0, [B

    .line 134
    .local v12, "recordEnS":[B
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 135
    const/4 v11, 0x0

    aget-byte v6, v12, v11

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v0

    const/4 v10, 0x1

    aget-byte v7, v12, v10

    and-int/lit16 v7, v7, 0xff

    or-int v9, v6, v7

    .line 137
    .local v9, "recordEpoch":I
    const/4 v6, 0x2

    aget-byte v6, v12, v6

    int-to-long v6, v6

    const-wide/16 v16, 0xff

    and-long v6, v6, v16

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    const/4 v8, 0x3

    aget-byte v8, v12, v8

    move/from16 v26, v4

    .end local v4    # "srcPos":I
    .local v26, "srcPos":I
    int-to-long v3, v8

    and-long v3, v3, v16

    const/16 v8, 0x20

    shl-long/2addr v3, v8

    or-long/2addr v3, v6

    const/4 v6, 0x4

    aget-byte v6, v12, v6

    int-to-long v6, v6

    and-long v6, v6, v16

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v3, v6

    const/4 v6, 0x5

    aget-byte v6, v12, v6

    int-to-long v6, v6

    and-long v6, v6, v16

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v3, v6

    const/4 v6, 0x6

    aget-byte v6, v12, v6

    int-to-long v6, v6

    and-long v6, v6, v16

    shl-long/2addr v6, v0

    or-long/2addr v3, v6

    const/4 v6, 0x7

    aget-byte v6, v12, v6

    int-to-long v6, v6

    and-long v6, v6, v16

    or-long/2addr v3, v6

    .line 144
    .local v3, "recordSeq":J
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v0, v6, 0x8

    .line 145
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    or-int v8, v0, v6

    .line 147
    .local v8, "contentLen":I
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const-string v6, "record"

    if-eqz v0, :cond_2

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "READ: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    invoke-static {v13, v14}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(BB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    invoke-static {v15}, Lorg/openjsse/sun/security/ssl/ContentType;->nameOf(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", length = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v7, v11, [Ljava/lang/Object;

    .line 148
    invoke-static {v0, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_2
    add-int/lit8 v0, v8, 0xd

    move/from16 v7, v26

    .end local v26    # "srcPos":I
    .local v7, "srcPos":I
    invoke-static {v7, v0}, Ljava/lang/Math;->addExact(II)I

    move-result v11

    .line 156
    .local v11, "recLim":I
    iget v0, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->readEpoch:I

    if-le v0, v9, :cond_4

    .line 158
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_3

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    const-string v0, "READ: discard this old record"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_3
    const/4 v6, 0x0

    return-object v6

    .line 166
    :cond_4
    iget v0, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->readEpoch:I

    const-string v6, "verbose"

    if-ge v0, v9, :cond_c

    .line 170
    sget-object v0, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-eq v15, v0, :cond_5

    sget-object v0, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v15, v0, :cond_7

    :cond_5
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    if-nez v0, :cond_6

    sget-object v0, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v15, v0, :cond_7

    :cond_6
    iget v0, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->readEpoch:I

    add-int/lit8 v10, v9, -0x1

    if-ge v0, v10, :cond_9

    .line 176
    :cond_7
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 178
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_8

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 179
    const-string v0, "Premature record (epoch), discard it."

    const/4 v10, 0x0

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_8
    const/4 v6, 0x0

    return-object v6

    .line 188
    :cond_9
    const/4 v10, 0x0

    new-array v0, v8, [B

    .line 189
    .local v0, "fragment":[B
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 190
    new-instance v16, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    const/16 v18, 0x1

    move-object/from16 v6, v16

    move/from16 v26, v7

    .end local v7    # "srcPos":I
    .restart local v26    # "srcPos":I
    move-object v7, v0

    move/from16 v27, v8

    .end local v8    # "contentLen":I
    .local v27, "contentLen":I
    move v8, v15

    move/from16 v28, v9

    .end local v9    # "recordEpoch":I
    .local v28, "recordEpoch":I
    move v9, v13

    move/from16 v17, v10

    move v10, v14

    move/from16 v29, v11

    .end local v11    # "recLim":I
    .local v29, "recLim":I
    move-object v11, v12

    move-object/from16 v30, v12

    .end local v12    # "recordEnS":[B
    .local v30, "recordEnS":[B
    move/from16 v12, v28

    move/from16 v31, v13

    move/from16 v32, v14

    .end local v13    # "majorVersion":B
    .end local v14    # "minorVersion":B
    .local v31, "majorVersion":B
    .local v32, "minorVersion":B
    move-wide v13, v3

    move-wide/from16 v33, v3

    move v3, v15

    .end local v15    # "contentType":B
    .local v3, "contentType":B
    .local v33, "recordSeq":J
    move/from16 v15, v18

    invoke-direct/range {v6 .. v15}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;-><init>([BBBB[BIJZ)V

    move-object/from16 v4, v16

    .line 194
    .local v4, "buffered":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    if-nez v6, :cond_a

    .line 195
    new-instance v6, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    move/from16 v14, v28

    .end local v28    # "recordEpoch":I
    .local v14, "recordEpoch":I
    invoke-direct {v6, v1, v14}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;-><init>(Lorg/openjsse/sun/security/ssl/DTLSInputRecord;I)V

    iput-object v6, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    goto :goto_0

    .line 194
    .end local v14    # "recordEpoch":I
    .restart local v28    # "recordEpoch":I
    :cond_a
    move/from16 v14, v28

    .line 197
    .end local v28    # "recordEpoch":I
    .restart local v14    # "recordEpoch":I
    :goto_0
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    invoke-virtual {v6, v4}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->queueUpFragment(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)V

    .line 200
    move/from16 v15, v29

    .end local v29    # "recLim":I
    .local v15, "recLim":I
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 202
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    invoke-virtual {v6}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->acquirePlaintext()Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v6

    .line 203
    .local v6, "pt":Lorg/openjsse/sun/security/ssl/Plaintext;
    if-nez v6, :cond_b

    const/4 v7, 0x0

    goto :goto_1

    :cond_b
    const/4 v7, 0x1

    new-array v7, v7, [Lorg/openjsse/sun/security/ssl/Plaintext;

    const/4 v11, 0x0

    aput-object v6, v7, v11

    :goto_1
    return-object v7

    .line 210
    .end local v0    # "fragment":[B
    .end local v4    # "buffered":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;
    .end local v6    # "pt":Lorg/openjsse/sun/security/ssl/Plaintext;
    .end local v26    # "srcPos":I
    .end local v27    # "contentLen":I
    .end local v30    # "recordEnS":[B
    .end local v31    # "majorVersion":B
    .end local v32    # "minorVersion":B
    .end local v33    # "recordSeq":J
    .local v3, "recordSeq":J
    .restart local v7    # "srcPos":I
    .restart local v8    # "contentLen":I
    .restart local v9    # "recordEpoch":I
    .restart local v11    # "recLim":I
    .restart local v12    # "recordEnS":[B
    .restart local v13    # "majorVersion":B
    .local v14, "minorVersion":B
    .local v15, "contentType":B
    :cond_c
    move-wide/from16 v33, v3

    move/from16 v26, v7

    move/from16 v27, v8

    move v7, v10

    move-object/from16 v30, v12

    move/from16 v31, v13

    move/from16 v32, v14

    move v3, v15

    move v14, v9

    move v15, v11

    const/4 v11, 0x0

    .end local v7    # "srcPos":I
    .end local v8    # "contentLen":I
    .end local v9    # "recordEpoch":I
    .end local v11    # "recLim":I
    .end local v12    # "recordEnS":[B
    .end local v13    # "majorVersion":B
    .local v3, "contentType":B
    .local v14, "recordEpoch":I
    .local v15, "recLim":I
    .restart local v26    # "srcPos":I
    .restart local v27    # "contentLen":I
    .restart local v30    # "recordEnS":[B
    .restart local v31    # "majorVersion":B
    .restart local v32    # "minorVersion":B
    .restart local v33    # "recordSeq":J
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 211
    add-int/lit8 v4, v26, 0xd

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 215
    :try_start_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    move-object/from16 v4, v30

    .end local v30    # "recordEnS":[B
    .local v4, "recordEnS":[B
    :try_start_1
    invoke-virtual {v0, v3, v2, v4}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->decrypt(BLjava/nio/ByteBuffer;[B)Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v0

    .line 217
    .local v0, "plaintext":Lorg/openjsse/sun/security/ssl/Plaintext;
    iget-object v13, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    .line 218
    .local v13, "plaintextFragment":Ljava/nio/ByteBuffer;
    iget-byte v8, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v8

    .line 228
    .end local v3    # "contentType":B
    .local v0, "contentType":B
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 229
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 230
    nop

    .line 232
    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-eq v0, v3, :cond_f

    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-eq v0, v3, :cond_f

    .line 236
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    if-eqz v3, :cond_e

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    iget v3, v3, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->handshakeEpoch:I

    if-ge v3, v14, :cond_e

    .line 238
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_d

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 239
    const-string v3, "Cleanup the handshake reassembler"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :cond_d
    const/4 v3, 0x0

    iput-object v3, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    .line 245
    :cond_e
    new-array v3, v7, [Lorg/openjsse/sun/security/ssl/Plaintext;

    new-instance v16, Lorg/openjsse/sun/security/ssl/Plaintext;

    .line 247
    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/Authenticator;->toLong([B)J

    move-result-wide v17

    move-object/from16 v6, v16

    move v7, v0

    move/from16 v8, v31

    move/from16 v9, v32

    move v10, v14

    move/from16 v29, v15

    move v15, v11

    .end local v15    # "recLim":I
    .restart local v29    # "recLim":I
    move-wide/from16 v11, v17

    invoke-direct/range {v6 .. v13}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    aput-object v16, v3, v15

    .line 245
    return-object v3

    .line 232
    .end local v29    # "recLim":I
    .restart local v15    # "recLim":I
    :cond_f
    move/from16 v29, v15

    move v15, v11

    .line 251
    .end local v15    # "recLim":I
    .restart local v29    # "recLim":I
    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v0, v3, :cond_11

    .line 252
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    if-nez v3, :cond_10

    .line 253
    new-instance v3, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    invoke-direct {v3, v1, v14}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;-><init>(Lorg/openjsse/sun/security/ssl/DTLSInputRecord;I)V

    iput-object v3, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    .line 256
    :cond_10
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    new-instance v8, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;

    const/16 v25, 0x0

    move-object/from16 v16, v8

    move-object/from16 v17, v13

    move/from16 v18, v0

    move/from16 v19, v31

    move/from16 v20, v32

    move-object/from16 v21, v4

    move/from16 v22, v14

    move-wide/from16 v23, v33

    invoke-direct/range {v16 .. v25}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;-><init>(Ljava/nio/ByteBuffer;BBB[BIJZ)V

    invoke-virtual {v3, v8}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->queueUpChangeCipherSpec(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$RecordFragment;)V

    goto :goto_3

    .line 262
    :cond_11
    :goto_2
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_15

    .line 264
    move/from16 v16, v0

    move/from16 v17, v31

    move/from16 v18, v32

    move-object/from16 v19, v4

    move/from16 v20, v14

    move-wide/from16 v21, v33

    move-object/from16 v23, v13

    invoke-static/range {v16 .. v23}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->parseHandshakeMessage(BBB[BIJLjava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;

    move-result-object v3

    .line 268
    .local v3, "hsFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    if-nez v3, :cond_13

    .line 270
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_12

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 271
    const-string v6, "Invalid handshake message, discard it."

    new-array v7, v15, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    :cond_12
    const/4 v6, 0x0

    return-object v6

    .line 278
    :cond_13
    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    if-nez v8, :cond_14

    .line 279
    new-instance v8, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    invoke-direct {v8, v1, v14}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;-><init>(Lorg/openjsse/sun/security/ssl/DTLSInputRecord;I)V

    iput-object v8, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    .line 282
    :cond_14
    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    invoke-virtual {v8, v3}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->queueUpHandshake(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;)V

    .line 283
    .end local v3    # "hsFrag":Lorg/openjsse/sun/security/ssl/DTLSInputRecord$HandshakeFragment;
    goto :goto_2

    .line 288
    :cond_15
    :goto_3
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    if-eqz v3, :cond_17

    .line 289
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->acquirePlaintext()Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v3

    .line 290
    .local v3, "pt":Lorg/openjsse/sun/security/ssl/Plaintext;
    if-nez v3, :cond_16

    const/4 v6, 0x0

    goto :goto_4

    :cond_16
    new-array v6, v7, [Lorg/openjsse/sun/security/ssl/Plaintext;

    aput-object v3, v6, v15

    :goto_4
    return-object v6

    .line 293
    .end local v3    # "pt":Lorg/openjsse/sun/security/ssl/Plaintext;
    :cond_17
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_18

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 294
    const-string v3, "The reassembler is not initialized yet."

    new-array v6, v15, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :cond_18
    const/4 v3, 0x0

    return-object v3

    .line 228
    .end local v0    # "contentType":B
    .end local v13    # "plaintextFragment":Ljava/nio/ByteBuffer;
    .end local v29    # "recLim":I
    .local v3, "contentType":B
    .restart local v15    # "recLim":I
    :catchall_0
    move-exception v0

    move/from16 v29, v15

    move/from16 v6, v29

    .end local v15    # "recLim":I
    .restart local v29    # "recLim":I
    goto :goto_7

    .line 219
    .end local v29    # "recLim":I
    .restart local v15    # "recLim":I
    :catch_0
    move-exception v0

    move/from16 v29, v15

    move v15, v11

    .end local v15    # "recLim":I
    .restart local v29    # "recLim":I
    goto :goto_5

    .line 228
    .end local v4    # "recordEnS":[B
    .end local v29    # "recLim":I
    .restart local v15    # "recLim":I
    .restart local v30    # "recordEnS":[B
    :catchall_1
    move-exception v0

    move/from16 v29, v15

    move-object/from16 v4, v30

    move/from16 v6, v29

    .end local v15    # "recLim":I
    .end local v30    # "recordEnS":[B
    .restart local v4    # "recordEnS":[B
    .restart local v29    # "recLim":I
    goto :goto_7

    .line 219
    .end local v4    # "recordEnS":[B
    .end local v29    # "recLim":I
    .restart local v15    # "recLim":I
    .restart local v30    # "recordEnS":[B
    :catch_1
    move-exception v0

    move/from16 v29, v15

    move-object/from16 v4, v30

    move v15, v11

    .line 220
    .end local v15    # "recLim":I
    .end local v30    # "recordEnS":[B
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    .restart local v4    # "recordEnS":[B
    .restart local v29    # "recLim":I
    :goto_5
    :try_start_2
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v6, :cond_19

    :try_start_3
    const-string v6, "ssl"

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discard invalid record: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v15, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    .line 228
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    :catchall_2
    move-exception v0

    move/from16 v6, v29

    goto :goto_7

    .line 225
    .restart local v0    # "gse":Ljava/security/GeneralSecurityException;
    :cond_19
    :goto_6
    nop

    .line 228
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 229
    move/from16 v6, v29

    .end local v29    # "recLim":I
    .local v6, "recLim":I
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    const/4 v7, 0x0

    return-object v7

    .line 228
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    .end local v6    # "recLim":I
    .restart local v29    # "recLim":I
    :catchall_3
    move-exception v0

    move/from16 v6, v29

    .end local v29    # "recLim":I
    .restart local v6    # "recLim":I
    :goto_7
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 229
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 230
    throw v0
.end method

.method decode([Ljava/nio/ByteBuffer;II)[Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 3
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    array-length v1, p1

    if-eqz v1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    if-ne p3, v0, :cond_1

    .line 109
    aget-object v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->decode(Ljava/nio/ByteBuffer;)[Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v0

    return-object v0

    .line 111
    :cond_1
    const/16 v0, 0xd

    invoke-static {p1, p2, p3, v0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->extract([Ljava/nio/ByteBuffer;III)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 113
    .local v0, "packet":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->decode(Ljava/nio/ByteBuffer;)[Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v1

    return-object v1

    .line 106
    .end local v0    # "packet":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->acquirePlaintext()Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v1

    .line 107
    .local v1, "pt":Lorg/openjsse/sun/security/ssl/Plaintext;
    const/4 v2, 0x0

    if-nez v1, :cond_3

    new-array v0, v2, [Lorg/openjsse/sun/security/ssl/Plaintext;

    goto :goto_1

    :cond_3
    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/Plaintext;

    aput-object v1, v0, v2

    :goto_1
    return-object v0
.end method

.method estimateFragmentSize(I)I
    .locals 2
    .param p1, "packetSize"    # I

    .line 74
    if-lez p1, :cond_0

    .line 75
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    const/16 v1, 0xd

    invoke-virtual {v0, p1, v1}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->estimateFragmentSize(II)I

    move-result v0

    return v0

    .line 77
    :cond_0
    const/16 v0, 0x4000

    return v0
.end method

.method expectingFinishFlight()V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->expectingFinishFlight()V

    .line 86
    :cond_0
    return-void
.end method

.method finishHandshake()V
    .locals 1

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    .line 91
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;->reassembler:Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;->access$000(Lorg/openjsse/sun/security/ssl/DTLSInputRecord$DTLSReassembler;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
