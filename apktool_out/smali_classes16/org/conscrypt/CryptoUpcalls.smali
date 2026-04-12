.class final Lorg/conscrypt/CryptoUpcalls;
.super Ljava/lang/Object;
.source "CryptoUpcalls.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/conscrypt/CryptoUpcalls;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ecSignDigestWithPrivateKey(Ljava/security/PrivateKey;[B)[B
    .locals 4
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "message"    # [B

    .line 62
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "NONEwithECDSA"

    invoke-static {p0, p1, v1}, Lorg/conscrypt/CryptoUpcalls;->signDigestWithPrivateKey(Ljava/security/PrivateKey;[BLjava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 64
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v0, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    invoke-static {p0}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 49
    .local v4, "p":Ljava/security/Provider;
    invoke-static {v4}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljava/security/Provider;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 50
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v4    # "p":Ljava/security/Provider;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    sget-object v1, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find external provider for algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 56
    :cond_2
    return-object v0
.end method

.method static rsaDecryptWithPrivateKey(Ljava/security/PrivateKey;I[B)[B
    .locals 1
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "openSSLPadding"    # I
    .param p2, "input"    # [B

    .line 142
    const/4 v0, 0x2

    invoke-static {p0, p1, v0, p2}, Lorg/conscrypt/CryptoUpcalls;->rsaOpWithPrivateKey(Ljava/security/PrivateKey;II[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static rsaOpWithPrivateKey(Ljava/security/PrivateKey;II[B)[B
    .locals 10
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "openSSLPadding"    # I
    .param p2, "cipherMode"    # I
    .param p3, "input"    # [B

    .line 147
    const-string v0, "Unsupported cipher algorithm: "

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "keyAlgorithm":Ljava/lang/String;
    const-string v2, "RSA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 149
    sget-object v0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected key type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 150
    return-object v3

    .line 154
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 167
    :pswitch_0
    sget-object v0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported OpenSSL/BoringSSL padding: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 168
    return-object v3

    .line 164
    :pswitch_1
    const-string v2, "OAEPPadding"

    .line 165
    .local v2, "jcaPadding":Ljava/lang/String;
    goto :goto_0

    .line 161
    .end local v2    # "jcaPadding":Ljava/lang/String;
    :pswitch_2
    const-string v2, "NoPadding"

    .line 162
    .restart local v2    # "jcaPadding":Ljava/lang/String;
    goto :goto_0

    .line 158
    .end local v2    # "jcaPadding":Ljava/lang/String;
    :pswitch_3
    const-string v2, "PKCS1Padding"

    .line 159
    .restart local v2    # "jcaPadding":Ljava/lang/String;
    nop

    .line 171
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RSA/ECB/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "transformation":Ljava/lang/String;
    const/4 v5, 0x0

    .line 178
    .local v5, "c":Ljavax/crypto/Cipher;
    :try_start_0
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    move-object v5, v6

    .line 179
    invoke-virtual {v5, p2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 182
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-static {v6}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljava/security/Provider;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 183
    const/4 v5, 0x0

    .line 194
    :cond_1
    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/security/InvalidKeyException;
    sget-object v6, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "Preferred provider doesn\'t support key:"

    invoke-virtual {v6, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    const/4 v5, 0x0

    .line 198
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :goto_1
    if-nez v5, :cond_3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cipher."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/CryptoUpcalls;->getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 200
    .local v0, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/Provider;

    .line 202
    .local v7, "p":Ljava/security/Provider;
    :try_start_1
    invoke-static {v4, v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v8

    move-object v5, v8

    .line 203
    invoke-virtual {v5, p2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    goto :goto_5

    .line 209
    :catch_1
    move-exception v8

    .line 210
    .local v8, "e":Ljavax/crypto/NoSuchPaddingException;
    const/4 v5, 0x0

    goto :goto_4

    .line 207
    .end local v8    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v8

    .line 208
    .local v8, "e":Ljava/security/InvalidKeyException;
    const/4 v5, 0x0

    .end local v8    # "e":Ljava/security/InvalidKeyException;
    goto :goto_3

    .line 205
    :catch_3
    move-exception v8

    .line 206
    .local v8, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v5, 0x0

    .line 211
    .end local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_3
    nop

    .line 212
    .end local v7    # "p":Ljava/security/Provider;
    :goto_4
    goto :goto_2

    .line 213
    :cond_2
    :goto_5
    if-nez v5, :cond_3

    .line 214
    sget-object v6, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find provider for algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 215
    return-object v3

    .line 220
    .end local v0    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    :cond_3
    :try_start_2
    invoke-virtual {v5, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    return-object v0

    .line 221
    :catch_4
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while decrypting message with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 223
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " private key using "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 222
    invoke-virtual {v6, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    return-object v3

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v6

    .line 189
    .local v6, "e":Ljavax/crypto/NoSuchPaddingException;
    sget-object v7, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 190
    return-object v3

    .line 185
    .end local v6    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_6
    move-exception v6

    .line 186
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v7, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 187
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static rsaSignDigestWithPrivateKey(Ljava/security/PrivateKey;I[B)[B
    .locals 1
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "openSSLPadding"    # I
    .param p2, "message"    # [B

    .line 138
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lorg/conscrypt/CryptoUpcalls;->rsaOpWithPrivateKey(Ljava/security/PrivateKey;II[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static signDigestWithPrivateKey(Ljava/security/PrivateKey;[BLjava/lang/String;)[B
    .locals 7
    .param p0, "javaKey"    # Ljava/security/PrivateKey;
    .param p1, "message"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 79
    .local v1, "signature":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 82
    invoke-virtual {v1}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-static {v2}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljava/security/Provider;)Z

    move-result v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 83
    const/4 v1, 0x0

    .line 92
    :cond_0
    goto :goto_0

    .line 88
    .end local v1    # "signature":Ljava/security/Signature;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/security/InvalidKeyException;
    sget-object v2, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    const-string v3, "Preferred provider doesn\'t support key:"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 91
    const/4 v2, 0x0

    move-object v1, v2

    .line 96
    .local v1, "signature":Ljava/security/Signature;
    :goto_0
    if-nez v1, :cond_4

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/conscrypt/CryptoUpcalls;->getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 98
    .local v2, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    const/4 v3, 0x0

    .line 99
    .local v3, "savedRuntimeException":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider;

    .line 101
    .local v5, "p":Ljava/security/Provider;
    :try_start_1
    invoke-static {p2, v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v6

    move-object v1, v6

    .line 102
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    goto :goto_4

    .line 106
    :catch_1
    move-exception v6

    .line 107
    .local v6, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    .line 108
    if-nez v3, :cond_1

    .line 109
    move-object v3, v6

    goto :goto_3

    .line 104
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v6

    .line 105
    .local v6, "e":Ljava/security/GeneralSecurityException;
    :goto_2
    const/4 v1, 0x0

    .line 111
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    nop

    .line 112
    .end local v5    # "p":Ljava/security/Provider;
    :cond_1
    :goto_3
    goto :goto_1

    .line 113
    :cond_2
    :goto_4
    if-nez v1, :cond_4

    .line 114
    if-nez v3, :cond_3

    .line 117
    sget-object v4, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find provider for algorithm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 118
    return-object v0

    .line 115
    :cond_3
    throw v3

    .line 124
    .end local v2    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    .end local v3    # "savedRuntimeException":Ljava/lang/RuntimeException;
    :cond_4
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    .line 125
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    return-object v0

    .line 126
    :catch_4
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while signing message with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 128
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " private key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    return-object v0

    .line 85
    .end local v1    # "signature":Ljava/security/Signature;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 86
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v2, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported signature algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 87
    return-object v0
.end method
