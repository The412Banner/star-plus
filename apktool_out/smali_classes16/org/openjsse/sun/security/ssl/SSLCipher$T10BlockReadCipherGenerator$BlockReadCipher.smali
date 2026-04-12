.class final Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator$BlockReadCipher;
.super Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlockReadCipher"
.end annotation


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/lang/String;Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "authenticator"    # Lorg/openjsse/sun/security/ssl/Authenticator;
    .param p2, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/security/Key;
    .param p5, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1041
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 1042
    invoke-static {p3}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator$BlockReadCipher;->cipher:Ljavax/crypto/Cipher;

    .line 1043
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator$BlockReadCipher;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4, p5, p6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 1044
    return-void
.end method

.method private sanityCheck(II)Z
    .locals 4
    .param p1, "tagLen"    # I
    .param p2, "fragmentLen"    # I

    .line 1161
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator$BlockReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    .line 1162
    .local v0, "blockSize":I
    rem-int v1, p2, v0

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 1163
    add-int/lit8 v1, p1, 0x1

    .line 1164
    .local v1, "minimal":I
    if-lt v1, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    move v1, v3

    .line 1166
    if-lt p2, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 1169
    .end local v1    # "minimal":I
    :cond_2
    return v2
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

    .line 1049
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v0, 0x0

    .line 1052
    .local v0, "reservedBPE":Ljavax/crypto/BadPaddingException;
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator$BlockReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v3, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    .line 1053
    .local v3, "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 1054
    .local v4, "cipheredLength":I
    invoke-interface {v3}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v5

    iget v5, v5, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 1055
    .local v5, "tagLen":I
    if-eqz v5, :cond_0

    .line 1056
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-direct {v1, v5, v6}, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator$BlockReadCipher;->sanityCheck(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1057
    new-instance v6, Ljavax/crypto/BadPaddingException;

    const-string v7, "ciphertext sanity check failed"

    invoke-direct {v6, v7}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    .line 1062
    :cond_0
    move-object v6, v0

    .end local v0    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    .local v6, "reservedBPE":Ljavax/crypto/BadPaddingException;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 1063
    .local v7, "len":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 1064
    .local v8, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 1066
    .local v9, "dup":Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator$BlockReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v9, v2}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    if-ne v7, v0, :cond_7

    .line 1072
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v10
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v10, :cond_6

    .line 1080
    nop

    .line 1082
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_1

    const-string v0, "plaintext"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    nop

    .line 1085
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 1083
    const-string v10, "Padded plaintext after DECRYPTION"

    invoke-static {v10, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1089
    :cond_1
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator$BlockReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v10

    .line 1090
    .local v10, "blockSize":I
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1092
    :try_start_1
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator$BlockReadCipher;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-static {v2, v5, v10, v0}, Lorg/openjsse/sun/security/ssl/SSLCipher;->access$1800(Ljava/nio/ByteBuffer;IILorg/openjsse/sun/security/ssl/ProtocolVersion;)I
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1097
    goto :goto_1

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "bpe":Ljavax/crypto/BadPaddingException;
    if-nez v6, :cond_2

    .line 1095
    move-object v6, v0

    .line 1102
    .end local v0    # "bpe":Ljavax/crypto/BadPaddingException;
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 1103
    move/from16 v15, p1

    move-object/from16 v14, p3

    :try_start_2
    invoke-static {v3, v2, v15, v4, v14}, Lorg/openjsse/sun/security/ssl/SSLCipher;->access$1900(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;Ljava/nio/ByteBuffer;BI[B)V

    goto :goto_2

    .line 1106
    :cond_3
    move/from16 v15, p1

    move-object/from16 v14, p3

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator$BlockReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/Authenticator;->increaseSequenceNumber()V
    :try_end_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1112
    :goto_2
    goto :goto_3

    .line 1108
    :catch_1
    move-exception v0

    .line 1109
    .restart local v0    # "bpe":Ljavax/crypto/BadPaddingException;
    if-nez v6, :cond_4

    .line 1110
    move-object v6, v0

    .line 1115
    .end local v0    # "bpe":Ljavax/crypto/BadPaddingException;
    :cond_4
    :goto_3
    if-nez v6, :cond_5

    .line 1119
    new-instance v0, Lorg/openjsse/sun/security/ssl/Plaintext;

    sget-object v11, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v13, v11, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    sget-object v11, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v12, v11, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    .line 1121
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v18

    const/16 v16, -0x1

    const-wide/16 v19, -0x1

    move-object v11, v0

    move/from16 v17, v12

    move/from16 v12, p1

    move/from16 v14, v17

    move/from16 v15, v16

    move-wide/from16 v16, v19

    invoke-direct/range {v11 .. v18}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    .line 1119
    return-object v0

    .line 1116
    :cond_5
    throw v6

    .line 1073
    .end local v10    # "blockSize":I
    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v10, "Unexpected ByteBuffer position"

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v3    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .end local v4    # "cipheredLength":I
    .end local v5    # "tagLen":I
    .end local v6    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    .end local v7    # "len":I
    .end local v8    # "pos":I
    .end local v9    # "dup":Ljava/nio/ByteBuffer;
    .end local p1    # "contentType":B
    .end local p2    # "bb":Ljava/nio/ByteBuffer;
    .end local p3    # "sequence":[B
    throw v0

    .line 1068
    .restart local v3    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .restart local v4    # "cipheredLength":I
    .restart local v5    # "tagLen":I
    .restart local v6    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    .restart local v7    # "len":I
    .restart local v8    # "pos":I
    .restart local v9    # "dup":Ljava/nio/ByteBuffer;
    .restart local p1    # "contentType":B
    .restart local p2    # "bb":Ljava/nio/ByteBuffer;
    .restart local p3    # "sequence":[B
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v10, "Unexpected number of plaintext bytes"

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v3    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .end local v4    # "cipheredLength":I
    .end local v5    # "tagLen":I
    .end local v6    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    .end local v7    # "len":I
    .end local v8    # "pos":I
    .end local v9    # "dup":Ljava/nio/ByteBuffer;
    .end local p1    # "contentType":B
    .end local p2    # "bb":Ljava/nio/ByteBuffer;
    .end local p3    # "sequence":[B
    throw v0
    :try_end_3
    .catch Ljavax/crypto/ShortBufferException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1076
    .restart local v3    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .restart local v4    # "cipheredLength":I
    .restart local v5    # "tagLen":I
    .restart local v6    # "reservedBPE":Ljavax/crypto/BadPaddingException;
    .restart local v7    # "len":I
    .restart local v8    # "pos":I
    .restart local v9    # "dup":Ljava/nio/ByteBuffer;
    .restart local p1    # "contentType":B
    .restart local p2    # "bb":Ljava/nio/ByteBuffer;
    .restart local p3    # "sequence":[B
    :catch_2
    move-exception v0

    .line 1078
    .local v0, "sbe":Ljavax/crypto/ShortBufferException;
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cipher buffering error in JCE provider "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator$BlockReadCipher;->cipher:Ljavax/crypto/Cipher;

    .line 1079
    invoke-virtual {v12}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v12

    invoke-virtual {v12}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method dispose()V
    .locals 1

    .line 1126
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator$BlockReadCipher;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 1128
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator$BlockReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    goto :goto_0

    .line 1129
    :catch_0
    move-exception v0

    .line 1133
    :cond_0
    :goto_0
    return-void
.end method

.method estimateFragmentSize(II)I
    .locals 2
    .param p1, "packetSize"    # I
    .param p2, "headerSize"    # I

    .line 1137
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockReadCipherGenerator$BlockReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v0, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 1142
    .local v0, "macLen":I
    sub-int v1, p1, p2

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    return v1
.end method
