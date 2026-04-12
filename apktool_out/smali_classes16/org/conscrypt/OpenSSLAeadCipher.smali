.class public abstract Lorg/conscrypt/OpenSSLAeadCipher;
.super Lorg/conscrypt/OpenSSLCipher;
.source "OpenSSLAeadCipher.java"


# static fields
.field static final DEFAULT_TAG_SIZE_BITS:I = 0x80

.field private static final ENABLE_BYTEBUFFER_OPTIMIZATIONS:Z = true

.field private static lastGlobalMessageSize:I


# instance fields
.field private aad:[B

.field buf:[B

.field bufCount:I

.field evpAead:J

.field private mustInitialize:Z

.field private previousIv:[B

.field private previousKey:[B

.field tagLengthInBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/16 v0, 0x20

    sput v0, Lorg/conscrypt/OpenSSLAeadCipher;->lastGlobalMessageSize:I

    return-void
.end method

.method public constructor <init>(Lorg/conscrypt/OpenSSLCipher$Mode;)V
    .locals 1
    .param p1, "mode"    # Lorg/conscrypt/OpenSSLCipher$Mode;

    .line 93
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSSLCipher;-><init>(Lorg/conscrypt/OpenSSLCipher$Mode;Lorg/conscrypt/OpenSSLCipher$Padding;)V

    .line 94
    return-void
.end method

.method private arraysAreEqual([B[B)Z
    .locals 5
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .line 106
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 107
    return v2

    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 111
    .local v0, "diff":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 112
    aget-byte v3, p1, v1

    aget-byte v4, p2, v1

    xor-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_1
    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private checkInitialization()V
    .locals 2

    .line 97
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    if-nez v0, :cond_0

    .line 101
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot re-use same key and IV for multiple encryptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expand(I)V
    .locals 4
    .param p1, "i"    # I

    .line 119
    iget v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    iget v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 124
    .local v0, "newbuf":[B
    iget-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    iget v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iput-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    .line 126
    return-void
.end method

.method private reset()V
    .locals 3

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    .line 130
    sget v0, Lorg/conscrypt/OpenSSLAeadCipher;->lastGlobalMessageSize:I

    .line 131
    .local v0, "lastBufSize":I
    iget-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    if-nez v1, :cond_0

    .line 132
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    goto :goto_0

    .line 133
    :cond_0
    iget v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    if-lez v1, :cond_1

    iget v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    if-eq v1, v0, :cond_1

    .line 134
    iget v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    sput v1, Lorg/conscrypt/OpenSSLAeadCipher;->lastGlobalMessageSize:I

    .line 135
    iget-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    array-length v1, v1

    iget v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    if-eq v1, v2, :cond_1

    .line 136
    iget v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    .line 139
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    .line 140
    return-void
.end method

.method private throwAEADBadTagExceptionIfAvailable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 309
    :try_start_0
    const-string v0, "javax.crypto.AEADBadTagException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 313
    .local v0, "aeadBadTagConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    nop

    .line 315
    const/4 v1, 0x0

    .line 317
    .local v1, "badTagException":Ljavax/crypto/BadPaddingException;
    :try_start_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/BadPaddingException;

    move-object v1, v2

    .line 318
    invoke-virtual {v1, p2}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v2

    .line 324
    .local v2, "e2":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljavax/crypto/BadPaddingException;

    invoke-direct {v3}, Ljavax/crypto/BadPaddingException;-><init>()V

    .line 325
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    .line 324
    invoke-virtual {v3, v4}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljavax/crypto/BadPaddingException;

    throw v3

    .line 321
    .end local v2    # "e2":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 319
    :catch_2
    move-exception v2

    .line 326
    :goto_0
    nop

    .line 327
    if-nez v1, :cond_0

    .line 330
    return-void

    .line 328
    :cond_0
    throw v1

    .line 311
    .end local v0    # "aeadBadTagConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "badTagException":Ljavax/crypto/BadPaddingException;
    :catch_3
    move-exception v0

    .line 312
    .local v0, "ignored":Ljava/lang/Exception;
    return-void
.end method


# virtual methods
.method allowsNonceReuse()Z
    .locals 1

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method checkSupportedPadding(Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .locals 2
    .param p1, "padding"    # Lorg/conscrypt/OpenSSLCipher$Padding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 380
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    if-ne p1, v0, :cond_0

    .line 383
    return-void

    .line 381
    :cond_0
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "Must be NoPadding for AEAD ciphers"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkSupportedTagLength(I)V
    .locals 3
    .param p1, "tagLenBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 213
    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    .line 217
    return-void

    .line 214
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag length must be a multiple of 8; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method doFinalInternal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 334
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 337
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-wide v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    iget-object v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->encodedKey:[B

    iget v4, p0, Lorg/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    iget-object v6, p0, Lorg/conscrypt/OpenSSLAeadCipher;->iv:[B

    iget-object v8, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    move-object v5, p2

    move-object v7, p1

    invoke-static/range {v1 .. v8}, Lorg/conscrypt/NativeCrypto;->EVP_AEAD_CTX_seal_buf(J[BILjava/nio/ByteBuffer;[BLjava/nio/ByteBuffer;[B)I

    move-result v0

    .local v0, "bytesWritten":I
    goto :goto_0

    .line 341
    .end local v0    # "bytesWritten":I
    :cond_0
    iget-wide v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    iget-object v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->encodedKey:[B

    iget v4, p0, Lorg/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    iget-object v6, p0, Lorg/conscrypt/OpenSSLAeadCipher;->iv:[B

    iget-object v8, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    move-object v5, p2

    move-object v7, p1

    invoke-static/range {v1 .. v8}, Lorg/conscrypt/NativeCrypto;->EVP_AEAD_CTX_open_buf(J[BILjava/nio/ByteBuffer;[BLjava/nio/ByteBuffer;[B)I

    move-result v0
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .restart local v0    # "bytesWritten":I
    :goto_0
    nop

    .line 348
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    .line 351
    :cond_1
    return v0

    .line 344
    .end local v0    # "bytesWritten":I
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/conscrypt/OpenSSLAeadCipher;->throwAEADBadTagExceptionIfAvailable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    throw v0
.end method

.method doFinalInternal([BII)I
    .locals 12
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .param p3, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 357
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 360
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-wide v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    iget-object v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->encodedKey:[B

    iget v4, p0, Lorg/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    iget-object v7, p0, Lorg/conscrypt/OpenSSLAeadCipher;->iv:[B

    iget-object v8, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    iget v10, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    iget-object v11, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    const/4 v9, 0x0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v11}, Lorg/conscrypt/NativeCrypto;->EVP_AEAD_CTX_seal(J[BI[BI[B[BII[B)I

    move-result v0

    .local v0, "bytesWritten":I
    goto :goto_0

    .line 364
    .end local v0    # "bytesWritten":I
    :cond_0
    iget-wide v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    iget-object v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->encodedKey:[B

    iget v4, p0, Lorg/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    iget-object v7, p0, Lorg/conscrypt/OpenSSLAeadCipher;->iv:[B

    iget-object v8, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    iget v10, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    iget-object v11, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    const/4 v9, 0x0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v11}, Lorg/conscrypt/NativeCrypto;->EVP_AEAD_CTX_open(J[BI[BI[B[BII[B)I

    move-result v0
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .restart local v0    # "bytesWritten":I
    :goto_0
    nop

    .line 371
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    .line 374
    :cond_1
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->reset()V

    .line 375
    return v0

    .line 367
    .end local v0    # "bytesWritten":I
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/conscrypt/OpenSSLAeadCipher;->throwAEADBadTagExceptionIfAvailable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    throw v0
.end method

.method protected engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 234
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 237
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLAeadCipher;->getOutputSizeForFinal(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 240
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    .line 243
    iget v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    if-eqz v0, :cond_0

    .line 244
    invoke-super {p0, p1, p2}, Lorg/conscrypt/OpenSSLCipher;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 247
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 249
    .local v0, "incap":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 250
    .local v1, "inputClone":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 251
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 252
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 253
    move-object p1, v1

    .line 255
    .end local v0    # "incap":I
    .end local v1    # "inputClone":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    nop

    .line 257
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLAeadCipher;->getOutputSizeForFinal(I)I

    move-result v0

    .line 256
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 258
    .local v0, "outputClone":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1, v0}, Lorg/conscrypt/OpenSSLAeadCipher;->doFinalInternal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 259
    .local v1, "bytesWritten":I
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 260
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 261
    .end local v0    # "outputClone":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 263
    .end local v1    # "bytesWritten":I
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/conscrypt/OpenSSLAeadCipher;->doFinalInternal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 264
    .restart local v1    # "bytesWritten":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    :goto_0
    return v1

    .line 241
    .end local v1    # "bytesWritten":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write to Read Only ByteBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_4
    new-instance v0, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    const-string v1, "Insufficient Bytes for Output Buffer"

    invoke-direct {v0, v1}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null ByteBuffer Error"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineDoFinal([BII[BI)I
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 279
    if-eqz p4, :cond_1

    .line 280
    invoke-virtual {p0, p3}, Lorg/conscrypt/OpenSSLAeadCipher;->getOutputSizeForFinal(I)I

    move-result v0

    array-length v1, p4

    sub-int/2addr v1, p5

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    new-instance v0, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    const-string v1, "Insufficient output space"

    invoke-direct {v0, v1}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Lorg/conscrypt/OpenSSLCipher;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 8
    .param p1, "encodedKey"    # [B
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 148
    if-nez p2, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "iv":[B
    const/16 v1, 0x80

    .local v1, "tagLenBits":I
    goto :goto_0

    .line 152
    .end local v0    # "iv":[B
    .end local v1    # "tagLenBits":I
    :cond_0
    invoke-static {p2}, Lorg/conscrypt/Platform;->fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/conscrypt/GCMParameters;

    move-result-object v0

    .line 153
    .local v0, "gcmParams":Lorg/conscrypt/GCMParameters;
    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0}, Lorg/conscrypt/GCMParameters;->getIV()[B

    move-result-object v1

    .line 155
    .local v1, "iv":[B
    invoke-virtual {v0}, Lorg/conscrypt/GCMParameters;->getTLen()I

    move-result v2

    move-object v0, v1

    move v1, v2

    .local v2, "tagLenBits":I
    goto :goto_0

    .line 156
    .end local v1    # "iv":[B
    .end local v2    # "tagLenBits":I
    :cond_1
    instance-of v1, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_2

    .line 157
    move-object v1, p2

    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 158
    .local v1, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    .line 159
    .local v2, "iv":[B
    const/16 v1, 0x80

    .line 160
    .local v1, "tagLenBits":I
    move-object v0, v2

    goto :goto_0

    .line 161
    .end local v1    # "tagLenBits":I
    .end local v2    # "iv":[B
    :cond_2
    const/4 v1, 0x0

    .line 162
    .local v1, "iv":[B
    const/16 v2, 0x80

    move-object v0, v1

    move v1, v2

    .line 166
    .local v0, "iv":[B
    .local v1, "tagLenBits":I
    :goto_0
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLAeadCipher;->checkSupportedTagLength(I)V

    .line 168
    div-int/lit8 v2, v1, 0x8

    iput v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    .line 170
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v2

    .line 172
    .local v2, "encrypting":Z
    array-length v3, p1

    invoke-virtual {p0, v3}, Lorg/conscrypt/OpenSSLAeadCipher;->getEVP_AEAD(I)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    .line 174
    iget-wide v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->EVP_AEAD_nonce_length(J)I

    move-result v3

    .line 175
    .local v3, "expectedIvLength":I
    const-string v4, " mode"

    if-nez v0, :cond_5

    if-eqz v3, :cond_5

    .line 176
    if-eqz v2, :cond_4

    .line 181
    new-array v0, v3, [B

    .line 182
    if-eqz p3, :cond_3

    .line 183
    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_2

    .line 185
    :cond_3
    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    goto :goto_2

    .line 177
    :cond_4
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IV must be specified in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 187
    :cond_5
    if-nez v3, :cond_7

    if-nez v0, :cond_6

    goto :goto_1

    .line 188
    :cond_6
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IV not used in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 189
    :cond_7
    :goto_1
    if-eqz v0, :cond_9

    array-length v4, v0

    if-ne v4, v3, :cond_8

    goto :goto_2

    .line 190
    :cond_8
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected IV length of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 194
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->allowsNonceReuse()Z

    move-result v4

    if-nez v4, :cond_c

    .line 195
    iget-object v4, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousKey:[B

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousIv:[B

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousKey:[B

    .line 196
    invoke-direct {p0, v4, p1}, Lorg/conscrypt/OpenSSLAeadCipher;->arraysAreEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousIv:[B

    .line 197
    invoke-direct {p0, v4, v0}, Lorg/conscrypt/OpenSSLAeadCipher;->arraysAreEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_3

    .line 198
    :cond_a
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    .line 199
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "When using AEAD key and IV must not be re-used"

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 203
    :cond_b
    :goto_3
    iput-object p1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousKey:[B

    .line 204
    iput-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousIv:[B

    .line 206
    :cond_c
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    .line 207
    iput-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->iv:[B

    .line 208
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->reset()V

    .line 209
    return-void
.end method

.method protected engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 417
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 418
    iget-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    if-nez v0, :cond_0

    .line 419
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    .line 420
    iget-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v0, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    .local v0, "newSize":I
    new-array v1, v0, [B

    .line 424
    .local v1, "newaad":[B
    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    iget-object v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v2, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 426
    iput-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    .line 428
    .end local v0    # "newSize":I
    .end local v1    # "newaad":[B
    :goto_0
    return-void
.end method

.method protected engineUpdateAAD([BII)V
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 402
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 403
    iget-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    if-nez v0, :cond_0

    .line 404
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v0, v0

    add-int/2addr v0, p3

    .line 407
    .local v0, "newSize":I
    new-array v1, v0, [B

    .line 408
    .local v1, "newaad":[B
    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    iget-object v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v2, v2

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    iput-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    .line 412
    .end local v0    # "newSize":I
    .end local v1    # "newaad":[B
    :goto_0
    return-void
.end method

.method abstract getEVP_AEAD(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method getOutputSizeForFinal(I)I
    .locals 3
    .param p1, "inputLen"    # I

    .line 395
    iget v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int/2addr v0, p1

    .line 396
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->EVP_AEAD_max_overhead(J)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 395
    return v0
.end method

.method getOutputSizeForUpdate(I)I
    .locals 1
    .param p1, "inputLen"    # I

    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method updateInternal([BII[BII)I
    .locals 2
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

    .line 290
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 291
    iget-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    if-eqz v0, :cond_1

    .line 295
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lorg/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    .line 296
    if-lez p3, :cond_0

    .line 297
    invoke-direct {p0, p3}, Lorg/conscrypt/OpenSSLAeadCipher;->expand(I)V

    .line 298
    iget-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    iget v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    iget v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    .line 301
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 292
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
