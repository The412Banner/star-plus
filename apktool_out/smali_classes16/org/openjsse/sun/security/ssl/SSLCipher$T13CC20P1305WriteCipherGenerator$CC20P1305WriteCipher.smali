.class final Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;
.super Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CC20P1305WriteCipher"
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

    .line 2552
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 2553
    invoke-static {p4}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 2554
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x10

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->tagSize:I

    .line 2555
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->key:Ljava/security/Key;

    .line 2556
    move-object v0, p6

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->iv:[B

    .line 2557
    iput-object p7, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->random:Ljava/security/SecureRandom;

    .line 2559
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLCipher;->access$2100()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2560
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

    .line 2559
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->keyLimitCountdown:J

    .line 2561
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "algorithm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    iget-wide v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->keyLimitCountdown:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2566
    :cond_0
    iget-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->keyLimitCountdown:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    .line 2567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->keyLimitEnabled:Z

    .line 2571
    :cond_1
    return-void
.end method


# virtual methods
.method calculateFragmentSize(II)I
    .locals 2
    .param p1, "packetLimit"    # I
    .param p2, "headerSize"    # I

    .line 2660
    sub-int v0, p1, p2

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->tagSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method calculatePacketSize(II)I
    .locals 2
    .param p1, "fragmentSize"    # I
    .param p2, "headerSize"    # I

    .line 2665
    add-int v0, p1, p2

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->tagSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method dispose()V
    .locals 1

    .line 2644
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 2646
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2649
    goto :goto_0

    .line 2647
    :catch_0
    move-exception v0

    .line 2651
    :cond_0
    :goto_0
    return-void
.end method

.method public encrypt(BLjava/nio/ByteBuffer;)I
    .locals 12
    .param p1, "contentType"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 2576
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->sequenceNumber()[B

    move-result-object v0

    .line 2577
    .local v0, "sn":[B
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->iv:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 2578
    .local v1, "nonce":[B
    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2580
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 2581
    aget-byte v3, v1, v2

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->iv:[B

    aget-byte v4, v4, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 2580
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2585
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 2587
    .local v2, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :try_start_0
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->key:Ljava/security/Key;

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->random:Ljava/security/SecureRandom;

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4, v2, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2593
    nop

    .line 2597
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v3

    .line 2598
    .local v3, "outputSize":I
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v4, p1, v3, v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->acquireAuthenticationBytes(BI[B)[B

    move-result-object v4

    .line 2600
    .local v4, "aad":[B
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v5, v4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 2602
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 2603
    .local v5, "len":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 2604
    .local v6, "pos":I
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_1

    const-string v7, "plaintext"

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2605
    nop

    .line 2607
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 2605
    const-string v8, "Plaintext before ENCRYPTION"

    invoke-static {v8, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2610
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 2611
    .local v7, "dup":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-le v3, v8, :cond_2

    .line 2617
    add-int v8, v6, v3

    invoke-virtual {p2, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2621
    :cond_2
    :try_start_1
    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v8, v7, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v8
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v8

    .line 2628
    nop

    .line 2630
    if-ne v5, v3, :cond_4

    .line 2636
    iget-boolean v8, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->keyLimitEnabled:Z

    if-eqz v8, :cond_3

    .line 2637
    iget-wide v8, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->keyLimitCountdown:J

    int-to-long v10, v5

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->keyLimitCountdown:J

    .line 2639
    :cond_3
    return v5

    .line 2631
    :cond_4
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cipher buffering error in JCE provider "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 2633
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

    .line 2622
    :catch_0
    move-exception v8

    goto :goto_1

    :catch_1
    move-exception v8

    goto :goto_1

    :catch_2
    move-exception v8

    .line 2625
    .local v8, "ibse":Ljava/security/GeneralSecurityException;
    :goto_1
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cipher error in AEAD mode in JCE provider "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 2627
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

    .line 2588
    .end local v3    # "outputSize":I
    .end local v4    # "aad":[B
    .end local v5    # "len":I
    .end local v6    # "pos":I
    .end local v7    # "dup":Ljava/nio/ByteBuffer;
    .end local v8    # "ibse":Ljava/security/GeneralSecurityException;
    :catch_3
    move-exception v3

    goto :goto_2

    :catch_4
    move-exception v3

    .line 2591
    .local v3, "ikae":Ljava/security/GeneralSecurityException;
    :goto_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "invalid key or spec in AEAD mode"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method getExplicitNonceSize()I
    .locals 1

    .line 2655
    const/4 v0, 0x0

    return v0
.end method
