.class final Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;
.super Ljava/lang/Object;
.source "RSAKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLPossession;
.implements Lorg/openjsse/sun/security/ssl/SSLCredentials;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/RSAKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RSAPremasterSecret"
.end annotation


# instance fields
.field final premasterSecret:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "premasterSecret"    # Ljavax/crypto/SecretKey;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;->premasterSecret:Ljavax/crypto/SecretKey;

    .line 108
    return-void
.end method

.method static createPremasterSecret(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;)Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;
    .locals 5
    .param p0, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SunTls12RsaPremasterSecret"

    goto :goto_0

    :cond_0
    const-string v0, "SunTlsRsaPremasterSecret"

    .line 122
    .local v0, "algorithm":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 123
    .local v1, "kg":Ljavax/crypto/KeyGenerator;
    new-instance v2, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    iget v3, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->clientHelloVersion:I

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v4, v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    invoke-direct {v2, v3, v4}, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;-><init>(II)V

    .line 127
    .local v2, "spec":Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 129
    new-instance v3, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;-><init>(Ljavax/crypto/SecretKey;)V

    return-object v3
.end method

.method static decode(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Ljava/security/PrivateKey;[B)Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;
    .locals 7
    .param p0, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "encrypted"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "encoded":[B
    const/4 v1, 0x0

    .line 139
    .local v1, "needFailover":Z
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 142
    .local v3, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    new-instance v4, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    iget v5, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->clientHelloVersion:I

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v6, v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    invoke-direct {v4, v5, v6}, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;-><init>(II)V

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 146
    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v5

    .line 142
    const/4 v6, 0x4

    invoke-virtual {v3, v6, p1, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 150
    nop

    .line 151
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-static {v4}, Lsun/security/util/KeyUtil;->isOracleJCEProvider(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 160
    goto :goto_1

    .line 152
    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    .line 153
    .local v4, "iue":Ljava/lang/Exception;
    :goto_0
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_0

    const-string v5, "ssl,handshake"

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Cipher provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 155
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;->safeProviderName(Ljavax/crypto/Cipher;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " caused exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 156
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 154
    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :cond_0
    const/4 v1, 0x1

    .line 163
    .end local v4    # "iue":Ljava/lang/Exception;
    :goto_1
    if-eqz v1, :cond_1

    .line 166
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 169
    const/4 v2, 0x2

    invoke-virtual {v3, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 170
    const/4 v2, 0x0

    .line 172
    .local v2, "failed":Z
    :try_start_1
    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v4

    .line 176
    goto :goto_2

    .line 173
    :catch_2
    move-exception v4

    .line 175
    .local v4, "bpe":Ljavax/crypto/BadPaddingException;
    const/4 v2, 0x1

    .line 177
    .end local v4    # "bpe":Ljavax/crypto/BadPaddingException;
    :goto_2
    iget v4, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->clientHelloVersion:I

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v5, v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 179
    invoke-virtual {v6}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    .line 177
    invoke-static {v4, v5, v6, v0, v2}, Lsun/security/util/KeyUtil;->checkTlsPreMasterSecretKey(IILjava/security/SecureRandom;[BZ)[B

    move-result-object v0

    .line 180
    iget v4, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->clientHelloVersion:I

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v5, v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 182
    invoke-virtual {v6}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    .line 180
    invoke-static {v4, v5, v0, v6}, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;->generatePremasterSecret(II[BLjava/security/SecureRandom;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 183
    .local v2, "preMaster":Ljavax/crypto/SecretKey;
    goto :goto_3

    .line 185
    .end local v2    # "preMaster":Ljavax/crypto/SecretKey;
    :cond_1
    const-string v2, "TlsRsaPremasterSecret"

    const/4 v4, 0x3

    invoke-virtual {v3, p2, v2, v4}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljavax/crypto/SecretKey;

    .line 189
    .restart local v2    # "preMaster":Ljavax/crypto/SecretKey;
    :goto_3
    new-instance v4, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;

    invoke-direct {v4, v2}, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;-><init>(Ljavax/crypto/SecretKey;)V

    return-object v4
.end method

.method private static generatePremasterSecret(II[BLjava/security/SecureRandom;)Ljavax/crypto/SecretKey;
    .locals 5
    .param p0, "clientVersion"    # I
    .param p1, "serverVersion"    # I
    .param p2, "encodedSecret"    # [B
    .param p3, "generator"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 223
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const/4 v1, 0x0

    const-string v2, "ssl,handshake"

    if-eqz v0, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "Generating a premaster secret"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :cond_0
    :try_start_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-lt p0, v0, :cond_1

    const-string v0, "SunTls12RsaPremasterSecret"

    goto :goto_0

    :cond_1
    const-string v0, "SunTlsRsaPremasterSecret"

    .line 230
    .local v0, "s":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 231
    .local v3, "kg":Ljavax/crypto/KeyGenerator;
    new-instance v4, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    invoke-direct {v4, p0, p1, p2}, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;-><init>(II[B)V

    invoke-virtual {v3, v4, p3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 234
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 235
    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "kg":Ljavax/crypto/KeyGenerator;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 238
    .local v0, "iae":Ljava/security/GeneralSecurityException;
    :goto_1
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    const-string v2, "RSA premaster secret generation error:"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/security/GeneralSecurityException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 243
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Could not generate premaster secret"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static safeProviderName(Ljavax/crypto/Cipher;)Ljava/lang/String;
    .locals 4
    .param p0, "cipher"    # Ljavax/crypto/Cipher;

    .line 198
    :try_start_0
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const-string v2, "ssl,handshake"

    if-eqz v1, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "Retrieving The Cipher provider name caused exception "

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (provider name not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 207
    :catch_1
    move-exception v0

    .line 208
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_1

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    const-string v1, "Retrieving The Cipher name caused exception "

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v0, "(cipher/provider names not available)"

    return-object v0
.end method


# virtual methods
.method getEncoded(Ljava/security/PublicKey;Ljava/security/SecureRandom;)[B
    .locals 2
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 112
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 113
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 114
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;->premasterSecret:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v1

    return-object v1
.end method
