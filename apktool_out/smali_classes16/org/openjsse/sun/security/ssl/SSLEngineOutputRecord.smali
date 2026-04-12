.class final Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;
.super Lorg/openjsse/sun/security/ssl/OutputRecord;
.source "SSLEngineOutputRecord.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;,
        Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;,
        Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;
    }
.end annotation


# instance fields
.field private fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

.field private volatile isCloseWaiting:Z

.field private isTalkingToV2:Z

.field private v2ClientHello:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V
    .locals 2
    .param p1, "handshakeHash"    # Lorg/openjsse/sun/security/ssl/HandshakeHash;

    .line 47
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->nullTlsWriteCipher()Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isTalkingToV2:Z

    .line 42
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->v2ClientHello:Ljava/nio/ByteBuffer;

    .line 44
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isCloseWaiting:Z

    .line 49
    const/16 v0, 0x4145

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->packetSize:I

    .line 50
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 51
    return-void
.end method

.method static synthetic access$200(Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;)Z
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    .line 38
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isCloseWaiting:Z

    return v0
.end method

.method private acquireCiphertext(Ljava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/Ciphertext;
    .locals 8
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isTalkingToV2:Z

    const-string v1, "Raw write"

    const-string v2, "packet"

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 306
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLRecord;->v2NoCipher:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 307
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLRecord;->v2NoCipher:[B

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :cond_0
    iput-boolean v5, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isTalkingToV2:Z

    .line 313
    new-instance v0, Lorg/openjsse/sun/security/ssl/Ciphertext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ContentType;->ALERT:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NOT_APPLICABLE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openjsse/sun/security/ssl/Ciphertext;-><init>(BBJ)V

    return-object v0

    .line 317
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->v2ClientHello:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    .line 321
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_3

    .line 322
    const-string v0, "record"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", WRITE: SSLv2 ClientHello message, length = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->v2ClientHello:Ljava/nio/ByteBuffer;

    .line 325
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v5, [Ljava/lang/Object;

    .line 323
    invoke-static {v0, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    :cond_2
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->v2ClientHello:Ljava/nio/ByteBuffer;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    :cond_3
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->v2ClientHello:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 334
    iput-object v6, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->v2ClientHello:Ljava/nio/ByteBuffer;

    .line 336
    new-instance v0, Lorg/openjsse/sun/security/ssl/Ciphertext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openjsse/sun/security/ssl/Ciphertext;-><init>(BBJ)V

    return-object v0

    .line 340
    :cond_4
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    if-eqz v0, :cond_5

    .line 341
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->acquireCiphertext(Ljava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/Ciphertext;

    move-result-object v0

    return-object v0

    .line 344
    :cond_5
    return-object v6
.end method

.method private encode([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/Ciphertext;
    .locals 26
    .param p1, "sources"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "destination"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p4

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/Authenticator;->seqNumOverflow()Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    .line 182
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    const-string v2, "ssl"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const-string v2, "sequence number extremely close to overflow (2^64-1 packets). Closing connection."

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_0
    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    const-string v3, "sequence number overflow"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_1
    invoke-direct {v0, v9}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->acquireCiphertext(Ljava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/Ciphertext;

    move-result-object v11

    .line 194
    .local v11, "ct":Lorg/openjsse/sun/security/ssl/Ciphertext;
    if-eqz v11, :cond_2

    .line 195
    return-object v11

    .line 198
    :cond_2
    const/4 v2, 0x0

    if-eqz v1, :cond_e

    array-length v3, v1

    if-nez v3, :cond_3

    move-object/from16 v23, v11

    goto/16 :goto_7

    .line 202
    :cond_3
    const/4 v3, 0x0

    .line 203
    .local v3, "srcsRemains":I
    move/from16 v4, p2

    move v12, v3

    .end local v3    # "srcsRemains":I
    .local v4, "i":I
    .local v12, "srcsRemains":I
    :goto_0
    add-int v3, p2, p3

    if-ge v4, v3, :cond_4

    .line 204
    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v12, v3

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    .end local v4    # "i":I
    :cond_4
    if-nez v12, :cond_5

    .line 208
    return-object v2

    .line 211
    :cond_5
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v13

    .line 212
    .local v13, "dstLim":I
    const/4 v2, 0x1

    .line 213
    .local v2, "isFirstRecordOfThePayload":Z
    const/16 v3, 0x4145

    iget v4, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->packetSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 214
    .local v3, "packetLeftSize":I
    const/4 v4, 0x1

    .line 215
    .local v4, "needMorePayload":Z
    const-wide/16 v5, 0x0

    move v14, v3

    move-wide v7, v5

    move/from16 v3, p3

    move v5, v4

    move v4, v2

    move/from16 v2, p2

    .line 216
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v2, "offset":I
    .local v3, "length":I
    .local v4, "isFirstRecordOfThePayload":Z
    .local v5, "needMorePayload":Z
    .local v7, "recordSN":J
    .local v14, "packetLeftSize":I
    :goto_1
    if-eqz v5, :cond_d

    .line 218
    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->needToSplitPayload()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 219
    const/4 v5, 0x1

    .line 221
    const/4 v6, 0x1

    .line 222
    .local v6, "fragLen":I
    const/4 v4, 0x0

    move v15, v4

    move/from16 v16, v5

    goto :goto_3

    .line 224
    .end local v6    # "fragLen":I
    :cond_6
    const/4 v5, 0x0

    .line 226
    if-lez v14, :cond_7

    .line 227
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    const/4 v15, 0x5

    invoke-virtual {v6, v14, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->calculateFragmentSize(II)I

    move-result v6

    .line 230
    .restart local v6    # "fragLen":I
    const/16 v15, 0x4000

    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_2

    .line 232
    .end local v6    # "fragLen":I
    :cond_7
    const/16 v6, 0x4000

    .line 236
    .restart local v6    # "fragLen":I
    :goto_2
    invoke-virtual {v0, v6}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->calculateFragmentSize(I)I

    move-result v6

    move v15, v4

    move/from16 v16, v5

    .line 239
    .end local v4    # "isFirstRecordOfThePayload":Z
    .end local v5    # "needMorePayload":Z
    .local v15, "isFirstRecordOfThePayload":Z
    .local v16, "needMorePayload":Z
    :goto_3
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 240
    .local v5, "dstPos":I
    add-int/lit8 v4, v5, 0x5

    iget-object v10, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 241
    invoke-virtual {v10}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->getExplicitNonceSize()I

    move-result v10

    add-int/2addr v10, v4

    .line 242
    .local v10, "dstContent":I
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 245
    .local v4, "remains":I
    const/4 v6, 0x0

    .line 246
    move-wide/from16 p2, v7

    .end local v7    # "recordSN":J
    .local p2, "recordSN":J
    add-int v7, v2, v3

    .line 247
    .local v7, "srcsLen":I
    move v8, v2

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v6

    move v8, v4

    .end local v3    # "length":I
    .end local v4    # "remains":I
    .end local v6    # "fragLen":I
    .local v2, "i":I
    .local v8, "remains":I
    .local v17, "offset":I
    .local v18, "length":I
    .local v19, "fragLen":I
    :goto_4
    if-ge v2, v7, :cond_9

    if-lez v8, :cond_9

    .line 248
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 249
    .local v3, "amount":I
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 250
    .local v4, "srcLimit":I
    aget-object v6, v1, v2

    aget-object v20, v1, v2

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->position()I

    move-result v20

    move/from16 v21, v5

    .end local v5    # "dstPos":I
    .local v21, "dstPos":I
    add-int v5, v20, v3

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 251
    aget-object v5, v1, v2

    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 252
    aget-object v5, v1, v2

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 253
    sub-int/2addr v8, v3

    .line 254
    add-int v19, v19, v3

    .line 256
    if-lez v8, :cond_8

    .line 257
    add-int/lit8 v17, v17, 0x1

    .line 258
    add-int/lit8 v18, v18, -0x1

    .line 247
    .end local v3    # "amount":I
    .end local v4    # "srcLimit":I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v21

    goto :goto_4

    .end local v21    # "dstPos":I
    .restart local v5    # "dstPos":I
    :cond_9
    move/from16 v21, v5

    .line 262
    .end local v2    # "i":I
    .end local v5    # "dstPos":I
    .restart local v21    # "dstPos":I
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 263
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_a

    const-string v2, "record"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WRITE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->APPLICATION_DATA:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 269
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 266
    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :cond_a
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->APPLICATION_DATA:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    const/16 v20, 0x5

    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-object/from16 v4, p4

    move/from16 v22, v21

    .end local v21    # "dstPos":I
    .local v22, "dstPos":I
    move/from16 v5, v22

    move-object/from16 v21, v6

    move v6, v13

    move/from16 v25, v7

    move/from16 v24, v10

    move-object/from16 v23, v11

    move-wide/from16 v10, p2

    .end local v7    # "srcsLen":I
    .end local v11    # "ct":Lorg/openjsse/sun/security/ssl/Ciphertext;
    .end local p2    # "recordSN":J
    .local v10, "recordSN":J
    .local v23, "ct":Lorg/openjsse/sun/security/ssl/Ciphertext;
    .local v24, "dstContent":I
    .local v25, "srcsLen":I
    move/from16 v7, v20

    move/from16 v20, v8

    .end local v8    # "remains":I
    .local v20, "remains":I
    move-object/from16 v8, v21

    invoke-static/range {v2 .. v8}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->encrypt(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;BLjava/nio/ByteBuffer;IIILorg/openjsse/sun/security/ssl/ProtocolVersion;)J

    move-result-wide v7

    .line 278
    .end local v10    # "recordSN":J
    .local v7, "recordSN":J
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_b

    const-string v2, "packet"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 279
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 280
    .local v2, "temporary":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 281
    move/from16 v3, v22

    .end local v22    # "dstPos":I
    .local v3, "dstPos":I
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 282
    const-string v4, "Raw write"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 278
    .end local v2    # "temporary":Ljava/nio/ByteBuffer;
    .end local v3    # "dstPos":I
    .restart local v22    # "dstPos":I
    :cond_b
    move/from16 v3, v22

    .line 285
    .end local v22    # "dstPos":I
    .restart local v3    # "dstPos":I
    :goto_5
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v2, v3

    sub-int/2addr v14, v2

    .line 288
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 290
    iget-boolean v2, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isFirstAppOutputRecord:Z

    if-eqz v2, :cond_c

    .line 291
    const/4 v6, 0x0

    iput-boolean v6, v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isFirstAppOutputRecord:Z

    goto :goto_6

    .line 290
    :cond_c
    const/4 v6, 0x0

    .line 293
    .end local v3    # "dstPos":I
    .end local v19    # "fragLen":I
    .end local v20    # "remains":I
    .end local v24    # "dstContent":I
    .end local v25    # "srcsLen":I
    :goto_6
    move v10, v6

    move v4, v15

    move/from16 v5, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v11, v23

    goto/16 :goto_1

    .line 295
    .end local v15    # "isFirstRecordOfThePayload":Z
    .end local v16    # "needMorePayload":Z
    .end local v17    # "offset":I
    .end local v18    # "length":I
    .end local v23    # "ct":Lorg/openjsse/sun/security/ssl/Ciphertext;
    .local v2, "offset":I
    .local v3, "length":I
    .local v4, "isFirstRecordOfThePayload":Z
    .local v5, "needMorePayload":Z
    .restart local v11    # "ct":Lorg/openjsse/sun/security/ssl/Ciphertext;
    :cond_d
    move-wide v10, v7

    .end local v7    # "recordSN":J
    .restart local v10    # "recordSN":J
    new-instance v6, Lorg/openjsse/sun/security/ssl/Ciphertext;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ContentType;->APPLICATION_DATA:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v7, v7, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    sget-object v8, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NOT_APPLICABLE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v8, v8, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-direct {v6, v7, v8, v10, v11}, Lorg/openjsse/sun/security/ssl/Ciphertext;-><init>(BBJ)V

    return-object v6

    .line 198
    .end local v2    # "offset":I
    .end local v3    # "length":I
    .end local v4    # "isFirstRecordOfThePayload":Z
    .end local v5    # "needMorePayload":Z
    .end local v10    # "recordSN":J
    .end local v12    # "srcsRemains":I
    .end local v13    # "dstLim":I
    .end local v14    # "packetLeftSize":I
    .local p2, "offset":I
    .restart local p3    # "length":I
    :cond_e
    move-object/from16 v23, v11

    .line 199
    .end local v11    # "ct":Lorg/openjsse/sun/security/ssl/Ciphertext;
    .restart local v23    # "ct":Lorg/openjsse/sun/security/ssl/Ciphertext;
    :goto_7
    return-object v2
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 55
    :try_start_0
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isClosed:Z

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->hasAlert()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isCloseWaiting:Z

    goto :goto_0

    .line 59
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;
    :cond_0
    invoke-super {p0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 54
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

    .line 159
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isClosed:Z

    const-string v1, "ssl"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 160
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "outbound has closed, ignore outbound application data or cached messages"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_1
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isCloseWaiting:Z

    if-eqz v0, :cond_3

    .line 167
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_2

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    const-string v0, "outbound has closed, ignore outbound application data"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :cond_2
    const/4 p1, 0x0

    .line 175
    :cond_3
    aget-object v0, p4, v2

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->encode([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Lorg/openjsse/sun/security/ssl/Ciphertext;

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

    .line 70
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "outbound has closed, ignore outbound alert message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Alert;->nameOf(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 72
    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :cond_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    if-nez v0, :cond_2

    .line 79
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;-><init>(Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    .line 82
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    invoke-virtual {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->queueUpAlert(BB)V

    .line 83
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
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isClosed()Z

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
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    if-nez v0, :cond_2

    .line 144
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;-><init>(Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    .line 146
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->queueUpChangeCipherSpec()V

    .line 147
    return-void
.end method

.method encodeHandshake([BII)V
    .locals 4
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    nop

    .line 92
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 90
    const-string v1, "outbound has closed, ignore outbound handshake message"

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    if-nez v0, :cond_2

    .line 98
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;-><init>(Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    .line 101
    :cond_2
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->firstMessage:Z

    if-eqz v0, :cond_3

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->firstMessage:Z

    .line 104
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->helloVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-ne v1, v2, :cond_3

    aget-byte v1, p1, p2

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-ne v1, v2, :cond_3

    add-int/lit8 v1, p2, 0x4

    const/4 v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x20

    aget-byte v1, p1, v1

    if-nez v1, :cond_3

    .line 114
    add-int/lit8 v1, p2, 0x4

    add-int/lit8 v3, p3, -0x4

    invoke-static {p1, v1, v3}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->encodeV2ClientHello([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->v2ClientHello:Ljava/nio/ByteBuffer;

    .line 117
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->v2ClientHello:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->v2ClientHello:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->deliver(Ljava/nio/ByteBuffer;)V

    .line 119
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->v2ClientHello:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    return-void

    .line 125
    :cond_3
    aget-byte v0, p1, p2

    .line 126
    .local v0, "handshakeType":B
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->isHashable(B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v1, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->deliver([BII)V

    .line 130
    :cond_4
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    invoke-virtual {v1, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->queueUpFragment([BII)V

    .line 131
    return-void
.end method

.method encodeV2NoCipher()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isTalkingToV2:Z

    .line 152
    return-void
.end method

.method isClosed()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isClosed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isCloseWaiting:Z

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

    .line 349
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isTalkingToV2:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->v2ClientHello:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->fragmenter:Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;

    .line 350
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0
.end method

.method needToSplitPayload()Z
    .locals 1

    .line 583
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS11PlusSpec()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 584
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->isCBCMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;->isFirstAppOutputRecord:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/openjsse/sun/security/ssl/Record;->enableCBCProtection:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 583
    :goto_0
    return v0
.end method
