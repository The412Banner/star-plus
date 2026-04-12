.class final Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;
.super Lorg/openjsse/sun/security/ssl/InputRecord;
.source "SSLEngineInputRecord.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLRecord;


# instance fields
.field private formatVerified:Z

.field private handshakeBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V
    .locals 1
    .param p1, "handshakeHash"    # Lorg/openjsse/sun/security/ssl/HandshakeHash;

    .line 48
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->nullTlsReadCipher()Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjsse/sun/security/ssl/InputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->formatVerified:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    .line 49
    return-void
.end method

.method private bytesInCompletePacket(Ljava/nio/ByteBuffer;)I
    .locals 10
    .param p1, "packet"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 73
    const/4 v0, -0x1

    return v0

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 77
    .local v0, "pos":I
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 79
    .local v2, "byteZero":B
    const/4 v3, 0x0

    .line 87
    .local v3, "len":I
    iget-boolean v4, p0, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->formatVerified:Z

    const-string v5, " , plaintext connection?"

    const-string v6, "Unrecognized record version "

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v4, :cond_8

    sget-object v4, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-eq v2, v4, :cond_8

    sget-object v4, Lorg/openjsse/sun/security/ssl/ContentType;->ALERT:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v2, v4, :cond_1

    goto/16 :goto_3

    .line 123
    :cond_1
    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_2

    move v1, v8

    goto :goto_0

    :cond_2
    move v1, v7

    .line 125
    .local v1, "isShort":Z
    :goto_0
    if-eqz v1, :cond_7

    add-int/lit8 v4, v0, 0x2

    .line 126
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-eq v4, v8, :cond_3

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/4 v8, 0x4

    if-ne v4, v8, :cond_7

    .line 128
    :cond_3
    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 129
    .local v4, "majorVersion":B
    add-int/lit8 v8, v0, 0x4

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    .line 130
    .local v8, "minorVersion":B
    invoke-static {v4, v8, v7, v7}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isNegotiable(BBZZ)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 140
    if-eqz v1, :cond_4

    const/16 v5, 0x7f

    goto :goto_1

    :cond_4
    const/16 v5, 0x3f

    .line 141
    .local v5, "mask":I
    :goto_1
    and-int v6, v2, v5

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v0, 0x1

    .line 142
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    if-eqz v1, :cond_5

    const/4 v7, 0x2

    goto :goto_2

    :cond_5
    const/4 v7, 0x3

    :goto_2
    add-int/2addr v6, v7

    .line 144
    .end local v3    # "len":I
    .end local v4    # "majorVersion":B
    .end local v5    # "mask":I
    .end local v8    # "minorVersion":B
    .local v6, "len":I
    goto :goto_4

    .line 132
    .end local v6    # "len":I
    .restart local v3    # "len":I
    .restart local v4    # "majorVersion":B
    .restart local v8    # "minorVersion":B
    :cond_6
    new-instance v7, Ljavax/net/ssl/SSLException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 133
    invoke-static {v4, v8}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(BB)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 146
    .end local v4    # "majorVersion":B
    .end local v8    # "minorVersion":B
    :cond_7
    new-instance v4, Ljavax/net/ssl/SSLException;

    const-string v5, "Unrecognized SSL message, plaintext connection?"

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    .end local v1    # "isShort":Z
    :cond_8
    :goto_3
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 94
    .restart local v4    # "majorVersion":B
    add-int/lit8 v9, v0, 0x2

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    .line 95
    .local v9, "minorVersion":B
    invoke-static {v4, v9, v7, v7}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isNegotiable(BBZZ)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 107
    iput-boolean v8, p0, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->formatVerified:Z

    .line 112
    add-int/lit8 v5, v0, 0x3

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v0, 0x4

    .line 113
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    add-int/lit8 v6, v5, 0x5

    .line 115
    .end local v3    # "len":I
    .end local v4    # "majorVersion":B
    .end local v9    # "minorVersion":B
    .restart local v6    # "len":I
    nop

    .line 151
    :goto_4
    return v6

    .line 97
    .end local v6    # "len":I
    .restart local v3    # "len":I
    .restart local v4    # "majorVersion":B
    .restart local v9    # "minorVersion":B
    :cond_9
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 98
    invoke-static {v4, v9}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(BB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private decode(Ljava/nio/ByteBuffer;)[Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 3
    .param p1, "packet"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 172
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->isClosed:Z

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_0
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_1

    const-string v0, "packet"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string v0, "Raw read"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_1
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->formatVerified:Z

    if-nez v0, :cond_2

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->formatVerified:Z

    .line 189
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 190
    .local v0, "pos":I
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 191
    .local v1, "byteZero":B
    sget-object v2, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-eq v1, v2, :cond_2

    sget-object v2, Lorg/openjsse/sun/security/ssl/ContentType;->ALERT:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-eq v1, v2, :cond_2

    .line 193
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handleUnknownRecord(Ljava/nio/ByteBuffer;)[Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v2

    return-object v2

    .line 197
    .end local v0    # "pos":I
    .end local v1    # "byteZero":B
    :cond_2
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->decodeInputRecord(Ljava/nio/ByteBuffer;)[Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v0

    return-object v0
.end method

.method private decodeInputRecord(Ljava/nio/ByteBuffer;)[Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 33
    .param p1, "packet"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 206
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 207
    .local v3, "srcPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 209
    .local v4, "srcLim":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 210
    .local v5, "contentType":B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    .line 211
    .local v14, "majorVersion":B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    .line 212
    .local v15, "minorVersion":B
    invoke-static/range {p1 .. p1}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 214
    .local v13, "contentLen":I
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    const-string v0, "record"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "READ: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 217
    invoke-static {v14, v15}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(BB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/ContentType;->nameOf(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", length = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v11, [Ljava/lang/Object;

    .line 215
    invoke-static {v0, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :cond_0
    if-ltz v13, :cond_d

    const v0, 0x8140

    if-gt v13, v0, :cond_d

    .line 234
    add-int/lit8 v0, v3, 0x5

    add-int v12, v0, v13

    .line 235
    .local v12, "recLim":I
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 236
    add-int/lit8 v0, v3, 0x5

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 240
    :try_start_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    .line 241
    const/4 v6, 0x0

    invoke-virtual {v0, v5, v2, v6}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->decrypt(BLjava/nio/ByteBuffer;[B)Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v0

    .line 242
    .local v0, "plaintext":Lorg/openjsse/sun/security/ssl/Plaintext;
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    move-object v10, v7

    .line 243
    .local v10, "fragment":Ljava/nio/ByteBuffer;
    iget-byte v7, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v7

    .line 251
    .end local v5    # "contentType":B
    .local v0, "contentType":B
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 252
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 253
    nop

    .line 258
    sget-object v5, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v5, v5, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-eq v0, v5, :cond_2

    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    .line 259
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting a handshake fragment, but received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 262
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/ContentType;->nameOf(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 268
    :cond_2
    :goto_0
    sget-object v5, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v5, v5, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v0, v5, :cond_c

    .line 269
    move-object v5, v10

    .line 270
    .local v5, "handshakeFrag":Ljava/nio/ByteBuffer;
    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_3

    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    .line 271
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-eqz v7, :cond_3

    .line 272
    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    .line 273
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    add-int/2addr v7, v8

    new-array v7, v7, [B

    .line 272
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 274
    .local v7, "bb":Ljava/nio/ByteBuffer;
    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 275
    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 276
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 277
    iput-object v6, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    .line 280
    .end local v7    # "bb":Ljava/nio/ByteBuffer;
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v6

    .line 281
    .local v9, "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    :goto_1
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 282
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    .line 283
    .local v8, "remaining":I
    const/4 v6, 0x4

    if-ge v8, v6, :cond_4

    .line 284
    new-array v6, v8, [B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    .line 285
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 286
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 287
    move/from16 v17, v3

    move-object v3, v9

    move-object/from16 v25, v10

    move/from16 v26, v12

    move/from16 v27, v13

    goto/16 :goto_2

    .line 290
    :cond_4
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 293
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 294
    .local v7, "handshakeType":B
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->isKnown(B)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 300
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/Record;->getInt24(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 301
    .local v6, "handshakeBodyLen":I
    sget v11, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maxHandshakeMessageSize:I

    if-gt v6, v11, :cond_9

    .line 310
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 311
    add-int/lit8 v11, v6, 0x4

    .line 313
    .local v11, "handshakeMessageLen":I
    if-ge v8, v11, :cond_5

    .line 314
    move/from16 v17, v3

    .end local v3    # "srcPos":I
    .local v17, "srcPos":I
    new-array v3, v8, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    .line 315
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 316
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 317
    move-object v3, v9

    move-object/from16 v25, v10

    move/from16 v26, v12

    move/from16 v27, v13

    goto/16 :goto_2

    .line 318
    .end local v17    # "srcPos":I
    .restart local v3    # "srcPos":I
    :cond_5
    move/from16 v17, v3

    .end local v3    # "srcPos":I
    .restart local v17    # "srcPos":I
    if-ne v8, v11, :cond_7

    .line 319
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v3, v7}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->isHashable(B)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 320
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v3, v5}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->receive(Ljava/nio/ByteBuffer;)V

    .line 323
    :cond_6
    new-instance v3, Lorg/openjsse/sun/security/ssl/Plaintext;

    const/16 v18, -0x1

    const-wide/16 v19, -0x1

    move/from16 v21, v6

    .end local v6    # "handshakeBodyLen":I
    .local v21, "handshakeBodyLen":I
    move-object v6, v3

    move/from16 v22, v7

    .end local v7    # "handshakeType":B
    .local v22, "handshakeType":B
    move v7, v0

    move/from16 v23, v8

    .end local v8    # "remaining":I
    .local v23, "remaining":I
    move v8, v14

    move-object/from16 v24, v9

    .end local v9    # "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    .local v24, "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    move v9, v15

    move-object/from16 v25, v10

    .end local v10    # "fragment":Ljava/nio/ByteBuffer;
    .local v25, "fragment":Ljava/nio/ByteBuffer;
    move/from16 v10, v18

    move/from16 v16, v11

    move/from16 v26, v12

    .end local v11    # "handshakeMessageLen":I
    .end local v12    # "recLim":I
    .local v16, "handshakeMessageLen":I
    .local v26, "recLim":I
    move-wide/from16 v11, v19

    move/from16 v27, v13

    .end local v13    # "contentLen":I
    .local v27, "contentLen":I
    move-object v13, v5

    invoke-direct/range {v6 .. v13}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    move-object/from16 v13, v24

    .end local v24    # "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    .local v13, "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    move-object v3, v13

    goto/16 :goto_2

    .line 329
    .end local v16    # "handshakeMessageLen":I
    .end local v21    # "handshakeBodyLen":I
    .end local v22    # "handshakeType":B
    .end local v23    # "remaining":I
    .end local v25    # "fragment":Ljava/nio/ByteBuffer;
    .end local v26    # "recLim":I
    .end local v27    # "contentLen":I
    .restart local v6    # "handshakeBodyLen":I
    .restart local v7    # "handshakeType":B
    .restart local v8    # "remaining":I
    .restart local v9    # "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    .restart local v10    # "fragment":Ljava/nio/ByteBuffer;
    .restart local v11    # "handshakeMessageLen":I
    .restart local v12    # "recLim":I
    .local v13, "contentLen":I
    :cond_7
    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v25, v10

    move/from16 v16, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move-object v13, v9

    .end local v6    # "handshakeBodyLen":I
    .end local v7    # "handshakeType":B
    .end local v8    # "remaining":I
    .end local v9    # "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    .end local v10    # "fragment":Ljava/nio/ByteBuffer;
    .end local v11    # "handshakeMessageLen":I
    .end local v12    # "recLim":I
    .local v13, "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    .restart local v16    # "handshakeMessageLen":I
    .restart local v21    # "handshakeBodyLen":I
    .restart local v22    # "handshakeType":B
    .restart local v23    # "remaining":I
    .restart local v25    # "fragment":Ljava/nio/ByteBuffer;
    .restart local v26    # "recLim":I
    .restart local v27    # "contentLen":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 330
    .local v3, "fragPos":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    .line 331
    .local v11, "fragLim":I
    add-int v12, v3, v16

    .line 332
    .local v12, "nextPos":I
    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 334
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    move/from16 v10, v22

    .end local v22    # "handshakeType":B
    .local v10, "handshakeType":B
    invoke-virtual {v6, v10}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->isHashable(B)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 335
    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v6, v5}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->receive(Ljava/nio/ByteBuffer;)V

    .line 338
    :cond_8
    new-instance v9, Lorg/openjsse/sun/security/ssl/Plaintext;

    .line 340
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v18

    const/16 v19, -0x1

    const-wide/16 v28, -0x1

    move-object v6, v9

    move v7, v0

    move v8, v14

    move-object/from16 v30, v9

    move v9, v15

    move v1, v10

    .end local v10    # "handshakeType":B
    .local v1, "handshakeType":B
    move/from16 v10, v19

    move/from16 v31, v11

    move/from16 v32, v12

    .end local v11    # "fragLim":I
    .end local v12    # "nextPos":I
    .local v31, "fragLim":I
    .local v32, "nextPos":I
    move-wide/from16 v11, v28

    move/from16 v19, v3

    move-object v3, v13

    .end local v13    # "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    .local v3, "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    .local v19, "fragPos":I
    move-object/from16 v13, v18

    invoke-direct/range {v6 .. v13}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    .line 338
    move-object/from16 v6, v30

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    move/from16 v6, v32

    .end local v32    # "nextPos":I
    .local v6, "nextPos":I
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 344
    move/from16 v7, v31

    .end local v31    # "fragLim":I
    .local v7, "fragLim":I
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 346
    .end local v1    # "handshakeType":B
    .end local v6    # "nextPos":I
    .end local v7    # "fragLim":I
    .end local v16    # "handshakeMessageLen":I
    .end local v19    # "fragPos":I
    .end local v21    # "handshakeBodyLen":I
    .end local v23    # "remaining":I
    move-object/from16 v1, p0

    move-object v9, v3

    move/from16 v3, v17

    move-object/from16 v10, v25

    move/from16 v12, v26

    move/from16 v13, v27

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 302
    .end local v17    # "srcPos":I
    .end local v25    # "fragment":Ljava/nio/ByteBuffer;
    .end local v26    # "recLim":I
    .end local v27    # "contentLen":I
    .local v3, "srcPos":I
    .local v6, "handshakeBodyLen":I
    .local v7, "handshakeType":B
    .restart local v8    # "remaining":I
    .restart local v9    # "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    .local v10, "fragment":Ljava/nio/ByteBuffer;
    .local v12, "recLim":I
    .local v13, "contentLen":I
    :cond_9
    move/from16 v17, v3

    move/from16 v21, v6

    move v1, v7

    move/from16 v23, v8

    move-object v3, v9

    .end local v6    # "handshakeBodyLen":I
    .end local v7    # "handshakeType":B
    .end local v8    # "remaining":I
    .end local v9    # "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    .restart local v1    # "handshakeType":B
    .local v3, "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    .restart local v17    # "srcPos":I
    .restart local v21    # "handshakeBodyLen":I
    .restart local v23    # "remaining":I
    new-instance v6, Ljavax/net/ssl/SSLProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The size of the handshake message ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v8, v21

    .end local v21    # "handshakeBodyLen":I
    .local v8, "handshakeBodyLen":I
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ") exceeds the maximum allowed size ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v9, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maxHandshakeMessageSize:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 295
    .end local v1    # "handshakeType":B
    .end local v17    # "srcPos":I
    .end local v23    # "remaining":I
    .local v3, "srcPos":I
    .restart local v7    # "handshakeType":B
    .local v8, "remaining":I
    .restart local v9    # "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    :cond_a
    move v1, v7

    move/from16 v23, v8

    .end local v7    # "handshakeType":B
    .end local v8    # "remaining":I
    .restart local v1    # "handshakeType":B
    .restart local v23    # "remaining":I
    new-instance v6, Ljavax/net/ssl/SSLProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown handshake type size, Handshake.msg_type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit16 v8, v1, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 281
    .end local v1    # "handshakeType":B
    .end local v23    # "remaining":I
    :cond_b
    move/from16 v17, v3

    move-object v3, v9

    move-object/from16 v25, v10

    move/from16 v26, v12

    move/from16 v27, v13

    .line 348
    .end local v9    # "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    .end local v10    # "fragment":Ljava/nio/ByteBuffer;
    .end local v12    # "recLim":I
    .end local v13    # "contentLen":I
    .local v3, "plaintexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/Plaintext;>;"
    .restart local v17    # "srcPos":I
    .restart local v25    # "fragment":Ljava/nio/ByteBuffer;
    .restart local v26    # "recLim":I
    .restart local v27    # "contentLen":I
    :goto_2
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/openjsse/sun/security/ssl/Plaintext;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/openjsse/sun/security/ssl/Plaintext;

    return-object v1

    .line 351
    .end local v5    # "handshakeFrag":Ljava/nio/ByteBuffer;
    .end local v17    # "srcPos":I
    .end local v25    # "fragment":Ljava/nio/ByteBuffer;
    .end local v26    # "recLim":I
    .end local v27    # "contentLen":I
    .local v3, "srcPos":I
    .restart local v10    # "fragment":Ljava/nio/ByteBuffer;
    .restart local v12    # "recLim":I
    .restart local v13    # "contentLen":I
    :cond_c
    move/from16 v17, v3

    move-object/from16 v25, v10

    move v1, v11

    move/from16 v27, v13

    .end local v3    # "srcPos":I
    .end local v10    # "fragment":Ljava/nio/ByteBuffer;
    .end local v13    # "contentLen":I
    .restart local v17    # "srcPos":I
    .restart local v25    # "fragment":Ljava/nio/ByteBuffer;
    .restart local v27    # "contentLen":I
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/openjsse/sun/security/ssl/Plaintext;

    new-instance v5, Lorg/openjsse/sun/security/ssl/Plaintext;

    const/4 v10, -0x1

    const-wide/16 v11, -0x1

    move-object v6, v5

    move v7, v0

    move v8, v14

    move v9, v15

    move-object/from16 v13, v25

    invoke-direct/range {v6 .. v13}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    aput-object v5, v3, v1

    return-object v3

    .line 251
    .end local v0    # "contentType":B
    .end local v17    # "srcPos":I
    .end local v25    # "fragment":Ljava/nio/ByteBuffer;
    .end local v27    # "contentLen":I
    .restart local v3    # "srcPos":I
    .local v5, "contentType":B
    .restart local v13    # "contentLen":I
    :catchall_0
    move-exception v0

    move/from16 v17, v3

    move/from16 v26, v12

    move/from16 v27, v13

    .end local v3    # "srcPos":I
    .end local v12    # "recLim":I
    .end local v13    # "contentLen":I
    .restart local v17    # "srcPos":I
    .restart local v26    # "recLim":I
    .restart local v27    # "contentLen":I
    goto :goto_3

    .line 246
    .end local v17    # "srcPos":I
    .end local v26    # "recLim":I
    .end local v27    # "contentLen":I
    .restart local v3    # "srcPos":I
    .restart local v12    # "recLim":I
    .restart local v13    # "contentLen":I
    :catch_0
    move-exception v0

    move/from16 v17, v3

    move/from16 v26, v12

    move/from16 v27, v13

    .line 247
    .end local v3    # "srcPos":I
    .end local v12    # "recLim":I
    .end local v13    # "contentLen":I
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    .restart local v17    # "srcPos":I
    .restart local v26    # "recLim":I
    .restart local v27    # "contentLen":I
    :try_start_1
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    const-string v3, "Unexpected exception"

    invoke-direct {v1, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLProtocolException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLProtocolException;

    .end local v4    # "srcLim":I
    .end local v5    # "contentType":B
    .end local v14    # "majorVersion":B
    .end local v15    # "minorVersion":B
    .end local v17    # "srcPos":I
    .end local v26    # "recLim":I
    .end local v27    # "contentLen":I
    .end local p1    # "packet":Ljava/nio/ByteBuffer;
    throw v1

    .line 244
    .end local v0    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v3    # "srcPos":I
    .restart local v4    # "srcLim":I
    .restart local v5    # "contentType":B
    .restart local v12    # "recLim":I
    .restart local v13    # "contentLen":I
    .restart local v14    # "majorVersion":B
    .restart local v15    # "minorVersion":B
    .restart local p1    # "packet":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v0

    move/from16 v17, v3

    move/from16 v26, v12

    move/from16 v27, v13

    .line 245
    .end local v3    # "srcPos":I
    .end local v12    # "recLim":I
    .end local v13    # "contentLen":I
    .local v0, "bpe":Ljavax/crypto/BadPaddingException;
    .restart local v17    # "srcPos":I
    .restart local v26    # "recLim":I
    .restart local v27    # "contentLen":I
    nop

    .end local v4    # "srcLim":I
    .end local v5    # "contentType":B
    .end local v14    # "majorVersion":B
    .end local v15    # "minorVersion":B
    .end local v17    # "srcPos":I
    .end local v26    # "recLim":I
    .end local v27    # "contentLen":I
    .end local p1    # "packet":Ljava/nio/ByteBuffer;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    .end local v0    # "bpe":Ljavax/crypto/BadPaddingException;
    .restart local v4    # "srcLim":I
    .restart local v5    # "contentType":B
    .restart local v14    # "majorVersion":B
    .restart local v15    # "minorVersion":B
    .restart local v17    # "srcPos":I
    .restart local v26    # "recLim":I
    .restart local v27    # "contentLen":I
    .restart local p1    # "packet":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception v0

    :goto_3
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 252
    move/from16 v1, v26

    .end local v26    # "recLim":I
    .local v1, "recLim":I
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 253
    throw v0

    .line 226
    .end local v1    # "recLim":I
    .end local v17    # "srcPos":I
    .end local v27    # "contentLen":I
    .restart local v3    # "srcPos":I
    .restart local v13    # "contentLen":I
    :cond_d
    move/from16 v17, v3

    move/from16 v27, v13

    .line 227
    .end local v3    # "srcPos":I
    .end local v13    # "contentLen":I
    .restart local v17    # "srcPos":I
    .restart local v27    # "contentLen":I
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad input record size, TLSCiphertext.length = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v3, v27

    .end local v27    # "contentLen":I
    .local v3, "contentLen":I
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleUnknownRecord(Ljava/nio/ByteBuffer;)[Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 21
    .param p1, "packet"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 363
    .local v2, "srcPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 365
    .local v3, "srcLim":I
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 366
    .local v4, "firstByte":B
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    .line 369
    .local v5, "thirdByte":B
    and-int/lit16 v6, v4, 0x80

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 373
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->helloVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-ne v7, v8, :cond_3

    .line 377
    add-int/lit8 v7, v2, 0x3

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    .line 378
    .local v7, "majorVersion":B
    add-int/lit8 v8, v2, 0x4

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    .line 380
    .local v15, "minorVersion":B
    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v8, v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    const/4 v13, 0x0

    if-ne v7, v8, :cond_1

    sget-object v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v8, v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    if-ne v15, v8, :cond_1

    .line 389
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_0

    const-string v6, "record"

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 390
    const-string v6, "Requested to negotiate unsupported SSLv2!"

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v6, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    :cond_0
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v8, "Unsupported SSL v2.0 ClientHello"

    invoke-direct {v6, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 405
    :cond_1
    add-int/lit8 v8, v2, 0x2

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 406
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v8, v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->receive(Ljava/nio/ByteBuffer;)V

    .line 407
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 409
    invoke-static/range {p1 .. p1}, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->convertToClientHello(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 411
    .local v16, "converted":Ljava/nio/ByteBuffer;
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_2

    const-string v8, "packet"

    invoke-static {v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 412
    const-string v8, "[Converted] ClientHello"

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    :cond_2
    new-array v6, v6, [Lorg/openjsse/sun/security/ssl/Plaintext;

    new-instance v17, Lorg/openjsse/sun/security/ssl/Plaintext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v9, v8, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    const/4 v12, -0x1

    const-wide/16 v18, -0x1

    move-object/from16 v8, v17

    move v10, v7

    move v11, v15

    move/from16 v20, v13

    move-wide/from16 v13, v18

    move/from16 v18, v15

    .end local v15    # "minorVersion":B
    .local v18, "minorVersion":B
    move-object/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    aput-object v17, v6, v20

    return-object v6

    .line 374
    .end local v7    # "majorVersion":B
    .end local v16    # "converted":Ljava/nio/ByteBuffer;
    .end local v18    # "minorVersion":B
    :cond_3
    new-instance v6, Ljavax/net/ssl/SSLHandshakeException;

    const-string v7, "SSLv2Hello is not enabled"

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 421
    :cond_4
    and-int/lit16 v6, v4, 0x80

    if-eqz v6, :cond_5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 422
    new-instance v6, Ljavax/net/ssl/SSLException;

    const-string v7, "SSL V2.0 servers are not supported."

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 425
    :cond_5
    new-instance v6, Ljavax/net/ssl/SSLException;

    const-string v7, "Unsupported or unrecognized SSL message"

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
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

    .line 64
    aget-object v0, p1, p2

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->bytesInCompletePacket(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method decode([Ljava/nio/ByteBuffer;II)[Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 2
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 157
    if-eqz p1, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 160
    aget-object v0, p1, p2

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->decode(Ljava/nio/ByteBuffer;)[Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v0

    return-object v0

    .line 162
    :cond_1
    const/4 v0, 0x5

    invoke-static {p1, p2, p3, v0}, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->extract([Ljava/nio/ByteBuffer;III)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 165
    .local v0, "packet":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->decode(Ljava/nio/ByteBuffer;)[Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v1

    return-object v1

    .line 158
    .end local v0    # "packet":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/Plaintext;

    return-object v0
.end method

.method estimateFragmentSize(I)I
    .locals 2
    .param p1, "packetSize"    # I

    .line 53
    if-lez p1, :cond_0

    .line 54
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;->readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->estimateFragmentSize(II)I

    move-result v0

    return v0

    .line 56
    :cond_0
    const/16 v0, 0x4000

    return v0
.end method
