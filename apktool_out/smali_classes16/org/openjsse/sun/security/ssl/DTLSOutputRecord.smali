.class final Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;
.super Lorg/openjsse/sun/security/ssl/OutputRecord;
.source "DTLSOutputRecord.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/DTLSRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;,
        Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$HandshakeMemo;,
        Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$RecordMemo;
    }
.end annotation


# instance fields
.field private fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

.field private volatile isCloseWaiting:Z

.field prevWriteAuthenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

.field prevWriteCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

.field prevWriteEpoch:I

.field writeEpoch:I


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V
    .locals 1
    .param p1, "handshakeHash"    # Lorg/openjsse/sun/security/ssl/HandshakeHash;

    .line 51
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->nullDTlsWriteCipher()Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->isCloseWaiting:Z

    .line 53
    iput v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeEpoch:I

    .line 54
    iput v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->prevWriteEpoch:I

    .line 55
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->nullDTlsWriteCipher()Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->prevWriteCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 57
    const/16 v0, 0x414d

    iput v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->packetSize:I

    .line 58
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 59
    return-void
.end method

.method static synthetic access$400(Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;)Z
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    .line 38
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->isCloseWaiting:Z

    return v0
.end method

.method private acquireCiphertext(Ljava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/Ciphertext;
    .locals 1
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->acquireCiphertext(Ljava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/Ciphertext;

    move-result-object v0

    return-object v0

    .line 301
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private encode([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/Ciphertext;
    .locals 18
    .param p1, "sources"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "destination"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p4

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/Authenticator;->seqNumOverflow()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 200
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    const-string v2, "ssl"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const-string v2, "sequence number extremely close to overflow (2^64-1 packets). Closing connection."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    :cond_0
    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    const-string v3, "sequence number overflow"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_3

    .line 212
    :cond_2
    invoke-direct {v0, v9}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->acquireCiphertext(Ljava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/Ciphertext;

    move-result-object v2

    .line 213
    .local v2, "ct":Lorg/openjsse/sun/security/ssl/Ciphertext;
    if-eqz v2, :cond_3

    .line 214
    return-object v2

    .line 218
    .end local v2    # "ct":Lorg/openjsse/sun/security/ssl/Ciphertext;
    :cond_3
    const/4 v2, 0x0

    if-eqz v1, :cond_b

    array-length v4, v1

    if-nez v4, :cond_4

    goto/16 :goto_3

    .line 222
    :cond_4
    const/4 v4, 0x0

    .line 223
    .local v4, "srcsRemains":I
    move/from16 v5, p2

    move v10, v4

    .end local v4    # "srcsRemains":I
    .local v5, "i":I
    .local v10, "srcsRemains":I
    :goto_0
    add-int v4, p2, p3

    if-ge v5, v4, :cond_5

    .line 224
    aget-object v4, v1, v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v10, v4

    .line 223
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 227
    .end local v5    # "i":I
    :cond_5
    if-nez v10, :cond_6

    .line 228
    return-object v2

    .line 233
    :cond_6
    iget v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->packetSize:I

    if-lez v2, :cond_7

    .line 234
    const/16 v2, 0x414d

    iget v4, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->packetSize:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 235
    .local v2, "fragLen":I
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    const/16 v5, 0xd

    invoke-virtual {v4, v2, v5}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->calculateFragmentSize(II)I

    move-result v2

    .line 238
    const/16 v4, 0x4000

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 240
    .end local v2    # "fragLen":I
    :cond_7
    const/16 v2, 0x4000

    .line 244
    .restart local v2    # "fragLen":I
    :goto_1
    invoke-virtual {v0, v2}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->calculateFragmentSize(I)I

    move-result v2

    .line 246
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 247
    .local v11, "dstPos":I
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    .line 248
    .local v12, "dstLim":I
    add-int/lit8 v4, v11, 0xd

    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 249
    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->getExplicitNonceSize()I

    move-result v5

    add-int v13, v4, v5

    .line 250
    .local v13, "dstContent":I
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 252
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 253
    .local v4, "remains":I
    const/4 v2, 0x0

    .line 254
    add-int v14, p2, p3

    .line 255
    .local v14, "srcsLen":I
    move/from16 v5, p2

    move v15, v2

    move v8, v4

    .end local v2    # "fragLen":I
    .end local v4    # "remains":I
    .restart local v5    # "i":I
    .local v8, "remains":I
    .local v15, "fragLen":I
    :goto_2
    if-ge v5, v14, :cond_8

    if-lez v8, :cond_8

    .line 256
    aget-object v2, v1, v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 257
    .local v2, "amount":I
    aget-object v4, v1, v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 258
    .local v4, "srcLimit":I
    aget-object v6, v1, v5

    aget-object v7, v1, v5

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 259
    aget-object v6, v1, v5

    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 260
    aget-object v6, v1, v5

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 261
    sub-int/2addr v8, v2

    .line 262
    add-int/2addr v15, v2

    .line 255
    .end local v2    # "amount":I
    .end local v4    # "srcLimit":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 265
    .end local v5    # "i":I
    :cond_8
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 266
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_9

    const-string v2, "record"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WRITE: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lorg/openjsse/sun/security/ssl/ContentType;->APPLICATION_DATA:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/ContentType;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", length = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 272
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 269
    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    :cond_9
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->APPLICATION_DATA:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    const/16 v7, 0xd

    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-object/from16 v4, p4

    move v5, v11

    move-object/from16 v16, v6

    move v6, v12

    move/from16 v17, v8

    .end local v8    # "remains":I
    .local v17, "remains":I
    move-object/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BLjava/nio/ByteBuffer;IIILorg/openjsse/sun/security/ssl/ProtocolVersion;)J

    move-result-wide v2

    .line 281
    .local v2, "recordSN":J
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_a

    const-string v4, "packet"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 282
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 283
    .local v4, "temporary":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 284
    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 285
    const-string v5, "Raw write"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    .end local v4    # "temporary":Ljava/nio/ByteBuffer;
    :cond_a
    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 291
    new-instance v4, Lorg/openjsse/sun/security/ssl/Ciphertext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/ContentType;->APPLICATION_DATA:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v5, v5, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NOT_APPLICABLE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v6, v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-direct {v4, v5, v6, v2, v3}, Lorg/openjsse/sun/security/ssl/Ciphertext;-><init>(BBJ)V

    return-object v4

    .line 219
    .end local v2    # "recordSN":J
    .end local v10    # "srcsRemains":I
    .end local v11    # "dstPos":I
    .end local v12    # "dstLim":I
    .end local v13    # "dstContent":I
    .end local v14    # "srcsLen":I
    .end local v15    # "fragLen":I
    .end local v17    # "remains":I
    :cond_b
    :goto_3
    return-object v2
.end method


# virtual methods
.method changeWriteCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;Z)V
    .locals 2
    .param p1, "writeCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
    .param p2, "useChangeCipherSpec"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "outbound has closed, ignore outbound change_cipher_spec message"

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :cond_0
    return-void

    .line 98
    :cond_1
    if-eqz p2, :cond_2

    .line 99
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->encodeChangeCipherSpec()V

    .line 102
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->prevWriteCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->dispose()V

    .line 104
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->prevWriteCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 105
    iget v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeEpoch:I

    iput v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->prevWriteEpoch:I

    .line 107
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 108
    iget v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeEpoch:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeEpoch:I

    .line 110
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->isFirstAppOutputRecord:Z

    .line 113
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    iget v1, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->writeEpoch:I

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/Authenticator;->setEpochNumber(I)V

    .line 114
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

    .line 63
    :try_start_0
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->isClosed:Z

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->hasAlert()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->isCloseWaiting:Z

    goto :goto_0

    .line 67
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;
    :cond_0
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method encode([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/sun/security/ssl/Ciphertext;
    .locals 3
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

    .line 177
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->isClosed:Z

    const-string v1, "ssl"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 178
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "outbound has closed, ignore outbound application data or cached messages"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_1
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->isCloseWaiting:Z

    if-eqz v0, :cond_3

    .line 185
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_2

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    const-string v0, "outbound has closed, ignore outbound application data"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :cond_2
    const/4 p1, 0x0

    .line 193
    :cond_3
    aget-object v0, p4, v2

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->encode([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/Ciphertext;

    move-result-object v0

    return-object v0
.end method

.method encodeAlert(BB)V
    .locals 2
    .param p1, "level"    # B
    .param p2, "description"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "outbound has closed, ignore outbound alert message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Alert;->nameOf(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 120
    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    if-nez v0, :cond_2

    .line 127
    new-instance v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;-><init>(Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$1;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    .line 130
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    invoke-virtual {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->queueUpAlert(BB)V

    .line 131
    return-void
.end method

.method encodeChangeCipherSpec()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "outbound has closed, ignore outbound change_cipher_spec message"

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    if-nez v0, :cond_2

    .line 144
    new-instance v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;-><init>(Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$1;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    .line 146
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->queueUpChangeCipherSpec()V

    .line 147
    return-void
.end method

.method encodeHandshake([BII)V
    .locals 2
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    nop

    .line 156
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 154
    const-string v1, "outbound has closed, ignore outbound handshake message"

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_0
    return-void

    .line 161
    :cond_1
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->firstMessage:Z

    if-eqz v0, :cond_2

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->firstMessage:Z

    .line 165
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    if-nez v0, :cond_3

    .line 166
    new-instance v0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;-><init>(Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$1;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    .line 169
    :cond_3
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->queueUpHandshake([BII)V

    .line 170
    return-void
.end method

.method finishHandshake()V
    .locals 0

    .line 85
    return-void
.end method

.method initHandshaker()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    .line 80
    return-void
.end method

.method isClosed()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->isClosed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->isCloseWaiting:Z

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

.method isEmpty()Z
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->isEmpty()Z

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

.method launchRetransmission()V
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->isRetransmittable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;->access$100(Lorg/openjsse/sun/security/ssl/DTLSOutputRecord$DTLSFragmenter;)V

    .line 316
    :cond_0
    return-void
.end method
