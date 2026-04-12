.class final Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;
.super Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GcmWriteCipher"
.end annotation


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final iv:[B

.field private final key:Ljava/security/Key;

.field private final random:Ljava/security/SecureRandom;

.field private final tagSize:I


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/SSLCipher;Ljava/lang/String;Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 7
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

    .line 2010
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 2011
    invoke-static {p4}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 2012
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x10

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->tagSize:I

    .line 2013
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->key:Ljava/security/Key;

    .line 2014
    move-object v0, p6

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->iv:[B

    .line 2015
    iput-object p7, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->random:Ljava/security/SecureRandom;

    .line 2017
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLCipher;->access$2100()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2018
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLCipher;->tag:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2017
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->keyLimitCountdown:J

    .line 2019
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyLimit write side: algorithm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2021
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLCipher;->tag:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncountdown value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->keyLimitCountdown:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 2020
    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2024
    :cond_0
    iget-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->keyLimitCountdown:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    .line 2025
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->keyLimitEnabled:Z

    .line 2029
    :cond_1
    return-void
.end method


# virtual methods
.method calculateFragmentSize(II)I
    .locals 2
    .param p1, "packetLimit"    # I
    .param p2, "headerSize"    # I

    .line 2117
    sub-int v0, p1, p2

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->tagSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method calculatePacketSize(II)I
    .locals 2
    .param p1, "fragmentSize"    # I
    .param p2, "headerSize"    # I

    .line 2122
    add-int v0, p1, p2

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->tagSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method dispose()V
    .locals 1

    .line 2101
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 2103
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2106
    goto :goto_0

    .line 2104
    :catch_0
    move-exception v0

    .line 2108
    :cond_0
    :goto_0
    return-void
.end method

.method public encrypt(BLjava/nio/ByteBuffer;)I
    .locals 13
    .param p1, "contentType"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 2034
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->sequenceNumber()[B

    move-result-object v0

    .line 2035
    .local v0, "sn":[B
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->iv:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 2036
    .local v1, "nonce":[B
    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    .line 2037
    .local v2, "offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 2038
    add-int v4, v2, v3

    aget-byte v5, v1, v4

    aget-byte v6, v0, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 2037
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2042
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    iget v4, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->tagSize:I

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v3, v4, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 2045
    .local v3, "spec":Ljavax/crypto/spec/GCMParameterSpec;
    :try_start_0
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->key:Ljava/security/Key;

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->random:Ljava/security/SecureRandom;

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v5, v3, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2051
    nop

    .line 2055
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v4

    .line 2056
    .local v4, "outputSize":I
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v5, p1, v4, v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->acquireAuthenticationBytes(BI[B)[B

    move-result-object v5

    .line 2058
    .local v5, "aad":[B
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v6, v5}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 2060
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 2061
    .local v6, "pos":I
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_1

    const-string v7, "plaintext"

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2062
    nop

    .line 2064
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 2062
    const-string v8, "Plaintext before ENCRYPTION"

    invoke-static {v8, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2067
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 2068
    .local v7, "dup":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-le v4, v8, :cond_2

    .line 2074
    add-int v8, v6, v4

    invoke-virtual {p2, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2078
    :cond_2
    :try_start_1
    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v8, v7, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v8
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2085
    .local v8, "len":I
    nop

    .line 2087
    if-ne v8, v4, :cond_4

    .line 2093
    iget-boolean v9, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->keyLimitEnabled:Z

    if-eqz v9, :cond_3

    .line 2094
    iget-wide v9, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->keyLimitCountdown:J

    int-to-long v11, v8

    sub-long/2addr v9, v11

    iput-wide v9, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->keyLimitCountdown:J

    .line 2096
    :cond_3
    return v8

    .line 2088
    :cond_4
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cipher buffering error in JCE provider "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 2090
    invoke-virtual {v11}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v11

    invoke-virtual {v11}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2079
    .end local v8    # "len":I
    :catch_0
    move-exception v8

    goto :goto_1

    :catch_1
    move-exception v8

    goto :goto_1

    :catch_2
    move-exception v8

    .line 2082
    .local v8, "ibse":Ljava/security/GeneralSecurityException;
    :goto_1
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cipher error in AEAD mode in JCE provider "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmWriteCipherGenerator$GcmWriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 2084
    invoke-virtual {v11}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v11

    invoke-virtual {v11}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 2046
    .end local v4    # "outputSize":I
    .end local v5    # "aad":[B
    .end local v6    # "pos":I
    .end local v7    # "dup":Ljava/nio/ByteBuffer;
    .end local v8    # "ibse":Ljava/security/GeneralSecurityException;
    :catch_3
    move-exception v4

    goto :goto_2

    :catch_4
    move-exception v4

    .line 2049
    .local v4, "ikae":Ljava/security/GeneralSecurityException;
    :goto_2
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "invalid key or spec in GCM mode"

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method getExplicitNonceSize()I
    .locals 1

    .line 2112
    const/4 v0, 0x0

    return v0
.end method
