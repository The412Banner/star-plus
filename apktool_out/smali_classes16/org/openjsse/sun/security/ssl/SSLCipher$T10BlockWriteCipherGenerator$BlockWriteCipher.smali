.class final Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator$BlockWriteCipher;
.super Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlockWriteCipher"
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

    .line 1193
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 1194
    invoke-static {p3}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 1195
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4, p5, p6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 1196
    return-void
.end method


# virtual methods
.method calculateFragmentSize(II)I
    .locals 4
    .param p1, "packetLimit"    # I
    .param p2, "headerSize"    # I

    .line 1259
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator$BlockWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v0, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 1260
    .local v0, "macLen":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    .line 1261
    .local v1, "blockSize":I
    sub-int v2, p1, p2

    .line 1262
    .local v2, "fragLen":I
    rem-int v3, v2, v1

    sub-int/2addr v2, v3

    .line 1264
    add-int/lit8 v2, v2, -0x1

    .line 1265
    sub-int/2addr v2, v0

    .line 1266
    return v2
.end method

.method calculatePacketSize(II)I
    .locals 4
    .param p1, "fragmentSize"    # I
    .param p2, "headerSize"    # I

    .line 1271
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator$BlockWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v0, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v0

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 1272
    .local v0, "macLen":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    .line 1273
    .local v1, "blockSize":I
    add-int v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    .line 1274
    .local v2, "paddedLen":I
    rem-int v3, v2, v1

    if-eqz v3, :cond_0

    .line 1275
    add-int/lit8 v3, v1, -0x1

    add-int/2addr v2, v3

    .line 1276
    rem-int v3, v2, v1

    sub-int/2addr v2, v3

    .line 1279
    :cond_0
    add-int v3, p2, v2

    return v3
.end method

.method dispose()V
    .locals 1

    .line 1243
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 1245
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    goto :goto_0

    .line 1246
    :catch_0
    move-exception v0

    .line 1250
    :cond_0
    :goto_0
    return-void
.end method

.method public encrypt(BLjava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "contentType"    # B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 1200
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1203
    .local v0, "pos":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator$BlockWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    check-cast v1, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;

    .line 1204
    .local v1, "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    invoke-interface {v1}, Lorg/openjsse/sun/security/ssl/Authenticator$MAC;->macAlg()Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    move-result-object v2

    iget v2, v2, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    if-eqz v2, :cond_0

    .line 1205
    invoke-static {v1, p2, p1}, Lorg/openjsse/sun/security/ssl/SSLCipher;->access$1700(Lorg/openjsse/sun/security/ssl/Authenticator$MAC;Ljava/nio/ByteBuffer;B)V

    goto :goto_0

    .line 1207
    :cond_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator$BlockWriteCipher;->authenticator:Lorg/openjsse/sun/security/ssl/Authenticator;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/Authenticator;->increaseSequenceNumber()V

    .line 1210
    :goto_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    .line 1211
    .local v2, "blockSize":I
    invoke-static {p2, v2}, Lorg/openjsse/sun/security/ssl/SSLCipher;->access$2000(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 1212
    .local v3, "len":I
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1214
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_1

    const-string v4, "plaintext"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1215
    nop

    .line 1217
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 1215
    const-string v5, "Padded plaintext before ENCRYPTION"

    invoke-static {v5, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1220
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1222
    .local v4, "dup":Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v5, v4, p2}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 1228
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 1236
    nop

    .line 1238
    return v3

    .line 1229
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unexpected ByteBuffer position"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pos":I
    .end local v1    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .end local v2    # "blockSize":I
    .end local v3    # "len":I
    .end local v4    # "dup":Ljava/nio/ByteBuffer;
    .end local p1    # "contentType":B
    .end local p2    # "bb":Ljava/nio/ByteBuffer;
    throw v5

    .line 1224
    .restart local v0    # "pos":I
    .restart local v1    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .restart local v2    # "blockSize":I
    .restart local v3    # "len":I
    .restart local v4    # "dup":Ljava/nio/ByteBuffer;
    .restart local p1    # "contentType":B
    .restart local p2    # "bb":Ljava/nio/ByteBuffer;
    :cond_3
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unexpected number of plaintext bytes"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pos":I
    .end local v1    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .end local v2    # "blockSize":I
    .end local v3    # "len":I
    .end local v4    # "dup":Ljava/nio/ByteBuffer;
    .end local p1    # "contentType":B
    .end local p2    # "bb":Ljava/nio/ByteBuffer;
    throw v5
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    .restart local v0    # "pos":I
    .restart local v1    # "signer":Lorg/openjsse/sun/security/ssl/Authenticator$MAC;
    .restart local v2    # "blockSize":I
    .restart local v3    # "len":I
    .restart local v4    # "dup":Ljava/nio/ByteBuffer;
    .restart local p1    # "contentType":B
    .restart local p2    # "bb":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v5

    .line 1234
    .local v5, "sbe":Ljavax/crypto/ShortBufferException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cipher buffering error in JCE provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/SSLCipher$T10BlockWriteCipherGenerator$BlockWriteCipher;->cipher:Ljavax/crypto/Cipher;

    .line 1235
    invoke-virtual {v8}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method getExplicitNonceSize()I
    .locals 1

    .line 1254
    const/4 v0, 0x0

    return v0
.end method

.method isCBCMode()Z
    .locals 1

    .line 1284
    const/4 v0, 0x1

    return v0
.end method
