.class final Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator$StreamReadCipher;
.super Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StreamReadCipher"
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

    .line 869
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 870
    invoke-static {p3}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator$StreamReadCipher;->cipher:Ljavax/crypto/Cipher;

    .line 871
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator$StreamReadCipher;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4, p5, p6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 872
    return-void
.end method


# virtual methods
.method public decrypt(BLjava/nio/ByteBuffer;[B)Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 17
    .param p1, "contentType"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "sequence"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 877
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 878
    .local v3, "len":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 879
    .local v4, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 881
    .local v5, "dup":Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator$StreamReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v5, v2}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    if-ne v3, v0, :cond_3

    .line 886
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v0, v6, :cond_2

    .line 894
    nop

    .line 895
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 896
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "plaintext"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    nop

    .line 898
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 897
    const-string v6, "Plaintext after DECRYPTION"

    invoke-static {v6, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 901
    :cond_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator$StreamReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v0, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    .line 902
    .local v0, "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v6

    iget v6, v6, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    if-eqz v6, :cond_1

    .line 903
    move/from16 v6, p1

    move-object/from16 v15, p3

    invoke-static {v0, v2, v6, v15}, Lorg/openjsse/sun/security/ssl/SSLCipher;->access$1600(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;Ljava/nio/ByteBuffer;B[B)V

    goto :goto_0

    .line 905
    :cond_1
    move/from16 v6, p1

    move-object/from16 v15, p3

    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator$StreamReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v7}, Lorg/openjsse/sun/security/ssl/Authenticator;->increaseSequenceNumber()V

    .line 908
    :goto_0
    new-instance v16, Lorg/openjsse/sun/security/ssl/Plaintext;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v9, v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v10, v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    .line 910
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v14

    const/4 v11, -0x1

    const-wide/16 v12, -0x1

    move-object/from16 v7, v16

    move/from16 v8, p1

    invoke-direct/range {v7 .. v14}, Lorg/openjsse/sun/security/ssl/Plaintext;-><init>(BBBIJLjava/nio/ByteBuffer;)V

    .line 908
    return-object v16

    .line 887
    .end local v0    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    :cond_2
    move/from16 v6, p1

    move-object/from16 v15, p3

    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v7, "Unexpected ByteBuffer position"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v3    # "len":I
    .end local v4    # "pos":I
    .end local v5    # "dup":Ljava/nio/ByteBuffer;
    .end local p1    # "contentType":B
    .end local p2    # "bb":Ljava/nio/ByteBuffer;
    .end local p3    # "sequence":[B
    throw v0

    .line 883
    .restart local v3    # "len":I
    .restart local v4    # "pos":I
    .restart local v5    # "dup":Ljava/nio/ByteBuffer;
    .restart local p1    # "contentType":B
    .restart local p2    # "bb":Ljava/nio/ByteBuffer;
    .restart local p3    # "sequence":[B
    :cond_3
    move/from16 v6, p1

    move-object/from16 v15, p3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v7, "Unexpected number of plaintext bytes"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v3    # "len":I
    .end local v4    # "pos":I
    .end local v5    # "dup":Ljava/nio/ByteBuffer;
    .end local p1    # "contentType":B
    .end local p2    # "bb":Ljava/nio/ByteBuffer;
    .end local p3    # "sequence":[B
    throw v0
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 890
    .restart local v3    # "len":I
    .restart local v4    # "pos":I
    .restart local v5    # "dup":Ljava/nio/ByteBuffer;
    .restart local p1    # "contentType":B
    .restart local p2    # "bb":Ljava/nio/ByteBuffer;
    .restart local p3    # "sequence":[B
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move/from16 v6, p1

    move-object/from16 v15, p3

    .line 892
    .local v0, "sbe":Ljavax/crypto/ShortBufferException;
    :goto_1
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cipher buffering error in JCE provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator$StreamReadCipher;->cipher:Ljavax/crypto/Cipher;

    .line 893
    invoke-virtual {v9}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v9

    invoke-virtual {v9}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method dispose()V
    .locals 1

    .line 915
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator$StreamReadCipher;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 917
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator$StreamReadCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    goto :goto_0

    .line 918
    :catch_0
    move-exception v0

    .line 922
    :cond_0
    :goto_0
    return-void
.end method

.method estimateFragmentSize(II)I
    .locals 2
    .param p1, "packetSize"    # I
    .param p2, "headerSize"    # I

    .line 926
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamReadCipherGenerator$StreamReadCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v0, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 927
    .local v0, "macLen":I
    sub-int v1, p1, p2

    sub-int/2addr v1, v0

    return v1
.end method
