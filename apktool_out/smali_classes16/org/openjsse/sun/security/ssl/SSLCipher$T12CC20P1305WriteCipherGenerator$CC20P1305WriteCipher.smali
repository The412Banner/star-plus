.class final Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;
.super Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator;
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

    .line 2270
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 2271
    invoke-static {p4}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 2272
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x10

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->tagSize:I

    .line 2273
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->key:Ljava/security/Key;

    .line 2274
    move-object v0, p6

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->iv:[B

    .line 2275
    iput-object p7, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->random:Ljava/security/SecureRandom;

    .line 2277
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLCipher;->access$2100()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2278
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

    .line 2277
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->keyLimitCountdown:J

    .line 2279
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2280
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

    iget-wide v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->keyLimitCountdown:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2284
    :cond_0
    iget-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->keyLimitCountdown:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    .line 2285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->keyLimitEnabled:Z

    .line 2289
    :cond_1
    return-void
.end method


# virtual methods
.method calculateFragmentSize(II)I
    .locals 2
    .param p1, "packetLimit"    # I
    .param p2, "headerSize"    # I

    .line 2376
    sub-int v0, p1, p2

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->tagSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method calculatePacketSize(II)I
    .locals 2
    .param p1, "fragmentSize"    # I
    .param p2, "headerSize"    # I

    .line 2381
    add-int v0, p1, p2

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->tagSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method dispose()V
    .locals 1

    .line 2360
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 2362
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2365
    goto :goto_0

    .line 2363
    :catch_0
    move-exception v0

    .line 2367
    :cond_0
    :goto_0
    return-void
.end method

.method public encrypt(BLjava/nio/ByteBuffer;)I
    .locals 12
    .param p1, "contentType"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 2294
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->sequenceNumber()[B

    move-result-object v0

    .line 2295
    .local v0, "sn":[B
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->iv:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 2296
    .local v1, "nonce":[B
    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2298
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 2299
    aget-byte v3, v1, v2

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->iv:[B

    aget-byte v4, v4, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 2298
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2303
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 2305
    .local v2, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :try_start_0
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->key:Ljava/security/Key;

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->random:Ljava/security/SecureRandom;

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4, v2, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2311
    nop

    .line 2315
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    .line 2316
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 2315
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Lorg/openjsse/sun/security/ssl/Authenticator;->acquireAuthenticationBytes(BI[B)[B

    move-result-object v3

    .line 2317
    .local v3, "aad":[B
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 2320
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 2321
    .local v4, "len":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 2322
    .local v5, "pos":I
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_1

    const-string v6, "plaintext"

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2323
    nop

    .line 2325
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 2323
    const-string v7, "Plaintext before ENCRYPTION"

    invoke-static {v7, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2328
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 2329
    .local v6, "dup":Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-virtual {v7, v8}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v7

    .line 2330
    .local v7, "outputSize":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 2336
    add-int v8, v5, v7

    invoke-virtual {p2, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2340
    :cond_2
    :try_start_1
    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v8, v6, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v8
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v8

    .line 2347
    nop

    .line 2349
    if-ne v4, v7, :cond_3

    .line 2355
    return v4

    .line 2350
    :cond_3
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cipher buffering error in JCE provider "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 2352
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

    .line 2341
    :catch_0
    move-exception v8

    goto :goto_1

    :catch_1
    move-exception v8

    goto :goto_1

    :catch_2
    move-exception v8

    .line 2344
    .local v8, "ibse":Ljava/security/GeneralSecurityException;
    :goto_1
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cipher error in AEAD mode in JCE provider "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305WriteCipherGenerator$CC20P1305WriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 2346
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

    .line 2306
    .end local v3    # "aad":[B
    .end local v4    # "len":I
    .end local v5    # "pos":I
    .end local v6    # "dup":Ljava/nio/ByteBuffer;
    .end local v7    # "outputSize":I
    .end local v8    # "ibse":Ljava/security/GeneralSecurityException;
    :catch_3
    move-exception v3

    goto :goto_2

    :catch_4
    move-exception v3

    .line 2309
    .local v3, "ikae":Ljava/security/GeneralSecurityException;
    :goto_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "invalid key or spec in AEAD mode"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method getExplicitNonceSize()I
    .locals 1

    .line 2371
    const/4 v0, 0x0

    return v0
.end method
