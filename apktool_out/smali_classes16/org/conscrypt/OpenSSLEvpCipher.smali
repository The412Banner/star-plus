.class public abstract Lorg/conscrypt/OpenSSLEvpCipher;
.super Lorg/conscrypt/OpenSSLCipher;
.source "OpenSSLEvpCipher.java"


# instance fields
.field private calledUpdate:Z

.field private final cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

.field private modeBlockSize:I


# direct methods
.method public constructor <init>(Lorg/conscrypt/OpenSSLCipher$Mode;Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .locals 3
    .param p1, "mode"    # Lorg/conscrypt/OpenSSLCipher$Mode;
    .param p2, "padding"    # Lorg/conscrypt/OpenSSLCipher$Padding;

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLCipher;-><init>(Lorg/conscrypt/OpenSSLCipher$Mode;Lorg/conscrypt/OpenSSLCipher$Padding;)V

    .line 34
    new-instance v0, Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 35
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_new()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;-><init>(J)V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 51
    return-void
.end method

.method private reset()V
    .locals 6

    .line 205
    iget-object v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    iget-object v3, p0, Lorg/conscrypt/OpenSSLEvpCipher;->encodedKey:[B

    iget-object v4, p0, Lorg/conscrypt/OpenSSLEvpCipher;->iv:[B

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v5

    const-wide/16 v1, 0x0

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    .line 207
    return-void
.end method


# virtual methods
.method doFinalInternal([BII)I
    .locals 7
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .param p3, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 134
    move v0, p2

    .line 140
    .local v0, "initialOutputOffset":I
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    if-nez v1, :cond_0

    .line 141
    return v2

    .line 145
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, p2

    .line 147
    .local v1, "bytesLeft":I
    if-lt v1, p3, :cond_1

    .line 148
    iget-object v2, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v2, p1, p2}, Lorg/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I

    move-result v2

    .local v2, "writtenBytes":I
    goto :goto_0

    .line 150
    .end local v2    # "writtenBytes":I
    :cond_1
    new-array v3, p3, [B

    .line 151
    .local v3, "lastBlock":[B
    iget-object v4, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v4, v3, v2}, Lorg/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I

    move-result v4

    .line 152
    .local v4, "writtenBytes":I
    if-gt v4, v1, :cond_3

    .line 155
    if-lez v4, :cond_2

    .line 156
    invoke-static {v3, v2, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    .end local v3    # "lastBlock":[B
    :cond_2
    move v2, v4

    .end local v4    # "writtenBytes":I
    .restart local v2    # "writtenBytes":I
    :goto_0
    add-int/2addr p2, v2

    .line 161
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLEvpCipher;->reset()V

    .line 163
    sub-int v3, p2, v0

    return v3

    .line 153
    .end local v2    # "writtenBytes":I
    .restart local v3    # "lastBlock":[B
    .restart local v4    # "writtenBytes":I
    :cond_3
    new-instance v2, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buffer is too short: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 19
    .param p1, "encodedKey"    # [B
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 58
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    instance-of v1, v8, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_0

    .line 59
    move-object v1, v8

    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 60
    .local v1, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    .line 61
    .local v1, "iv":[B
    goto :goto_0

    .line 62
    .end local v1    # "iv":[B
    :cond_0
    const/4 v1, 0x0

    .line 65
    .restart local v1    # "iv":[B
    :goto_0
    array-length v2, v7

    iget-object v3, v0, Lorg/conscrypt/OpenSSLEvpCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v0, v2, v3}, Lorg/conscrypt/OpenSSLEvpCipher;->getCipherName(ILorg/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/conscrypt/NativeCrypto;->EVP_get_cipherbyname(Ljava/lang/String;)J

    move-result-wide v16

    .line 67
    .local v16, "cipherType":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_a

    .line 72
    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v18

    .line 74
    .local v18, "encrypting":Z
    invoke-static/range {v16 .. v17}, Lorg/conscrypt/NativeCrypto;->EVP_CIPHER_iv_length(J)I

    move-result v6

    .line 75
    .local v6, "expectedIvLength":I
    const-string v2, " mode"

    if-nez v1, :cond_3

    if-eqz v6, :cond_3

    .line 76
    if-eqz v18, :cond_2

    .line 81
    new-array v1, v6, [B

    .line 82
    if-eqz v9, :cond_1

    .line 83
    invoke-virtual {v9, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_2

    .line 85
    :cond_1
    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    goto :goto_2

    .line 77
    :cond_2
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IV must be specified in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lorg/conscrypt/OpenSSLEvpCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    :cond_3
    if-nez v6, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    .line 88
    :cond_4
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IV not used in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lorg/conscrypt/OpenSSLEvpCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_5
    :goto_1
    if-eqz v1, :cond_7

    array-length v2, v1

    if-ne v2, v6, :cond_6

    goto :goto_2

    .line 90
    :cond_6
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected IV length of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_7
    :goto_2
    move-object v5, v1

    .end local v1    # "iv":[B
    .local v5, "iv":[B
    iput-object v5, v0, Lorg/conscrypt/OpenSSLEvpCipher;->iv:[B

    .line 96
    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/OpenSSLEvpCipher;->supportsVariableSizeKey()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 97
    iget-object v10, v0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v11, v16

    move/from16 v15, v18

    invoke-static/range {v10 .. v15}, Lorg/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 98
    iget-object v1, v0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    array-length v2, v7

    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_key_length(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;I)V

    .line 99
    iget-object v1, v0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    const-wide/16 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v10

    move-object/from16 v4, p1

    move-object v11, v5

    .end local v5    # "iv":[B
    .local v11, "iv":[B
    move v12, v6

    .end local v6    # "expectedIvLength":I
    .local v12, "expectedIvLength":I
    move v6, v10

    invoke-static/range {v1 .. v6}, Lorg/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    goto :goto_3

    .line 101
    .end local v11    # "iv":[B
    .end local v12    # "expectedIvLength":I
    .restart local v5    # "iv":[B
    .restart local v6    # "expectedIvLength":I
    :cond_8
    move-object v11, v5

    move v12, v6

    .end local v5    # "iv":[B
    .end local v6    # "expectedIvLength":I
    .restart local v11    # "iv":[B
    .restart local v12    # "expectedIvLength":I
    iget-object v1, v0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    move-wide/from16 v2, v16

    move-object/from16 v4, p1

    move/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lorg/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 105
    :goto_3
    iget-object v1, v0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/OpenSSLEvpCipher;->getPadding()Lorg/conscrypt/OpenSSLCipher$Padding;

    move-result-object v2

    sget-object v3, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    move v2, v4

    :goto_4
    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_padding(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;Z)V

    .line 107
    iget-object v1, v0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_block_size(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;)I

    move-result v1

    iput v1, v0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    .line 108
    iput-boolean v4, v0, Lorg/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    .line 109
    return-void

    .line 68
    .end local v11    # "iv":[B
    .end local v12    # "expectedIvLength":I
    .end local v18    # "encrypting":Z
    .restart local v1    # "iv":[B
    :cond_a
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find name for key length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v7

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/conscrypt/OpenSSLEvpCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method abstract getCipherName(ILorg/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
.end method

.method getOutputSizeForFinal(I)I
    .locals 5
    .param p1, "inputLen"    # I

    .line 168
    iget v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 169
    return p1

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_buf_len(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;)I

    move-result v0

    .line 173
    .local v0, "buffered":I
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLEvpCipher;->getPadding()Lorg/conscrypt/OpenSSLCipher$Padding;

    move-result-object v1

    sget-object v2, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    if-ne v1, v2, :cond_1

    .line 174
    add-int v1, v0, p1

    return v1

    .line 176
    :cond_1
    iget-object v1, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_final_used(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;)Z

    move-result v1

    .line 178
    .local v1, "finalUsed":Z
    add-int v2, p1, v0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget v4, p0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    add-int/2addr v2, v4

    .line 182
    .local v2, "totalLen":I
    iget v4, p0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    rem-int v4, v2, v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 183
    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    iget v3, p0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    :goto_2
    add-int/2addr v2, v3

    .line 185
    iget v3, p0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    rem-int v3, v2, v3

    sub-int v3, v2, v3

    return v3
.end method

.method getOutputSizeForUpdate(I)I
    .locals 1
    .param p1, "inputLen"    # I

    .line 192
    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLEvpCipher;->getOutputSizeForFinal(I)I

    move-result v0

    return v0
.end method

.method updateInternal([BII[BII)I
    .locals 8
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .param p6, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 114
    move v0, p5

    .line 116
    .local v0, "intialOutputOffset":I
    array-length v1, p4

    sub-int/2addr v1, p5

    .line 117
    .local v1, "bytesLeft":I
    if-lt v1, p6, :cond_0

    .line 122
    iget-object v2, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    move-object v3, p4

    move v4, p5

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lorg/conscrypt/NativeCrypto;->EVP_CipherUpdate(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI[BII)I

    move-result v2

    add-int/2addr p5, v2

    .line 125
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    .line 127
    sub-int v2, p5, v0

    return v2

    .line 118
    :cond_0
    new-instance v2, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "output buffer too small during update: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
