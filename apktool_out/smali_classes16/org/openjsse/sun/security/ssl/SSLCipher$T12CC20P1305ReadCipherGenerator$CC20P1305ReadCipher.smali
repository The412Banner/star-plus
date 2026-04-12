.class final Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;
.super Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator;
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

    .line 2151
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 2152
    invoke-static {p4}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->cipher:Ljavax/crypto/Cipher;

    .line 2153
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x10

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->tagSize:I

    .line 2154
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->key:Ljava/security/Key;

    .line 2155
    move-object v0, p6

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->iv:[B

    .line 2156
    iput-object p7, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->random:Ljava/security/SecureRandom;

    .line 2159
    return-void
.end method


# virtual methods
.method public decrypt(BLjava/nio/ByteBuffer;[B)Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 22
    .param p1, "contentType"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "sequence"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2164
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v3, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->tagSize:I

    if-le v0, v3, :cond_3

    .line 2171
    move-object/from16 v0, p3

    .line 2172
    .local v0, "sn":[B
    if-nez v0, :cond_0

    .line 2173
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/Authenticator;->sequenceNumber()[B

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 2172
    :cond_0
    move-object v3, v0

    .line 2175
    .end local v0    # "sn":[B
    .local v3, "sn":[B
    :goto_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->iv:[B

    array-length v0, v0

    new-array v4, v0, [B

    .line 2176
    .local v4, "nonce":[B
    array-length v0, v4

    array-length v5, v3

    sub-int/2addr v0, v5

    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 2179
    aget-byte v5, v4, v0

    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->iv:[B

    aget-byte v6, v6, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 2178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2183
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v5, v0

    .line 2185
    .local v5, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :try_start_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->cipher:Ljavax/crypto/Cipher;

    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->key:Ljava/security/Key;

    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->random:Ljava/security/SecureRandom;

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v6, v5, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2191
    nop

    .line 2194
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    .line 2195
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iget v7, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->tagSize:I

    sub-int/2addr v6, v7

    .line 2194
    move/from16 v15, p1

    move-object/from16 v14, p3

    invoke-virtual {v0, v15, v6, v14}, Lorg/openjsse/sun/security/ssl/Authenticator;->acquireAuthenticationBytes(BI[B)[B

    move-result-object v6

    .line 2196
    .local v6, "aad":[B
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 2200
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 2201
    .local v7, "len":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    .line 2202
    .local v12, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 2204
    .local v13, "dup":Ljava/nio/ByteBuffer;
    :try_start_1
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v13, v2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2214
    .end local v7    # "len":I
    .local v0, "len":I
    nop

    .line 2216
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2217
    add-int v7, v12, v0

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2219
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_2

    const-string v7, "plaintext"

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2220
    nop

    .line 2221
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 2220
    const-string v8, "Plaintext after DECRYPTION"

    invoke-static {v8, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2224
    :cond_2
    new-instance v16, Lorg/openjsse/sun/security/ssl/Plaintext;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v9, v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v10, v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    .line 2226
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v17

    const/4 v11, -0x1

    const-wide/16 v18, -0x1

    move-object/from16 v7, v16

    move/from16 v8, p1

    move/from16 v20, v12

    move-object/from16 v21, v13

    .end local v12    # "pos":I
    .end local v13    # "dup":Ljava/nio/ByteBuffer;
    .local v20, "pos":I
    .local v21, "dup":Ljava/nio/ByteBuffer;
    move-wide/from16 v12, v18

    move-object/from16 v14, v17

    invoke-direct/range {v7 .. v14}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    .line 2224
    return-object v16

    .line 2210
    .end local v0    # "len":I
    .end local v20    # "pos":I
    .end local v21    # "dup":Ljava/nio/ByteBuffer;
    .restart local v7    # "len":I
    .restart local v12    # "pos":I
    .restart local v13    # "dup":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    move/from16 v20, v12

    move-object/from16 v21, v13

    .line 2212
    .end local v12    # "pos":I
    .end local v13    # "dup":Ljava/nio/ByteBuffer;
    .local v0, "sbe":Ljavax/crypto/ShortBufferException;
    .restart local v20    # "pos":I
    .restart local v21    # "dup":Ljava/nio/ByteBuffer;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cipher buffering error in JCE provider "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->cipher:Ljavax/crypto/Cipher;

    .line 2213
    invoke-virtual {v10}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v10

    invoke-virtual {v10}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 2205
    .end local v0    # "sbe":Ljavax/crypto/ShortBufferException;
    .end local v20    # "pos":I
    .end local v21    # "dup":Ljava/nio/ByteBuffer;
    .restart local v12    # "pos":I
    .restart local v13    # "dup":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v0

    move/from16 v20, v12

    move-object/from16 v21, v13

    .line 2207
    .end local v12    # "pos":I
    .end local v13    # "dup":Ljava/nio/ByteBuffer;
    .local v0, "ibse":Ljavax/crypto/IllegalBlockSizeException;
    .restart local v20    # "pos":I
    .restart local v21    # "dup":Ljava/nio/ByteBuffer;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cipher error in AEAD mode \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2208
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \"in JCE provider "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->cipher:Ljavax/crypto/Cipher;

    .line 2209
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

    .line 2186
    .end local v0    # "ibse":Ljavax/crypto/IllegalBlockSizeException;
    .end local v6    # "aad":[B
    .end local v7    # "len":I
    .end local v20    # "pos":I
    .end local v21    # "dup":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_2
    move/from16 v15, p1

    .line 2189
    .local v0, "ikae":Ljava/security/GeneralSecurityException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "invalid key or spec in AEAD mode"

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2165
    .end local v0    # "ikae":Ljava/security/GeneralSecurityException;
    .end local v3    # "sn":[B
    .end local v4    # "nonce":[B
    .end local v5    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_3
    move/from16 v15, p1

    new-instance v0, Ljavax/crypto/BadPaddingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insufficient buffer remaining for AEAD cipher fragment ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2167
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). Needs to be more than tag size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->tagSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispose()V
    .locals 1

    .line 2231
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 2233
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2236
    goto :goto_0

    .line 2234
    :catch_0
    move-exception v0

    .line 2238
    :cond_0
    :goto_0
    return-void
.end method

.method estimateFragmentSize(II)I
    .locals 2
    .param p1, "packetSize"    # I
    .param p2, "headerSize"    # I

    .line 2242
    sub-int v0, p1, p2

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;->tagSize:I

    sub-int/2addr v0, v1

    return v0
.end method
