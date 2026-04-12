.class final Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;
.super Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlockWriteCipher"
.end annotation


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final random:Ljava/security/SecureRandom;


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

    .line 1473
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 1474
    invoke-static {p4}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 1475
    iput-object p7, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->random:Ljava/security/SecureRandom;

    .line 1476
    if-nez p6, :cond_0

    .line 1477
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget v1, p3, Lorg/openjsse/sun/security/ssl/SSLCipher;->ivSize:I

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object p6, v0

    .line 1479
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p5, p6, p7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 1480
    return-void
.end method


# virtual methods
.method calculateFragmentSize(II)I
    .locals 4
    .param p1, "packetLimit"    # I
    .param p2, "headerSize"    # I

    .line 1553
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v0, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 1554
    .local v0, "macLen":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    .line 1555
    .local v1, "blockSize":I
    sub-int v2, p1, p2

    sub-int/2addr v2, v1

    .line 1556
    .local v2, "fragLen":I
    rem-int v3, v2, v1

    sub-int/2addr v2, v3

    .line 1558
    add-int/lit8 v2, v2, -0x1

    .line 1559
    sub-int/2addr v2, v0

    .line 1560
    return v2
.end method

.method calculatePacketSize(II)I
    .locals 4
    .param p1, "fragmentSize"    # I
    .param p2, "headerSize"    # I

    .line 1565
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v0, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 1566
    .local v0, "macLen":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    .line 1567
    .local v1, "blockSize":I
    add-int v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    .line 1568
    .local v2, "paddedLen":I
    rem-int v3, v2, v1

    if-eqz v3, :cond_0

    .line 1569
    add-int/lit8 v3, v1, -0x1

    add-int/2addr v2, v3

    .line 1570
    rem-int v3, v2, v1

    sub-int/2addr v2, v3

    .line 1573
    :cond_0
    add-int v3, p2, v1

    add-int/2addr v3, v2

    return v3
.end method

.method dispose()V
    .locals 1

    .line 1537
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 1539
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1542
    goto :goto_0

    .line 1540
    :catch_0
    move-exception v0

    .line 1544
    :cond_0
    :goto_0
    return-void
.end method

.method public encrypt(BLjava/nio/ByteBuffer;)I
    .locals 10
    .param p1, "contentType"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 1486
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1489
    .local v0, "pos":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v1, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    .line 1490
    .local v1, "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    invoke-interface {v1}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v2

    iget v2, v2, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    if-eqz v2, :cond_0

    .line 1491
    invoke-static {v1, p2, p1}, Lorg/openjsse/sun/security/ssl/SSLCipher;->access$1700(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;Ljava/nio/ByteBuffer;B)V

    goto :goto_0

    .line 1493
    :cond_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/Authenticator;->increaseSequenceNumber()V

    .line 1497
    :goto_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    .line 1498
    .local v2, "nonce":[B
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1499
    array-length v3, v2

    sub-int/2addr v0, v3

    .line 1500
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1501
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1502
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1504
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    .line 1505
    .local v3, "blockSize":I
    invoke-static {p2, v3}, Lorg/openjsse/sun/security/ssl/SSLCipher;->access$2000(Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 1506
    .local v4, "len":I
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1508
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_1

    const-string v5, "plaintext"

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1509
    nop

    .line 1511
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 1509
    const-string v6, "Padded plaintext before ENCRYPTION"

    invoke-static {v6, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1514
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1516
    .local v5, "dup":Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v6, v5, p2}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 1522
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 1530
    nop

    .line 1532
    return v4

    .line 1523
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unexpected ByteBuffer position"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pos":I
    .end local v1    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .end local v2    # "nonce":[B
    .end local v3    # "blockSize":I
    .end local v4    # "len":I
    .end local v5    # "dup":Ljava/nio/ByteBuffer;
    .end local p1    # "contentType":B
    .end local p2    # "bb":Ljava/nio/ByteBuffer;
    throw v6

    .line 1518
    .restart local v0    # "pos":I
    .restart local v1    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .restart local v2    # "nonce":[B
    .restart local v3    # "blockSize":I
    .restart local v4    # "len":I
    .restart local v5    # "dup":Ljava/nio/ByteBuffer;
    .restart local p1    # "contentType":B
    .restart local p2    # "bb":Ljava/nio/ByteBuffer;
    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unexpected number of plaintext bytes"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pos":I
    .end local v1    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .end local v2    # "nonce":[B
    .end local v3    # "blockSize":I
    .end local v4    # "len":I
    .end local v5    # "dup":Ljava/nio/ByteBuffer;
    .end local p1    # "contentType":B
    .end local p2    # "bb":Ljava/nio/ByteBuffer;
    throw v6
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1526
    .restart local v0    # "pos":I
    .restart local v1    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .restart local v2    # "nonce":[B
    .restart local v3    # "blockSize":I
    .restart local v4    # "len":I
    .restart local v5    # "dup":Ljava/nio/ByteBuffer;
    .restart local p1    # "contentType":B
    .restart local p2    # "bb":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v6

    .line 1528
    .local v6, "sbe":Ljavax/crypto/ShortBufferException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cipher buffering error in JCE provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 1529
    invoke-virtual {v9}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v9

    invoke-virtual {v9}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method getExplicitNonceSize()I
    .locals 1

    .line 1548
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T11BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method isCBCMode()Z
    .locals 1

    .line 1578
    const/4 v0, 0x1

    return v0
.end method
