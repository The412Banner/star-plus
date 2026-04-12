.class interface abstract Lorg/openjsse/sun/security/ssl/SSLTransport;
.super Ljava/lang/Object;
.source "SSLTransport.java"


# direct methods
.method public static decode(Lorg/openjsse/sun/security/ssl/TransportContext;[Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 17
    .param p0, "context"    # Lorg/openjsse/sun/security/ssl/TransportContext;
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

    .line 108
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 110
    .local v2, "plaintexts":[Lorg/openjsse/sun/security/ssl/Plaintext;
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 111
    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    :try_start_1
    invoke-virtual {v0, v4, v5, v6}, Lorg/openjsse/sun/security/ssl/InputRecord;->decode([Ljava/nio/ByteBuffer;II)[Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    .end local v2    # "plaintexts":[Lorg/openjsse/sun/security/ssl/Plaintext;
    .local v0, "plaintexts":[Lorg/openjsse/sun/security/ssl/Plaintext;
    nop

    .line 148
    if-eqz v0, :cond_c

    array-length v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 153
    :cond_0
    sget-object v2, Lorg/openjsse/sun/security/ssl/Plaintext;->PLAINTEXT_NULL:Lorg/openjsse/sun/security/ssl/Plaintext;

    .line 154
    .local v2, "finalPlaintext":Lorg/openjsse/sun/security/ssl/Plaintext;
    array-length v7, v0

    move-object v8, v2

    move v9, v3

    move/from16 v2, p5

    .end local p5    # "dstsOffset":I
    .local v2, "dstsOffset":I
    .local v8, "finalPlaintext":Lorg/openjsse/sun/security/ssl/Plaintext;
    :goto_0
    if-ge v9, v7, :cond_b

    aget-object v10, v0, v9

    .line 156
    .local v10, "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    sget-object v11, Lorg/openjsse/sun/security/ssl/Plaintext;->PLAINTEXT_NULL:Lorg/openjsse/sun/security/ssl/Plaintext;

    const-string v12, "ssl,verbose"

    if-ne v10, v11, :cond_2

    .line 161
    iget-object v11, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v11, :cond_3

    iget-object v11, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v11, v11, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v11, v11, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableRetransmissions:Z

    if-eqz v11, :cond_3

    iget-object v11, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 163
    invoke-virtual {v11}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 164
    sget-boolean v11, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v11, :cond_1

    invoke-static {v12}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 165
    const-string v11, "retransmited handshake flight"

    new-array v13, v3, [Ljava/lang/Object;

    invoke-static {v11, v13}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_1
    iget-object v11, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v11}, Lorg/openjsse/sun/security/ssl/OutputRecord;->launchRetransmission()V

    goto :goto_1

    .line 170
    :cond_2
    if-eqz v10, :cond_3

    iget-byte v11, v10, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B

    sget-object v13, Lorg/openjsse/sun/security/ssl/ContentType;->APPLICATION_DATA:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v13, v13, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-eq v11, v13, :cond_3

    .line 172
    invoke-virtual {v1, v10}, Lorg/openjsse/sun/security/ssl/TransportContext;->dispatch(Lorg/openjsse/sun/security/ssl/Plaintext;)V

    .line 175
    :cond_3
    :goto_1
    if-nez v10, :cond_4

    .line 176
    sget-object v10, Lorg/openjsse/sun/security/ssl/Plaintext;->PLAINTEXT_NULL:Lorg/openjsse/sun/security/ssl/Plaintext;

    goto :goto_3

    .line 177
    :cond_4
    iget-byte v11, v10, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B

    sget-object v13, Lorg/openjsse/sun/security/ssl/ContentType;->APPLICATION_DATA:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v13, v13, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v11, v13, :cond_a

    .line 183
    iget-boolean v11, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v11, :cond_6

    .line 184
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_5

    invoke-static {v12}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 185
    const-string v7, "unexpected application data before handshake completion"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_5
    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v7, "Receiving application data before handshake complete"

    invoke-virtual {v1, v3, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 194
    :cond_6
    if-eqz p4, :cond_a

    if-lez p6, :cond_a

    .line 195
    iget-object v11, v10, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    .line 196
    .local v11, "fragment":Ljava/nio/ByteBuffer;
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    .line 199
    .local v12, "remains":I
    add-int v13, v2, p6

    .line 200
    .local v13, "limit":I
    move v14, v2

    .line 201
    .local v14, "i":I
    :goto_2
    if-ge v14, v13, :cond_8

    if-lez v12, :cond_8

    .line 203
    aget-object v15, p4, v14

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 204
    .local v15, "amount":I
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    add-int v3, v16, v15

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 205
    aget-object v3, p4, v14

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 206
    sub-int/2addr v12, v15

    .line 208
    aget-object v3, p4, v14

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_7

    .line 209
    add-int/lit8 v2, v2, 0x1

    .line 201
    .end local v15    # "amount":I
    :cond_7
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_2

    .line 213
    .end local v14    # "i":I
    :cond_8
    if-gtz v12, :cond_9

    goto :goto_3

    .line 214
    :cond_9
    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v7, "no sufficient room in the destination buffers"

    invoke-virtual {v1, v3, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 220
    .end local v11    # "fragment":Ljava/nio/ByteBuffer;
    .end local v12    # "remains":I
    .end local v13    # "limit":I
    :cond_a
    :goto_3
    move-object v8, v10

    .line 154
    .end local v10    # "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 223
    :cond_b
    return-object v8

    .line 150
    .end local v2    # "dstsOffset":I
    .end local v8    # "finalPlaintext":Lorg/openjsse/sun/security/ssl/Plaintext;
    .restart local p5    # "dstsOffset":I
    :cond_c
    :goto_4
    sget-object v2, Lorg/openjsse/sun/security/ssl/Plaintext;->PLAINTEXT_NULL:Lorg/openjsse/sun/security/ssl/Plaintext;

    return-object v2

    .line 144
    .end local v0    # "plaintexts":[Lorg/openjsse/sun/security/ssl/Plaintext;
    .local v2, "plaintexts":[Lorg/openjsse/sun/security/ssl/Plaintext;
    :catch_0
    move-exception v0

    goto :goto_5

    .line 141
    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_7

    .line 138
    :catch_3
    move-exception v0

    goto :goto_8

    .line 135
    :catch_4
    move-exception v0

    goto :goto_9

    .line 124
    :catch_5
    move-exception v0

    goto :goto_a

    .line 122
    :catch_6
    move-exception v0

    goto :goto_c

    .line 112
    :catch_7
    move-exception v0

    goto :goto_d

    .line 144
    :catch_8
    move-exception v0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    .line 145
    .local v0, "ioe":Ljava/io/IOException;
    :goto_5
    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v3, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 141
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_9
    move-exception v0

    goto :goto_6

    :catch_a
    move-exception v0

    :goto_6
    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    .line 143
    .local v0, "se":Ljava/io/IOException;
    :goto_7
    throw v0

    .line 138
    .end local v0    # "se":Ljava/io/IOException;
    :catch_b
    move-exception v0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    .line 140
    .local v0, "eofe":Ljava/io/EOFException;
    :goto_8
    throw v0

    .line 135
    .end local v0    # "eofe":Ljava/io/EOFException;
    :catch_c
    move-exception v0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    .line 137
    .local v0, "she":Ljavax/net/ssl/SSLHandshakeException;
    :goto_9
    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v3, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 124
    .end local v0    # "she":Ljavax/net/ssl/SSLHandshakeException;
    :catch_d
    move-exception v0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    .line 131
    .local v0, "bpe":Ljavax/crypto/BadPaddingException;
    :goto_a
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v3, :cond_d

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    goto :goto_b

    :cond_d
    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->BAD_RECORD_MAC:Lorg/openjsse/sun/security/ssl/Alert;

    .line 134
    .local v3, "alert":Lorg/openjsse/sun/security/ssl/Alert;
    :goto_b
    invoke-virtual {v1, v3, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    throw v7

    .line 122
    .end local v0    # "bpe":Ljavax/crypto/BadPaddingException;
    .end local v3    # "alert":Lorg/openjsse/sun/security/ssl/Alert;
    :catch_e
    move-exception v0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    .line 123
    .local v0, "bte":Ljavax/crypto/AEADBadTagException;
    :goto_c
    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->BAD_RECORD_MAC:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v3, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 112
    .end local v0    # "bte":Ljavax/crypto/AEADBadTagException;
    :catch_f
    move-exception v0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    .line 114
    .local v0, "unsoe":Ljava/lang/UnsupportedOperationException;
    :goto_d
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v3

    if-nez v3, :cond_e

    .line 115
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/OutputRecord;->encodeV2NoCipher()V

    .line 116
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_e

    const-string v3, "ssl"

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 117
    const-string v3, "may be talking to SSLv2"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_e
    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v3, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public abstract getPeerHost()Ljava/lang/String;
.end method

.method public abstract getPeerPort()I
.end method

.method public shutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public abstract useDelegatedTask()Z
.end method
