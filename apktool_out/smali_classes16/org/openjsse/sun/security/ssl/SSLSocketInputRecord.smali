.class final Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;
.super Lorg/openjsse/sun/security/ssl/InputRecord;
.source "SSLSocketInputRecord.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLRecord;


# instance fields
.field private formatVerified:Z

.field private handshakeBuffer:Ljava/nio/ByteBuffer;

.field private final header:[B

.field private headerOff:I

.field private is:Ljava/io/InputStream;

.field private os:Ljava/io/OutputStream;

.field private recordBody:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V
    .locals 3
    .param p1, "handshakeHash"    # Lorg/openjsse/sun/security/ssl/HandshakeHash;

    .line 63
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->nullTlsReadCipher()Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/ssl/InputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->is:Ljava/io/InputStream;

    .line 51
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->os:Ljava/io/OutputStream;

    .line 52
    const/4 v1, 0x5

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->headerOff:I

    .line 55
    const/16 v2, 0x400

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    .line 57
    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->formatVerified:Z

    .line 60
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    .line 64
    return-void
.end method

.method private decodeInputRecord()[Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 210
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    const/4 v2, 0x0

    aget-byte v3, v0, v2

    .line 211
    .local v3, "contentType":B
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    const/4 v4, 0x1

    aget-byte v13, v0, v4

    .line 212
    .local v13, "majorVersion":B
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    const/4 v5, 0x2

    aget-byte v14, v0, v5

    .line 213
    .local v14, "minorVersion":B
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    const/4 v5, 0x3

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    const/4 v15, 0x4

    aget-byte v5, v5, v15

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v0, v5

    .line 216
    .local v0, "contentLen":I
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const-string v6, ", length = "

    const-string v7, " "

    const-string v8, "READ: "

    const-string v9, "record"

    if-eqz v5, :cond_0

    invoke-static {v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 219
    invoke-static {v13, v14}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(BB)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 220
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/ContentType;->nameOf(B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v10, v2, [Ljava/lang/Object;

    .line 217
    invoke-static {v5, v10}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :cond_0
    if-ltz v0, :cond_10

    const v5, 0x8140

    if-gt v0, v5, :cond_10

    .line 238
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    if-nez v5, :cond_2

    .line 239
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ge v5, v0, :cond_1

    .line 240
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    .line 242
    :cond_1
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move v12, v0

    goto :goto_0

    .line 244
    :cond_2
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v12, v0

    .line 246
    .end local v0    # "contentLen":I
    .local v12, "contentLen":I
    :goto_0
    invoke-direct {v1, v12}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->readFully(I)I

    .line 247
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 249
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_3

    invoke-static {v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 252
    invoke-static {v13, v14}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(BB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/ContentType;->nameOf(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    .line 254
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    .line 250
    invoke-static {v0, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_3
    :try_start_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    .line 263
    const/4 v6, 0x0

    invoke-virtual {v0, v3, v5, v6}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->decrypt(BLjava/nio/ByteBuffer;[B)Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v0

    .line 264
    .local v0, "plaintext":Lorg/openjsse/sun/security/ssl/Plaintext;
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    move-object v10, v5

    .line 265
    .local v10, "fragment":Ljava/nio/ByteBuffer;
    iget-byte v5, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    .line 271
    .end local v3    # "contentType":B
    .local v0, "contentType":B
    nop

    .line 273
    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-eq v0, v3, :cond_5

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_5

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    .line 274
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 275
    :cond_4
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expecting a handshake fragment, but received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 277
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/ContentType;->nameOf(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 283
    :cond_5
    :goto_1
    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v0, v3, :cond_f

    .line 284
    move-object v3, v10

    .line 285
    .local v3, "handshakeFrag":Ljava/nio/ByteBuffer;
    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_6

    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    .line 286
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-eqz v4, :cond_6

    .line 287
    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    .line 288
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 287
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 289
    .local v4, "bb":Ljava/nio/ByteBuffer;
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 290
    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 291
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 292
    iput-object v6, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    .line 295
    .end local v4    # "bb":Ljava/nio/ByteBuffer;
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .local v4, "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    :goto_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 297
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    .line 298
    .local v11, "remaining":I
    if-ge v11, v15, :cond_7

    .line 299
    new-array v5, v11, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    .line 300
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 301
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 302
    move-object/from16 v16, v10

    move/from16 v17, v12

    goto/16 :goto_3

    .line 305
    :cond_7
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 308
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 309
    .local v9, "handshakeType":B
    invoke-static {v9}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->isKnown(B)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 315
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Record;->getInt24(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 316
    .local v8, "handshakeBodyLen":I
    sget v5, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maxHandshakeMessageSize:I

    if-gt v8, v5, :cond_c

    .line 325
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 326
    add-int/lit8 v7, v8, 0x4

    .line 328
    .local v7, "handshakeMessageLen":I
    if-ge v11, v7, :cond_8

    .line 329
    new-array v5, v11, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    .line 330
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 331
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 332
    move-object/from16 v16, v10

    move/from16 v17, v12

    goto/16 :goto_3

    .line 333
    :cond_8
    if-ne v11, v7, :cond_a

    .line 334
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v5, v9}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->isHashable(B)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 335
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v5, v3}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->receive(Ljava/nio/ByteBuffer;)V

    .line 338
    :cond_9
    new-instance v15, Lorg/openjsse/sun/security/ssl/Plaintext;

    const/16 v16, -0x1

    const-wide/16 v17, -0x1

    move-object v5, v15

    move v6, v0

    move/from16 v19, v7

    .end local v7    # "handshakeMessageLen":I
    .local v19, "handshakeMessageLen":I
    move v7, v13

    move v2, v8

    .end local v8    # "handshakeBodyLen":I
    .local v2, "handshakeBodyLen":I
    move v8, v14

    move/from16 v20, v2

    move v2, v9

    .end local v9    # "handshakeType":B
    .local v2, "handshakeType":B
    .local v20, "handshakeBodyLen":I
    move/from16 v9, v16

    move-object/from16 v16, v10

    move/from16 v21, v11

    .end local v10    # "fragment":Ljava/nio/ByteBuffer;
    .end local v11    # "remaining":I
    .local v16, "fragment":Ljava/nio/ByteBuffer;
    .local v21, "remaining":I
    move-wide/from16 v10, v17

    move/from16 v17, v12

    .end local v12    # "contentLen":I
    .local v17, "contentLen":I
    move-object v12, v3

    invoke-direct/range {v5 .. v12}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    goto/16 :goto_3

    .line 344
    .end local v2    # "handshakeType":B
    .end local v16    # "fragment":Ljava/nio/ByteBuffer;
    .end local v17    # "contentLen":I
    .end local v19    # "handshakeMessageLen":I
    .end local v20    # "handshakeBodyLen":I
    .end local v21    # "remaining":I
    .restart local v7    # "handshakeMessageLen":I
    .restart local v8    # "handshakeBodyLen":I
    .restart local v9    # "handshakeType":B
    .restart local v10    # "fragment":Ljava/nio/ByteBuffer;
    .restart local v11    # "remaining":I
    .restart local v12    # "contentLen":I
    :cond_a
    move/from16 v19, v7

    move/from16 v20, v8

    move v2, v9

    move-object/from16 v16, v10

    move/from16 v21, v11

    move/from16 v17, v12

    .end local v7    # "handshakeMessageLen":I
    .end local v8    # "handshakeBodyLen":I
    .end local v9    # "handshakeType":B
    .end local v10    # "fragment":Ljava/nio/ByteBuffer;
    .end local v11    # "remaining":I
    .end local v12    # "contentLen":I
    .restart local v2    # "handshakeType":B
    .restart local v16    # "fragment":Ljava/nio/ByteBuffer;
    .restart local v17    # "contentLen":I
    .restart local v19    # "handshakeMessageLen":I
    .restart local v20    # "handshakeBodyLen":I
    .restart local v21    # "remaining":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v18

    .line 345
    .local v18, "fragPos":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    .line 346
    .local v12, "fragLim":I
    add-int v10, v18, v19

    .line 347
    .local v10, "nextPos":I
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 349
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v5, v2}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->isHashable(B)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 350
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v5, v3}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->receive(Ljava/nio/ByteBuffer;)V

    .line 353
    :cond_b
    new-instance v11, Lorg/openjsse/sun/security/ssl/Plaintext;

    .line 355
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v22

    const/4 v9, -0x1

    const-wide/16 v23, -0x1

    move-object v5, v11

    move v6, v0

    move v7, v13

    move v8, v14

    move v15, v10

    move-object/from16 v25, v11

    .end local v10    # "nextPos":I
    .local v15, "nextPos":I
    move-wide/from16 v10, v23

    move v1, v12

    .end local v12    # "fragLim":I
    .local v1, "fragLim":I
    move-object/from16 v12, v22

    invoke-direct/range {v5 .. v12}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    .line 353
    move-object/from16 v5, v25

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 359
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 361
    .end local v1    # "fragLim":I
    .end local v2    # "handshakeType":B
    .end local v15    # "nextPos":I
    .end local v18    # "fragPos":I
    .end local v19    # "handshakeMessageLen":I
    .end local v20    # "handshakeBodyLen":I
    .end local v21    # "remaining":I
    move-object/from16 v1, p0

    move-object/from16 v10, v16

    move/from16 v12, v17

    const/4 v2, 0x0

    const/4 v15, 0x4

    goto/16 :goto_2

    .line 317
    .end local v16    # "fragment":Ljava/nio/ByteBuffer;
    .end local v17    # "contentLen":I
    .restart local v8    # "handshakeBodyLen":I
    .restart local v9    # "handshakeType":B
    .local v10, "fragment":Ljava/nio/ByteBuffer;
    .restart local v11    # "remaining":I
    .local v12, "contentLen":I
    :cond_c
    move/from16 v20, v8

    .end local v8    # "handshakeBodyLen":I
    .restart local v20    # "handshakeBodyLen":I
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The size of the handshake message ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v6, v20

    .end local v20    # "handshakeBodyLen":I
    .local v6, "handshakeBodyLen":I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") exceeds the maximum allowed size ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v7, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maxHandshakeMessageSize:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    .end local v6    # "handshakeBodyLen":I
    :cond_d
    move v2, v9

    .end local v9    # "handshakeType":B
    .restart local v2    # "handshakeType":B
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown handshake type size, Handshake.msg_type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v6, v2, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    .end local v2    # "handshakeType":B
    .end local v11    # "remaining":I
    :cond_e
    move-object/from16 v16, v10

    move/from16 v17, v12

    .line 363
    .end local v10    # "fragment":Ljava/nio/ByteBuffer;
    .end local v12    # "contentLen":I
    .restart local v16    # "fragment":Ljava/nio/ByteBuffer;
    .restart local v17    # "contentLen":I
    :goto_3
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/openjsse/sun/security/ssl/Plaintext;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/openjsse/sun/security/ssl/Plaintext;

    return-object v1

    .line 366
    .end local v3    # "handshakeFrag":Ljava/nio/ByteBuffer;
    .end local v4    # "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    .end local v16    # "fragment":Ljava/nio/ByteBuffer;
    .end local v17    # "contentLen":I
    .restart local v10    # "fragment":Ljava/nio/ByteBuffer;
    .restart local v12    # "contentLen":I
    :cond_f
    move-object/from16 v16, v10

    move/from16 v17, v12

    .end local v10    # "fragment":Ljava/nio/ByteBuffer;
    .end local v12    # "contentLen":I
    .restart local v16    # "fragment":Ljava/nio/ByteBuffer;
    .restart local v17    # "contentLen":I
    new-array v1, v4, [Lorg/openjsse/sun/security/ssl/Plaintext;

    new-instance v2, Lorg/openjsse/sun/security/ssl/Plaintext;

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    move-object v5, v2

    move v6, v0

    move v7, v13

    move v8, v14

    move-object/from16 v12, v16

    invoke-direct/range {v5 .. v12}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    return-object v1

    .line 268
    .end local v0    # "contentType":B
    .end local v16    # "fragment":Ljava/nio/ByteBuffer;
    .end local v17    # "contentLen":I
    .local v3, "contentType":B
    .restart local v12    # "contentLen":I
    :catch_0
    move-exception v0

    move/from16 v17, v12

    .line 269
    .end local v12    # "contentLen":I
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    .restart local v17    # "contentLen":I
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLProtocolException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLProtocolException;

    throw v1

    .line 266
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    .end local v17    # "contentLen":I
    .restart local v12    # "contentLen":I
    :catch_1
    move-exception v0

    move/from16 v17, v12

    .line 267
    .end local v12    # "contentLen":I
    .local v0, "bpe":Ljavax/crypto/BadPaddingException;
    .restart local v17    # "contentLen":I
    throw v0

    .line 229
    .end local v17    # "contentLen":I
    .local v0, "contentLen":I
    :cond_10
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad input record size, TLSCiphertext.length = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleUnknownRecord()[Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    .line 374
    .local v1, "firstByte":B
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    .line 377
    .local v3, "thirdByte":B
    and-int/lit16 v5, v1, 0x80

    const/4 v6, 0x4

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    if-ne v3, v5, :cond_7

    .line 381
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->helloVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-ne v7, v8, :cond_6

    .line 385
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    const/4 v8, 0x3

    aget-byte v7, v7, v8

    .line 386
    .local v7, "majorVersion":B
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v6, v8, v6

    .line 388
    .local v6, "minorVersion":B
    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v8, v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    const-string v9, "packet"

    if-ne v7, v8, :cond_2

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v8, v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    if-ne v6, v8, :cond_2

    .line 397
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->os:Ljava/io/OutputStream;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLRecord;->v2NoCipher:[B

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 399
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_1

    .line 400
    const-string v4, "record"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    const-string v4, "Requested to negotiate unsupported SSLv2!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    :cond_0
    invoke-static {v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLRecord;->v2NoCipher:[B

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Raw write"

    invoke-static {v4, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    :cond_1
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v4, "Unsupported SSL v2.0 ClientHello"

    invoke-direct {v2, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :cond_2
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v8, v8, v2

    and-int/lit8 v8, v8, 0x7f

    shl-int/lit8 v8, v8, 0x8

    iget-object v10, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v10, v10, v5

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v8, v10

    .line 414
    .local v8, "msgLen":I
    iget-object v10, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    if-nez v10, :cond_4

    .line 415
    iget-object v10, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    add-int/lit8 v11, v8, 0x5

    if-ge v10, v11, :cond_3

    .line 416
    add-int/lit8 v10, v8, 0x5

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    iput-object v10, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    .line 418
    :cond_3
    iget-object v10, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    add-int/lit8 v11, v8, 0x5

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 419
    iget-object v10, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    iget-object v11, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v2, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 421
    :cond_4
    iget-object v10, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    .line 423
    :goto_0
    add-int/lit8 v8, v8, -0x3

    .line 424
    invoke-direct {v0, v8}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->readFully(I)I

    .line 425
    iget-object v10, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 432
    iget-object v10, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 433
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    iget-object v10, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v10}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->receive(Ljava/nio/ByteBuffer;)V

    .line 434
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 436
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->convertToClientHello(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 438
    .local v4, "converted":Ljava/nio/ByteBuffer;
    sget-boolean v10, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v10, :cond_5

    invoke-static {v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 439
    const-string v9, "[Converted] ClientHello"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    :cond_5
    new-array v5, v5, [Lorg/openjsse/sun/security/ssl/Plaintext;

    new-instance v17, Lorg/openjsse/sun/security/ssl/Plaintext;

    sget-object v9, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v10, v9, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    const/4 v13, -0x1

    const-wide/16 v14, -0x1

    move-object/from16 v9, v17

    move v11, v7

    move v12, v6

    move-object/from16 v16, v4

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    aput-object v17, v5, v2

    return-object v5

    .line 382
    .end local v4    # "converted":Ljava/nio/ByteBuffer;
    .end local v6    # "minorVersion":B
    .end local v7    # "majorVersion":B
    .end local v8    # "msgLen":I
    :cond_6
    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    const-string v4, "SSLv2Hello is not enabled"

    invoke-direct {v2, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 448
    :cond_7
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_8

    if-ne v3, v6, :cond_8

    .line 449
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v4, "SSL V2.0 servers are not supported."

    invoke-direct {v2, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_8
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v4, "Unsupported or unrecognized SSL message"

    invoke-direct {v2, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static read(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 480
    .local v0, "readLen":I
    const-string v1, "packet"

    if-gez v0, :cond_1

    .line 481
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Raw read: EOF"

    invoke-static {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "SSL peer shut down incorrectly"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    :cond_1
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_2

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 489
    .local v1, "bb":Ljava/nio/ByteBuffer;
    const-string v2, "Raw read"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :cond_2
    return v0
.end method

.method private readFully(I)I
    .locals 5
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    .line 459
    .local v0, "end":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 461
    .local v1, "off":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 462
    :try_start_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->is:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    sub-int v4, v0, v1

    invoke-static {v2, v3, v1, v4}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->read(Ljava/io/InputStream;[BII)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 466
    throw v2

    .line 465
    :cond_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 466
    nop

    .line 467
    return p1
.end method

.method private readHeader()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    nop

    :goto_0
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->headerOff:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 473
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->headerOff:I

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->is:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    iget v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->headerOff:I

    iget v5, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->headerOff:I

    sub-int/2addr v1, v5

    invoke-static {v2, v3, v4, v1}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->read(Ljava/io/InputStream;[BII)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->headerOff:I

    goto :goto_0

    .line 475
    :cond_0
    return v1
.end method


# virtual methods
.method bytesInCompletePacket()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    :try_start_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->readHeader()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    nop

    .line 76
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    .line 77
    .local v0, "byteZero":B
    const/4 v2, 0x0

    .line 85
    .local v2, "len":I
    iget-boolean v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->formatVerified:Z

    const-string v4, " , plaintext connection?"

    const-string v5, "Unrecognized record version "

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v3, :cond_5

    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-eq v0, v3, :cond_5

    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->ALERT:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_1

    move v3, v9

    goto :goto_0

    :cond_1
    move v3, v1

    .line 120
    .local v3, "isShort":Z
    :goto_0
    if-eqz v3, :cond_4

    iget-object v10, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v10, v10, v8

    if-eq v10, v9, :cond_2

    iget-object v10, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v10, v10, v8

    if-ne v10, v7, :cond_4

    .line 121
    :cond_2
    iget-object v10, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v10, v10, v6

    iget-object v11, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v11, v11, v7

    invoke-static {v10, v11, v1, v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isNegotiable(BBZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    and-int/lit8 v1, v0, 0x7f

    shl-int/lit8 v1, v1, 0x8

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v4, v4, v9

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    add-int/2addr v1, v8

    .end local v2    # "len":I
    .local v1, "len":I
    goto :goto_2

    .line 123
    .end local v1    # "len":I
    .restart local v2    # "len":I
    :cond_3
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v6, v8, v6

    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v7, v8, v7

    .line 124
    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(BB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_4
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v4, "Unrecognized SSL message, plaintext connection?"

    invoke-direct {v1, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    .end local v3    # "isShort":Z
    :cond_5
    :goto_1
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v3, v3, v9

    iget-object v10, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v10, v10, v8

    invoke-static {v3, v10, v1, v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isNegotiable(BBZZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 103
    iput-boolean v9, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->formatVerified:Z

    .line 108
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x5

    .line 147
    .end local v2    # "len":I
    .restart local v1    # "len":I
    :goto_2
    return v1

    .line 93
    .end local v1    # "len":I
    .restart local v2    # "len":I
    :cond_6
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v5, v5, v9

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v6, v6, v8

    .line 94
    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(BB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    .end local v0    # "byteZero":B
    .end local v2    # "len":I
    :catch_0
    move-exception v0

    .line 73
    .local v0, "eofe":Ljava/io/EOFException;
    const/4 v1, -0x1

    return v1
.end method

.method decode([Ljava/nio/ByteBuffer;II)[Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 5
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 155
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->isClosed:Z

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->readHeader()I

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "plaintext":[Lorg/openjsse/sun/security/ssl/Plaintext;
    const/4 v1, 0x1

    .line 165
    .local v1, "cleanInBuffer":Z
    const/4 v2, 0x0

    :try_start_0
    iget-boolean v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->formatVerified:Z

    if-nez v3, :cond_1

    .line 166
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->formatVerified:Z

    .line 173
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v3, v3, v2

    sget-object v4, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->header:[B

    aget-byte v3, v3, v2

    sget-object v4, Lorg/openjsse/sun/security/ssl/ContentType;->ALERT:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-eq v3, v4, :cond_1

    .line 175
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->handleUnknownRecord()[Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v3

    move-object v0, v3

    .line 180
    :cond_1
    if-nez v0, :cond_2

    .line 181
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->decodeInputRecord()[Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 188
    :cond_2
    if-eqz v1, :cond_3

    .line 189
    iput v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->headerOff:I

    .line 190
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 193
    :cond_3
    return-object v0

    .line 188
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 183
    :catch_0
    move-exception v3

    .line 185
    .local v3, "e":Ljava/io/InterruptedIOException;
    const/4 v1, 0x0

    .line 186
    nop

    .end local v0    # "plaintext":[Lorg/openjsse/sun/security/ssl/Plaintext;
    .end local v1    # "cleanInBuffer":Z
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .end local v3    # "e":Ljava/io/InterruptedIOException;
    .restart local v0    # "plaintext":[Lorg/openjsse/sun/security/ssl/Plaintext;
    .restart local v1    # "cleanInBuffer":Z
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    :goto_0
    if-eqz v1, :cond_4

    .line 189
    iput v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->headerOff:I

    .line 190
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->recordBody:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 192
    :cond_4
    throw v3
.end method

.method deplete(Z)V
    .locals 4
    .param p1, "tryToRead"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 497
    .local v0, "remaining":I
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 499
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 502
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    move v0, v1

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->is:Ljava/io/InputStream;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    goto :goto_0

    .line 505
    :cond_1
    return-void
.end method

.method setDeliverStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 203
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->os:Ljava/io/OutputStream;

    .line 204
    return-void
.end method

.method setReceiverStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 198
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSocketInputRecord;->is:Ljava/io/InputStream;

    .line 199
    return-void
.end method
