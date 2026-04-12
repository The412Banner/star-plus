.class final Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;
.super Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GcmReadCipher"
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

    .line 1856
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 1857
    invoke-static {p4}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->cipher:Ljavax/crypto/Cipher;

    .line 1858
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x10

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->tagSize:I

    .line 1859
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->key:Ljava/security/Key;

    .line 1860
    move-object v0, p6

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->iv:[B

    .line 1861
    iput-object p7, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->random:Ljava/security/SecureRandom;

    .line 1863
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SSLCipher;->access$2100()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1864
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

    .line 1863
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->keyLimitCountdown:J

    .line 1865
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyLimit read side: algorithm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1867
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

    iget-wide v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->keyLimitCountdown:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 1866
    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1870
    :cond_0
    iget-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->keyLimitCountdown:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    .line 1871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->keyLimitEnabled:Z

    .line 1874
    :cond_1
    return-void
.end method


# virtual methods
.method public decrypt(BLjava/nio/ByteBuffer;[B)Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 21
    .param p1, "contentType"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "sequence"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1885
    move-object/from16 v1, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    sget-object v0, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v10, v0, :cond_0

    .line 1886
    new-instance v0, Lorg/openjsse/sun/security/ssl/Plaintext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v4, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v5, v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    .line 1888
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    move-object v2, v0

    move/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    .line 1886
    return-object v0

    .line 1891
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v2, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->tagSize:I

    if-le v0, v2, :cond_7

    .line 1898
    move-object/from16 v0, p3

    .line 1899
    .local v0, "sn":[B
    if-nez v0, :cond_1

    .line 1900
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/Authenticator;->sequenceNumber()[B

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 1899
    :cond_1
    move-object v2, v0

    .line 1902
    .end local v0    # "sn":[B
    .local v2, "sn":[B
    :goto_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->iv:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [B

    .line 1903
    .local v3, "nonce":[B
    array-length v0, v3

    array-length v4, v2

    sub-int v4, v0, v4

    .line 1904
    .local v4, "offset":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_2

    .line 1905
    add-int v5, v4, v0

    aget-byte v6, v3, v5

    aget-byte v7, v2, v0

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1904
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1909
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    iget v5, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->tagSize:I

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v0, v5, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    move-object v5, v0

    .line 1912
    .local v5, "spec":Ljavax/crypto/spec/GCMParameterSpec;
    :try_start_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->cipher:Ljavax/crypto/Cipher;

    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->key:Ljava/security/Key;

    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->random:Ljava/security/SecureRandom;

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v6, v5, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1918
    nop

    .line 1922
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    .line 1923
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 1922
    invoke-virtual {v0, v10, v6, v2}, Lorg/openjsse/sun/security/ssl/Authenticator;->acquireAuthenticationBytes(BI[B)[B

    move-result-object v6

    .line 1924
    .local v6, "aad":[B
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 1926
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 1927
    .local v7, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 1929
    .local v8, "dup":Ljava/nio/ByteBuffer;
    :try_start_1
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v8, v11}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1939
    .local v0, "len":I
    nop

    .line 1941
    invoke-virtual {v11, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1942
    add-int v9, v7, v0

    invoke-virtual {v11, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1945
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 1946
    .local v9, "i":I
    :goto_2
    if-lez v9, :cond_3

    invoke-virtual {v11, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    if-nez v12, :cond_3

    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 1949
    :cond_3
    add-int/lit8 v12, v7, 0x1

    if-lt v9, v12, :cond_6

    .line 1953
    invoke-virtual {v11, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    .line 1954
    .end local p1    # "contentType":B
    .local v10, "contentType":B
    invoke-virtual {v11, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1956
    sget-boolean v12, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v12, :cond_4

    const-string v12, "plaintext"

    invoke-static {v12}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1957
    nop

    .line 1958
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    .line 1957
    const-string v13, "Plaintext after DECRYPTION"

    invoke-static {v13, v12}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1960
    :cond_4
    iget-boolean v12, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->keyLimitEnabled:Z

    if-eqz v12, :cond_5

    .line 1961
    iget-wide v12, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->keyLimitCountdown:J

    int-to-long v14, v0

    sub-long/2addr v12, v14

    iput-wide v12, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->keyLimitCountdown:J

    .line 1964
    :cond_5
    new-instance v12, Lorg/openjsse/sun/security/ssl/Plaintext;

    sget-object v13, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v15, v13, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    sget-object v13, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v14, v13, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    .line 1966
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v20

    const/16 v17, -0x1

    const-wide/16 v18, -0x1

    move-object v13, v12

    move/from16 v16, v14

    move v14, v10

    invoke-direct/range {v13 .. v20}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    .line 1964
    return-object v12

    .line 1950
    .end local v10    # "contentType":B
    .restart local p1    # "contentType":B
    :cond_6
    new-instance v12, Ljavax/crypto/BadPaddingException;

    const-string v13, "Incorrect inner plaintext: no content type"

    invoke-direct {v12, v13}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1935
    .end local v0    # "len":I
    .end local v9    # "i":I
    :catch_0
    move-exception v0

    .line 1937
    .local v0, "sbe":Ljavax/crypto/ShortBufferException;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cipher buffering error in JCE provider "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->cipher:Ljavax/crypto/Cipher;

    .line 1938
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

    .line 1930
    .end local v0    # "sbe":Ljavax/crypto/ShortBufferException;
    :catch_1
    move-exception v0

    .line 1932
    .local v0, "ibse":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cipher error in AEAD mode \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1933
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \"in JCE provider "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->cipher:Ljavax/crypto/Cipher;

    .line 1934
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

    .line 1913
    .end local v0    # "ibse":Ljavax/crypto/IllegalBlockSizeException;
    .end local v6    # "aad":[B
    .end local v7    # "pos":I
    .end local v8    # "dup":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    .line 1916
    .local v0, "ikae":Ljava/security/GeneralSecurityException;
    :goto_3
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "invalid key or spec in GCM mode"

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1892
    .end local v0    # "ikae":Ljava/security/GeneralSecurityException;
    .end local v2    # "sn":[B
    .end local v3    # "nonce":[B
    .end local v4    # "offset":I
    .end local v5    # "spec":Ljavax/crypto/spec/GCMParameterSpec;
    :cond_7
    new-instance v0, Ljavax/crypto/BadPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insufficient buffer remaining for AEAD cipher fragment ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1894
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). Needs to be more than tag size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->tagSize:I

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

    .line 1971
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 1973
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1976
    goto :goto_0

    .line 1974
    :catch_0
    move-exception v0

    .line 1978
    :cond_0
    :goto_0
    return-void
.end method

.method estimateFragmentSize(II)I
    .locals 2
    .param p1, "packetSize"    # I
    .param p2, "headerSize"    # I

    .line 1982
    sub-int v0, p1, p2

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T13GcmReadCipherGenerator$GcmReadCipher;->tagSize:I

    sub-int/2addr v0, v1

    return v0
.end method
