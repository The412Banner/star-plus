.class public Lorg/conscrypt/OpenSSLCipherChaCha20;
.super Lorg/conscrypt/OpenSSLCipher;
.source "OpenSSLCipherChaCha20.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BLOCK_SIZE_BYTES:I = 0x40

.field private static final NONCE_SIZE_BYTES:I = 0xc


# instance fields
.field private blockCounter:I

.field private currentBlockConsumedBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLCipher;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 43
    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 45
    return-void
.end method

.method private reset()V
    .locals 1

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 115
    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 116
    return-void
.end method


# virtual methods
.method checkSupportedKeySize(I)V
    .locals 3
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 125
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 129
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes (must be 32)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkSupportedMode(Lorg/conscrypt/OpenSSLCipher$Mode;)V
    .locals 2
    .param p1, "mode"    # Lorg/conscrypt/OpenSSLCipher$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 133
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->NONE:Lorg/conscrypt/OpenSSLCipher$Mode;

    if-ne p1, v0, :cond_0

    .line 136
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Mode must be NONE"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkSupportedPadding(Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .locals 2
    .param p1, "padding"    # Lorg/conscrypt/OpenSSLCipher$Padding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 140
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    if-ne p1, v0, :cond_0

    .line 143
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "Must be NoPadding"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method doFinalInternal([BII)I
    .locals 1
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

    .line 109
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLCipherChaCha20;->reset()V

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "encodedKey"    # [B
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 50
    instance-of v0, p2, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0xc

    if-eqz v0, :cond_1

    .line 51
    move-object v0, p2

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 52
    .local v0, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    array-length v2, v2

    if-ne v2, v1, :cond_0

    .line 55
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    .line 56
    .end local v0    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    goto :goto_0

    .line 53
    .restart local v0    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    :cond_0
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "IV must be 12 bytes long"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    .end local v0    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    :cond_1
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipherChaCha20;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    .line 62
    if-eqz p3, :cond_2

    .line 63
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    .line 68
    :goto_0
    return-void

    .line 58
    :cond_3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "IV must be specified when decrypting"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getBaseCipherName()Ljava/lang/String;
    .locals 1

    .line 120
    const-string v0, "ChaCha20"

    return-object v0
.end method

.method getCipherBlockSize()I
    .locals 1

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method getOutputSizeForFinal(I)I
    .locals 0
    .param p1, "inputLen"    # I

    .line 152
    return p1
.end method

.method getOutputSizeForUpdate(I)I
    .locals 0
    .param p1, "inputLen"    # I

    .line 157
    return p1
.end method

.method updateInternal([BII[BII)I
    .locals 20
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

    .line 73
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v11, p4

    move/from16 v3, p5

    array-length v4, v11

    sub-int/2addr v4, v3

    if-gt v2, v4, :cond_3

    .line 76
    move/from16 v4, p3

    .line 77
    .local v4, "inputLenRemaining":I
    iget v5, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    if-lez v5, :cond_2

    .line 80
    iget v5, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    const/16 v6, 0x40

    rsub-int/lit8 v5, v5, 0x40

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 81
    .local v5, "len":I
    new-array v7, v6, [B

    .line 82
    .local v7, "singleBlock":[B
    new-array v8, v6, [B

    .line 83
    .local v8, "singleBlockOut":[B
    iget v9, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    move-object/from16 v10, p1

    invoke-static {v10, v1, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget-object v9, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->encodedKey:[B

    iget-object v15, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    iget v14, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x40

    move-object v12, v7

    move/from16 v19, v14

    move-object v14, v8

    move-object/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v9

    invoke-static/range {v12 .. v19}, Lorg/conscrypt/NativeCrypto;->chacha20_encrypt_decrypt([BI[BII[B[BI)V

    .line 86
    iget v9, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    invoke-static {v8, v9, v11, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget v9, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    add-int/2addr v9, v5

    iput v9, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 88
    iget v9, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    if-ge v9, v6, :cond_0

    .line 90
    return v5

    .line 92
    :cond_0
    iget v9, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    if-ne v9, v6, :cond_1

    .line 93
    const/4 v6, 0x0

    iput v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 94
    add-int/2addr v1, v5

    .line 95
    .end local p2    # "inputOffset":I
    .local v1, "inputOffset":I
    add-int/2addr v3, v5

    .line 96
    .end local p5    # "outputOffset":I
    .local v3, "outputOffset":I
    sub-int/2addr v4, v5

    .line 97
    iget v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    move v12, v3

    move v13, v4

    goto :goto_0

    .line 92
    .end local v1    # "inputOffset":I
    .end local v3    # "outputOffset":I
    .restart local p2    # "inputOffset":I
    .restart local p5    # "outputOffset":I
    :cond_1
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 77
    .end local v5    # "len":I
    .end local v7    # "singleBlock":[B
    .end local v8    # "singleBlockOut":[B
    :cond_2
    move-object/from16 v10, p1

    move v12, v3

    move v13, v4

    .line 99
    .end local v4    # "inputLenRemaining":I
    .end local p2    # "inputOffset":I
    .end local p5    # "outputOffset":I
    .restart local v1    # "inputOffset":I
    .local v12, "outputOffset":I
    .local v13, "inputLenRemaining":I
    :goto_0
    iget-object v8, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->encodedKey:[B

    iget-object v9, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    iget v14, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    move-object/from16 v3, p1

    move v4, v1

    move-object/from16 v5, p4

    move v6, v12

    move v7, v13

    move v10, v14

    invoke-static/range {v3 .. v10}, Lorg/conscrypt/NativeCrypto;->chacha20_encrypt_decrypt([BI[BII[B[BI)V

    .line 101
    rem-int/lit8 v3, v13, 0x40

    iput v3, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 102
    iget v3, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    div-int/lit8 v4, v13, 0x40

    add-int/2addr v3, v4

    iput v3, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 103
    return v2

    .line 74
    .end local v1    # "inputOffset":I
    .end local v12    # "outputOffset":I
    .end local v13    # "inputLenRemaining":I
    .restart local p2    # "inputOffset":I
    .restart local p5    # "outputOffset":I
    :cond_3
    new-instance v4, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    const-string v5, "Insufficient output space"

    invoke-direct {v4, v5}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
