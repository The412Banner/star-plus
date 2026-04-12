.class abstract Lorg/openjsse/sun/security/ssl/OutputRecord;
.super Ljava/io/ByteArrayOutputStream;
.source "OutputRecord.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/Record;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/OutputRecord$T13PaddingHolder;
    }
.end annotation


# static fields
.field private static final HANDSHAKE_MESSAGE_KEY_UPDATE:[B

.field private static final V3toV2CipherMap1:[I

.field private static final V3toV2CipherMap3:[I


# instance fields
.field firstMessage:Z

.field private fragmentSize:I

.field final handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

.field helloVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field volatile isClosed:Z

.field isFirstAppOutputRecord:Z

.field packetSize:I

.field protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field tc:Lorg/openjsse/sun/security/ssl/TransportContext;

.field writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 75
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/openjsse/sun/security/ssl/OutputRecord;->V3toV2CipherMap1:[I

    .line 77
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/openjsse/sun/security/ssl/OutputRecord;->V3toV2CipherMap3:[I

    .line 79
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->KEY_UPDATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    const/4 v1, 0x5

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte v2, v1, v0

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    const/4 v3, 0x3

    aput-byte v0, v1, v3

    const/4 v0, 0x4

    aput-byte v2, v1, v0

    sput-object v1, Lorg/openjsse/sun/security/ssl/OutputRecord;->HANDSHAKE_MESSAGE_KEY_UPDATE:[B

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x2
        0x1
        -0x1
        0x4
        0x5
        -0x1
        0x6
        0x7
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x80
        0x80
        -0x1
        0x80
        0x80
        -0x1
        0x40
        0xc0
    .end array-data
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;)V
    .locals 1
    .param p1, "handshakeHash"    # Lorg/openjsse/sun/security/ssl/HandshakeHash;
    .param p2, "writeCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 82
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->isFirstAppOutputRecord:Z

    .line 83
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 84
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->firstMessage:Z

    .line 85
    const/16 v0, 0x4000

    iput v0, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->fragmentSize:I

    .line 87
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    .line 90
    return-void
.end method

.method private static V3toV2CipherSuite(Ljava/nio/ByteBuffer;BB)I
    .locals 3
    .param p0, "dstBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "byte1"    # B
    .param p2, "byte2"    # B

    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 577
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 578
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 580
    and-int/lit16 v1, p2, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    sget-object v1, Lorg/openjsse/sun/security/ssl/OutputRecord;->V3toV2CipherMap1:[I

    aget v1, v1, p2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/OutputRecord;->V3toV2CipherMap1:[I

    aget v1, v1, p2

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 585
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 586
    sget-object v0, Lorg/openjsse/sun/security/ssl/OutputRecord;->V3toV2CipherMap3:[I

    aget v0, v0, p2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 588
    const/4 v0, 0x6

    return v0

    .line 581
    :cond_1
    :goto_0
    const/4 v0, 0x3

    return v0
.end method

.method private static d10Encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BLjava/nio/ByteBuffer;IIILorg/openjsse/sun/security/ssl/ProtocolVersion;)J
    .locals 4
    .param p0, "encCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .param p1, "contentType"    # B
    .param p2, "destination"    # Ljava/nio/ByteBuffer;
    .param p3, "headerOffset"    # I
    .param p4, "dstLim"    # I
    .param p5, "headerSize"    # I
    .param p6, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 310
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->sequenceNumber()[B

    move-result-object v0

    .line 311
    .local v0, "sequenceNumber":[B
    invoke-virtual {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->encrypt(BLjava/nio/ByteBuffer;)I

    .line 314
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, p3

    sub-int/2addr v1, p5

    .line 316
    .local v1, "fragLen":I
    invoke-virtual {p2, p3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 317
    add-int/lit8 v2, p3, 0x1

    iget-byte v3, p6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 318
    add-int/lit8 v2, p3, 0x2

    iget-byte v3, p6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 321
    add-int/lit8 v2, p3, 0x3

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 322
    add-int/lit8 v2, p3, 0x4

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 323
    add-int/lit8 v2, p3, 0x5

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 324
    add-int/lit8 v2, p3, 0x6

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 325
    add-int/lit8 v2, p3, 0x7

    const/4 v3, 0x4

    aget-byte v3, v0, v3

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 326
    add-int/lit8 v2, p3, 0x8

    const/4 v3, 0x5

    aget-byte v3, v0, v3

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 327
    add-int/lit8 v2, p3, 0x9

    const/4 v3, 0x6

    aget-byte v3, v0, v3

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 328
    add-int/lit8 v2, p3, 0xa

    const/4 v3, 0x7

    aget-byte v3, v0, v3

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 331
    add-int/lit8 v2, p3, 0xb

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 332
    add-int/lit8 v2, p3, 0xc

    int-to-byte v3, v1

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 335
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 337
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->toLong([B)J

    move-result-wide v2

    return-wide v2
.end method

.method private static d13Encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BLjava/nio/ByteBuffer;IIILorg/openjsse/sun/security/ssl/ProtocolVersion;)J
    .locals 2
    .param p0, "encCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .param p1, "contentType"    # B
    .param p2, "destination"    # Ljava/nio/ByteBuffer;
    .param p3, "headerOffset"    # I
    .param p4, "dstLim"    # I
    .param p5, "headerSize"    # I
    .param p6, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 303
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static encodeV2ClientHello([BII)Ljava/nio/ByteBuffer;
    .locals 18
    .param p0, "fragment"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x22

    .line 498
    .local v1, "v3SessIdLenOffset":I
    aget-byte v2, v0, v1

    .line 499
    .local v2, "v3SessIdLen":I
    add-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v2

    .line 500
    .local v3, "v3CSLenOffset":I
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    .line 502
    .local v4, "v3CSLen":I
    div-int/lit8 v5, v4, 0x2

    .line 512
    .local v5, "cipherSpecs":I
    mul-int/lit8 v6, v5, 0x6

    const/16 v7, 0xb

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x3

    const/16 v8, 0x20

    add-int/2addr v6, v8

    .line 515
    .local v6, "v2MaxMsgLen":I
    new-array v9, v6, [B

    .line 516
    .local v9, "dstBytes":[B
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 524
    .local v10, "dstBuf":Ljava/nio/ByteBuffer;
    add-int/lit8 v11, v3, 0x2

    .line 525
    .local v11, "v3CSOffset":I
    const/4 v12, 0x0

    .line 527
    .local v12, "v2CSLen":I
    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 528
    const/4 v7, 0x0

    .line 529
    .local v7, "containsRenegoInfoSCSV":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    const/4 v14, -0x1

    if-ge v13, v5, :cond_1

    .line 532
    add-int/lit8 v15, v11, 0x1

    .end local v11    # "v3CSOffset":I
    .local v15, "v3CSOffset":I
    aget-byte v11, v0, v11

    .line 533
    .local v11, "byte1":B
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "v3CSOffset":I
    .local v16, "v3CSOffset":I
    aget-byte v15, v0, v15

    .line 534
    .local v15, "byte2":B
    invoke-static {v10, v11, v15}, Lorg/openjsse/sun/security/ssl/OutputRecord;->V3toV2CipherSuite(Ljava/nio/ByteBuffer;BB)I

    move-result v17

    add-int v12, v12, v17

    .line 535
    if-nez v7, :cond_0

    if-nez v11, :cond_0

    if-ne v15, v14, :cond_0

    .line 537
    const/4 v7, 0x1

    .line 529
    .end local v11    # "byte1":B
    .end local v15    # "byte2":B
    :cond_0
    add-int/lit8 v13, v13, 0x1

    move/from16 v11, v16

    goto :goto_0

    .line 541
    .end local v13    # "i":I
    .end local v16    # "v3CSOffset":I
    .local v11, "v3CSOffset":I
    :cond_1
    const/4 v13, 0x0

    if-nez v7, :cond_2

    .line 542
    invoke-static {v10, v13, v14}, Lorg/openjsse/sun/security/ssl/OutputRecord;->V3toV2CipherSuite(Ljava/nio/ByteBuffer;BB)I

    move-result v14

    add-int/2addr v12, v14

    .line 548
    :cond_2
    add-int/lit8 v14, p1, 0x2

    invoke-virtual {v10, v0, v14, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 554
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    .line 555
    .local v14, "msgLen":I
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 556
    ushr-int/lit8 v15, v14, 0x8

    and-int/lit16 v15, v15, 0xff

    or-int/lit16 v15, v15, 0x80

    int-to-byte v15, v15

    invoke-virtual {v10, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 557
    and-int/lit16 v15, v14, 0xff

    int-to-byte v15, v15

    invoke-virtual {v10, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 558
    sget-object v15, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v15, v15, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-virtual {v10, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 559
    aget-byte v15, v0, p1

    invoke-virtual {v10, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 560
    add-int/lit8 v15, p1, 0x1

    aget-byte v15, v0, v15

    invoke-virtual {v10, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 561
    ushr-int/lit8 v15, v12, 0x8

    int-to-byte v15, v15

    invoke-virtual {v10, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 562
    and-int/lit16 v15, v12, 0xff

    int-to-byte v15, v15

    invoke-virtual {v10, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 563
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 564
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 565
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 566
    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 568
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 569
    add-int/lit8 v8, v14, 0x2

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 571
    return-object v10
.end method

.method static encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BLjava/nio/ByteBuffer;IIILorg/openjsse/sun/security/ssl/ProtocolVersion;)J
    .locals 3
    .param p0, "encCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .param p1, "contentType"    # B
    .param p2, "destination"    # Ljava/nio/ByteBuffer;
    .param p3, "headerOffset"    # I
    .param p4, "dstLim"    # I
    .param p5, "headerSize"    # I
    .param p6, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 275
    iget-boolean v0, p6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    .line 276
    .local v0, "isDTLS":Z
    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {p6}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-static/range {p0 .. p6}, Lorg/openjsse/sun/security/ssl/OutputRecord;->d13Encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BLjava/nio/ByteBuffer;IIILorg/openjsse/sun/security/ssl/ProtocolVersion;)J

    move-result-wide v1

    return-wide v1

    .line 282
    :cond_0
    invoke-static/range {p0 .. p6}, Lorg/openjsse/sun/security/ssl/OutputRecord;->d10Encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BLjava/nio/ByteBuffer;IIILorg/openjsse/sun/security/ssl/ProtocolVersion;)J

    move-result-wide v1

    return-wide v1

    .line 287
    :cond_1
    invoke-virtual {p6}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    invoke-static/range {p0 .. p6}, Lorg/openjsse/sun/security/ssl/OutputRecord;->t13Encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BLjava/nio/ByteBuffer;IIILorg/openjsse/sun/security/ssl/ProtocolVersion;)J

    move-result-wide v1

    return-wide v1

    .line 292
    :cond_2
    invoke-static/range {p0 .. p6}, Lorg/openjsse/sun/security/ssl/OutputRecord;->t10Encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BLjava/nio/ByteBuffer;IIILorg/openjsse/sun/security/ssl/ProtocolVersion;)J

    move-result-wide v1

    return-wide v1
.end method

.method private t10Encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BI)J
    .locals 9
    .param p1, "encCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .param p2, "contentType"    # B
    .param p3, "headerSize"    # I

    .line 467
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->sequenceNumber()[B

    move-result-object v0

    .line 468
    .local v0, "sequenceNumber":[B
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->getExplicitNonceSize()I

    move-result v1

    add-int/2addr v1, p3

    .line 469
    .local v1, "position":I
    iget v2, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->count:I

    sub-int/2addr v2, v1

    .line 472
    .local v2, "contentLen":I
    nop

    .line 473
    invoke-virtual {p1, v2, p3}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->calculatePacketSize(II)I

    move-result v3

    .line 474
    .local v3, "requiredPacketSize":I
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    array-length v4, v4

    const/4 v5, 0x0

    if-le v3, v4, :cond_0

    .line 475
    new-array v4, v3, [B

    .line 476
    .local v4, "newBuf":[B
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    iget v7, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->count:I

    invoke-static {v6, v5, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    iput-object v4, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    .line 479
    .end local v4    # "newBuf":[B
    :cond_0
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    invoke-static {v4, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 480
    .local v4, "destination":Ljava/nio/ByteBuffer;
    invoke-virtual {p1, p2, v4}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->encrypt(BLjava/nio/ByteBuffer;)I

    move-result v6

    add-int/2addr v6, p3

    iput v6, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->count:I

    .line 483
    iget v6, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->count:I

    sub-int/2addr v6, p3

    .line 484
    .local v6, "fragLen":I
    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    aput-byte p2, v7, v5

    .line 485
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v7, v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    const/4 v8, 0x1

    aput-byte v7, v5, v8

    .line 486
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v7, v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    const/4 v8, 0x2

    aput-byte v7, v5, v8

    .line 487
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    shr-int/lit8 v7, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x3

    aput-byte v7, v5, v8

    .line 488
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x4

    aput-byte v7, v5, v8

    .line 490
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->toLong([B)J

    move-result-wide v7

    return-wide v7
.end method

.method private static t10Encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BLjava/nio/ByteBuffer;IIILorg/openjsse/sun/security/ssl/ProtocolVersion;)J
    .locals 4
    .param p0, "encCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .param p1, "contentType"    # B
    .param p2, "destination"    # Ljava/nio/ByteBuffer;
    .param p3, "headerOffset"    # I
    .param p4, "dstLim"    # I
    .param p5, "headerSize"    # I
    .param p6, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 387
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->sequenceNumber()[B

    move-result-object v0

    .line 388
    .local v0, "sequenceNumber":[B
    invoke-virtual {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->encrypt(BLjava/nio/ByteBuffer;)I

    .line 391
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, p3

    sub-int/2addr v1, p5

    .line 393
    .local v1, "fragLen":I
    invoke-virtual {p2, p3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 394
    add-int/lit8 v2, p3, 0x1

    iget-byte v3, p6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 395
    add-int/lit8 v2, p3, 0x2

    iget-byte v3, p6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 398
    add-int/lit8 v2, p3, 0x3

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 399
    add-int/lit8 v2, p3, 0x4

    int-to-byte v3, v1

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 402
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 404
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->toLong([B)J

    move-result-wide v2

    return-wide v2
.end method

.method private t13Encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BI)J
    .locals 10
    .param p1, "encCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .param p2, "contentType"    # B
    .param p3, "headerSize"    # I

    .line 422
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->isNullCipher()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 424
    invoke-virtual {p0, p2}, Lorg/openjsse/sun/security/ssl/OutputRecord;->write(I)V

    .line 425
    invoke-static {}, Lorg/openjsse/sun/security/ssl/OutputRecord$T13PaddingHolder;->access$000()[B

    move-result-object v0

    invoke-static {}, Lorg/openjsse/sun/security/ssl/OutputRecord$T13PaddingHolder;->access$000()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjsse/sun/security/ssl/OutputRecord;->write([BII)V

    .line 428
    :cond_0
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->sequenceNumber()[B

    move-result-object v0

    .line 429
    .local v0, "sequenceNumber":[B
    move v2, p3

    .line 430
    .local v2, "position":I
    iget v3, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->count:I

    sub-int/2addr v3, v2

    .line 433
    .local v3, "contentLen":I
    nop

    .line 434
    invoke-virtual {p1, v3, p3}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->calculatePacketSize(II)I

    move-result v4

    .line 435
    .local v4, "requiredPacketSize":I
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    array-length v5, v5

    if-le v4, v5, :cond_1

    .line 436
    new-array v5, v4, [B

    .line 437
    .local v5, "newBuf":[B
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    iget v7, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->count:I

    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    iput-object v5, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    .line 442
    .end local v5    # "newBuf":[B
    :cond_1
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 443
    .local v5, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->isNullCipher()Z

    move-result v6

    if-nez v6, :cond_2

    .line 444
    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 445
    sget-object v6, Lorg/openjsse/sun/security/ssl/ContentType;->APPLICATION_DATA:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte p2, v6, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    goto :goto_0

    .line 447
    :cond_2
    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 450
    :goto_0
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    invoke-static {v6, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 451
    .local v6, "destination":Ljava/nio/ByteBuffer;
    invoke-virtual {p1, p2, v6}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->encrypt(BLjava/nio/ByteBuffer;)I

    move-result v7

    add-int/2addr v7, p3

    iput v7, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->count:I

    .line 454
    iget v7, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->count:I

    sub-int/2addr v7, p3

    .line 456
    .local v7, "fragLen":I
    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    aput-byte p2, v8, v1

    .line 457
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    const/4 v8, 0x1

    iget-byte v9, v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    aput-byte v9, v1, v8

    .line 458
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    const/4 v8, 0x2

    iget-byte v9, v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    aput-byte v9, v1, v8

    .line 459
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    const/4 v9, 0x3

    aput-byte v8, v1, v9

    .line 460
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->buf:[B

    and-int/lit16 v8, v7, 0xff

    int-to-byte v8, v8

    const/4 v9, 0x4

    aput-byte v8, v1, v9

    .line 462
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->toLong([B)J

    move-result-wide v8

    return-wide v8
.end method

.method private static t13Encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BLjava/nio/ByteBuffer;IIILorg/openjsse/sun/security/ssl/ProtocolVersion;)J
    .locals 5
    .param p0, "encCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .param p1, "contentType"    # B
    .param p2, "destination"    # Ljava/nio/ByteBuffer;
    .param p3, "headerOffset"    # I
    .param p4, "dstLim"    # I
    .param p5, "headerSize"    # I
    .param p6, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 344
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->isNullCipher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 347
    .local v0, "endOfPt":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 348
    .local v1, "startOfPt":I
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 349
    add-int/lit8 v2, v0, 0x1

    invoke-static {}, Lorg/openjsse/sun/security/ssl/OutputRecord$T13PaddingHolder;->access$000()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 350
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 351
    invoke-static {}, Lorg/openjsse/sun/security/ssl/OutputRecord$T13PaddingHolder;->access$000()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 352
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 356
    .end local v0    # "endOfPt":I
    .end local v1    # "startOfPt":I
    :cond_0
    move-object v0, p6

    .line 357
    .local v0, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->isNullCipher()Z

    move-result v1

    if-nez v1, :cond_1

    .line 358
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 359
    sget-object v1, Lorg/openjsse/sun/security/ssl/ContentType;->APPLICATION_DATA:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte p1, v1, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p6}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 361
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 364
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/Authenticator;->sequenceNumber()[B

    move-result-object v1

    .line 365
    .local v1, "sequenceNumber":[B
    invoke-virtual {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->encrypt(BLjava/nio/ByteBuffer;)I

    .line 368
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v2, p3

    sub-int/2addr v2, p5

    .line 369
    .local v2, "fragLen":I
    invoke-virtual {p2, p3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 370
    add-int/lit8 v3, p3, 0x1

    iget-byte v4, v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    invoke-virtual {p2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 371
    add-int/lit8 v3, p3, 0x2

    iget-byte v4, v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    invoke-virtual {p2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 374
    add-int/lit8 v3, p3, 0x3

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    invoke-virtual {p2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 375
    add-int/lit8 v3, p3, 0x4

    int-to-byte v4, v2

    invoke-virtual {p2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 378
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 380
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Authenticator;->toLong([B)J

    move-result-wide v3

    return-wide v3
.end method


# virtual methods
.method calculateFragmentSize(I)I
    .locals 1
    .param p1, "fragmentLimit"    # I

    .line 253
    iget v0, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->fragmentSize:I

    if-lez v0, :cond_0

    .line 254
    iget v0, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->fragmentSize:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 257
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-static {}, Lorg/openjsse/sun/security/ssl/OutputRecord$T13PaddingHolder;->access$000()[B

    move-result-object v0

    array-length v0, v0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 263
    :cond_1
    return p1
.end method

.method declared-synchronized changeFragmentSize(I)V
    .locals 0
    .param p1, "fragmentSize"    # I

    monitor-enter p0

    .line 208
    :try_start_0
    iput p1, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->fragmentSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 207
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/OutputRecord;
    .end local p1    # "fragmentSize":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized changePacketSize(I)V
    .locals 0
    .param p1, "packetSize"    # I

    monitor-enter p0

    .line 204
    :try_start_0
    iput p1, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->packetSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 203
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/OutputRecord;
    .end local p1    # "packetSize":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized changeWriteCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;B)V
    .locals 4
    .param p1, "writeCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .param p2, "keyUpdateRequest"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 182
    :try_start_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 183
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "outbound has closed, ignore outbound key_update handshake message"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/OutputRecord;
    :cond_0
    monitor-exit p0

    return-void

    .line 191
    :cond_1
    :try_start_1
    sget-object v0, Lorg/openjsse/sun/security/ssl/OutputRecord;->HANDSHAKE_MESSAGE_KEY_UPDATE:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 192
    .local v0, "hm":[B
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput-byte p2, v0, v2

    .line 193
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjsse/sun/security/ssl/OutputRecord;->encodeHandshake([BII)V

    .line 194
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->flush()V

    .line 197
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->dispose()V

    .line 199
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 200
    iput-boolean v3, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->isFirstAppOutputRecord:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 181
    .end local v0    # "hm":[B
    .end local p1    # "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .end local p2    # "keyUpdateRequest":B
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method declared-synchronized changeWriteCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;Z)V
    .locals 2
    .param p1, "writeCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .param p2, "useChangeCipherSpec"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "outbound has closed, ignore outbound change_cipher_spec message"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/OutputRecord;
    :cond_0
    monitor-exit p0

    return-void

    .line 161
    :cond_1
    if-eqz p2, :cond_2

    .line 162
    :try_start_1
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->encodeChangeCipherSpec()V

    .line 173
    :cond_2
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->dispose()V

    .line 175
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->isFirstAppOutputRecord:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 152
    .end local p1    # "writeCipher":Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .end local p2    # "useChangeCipherSpec":Z
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 232
    :try_start_0
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 233
    monitor-exit p0

    return-void

    .line 236
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->isClosed:Z

    .line 237
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 231
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/OutputRecord;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method deliver([BII)V
    .locals 1
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method encode([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/sun/security/ssl/Ciphertext;
    .locals 1
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p5, "dstsOffset"    # I
    .param p6, "dstsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method abstract encodeAlert(BB)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract encodeChangeCipherSpec()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract encodeHandshake([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method encodeV2NoCipher()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BI)J
    .locals 2
    .param p1, "encCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .param p2, "contentType"    # B
    .param p3, "headerSize"    # I

    .line 413
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/OutputRecord;->t13Encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BI)J

    move-result-wide v0

    return-wide v0

    .line 416
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/OutputRecord;->t10Encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BI)J

    move-result-wide v0

    return-wide v0
.end method

.method finishHandshake()V
    .locals 0

    .line 223
    return-void
.end method

.method declared-synchronized getMaxPacketSize()I
    .locals 1

    monitor-enter p0

    .line 212
    :try_start_0
    iget v0, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->packetSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 212
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/OutputRecord;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method initHandshaker()V
    .locals 0

    .line 218
    return-void
.end method

.method isClosed()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->isClosed:Z

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method launchRetransmission()V
    .locals 0

    .line 228
    return-void
.end method

.method declared-synchronized seqNumIsHuge()Z
    .locals 1

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    .line 113
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->seqNumIsHuge()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/OutputRecord;
    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    monitor-exit p0

    return v0

    .line 111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setDeliverStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method declared-synchronized setHelloVersion(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 0
    .param p1, "helloVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    monitor-enter p0

    .line 100
    :try_start_0
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->helloVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 99
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/OutputRecord;
    .end local p1    # "helloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized setVersion(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 0
    .param p1, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    monitor-enter p0

    .line 93
    :try_start_0
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/OutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 92
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/OutputRecord;
    .end local p1    # "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
