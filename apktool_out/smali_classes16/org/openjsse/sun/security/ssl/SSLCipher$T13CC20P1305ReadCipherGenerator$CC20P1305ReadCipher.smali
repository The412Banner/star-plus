.class final Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;
.super Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CC20P1305ReadCipher"
.end annotation


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final iv:[B

.field private final key:Ljava/security/Key;

.field private final random:Ljava/security/SecureRandom;

.field private final tagSize:I


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/SSLCipher;Ljava/lang/String;Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
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

    .line 2410
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 2411
    invoke-static {p4}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->cipher:Ljavax/crypto/Cipher;

    .line 2412
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x10

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->tagSize:I

    .line 2413
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->key:Ljava/security/Key;

    .line 2414
    move-object v0, p6

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->iv:[B

    .line 2415
    iput-object p7, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->random:Ljava/security/SecureRandom;

    .line 2418
    return-void
.end method


# virtual methods
.method public decrypt(BLjava/nio/ByteBuffer;[B)Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 20
    .param p1, "contentType"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "sequence"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2429
    move-object/from16 v1, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    sget-object v0, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v10, v0, :cond_0

    .line 2430
    new-instance v0, Lorg/openjsse/sun/security/ssl/Plaintext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v4, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v5, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    .line 2432
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    move-object v2, v0

    move/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    .line 2430
    return-object v0

    .line 2435
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v2, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->tagSize:I

    if-le v0, v2, :cond_6

    .line 2442
    move-object/from16 v0, p3

    .line 2443
    .local v0, "sn":[B
    if-nez v0, :cond_1

    .line 2444
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/Authenticator;->sequenceNumber()[B

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 2443
    :cond_1
    move-object v2, v0

    .line 2446
    .end local v0    # "sn":[B
    .local v2, "sn":[B
    :goto_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->iv:[B

    array-length v0, v0

    new-array v3, v0, [B

    .line 2447
    .local v3, "nonce":[B
    array-length v0, v3

    array-length v4, v2

    sub-int/2addr v0, v4

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2449
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 2450
    aget-byte v4, v3, v0

    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->iv:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 2449
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2454
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v4, v0

    .line 2456
    .local v4, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :try_start_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->cipher:Ljavax/crypto/Cipher;

    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->key:Ljava/security/Key;

    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->random:Ljava/security/SecureRandom;

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v5, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2462
    nop

    .line 2466
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    .line 2467
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 2466
    invoke-virtual {v0, v10, v5, v2}, Lorg/openjsse/sun/security/ssl/Authenticator;->acquireAuthenticationBytes(BI[B)[B

    move-result-object v5

    .line 2468
    .local v5, "aad":[B
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 2470
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 2471
    .local v6, "len":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 2472
    .local v7, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 2474
    .local v8, "dup":Ljava/nio/ByteBuffer;
    :try_start_1
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v8, v11}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2484
    .end local v6    # "len":I
    .local v0, "len":I
    nop

    .line 2486
    invoke-virtual {v11, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2487
    add-int v6, v7, v0

    invoke-virtual {v11, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2490
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 2491
    .local v6, "i":I
    :goto_2
    if-lez v6, :cond_3

    invoke-virtual {v11, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    if-nez v9, :cond_3

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 2494
    :cond_3
    add-int/lit8 v9, v7, 0x1

    if-lt v6, v9, :cond_5

    .line 2498
    invoke-virtual {v11, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    .line 2499
    .end local p1    # "contentType":B
    .local v9, "contentType":B
    invoke-virtual {v11, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2501
    sget-boolean v10, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v10, :cond_4

    const-string v10, "plaintext"

    invoke-static {v10}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2502
    nop

    .line 2503
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    .line 2502
    const-string v12, "Plaintext after DECRYPTION"

    invoke-static {v12, v10}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2506
    :cond_4
    new-instance v10, Lorg/openjsse/sun/security/ssl/Plaintext;

    sget-object v12, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v14, v12, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    sget-object v12, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v15, v12, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    .line 2508
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v19

    const/16 v16, -0x1

    const-wide/16 v17, -0x1

    move-object v12, v10

    move v13, v9

    invoke-direct/range {v12 .. v19}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    .line 2506
    return-object v10

    .line 2495
    .end local v9    # "contentType":B
    .restart local p1    # "contentType":B
    :cond_5
    new-instance v9, Ljavax/crypto/BadPaddingException;

    const-string v12, "Incorrect inner plaintext: no content type"

    invoke-direct {v9, v12}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2480
    .end local v0    # "len":I
    .local v6, "len":I
    :catch_0
    move-exception v0

    .line 2482
    .local v0, "sbe":Ljavax/crypto/ShortBufferException;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cipher buffering error in JCE provider "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->cipher:Ljavax/crypto/Cipher;

    .line 2483
    invoke-virtual {v13}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v13

    invoke-virtual {v13}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 2475
    .end local v0    # "sbe":Ljavax/crypto/ShortBufferException;
    :catch_1
    move-exception v0

    .line 2477
    .local v0, "ibse":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cipher error in AEAD mode \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2478
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \"in JCE provider "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->cipher:Ljavax/crypto/Cipher;

    .line 2479
    invoke-virtual {v13}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v13

    invoke-virtual {v13}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2457
    .end local v0    # "ibse":Ljavax/crypto/IllegalBlockSizeException;
    .end local v5    # "aad":[B
    .end local v6    # "len":I
    .end local v7    # "pos":I
    .end local v8    # "dup":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    .line 2460
    .local v0, "ikae":Ljava/security/GeneralSecurityException;
    :goto_3
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "invalid key or spec in AEAD mode"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 2436
    .end local v0    # "ikae":Ljava/security/GeneralSecurityException;
    .end local v2    # "sn":[B
    .end local v3    # "nonce":[B
    .end local v4    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_6
    new-instance v0, Ljavax/crypto/BadPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insufficient buffer remaining for AEAD cipher fragment ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2438
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). Needs to be more than tag size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->tagSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispose()V
    .locals 1

    .line 2513
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 2515
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2518
    goto :goto_0

    .line 2516
    :catch_0
    move-exception v0

    .line 2520
    :cond_0
    :goto_0
    return-void
.end method

.method estimateFragmentSize(II)I
    .locals 2
    .param p1, "packetSize"    # I
    .param p2, "headerSize"    # I

    .line 2524
    sub-int v0, p1, p2

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->tagSize:I

    sub-int/2addr v0, v1

    return v0
.end method
