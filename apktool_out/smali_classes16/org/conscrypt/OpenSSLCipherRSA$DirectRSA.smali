.class public abstract Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;
.super Lorg/conscrypt/OpenSSLCipherRSA;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLCipherRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DirectRSA"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 379
    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLCipherRSA;-><init>(I)V

    .line 380
    return-void
.end method


# virtual methods
.method doCryptoOperation([B[B)I
    .locals 3
    .param p1, "tmpBuf"    # [B
    .param p2, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 386
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->encrypting:Z

    if-eqz v0, :cond_1

    .line 387
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->usingPrivateKey:Z

    if-eqz v0, :cond_0

    .line 388
    array-length v0, p1

    iget-object v1, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 389
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    iget v2, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    .line 388
    invoke-static {v0, p1, p2, v1, v2}, Lorg/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v0

    .local v0, "resultSize":I
    goto :goto_1

    .line 391
    .end local v0    # "resultSize":I
    :cond_0
    array-length v0, p1

    iget-object v1, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 392
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    iget v2, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    .line 391
    invoke-static {v0, p1, p2, v1, v2}, Lorg/conscrypt/NativeCrypto;->RSA_public_encrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v0

    .restart local v0    # "resultSize":I
    goto :goto_1

    .line 396
    .end local v0    # "resultSize":I
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->usingPrivateKey:Z

    if-eqz v0, :cond_2

    .line 397
    array-length v0, p1

    iget-object v1, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 398
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    iget v2, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    .line 397
    invoke-static {v0, p1, p2, v1, v2}, Lorg/conscrypt/NativeCrypto;->RSA_private_decrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v0

    .restart local v0    # "resultSize":I
    goto :goto_0

    .line 400
    .end local v0    # "resultSize":I
    :cond_2
    array-length v0, p1

    iget-object v1, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 401
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    iget v2, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    .line 400
    invoke-static {v0, p1, p2, v1, v2}, Lorg/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .restart local v0    # "resultSize":I
    :goto_0
    nop

    .line 409
    :goto_1
    return v0

    .line 403
    .end local v0    # "resultSize":I
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 405
    .local v1, "newE":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 406
    throw v1
.end method
