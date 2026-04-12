.class abstract Lorg/openjsse/sun/security/ssl/InputRecord;
.super Ljava/lang/Object;
.source "InputRecord.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/Record;
.implements Ljava/io/Closeable;


# instance fields
.field fragmentSize:I

.field final handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

.field helloVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field isClosed:Z

.field readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

.field tc:Lorg/openjsse/sun/security/ssl/TransportContext;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;)V
    .locals 1
    .param p1, "handshakeHash"    # Lorg/openjsse/sun/security/ssl/HandshakeHash;
    .param p2, "readCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/InputRecord;->readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    .line 61
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/InputRecord;->helloVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 62
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/InputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/InputRecord;->isClosed:Z

    .line 64
    const/16 v0, 0x4000

    iput v0, p0, Lorg/openjsse/sun/security/ssl/InputRecord;->fragmentSize:I

    .line 65
    return-void
.end method

.method static convertToClientHello(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 21
    .param p0, "packet"    # Ljava/nio/ByteBuffer;

    .line 179
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 181
    .local v1, "srcPos":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 182
    .local v2, "firstByte":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 183
    .local v3, "secondByte":B
    and-int/lit8 v4, v2, 0x7f

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int/lit16 v6, v3, 0xff

    or-int/2addr v4, v6

    const/4 v6, 0x2

    add-int/2addr v4, v6

    .line 185
    .local v4, "recordLen":I
    add-int/lit8 v7, v1, 0x3

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 187
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 188
    .local v7, "majorVersion":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 190
    .local v8, "minorVersion":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v5

    .line 191
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    .line 192
    .local v9, "cipherSpecLen":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v5

    .line 193
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v10, v11

    .line 194
    .local v10, "sessionIdLen":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v5

    .line 195
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v11, v12

    .line 205
    .local v11, "nonceLen":I
    add-int/lit8 v12, v10, 0x30

    mul-int/lit8 v13, v9, 0x2

    const/4 v14, 0x3

    div-int/2addr v13, v14

    add-int/2addr v12, v13

    .line 206
    .local v12, "requiredSize":I
    new-array v13, v12, [B

    .line 213
    .local v13, "converted":[B
    sget-object v15, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v15, v15, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    const/16 v16, 0x0

    aput-byte v15, v13, v16

    .line 214
    const/4 v15, 0x1

    aput-byte v7, v13, v15

    .line 215
    aput-byte v8, v13, v6

    .line 222
    const/4 v6, 0x5

    aput-byte v15, v13, v6

    .line 229
    const/16 v17, 0x9

    aput-byte v7, v13, v17

    .line 230
    const/16 v17, 0xa

    aput-byte v8, v13, v17

    .line 232
    const/16 v6, 0xb

    .line 239
    .local v6, "pointer":I
    add-int/lit8 v18, v1, 0xb

    add-int v18, v18, v9

    add-int v5, v18, v10

    .line 241
    .local v5, "offset":I
    const/16 v14, 0x20

    if-ge v11, v14, :cond_1

    .line 242
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    rsub-int/lit8 v15, v11, 0x20

    if-ge v14, v15, :cond_0

    .line 243
    add-int/lit8 v15, v6, 0x1

    .end local v6    # "pointer":I
    .local v15, "pointer":I
    aput-byte v16, v13, v6

    .line 242
    add-int/lit8 v14, v14, 0x1

    move v6, v15

    const/4 v15, 0x1

    goto :goto_0

    .line 245
    .end local v14    # "i":I
    .end local v15    # "pointer":I
    .restart local v6    # "pointer":I
    :cond_0
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 246
    invoke-virtual {v0, v13, v6, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 248
    add-int/2addr v6, v11

    goto :goto_1

    .line 250
    :cond_1
    add-int v15, v5, v11

    sub-int/2addr v15, v14

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 251
    invoke-virtual {v0, v13, v6, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 253
    add-int/2addr v6, v14

    .line 259
    :goto_1
    sub-int/2addr v5, v10

    .line 260
    add-int/lit8 v14, v6, 0x1

    .end local v6    # "pointer":I
    .local v14, "pointer":I
    and-int/lit16 v15, v10, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v6

    .line 261
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 262
    invoke-virtual {v0, v13, v14, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 280
    sub-int/2addr v5, v9

    .line 281
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 283
    add-int/lit8 v6, v14, 0x2

    .line 284
    .local v6, "j":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v9, :cond_3

    .line 285
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v19

    if-eqz v19, :cond_2

    .line 289
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 290
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 291
    goto :goto_3

    .line 294
    :cond_2
    add-int/lit8 v19, v6, 0x1

    .end local v6    # "j":I
    .local v19, "j":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v20

    aput-byte v20, v13, v6

    .line 295
    add-int/lit8 v6, v19, 0x1

    .end local v19    # "j":I
    .restart local v6    # "j":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v20

    aput-byte v20, v13, v19

    .line 284
    :goto_3
    add-int/lit8 v15, v15, 0x3

    goto :goto_2

    .line 298
    .end local v15    # "i":I
    :cond_3
    add-int/lit8 v15, v14, 0x2

    sub-int/2addr v6, v15

    .line 299
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "pointer":I
    .local v15, "pointer":I
    move/from16 v19, v2

    .end local v2    # "firstByte":B
    .local v19, "firstByte":B
    ushr-int/lit8 v2, v6, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v13, v14

    .line 300
    add-int/lit8 v2, v15, 0x1

    .end local v15    # "pointer":I
    .local v2, "pointer":I
    and-int/lit16 v14, v6, 0xff

    int-to-byte v14, v14

    aput-byte v14, v13, v15

    .line 301
    add-int/2addr v2, v6

    .line 306
    add-int/lit8 v14, v2, 0x1

    const/4 v15, 0x1

    .end local v2    # "pointer":I
    .restart local v14    # "pointer":I
    aput-byte v15, v13, v2

    .line 307
    add-int/lit8 v2, v14, 0x1

    .end local v14    # "pointer":I
    .restart local v2    # "pointer":I
    aput-byte v16, v13, v14

    .line 314
    add-int/lit8 v14, v2, -0x5

    .line 315
    .local v14, "fragLen":I
    ushr-int/lit8 v15, v14, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    const/16 v16, 0x3

    aput-byte v15, v13, v16

    .line 316
    and-int/lit16 v15, v14, 0xff

    int-to-byte v15, v15

    const/16 v16, 0x4

    aput-byte v15, v13, v16

    .line 321
    add-int/lit8 v14, v2, -0x9

    .line 322
    ushr-int/lit8 v15, v14, 0x10

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    const/16 v16, 0x6

    aput-byte v15, v13, v16

    .line 323
    ushr-int/lit8 v15, v14, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    const/16 v16, 0x7

    aput-byte v15, v13, v16

    .line 324
    and-int/lit16 v15, v14, 0xff

    int-to-byte v15, v15

    const/16 v16, 0x8

    aput-byte v15, v13, v16

    .line 327
    add-int v15, v1, v4

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 330
    add-int/lit8 v15, v2, -0x5

    const/4 v0, 0x5

    invoke-static {v13, v0, v15}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static extract([Ljava/nio/ByteBuffer;III)Ljava/nio/ByteBuffer;
    .locals 10
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "headerSize"    # I

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "hasFullHeader":Z
    const/4 v1, -0x1

    .line 339
    .local v1, "contentLen":I
    move v2, p1

    .local v2, "i":I
    const/4 v3, 0x0

    .line 340
    .local v3, "j":I
    :goto_0
    add-int v4, p1, p2

    if-ge v2, v4, :cond_3

    if-ge v3, p3, :cond_3

    .line 341
    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 342
    .local v4, "remains":I
    aget-object v5, p0, v2

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 343
    .local v5, "pos":I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    if-ge v6, v4, :cond_2

    if-ge v3, p3, :cond_2

    .line 344
    aget-object v7, p0, v2

    add-int v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    .line 345
    .local v7, "b":B
    add-int/lit8 v8, p3, -0x2

    if-ne v3, v8, :cond_0

    .line 346
    and-int/lit16 v8, v7, 0xff

    shl-int/lit8 v1, v8, 0x8

    goto :goto_2

    .line 347
    :cond_0
    add-int/lit8 v8, p3, -0x1

    if-ne v3, v8, :cond_1

    .line 348
    and-int/lit16 v8, v7, 0xff

    or-int/2addr v1, v8

    .line 349
    const/4 v0, 0x1

    .line 350
    goto :goto_3

    .line 343
    .end local v7    # "b":B
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 340
    .end local v4    # "remains":I
    .end local v5    # "pos":I
    .end local v6    # "k":I
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_3
    if-eqz v0, :cond_a

    .line 359
    add-int v2, p3, v1

    .line 360
    .local v2, "packetLen":I
    const/4 v3, 0x0

    .line 361
    .local v3, "remains":I
    move v4, p1

    .local v4, "i":I
    :goto_4
    add-int v5, p1, p2

    if-ge v4, v5, :cond_5

    .line 362
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    add-int/2addr v3, v5

    .line 363
    if-lt v3, v2, :cond_4

    .line 364
    goto :goto_5

    .line 361
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 368
    .end local v4    # "i":I
    :cond_5
    :goto_5
    if-lt v3, v2, :cond_9

    .line 372
    new-array v4, v2, [B

    .line 373
    .local v4, "packet":[B
    const/4 v5, 0x0

    .line 374
    .local v5, "packetOffset":I
    move v6, v2

    .line 375
    .local v6, "packetSpaces":I
    move v7, p1

    .local v7, "i":I
    :goto_6
    add-int v8, p1, p2

    if-ge v7, v8, :cond_8

    .line 376
    aget-object v8, p0, v7

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 377
    aget-object v8, p0, v7

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 378
    .local v8, "len":I
    aget-object v9, p0, v7

    invoke-virtual {v9, v4, v5, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 379
    add-int/2addr v5, v8

    .line 380
    sub-int/2addr v6, v8

    .line 383
    .end local v8    # "len":I
    :cond_6
    if-gtz v6, :cond_7

    .line 384
    goto :goto_7

    .line 375
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 388
    .end local v7    # "i":I
    :cond_8
    :goto_7
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    return-object v7

    .line 369
    .end local v4    # "packet":[B
    .end local v5    # "packetOffset":I
    .end local v6    # "packetSpaces":I
    :cond_9
    new-instance v4, Ljava/nio/BufferUnderflowException;

    invoke-direct {v4}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v4

    .line 356
    .end local v2    # "packetLen":I
    .end local v3    # "remains":I
    :cond_a
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2
.end method


# virtual methods
.method acquirePlaintext()Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method bytesInCompletePacket()I
    .locals 1
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

.method bytesInCompletePacket([Ljava/nio/ByteBuffer;II)I
    .locals 2
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method changeFragmentSize(I)V
    .locals 0
    .param p1, "fragmentSize"    # I

    .line 124
    iput p1, p0, Lorg/openjsse/sun/security/ssl/InputRecord;->fragmentSize:I

    .line 125
    return-void
.end method

.method changeReadCiphers(Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;)V
    .locals 0
    .param p1, "readCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    .line 117
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->dispose()V

    .line 119
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/InputRecord;->readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    .line 120
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

    .line 96
    :try_start_0
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/InputRecord;->isClosed:Z

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/InputRecord;->isClosed:Z

    .line 98
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/InputRecord;->readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/InputRecord;
    :cond_0
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method abstract decode([Ljava/nio/ByteBuffer;II)[Lorg/openjsse/sun/security/ssl/Plaintext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method estimateFragmentSize(I)I
    .locals 1
    .param p1, "packetSize"    # I

    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method expectingFinishFlight()V
    .locals 0

    .line 83
    return-void
.end method

.method finishHandshake()V
    .locals 0

    .line 88
    return-void
.end method

.method declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/InputRecord;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 103
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/InputRecord;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method isEmpty()Z
    .locals 1

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method seqNumIsHuge()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/InputRecord;->readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/InputRecord;->readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    .line 73
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->seqNumIsHuge()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0
.end method

.method setDeliverStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method setHelloVersion(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 0
    .param p1, "helloVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 68
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/InputRecord;->helloVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 69
    return-void
.end method

.method setReceiverStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
