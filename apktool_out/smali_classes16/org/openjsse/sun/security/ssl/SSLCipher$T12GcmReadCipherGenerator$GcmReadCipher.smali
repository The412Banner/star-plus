.class final Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;
.super Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GcmReadCipher"
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

    .line 1608
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 1609
    invoke-static {p4}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->cipher:Ljavax/crypto/Cipher;

    .line 1610
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x10

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->tagSize:I

    .line 1611
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->key:Ljava/security/Key;

    .line 1612
    move-object v0, p6

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->fixedIv:[B

    .line 1613
    iget v0, p3, Lorg/openjsse/sun/security/ssl/SSLCipher;->ivSize:I

    iget v1, p3, Lorg/openjsse/sun/security/ssl/SSLCipher;->fixedIvSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->recordIvSize:I

    .line 1614
    iput-object p7, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->random:Ljava/security/SecureRandom;

    .line 1617
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

    .line 1622
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v3, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->recordIvSize:I

    iget v4, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->tagSize:I

    add-int/2addr v3, v4

    if-lt v0, v3, :cond_1

    .line 1631
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->fixedIv:[B

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->fixedIv:[B

    array-length v3, v3

    iget v4, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->recordIvSize:I

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 1633
    .local v3, "iv":[B
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->fixedIv:[B

    array-length v0, v0

    iget v4, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->recordIvSize:I

    invoke-virtual {v2, v3, v0, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1634
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    iget v4, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->tagSize:I

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v0, v4, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    move-object v4, v0

    .line 1636
    .local v4, "spec":Ljavax/crypto/spec/GCMParameterSpec;
    :try_start_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->cipher:Ljavax/crypto/Cipher;

    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->key:Ljava/security/Key;

    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->random:Ljava/security/SecureRandom;

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v5, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1642
    nop

    .line 1645
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    .line 1646
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget v6, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->tagSize:I

    sub-int/2addr v5, v6

    .line 1645
    move/from16 v14, p1

    move-object/from16 v15, p3

    invoke-virtual {v0, v14, v5, v15}, Lorg/openjsse/sun/security/ssl/Authenticator;->acquireAuthenticationBytes(BI[B)[B

    move-result-object v5

    .line 1648
    .local v5, "aad":[B
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 1652
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 1653
    .local v13, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 1655
    .local v11, "dup":Ljava/nio/ByteBuffer;
    :try_start_1
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v11, v2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1665
    .local v0, "len":I
    nop

    .line 1667
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1668
    add-int v6, v13, v0

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1670
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_0

    const-string v6, "plaintext"

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1671
    nop

    .line 1672
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 1671
    const-string v7, "Plaintext after DECRYPTION"

    invoke-static {v7, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1675
    :cond_0
    new-instance v16, Lorg/openjsse/sun/security/ssl/Plaintext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v8, v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v9, v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    .line 1677
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v17

    const/4 v10, -0x1

    const-wide/16 v18, -0x1

    move-object/from16 v6, v16

    move/from16 v7, p1

    move-object/from16 v20, v11

    .end local v11    # "dup":Ljava/nio/ByteBuffer;
    .local v20, "dup":Ljava/nio/ByteBuffer;
    move-wide/from16 v11, v18

    move/from16 v18, v13

    .end local v13    # "pos":I
    .local v18, "pos":I
    move-object/from16 v13, v17

    invoke-direct/range {v6 .. v13}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    .line 1675
    return-object v16

    .line 1661
    .end local v0    # "len":I
    .end local v18    # "pos":I
    .end local v20    # "dup":Ljava/nio/ByteBuffer;
    .restart local v11    # "dup":Ljava/nio/ByteBuffer;
    .restart local v13    # "pos":I
    :catch_0
    move-exception v0

    move-object/from16 v20, v11

    move/from16 v18, v13

    .line 1663
    .end local v11    # "dup":Ljava/nio/ByteBuffer;
    .end local v13    # "pos":I
    .local v0, "sbe":Ljavax/crypto/ShortBufferException;
    .restart local v18    # "pos":I
    .restart local v20    # "dup":Ljava/nio/ByteBuffer;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cipher buffering error in JCE provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->cipher:Ljavax/crypto/Cipher;

    .line 1664
    invoke-virtual {v8}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1656
    .end local v0    # "sbe":Ljavax/crypto/ShortBufferException;
    .end local v18    # "pos":I
    .end local v20    # "dup":Ljava/nio/ByteBuffer;
    .restart local v11    # "dup":Ljava/nio/ByteBuffer;
    .restart local v13    # "pos":I
    :catch_1
    move-exception v0

    move-object/from16 v20, v11

    move/from16 v18, v13

    .line 1658
    .end local v11    # "dup":Ljava/nio/ByteBuffer;
    .end local v13    # "pos":I
    .local v0, "ibse":Ljavax/crypto/IllegalBlockSizeException;
    .restart local v18    # "pos":I
    .restart local v20    # "dup":Ljava/nio/ByteBuffer;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cipher error in AEAD mode \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1659
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \"in JCE provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->cipher:Ljavax/crypto/Cipher;

    .line 1660
    invoke-virtual {v8}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1637
    .end local v0    # "ibse":Ljavax/crypto/IllegalBlockSizeException;
    .end local v5    # "aad":[B
    .end local v18    # "pos":I
    .end local v20    # "dup":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    move/from16 v14, p1

    move-object/from16 v15, p3

    .line 1640
    .local v0, "ikae":Ljava/security/GeneralSecurityException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "invalid key or spec in GCM mode"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1623
    .end local v0    # "ikae":Ljava/security/GeneralSecurityException;
    .end local v3    # "iv":[B
    .end local v4    # "spec":Ljavax/crypto/spec/GCMParameterSpec;
    :cond_1
    move/from16 v14, p1

    move-object/from16 v15, p3

    new-instance v0, Ljavax/crypto/BadPaddingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insufficient buffer remaining for AEAD cipher fragment ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1625
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). Needs to be more than or equal to IV size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->recordIvSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") + tag size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->tagSize:I

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

    .line 1682
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 1684
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1687
    goto :goto_0

    .line 1685
    :catch_0
    move-exception v0

    .line 1689
    :cond_0
    :goto_0
    return-void
.end method

.method estimateFragmentSize(II)I
    .locals 2
    .param p1, "packetSize"    # I
    .param p2, "headerSize"    # I

    .line 1693
    sub-int v0, p1, p2

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->recordIvSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T12GcmReadCipherGenerator$GcmReadCipher;->tagSize:I

    sub-int/2addr v0, v1

    return v0
.end method
