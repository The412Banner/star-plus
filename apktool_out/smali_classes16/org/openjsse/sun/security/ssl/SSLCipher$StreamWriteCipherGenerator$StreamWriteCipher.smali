.class final Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator$StreamWriteCipher;
.super Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StreamWriteCipher"
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

    .line 951
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 952
    invoke-static {p3}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator$StreamWriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 953
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator$StreamWriteCipher;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4, p5, p6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 954
    return-void
.end method


# virtual methods
.method calculateFragmentSize(II)I
    .locals 2
    .param p1, "packetLimit"    # I
    .param p2, "headerSize"    # I

    .line 1010
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator$StreamWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v0, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 1011
    .local v0, "macLen":I
    sub-int v1, p1, p2

    sub-int/2addr v1, v0

    return v1
.end method

.method calculatePacketSize(II)I
    .locals 2
    .param p1, "fragmentSize"    # I
    .param p2, "headerSize"    # I

    .line 1016
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator$StreamWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v0, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 1017
    .local v0, "macLen":I
    add-int v1, p1, p2

    add-int/2addr v1, v0

    return v1
.end method

.method dispose()V
    .locals 1

    .line 994
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator$StreamWriteCipher;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 996
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator$StreamWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    goto :goto_0

    .line 997
    :catch_0
    move-exception v0

    .line 1001
    :cond_0
    :goto_0
    return-void
.end method

.method public encrypt(BLjava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "contentType"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 959
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator$StreamWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v0, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    .line 960
    .local v0, "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v1

    iget v1, v1, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    if-eqz v1, :cond_0

    .line 961
    invoke-static {v0, p2, p1}, Lorg/openjsse/sun/security/ssl/SSLCipher;->access$1700(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;Ljava/nio/ByteBuffer;B)V

    goto :goto_0

    .line 963
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator$StreamWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/Authenticator;->increaseSequenceNumber()V

    .line 966
    :goto_0
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_1

    const-string v1, "plaintext"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 967
    nop

    .line 968
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 967
    const-string v2, "Padded plaintext before ENCRYPTION"

    invoke-static {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 971
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 972
    .local v1, "len":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 974
    .local v2, "dup":Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator$StreamWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3, v2, p2}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 979
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 987
    nop

    .line 989
    return v1

    .line 980
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected ByteBuffer position"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .end local v1    # "len":I
    .end local v2    # "dup":Ljava/nio/ByteBuffer;
    .end local p1    # "contentType":B
    .end local p2    # "bb":Ljava/nio/ByteBuffer;
    throw v3

    .line 976
    .restart local v0    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .restart local v1    # "len":I
    .restart local v2    # "dup":Ljava/nio/ByteBuffer;
    .restart local p1    # "contentType":B
    .restart local p2    # "bb":Ljava/nio/ByteBuffer;
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected number of plaintext bytes"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .end local v1    # "len":I
    .end local v2    # "dup":Ljava/nio/ByteBuffer;
    .end local p1    # "contentType":B
    .end local p2    # "bb":Ljava/nio/ByteBuffer;
    throw v3
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    .restart local v0    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .restart local v1    # "len":I
    .restart local v2    # "dup":Ljava/nio/ByteBuffer;
    .restart local p1    # "contentType":B
    .restart local p2    # "bb":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v3

    .line 985
    .local v3, "sbe":Ljavax/crypto/ShortBufferException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cipher buffering error in JCE provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$StreamWriteCipherGenerator$StreamWriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 986
    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method getExplicitNonceSize()I
    .locals 1

    .line 1005
    const/4 v0, 0x0

    return v0
.end method
