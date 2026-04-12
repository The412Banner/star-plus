.class final Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;
.super Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GcmWriteCipher"
.end annotation


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final fixedIv:[B

.field private final key:Ljava/security/Key;

.field private final random:Ljava/security/SecureRandom;

.field private final recordIvSize:I

.field private final tagSize:I


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/SSLCipher;Ljava/lang/String;Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "authenticator"    # Lorg/openjsse/sun/security/ssl/Authenticator;
    .param p2, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p3, "sslCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher;
    .param p4, "algorithm"    # Ljava/lang/String;
    .param p5, "key"    # Ljava/security/Key;
    .param p6, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p7, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1723
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 1724
    invoke-static {p4}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 1725
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x10

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->tagSize:I

    .line 1726
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->key:Ljava/security/Key;

    .line 1727
    move-object v0, p6

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->fixedIv:[B

    .line 1728
    iget v0, p3, Lorg/openjsse/sun/security/ssl/SSLCipher;->ivSize:I

    iget v1, p3, Lorg/openjsse/sun/security/ssl/SSLCipher;->fixedIvSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->recordIvSize:I

    .line 1729
    iput-object p7, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->random:Ljava/security/SecureRandom;

    .line 1732
    return-void
.end method


# virtual methods
.method calculateFragmentSize(II)I
    .locals 2
    .param p1, "packetLimit"    # I
    .param p2, "headerSize"    # I

    .line 1822
    sub-int v0, p1, p2

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->recordIvSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->tagSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method calculatePacketSize(II)I
    .locals 2
    .param p1, "fragmentSize"    # I
    .param p2, "headerSize"    # I

    .line 1827
    add-int v0, p1, p2

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->recordIvSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->tagSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method dispose()V
    .locals 1

    .line 1806
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 1808
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1811
    goto :goto_0

    .line 1809
    :catch_0
    move-exception v0

    .line 1813
    :cond_0
    :goto_0
    return-void
.end method

.method public encrypt(BLjava/nio/ByteBuffer;)I
    .locals 11
    .param p1, "contentType"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 1739
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->sequenceNumber()[B

    move-result-object v0

    .line 1742
    .local v0, "nonce":[B
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->fixedIv:[B

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->fixedIv:[B

    array-length v2, v2

    array-length v3, v0

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 1744
    .local v1, "iv":[B
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->fixedIv:[B

    array-length v2, v2

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1746
    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    iget v3, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->tagSize:I

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 1748
    .local v2, "spec":Ljavax/crypto/spec/GCMParameterSpec;
    :try_start_0
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->key:Ljava/security/Key;

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->random:Ljava/security/SecureRandom;

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4, v2, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1754
    nop

    .line 1758
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    .line 1759
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 1758
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Lorg/openjsse/sun/security/ssl/Authenticator;->acquireAuthenticationBytes(BI[B)[B

    move-result-object v3

    .line 1760
    .local v3, "aad":[B
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 1763
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    array-length v5, v0

    sub-int/2addr v4, v5

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1764
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1767
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 1768
    .local v4, "pos":I
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_0

    const-string v5, "plaintext"

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1769
    nop

    .line 1771
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 1769
    const-string v6, "Plaintext before ENCRYPTION"

    invoke-static {v6, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1774
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1775
    .local v5, "dup":Ljava/nio/ByteBuffer;
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v7}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v6

    .line 1776
    .local v6, "outputSize":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 1782
    add-int v7, v4, v6

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1786
    :cond_1
    :try_start_1
    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v7, v5, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v7
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1793
    .local v7, "len":I
    nop

    .line 1795
    if-ne v7, v6, :cond_2

    .line 1801
    array-length v8, v0

    add-int/2addr v8, v7

    return v8

    .line 1796
    :cond_2
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cipher buffering error in JCE provider "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 1798
    invoke-virtual {v10}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v10

    invoke-virtual {v10}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1787
    .end local v7    # "len":I
    :catch_0
    move-exception v7

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_0

    :catch_2
    move-exception v7

    .line 1790
    .local v7, "ibse":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cipher error in AEAD mode in JCE provider "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 1792
    invoke-virtual {v10}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v10

    invoke-virtual {v10}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1749
    .end local v3    # "aad":[B
    .end local v4    # "pos":I
    .end local v5    # "dup":Ljava/nio/ByteBuffer;
    .end local v6    # "outputSize":I
    .end local v7    # "ibse":Ljava/security/GeneralSecurityException;
    :catch_3
    move-exception v3

    goto :goto_1

    :catch_4
    move-exception v3

    .line 1752
    .local v3, "ikae":Ljava/security/GeneralSecurityException;
    :goto_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "invalid key or spec in GCM mode"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method getExplicitNonceSize()I
    .locals 1

    .line 1817
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmWriteCipherGenerator$GcmWriteCipher;->recordIvSize:I

    return v0
.end method
