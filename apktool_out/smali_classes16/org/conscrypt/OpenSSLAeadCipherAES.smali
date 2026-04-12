.class public abstract Lorg/conscrypt/OpenSSLAeadCipherAES;
.super Lorg/conscrypt/OpenSSLAeadCipher;
.source "OpenSSLAeadCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLAeadCipherAES$GCM_SIV;,
        Lorg/conscrypt/OpenSSLAeadCipherAES$GCM;
    }
.end annotation


# static fields
.field private static final AES_BLOCK_SIZE:I = 0x10


# direct methods
.method constructor <init>(Lorg/conscrypt/OpenSSLCipher$Mode;)V
    .locals 0
    .param p1, "mode"    # Lorg/conscrypt/OpenSSLCipher$Mode;

    .line 31
    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLAeadCipher;-><init>(Lorg/conscrypt/OpenSSLCipher$Mode;)V

    .line 32
    return-void
.end method


# virtual methods
.method checkSupportedKeySize(I)V
    .locals 3
    .param p1, "keyLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 36
    sparse-switch p1, :sswitch_data_0

    .line 41
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes (must be 16 or 32)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :sswitch_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    .line 72
    iget-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipherAES;->iv:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 73
    return-object v1

    .line 76
    :cond_0
    iget v0, p0, Lorg/conscrypt/OpenSSLAeadCipherAES;->tagLengthInBytes:I

    mul-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipherAES;->iv:[B

    invoke-static {v0, v2}, Lorg/conscrypt/Platform;->toGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 78
    .local v0, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    if-nez v0, :cond_1

    .line 82
    invoke-super {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v1

    return-object v1

    .line 86
    :cond_1
    :try_start_0
    const-string v2, "GCM"

    invoke-static {v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 87
    .local v2, "params":Ljava/security/AlgorithmParameters;
    invoke-virtual {v2, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-object v2

    .line 92
    .end local v2    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/security/spec/InvalidParameterSpecException;
    return-object v1

    .line 89
    .end local v2    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :catch_1
    move-exception v1

    .line 91
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "GCM not supported"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Error;

    throw v2
.end method

.method getBaseCipherName()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "AES"

    return-object v0
.end method

.method getCipherBlockSize()I
    .locals 1

    .line 53
    const/16 v0, 0x10

    return v0
.end method

.method getOutputSizeForFinal(I)I
    .locals 2
    .param p1, "inputLen"    # I

    .line 103
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipherAES;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget v0, p0, Lorg/conscrypt/OpenSSLAeadCipherAES;->bufCount:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/conscrypt/OpenSSLAeadCipherAES;->tagLengthInBytes:I

    add-int/2addr v0, v1

    return v0

    .line 106
    :cond_0
    iget v0, p0, Lorg/conscrypt/OpenSSLAeadCipherAES;->bufCount:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/conscrypt/OpenSSLAeadCipherAES;->tagLengthInBytes:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 59
    if-eqz p1, :cond_1

    .line 60
    invoke-static {p1}, Lorg/conscrypt/Platform;->fromGCMParameters(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 61
    .local v0, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz v0, :cond_0

    .line 62
    return-object v0

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lorg/conscrypt/OpenSSLAeadCipher;->getParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    return-object v1

    .line 66
    .end local v0    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
