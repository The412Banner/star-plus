.class public final Lorg/conscrypt/OpenSSLECDHKeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "OpenSSLECDHKeyAgreement.java"


# instance fields
.field private mExpectedResultLength:I

.field private mOpenSslPrivateKey:Lorg/conscrypt/OpenSSLKey;

.field private mResult:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    return-void
.end method

.method private checkCompleted()V
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    if-eqz v0, :cond_0

    .line 150
    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Key agreement not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 7
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lorg/conscrypt/OpenSSLKey;

    if-eqz v0, :cond_6

    .line 56
    if-eqz p2, :cond_5

    .line 60
    if-eqz p1, :cond_4

    .line 63
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_3

    .line 66
    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    invoke-static {v0}, Lorg/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 68
    .local v0, "openSslPublicKey":Lorg/conscrypt/OpenSSLKey;
    iget v1, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    new-array v1, v1, [B

    .line 69
    .local v1, "buffer":[B
    nop

    .line 72
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    iget-object v3, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lorg/conscrypt/OpenSSLKey;

    .line 73
    invoke-virtual {v3}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    .line 69
    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lorg/conscrypt/NativeCrypto;->ECDH_compute_key([BILorg/conscrypt/NativeRef$EVP_PKEY;Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v2

    .line 75
    .local v2, "actualResultLength":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 77
    iget v3, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    if-ne v2, v3, :cond_0

    .line 79
    move-object v3, v1

    .local v3, "result":[B
    goto :goto_0

    .line 80
    .end local v3    # "result":[B
    :cond_0
    iget v3, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    if-ge v2, v3, :cond_1

    .line 82
    new-array v3, v2, [B

    .line 83
    .restart local v3    # "result":[B
    iget-object v5, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    iget-object v6, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v6, v6

    invoke-static {v1, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    :goto_0
    iput-object v3, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    .line 91
    const/4 v4, 0x0

    return-object v4

    .line 86
    .end local v3    # "result":[B
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Engine produced a longer than expected result. Expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Engine returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    .end local v0    # "openSslPublicKey":Lorg/conscrypt/OpenSSLKey;
    .end local v1    # "buffer":[B
    .end local v2    # "actualResultLength":I
    :cond_3
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_4
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ECDH only has one phase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGenerateSecret([BI)I
    .locals 4
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    .line 98
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 99
    .local v0, "available":I
    iget-object v1, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v1, v1

    if-gt v1, v0, :cond_0

    .line 104
    iget-object v1, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    iget-object v2, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v1, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v1, v1

    return v1

    .line 100
    :cond_0
    new-instance v1, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Needed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    .line 117
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->engineGenerateSecret()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineGenerateSecret()[B
    .locals 1

    .line 110
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    .line 111
    iget-object v0, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 122
    if-eqz p1, :cond_1

    .line 125
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    .line 129
    move-object v0, p1

    check-cast v0, Ljava/security/PrivateKey;

    invoke-static {v0}, Lorg/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 130
    .local v0, "openSslKey":Lorg/conscrypt/OpenSSLKey;
    new-instance v1, Lorg/conscrypt/NativeRef$EC_GROUP;

    .line 131
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v2}, Lorg/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lorg/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    .line 130
    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->EC_GROUP_get_degree(Lorg/conscrypt/NativeRef$EC_GROUP;)I

    move-result v1

    .line 132
    .local v1, "fieldSizeBits":I
    add-int/lit8 v2, v1, 0x7

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    .line 133
    iput-object v0, p0, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lorg/conscrypt/OpenSSLKey;

    .line 134
    return-void

    .line 126
    .end local v0    # "openSslKey":Lorg/conscrypt/OpenSSLKey;
    .end local v1    # "fieldSizeBits":I
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a private key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 140
    if-nez p2, :cond_0

    .line 143
    invoke-virtual {p0, p1, p3}, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 144
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No algorithm parameters supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
