.class final Lorg/openjsse/sun/security/ssl/Finished$T10VerifyDataGenerator;
.super Ljava/lang/Object;
.source "Finished.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/Finished$VerifyDataGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Finished;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T10VerifyDataGenerator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/Finished$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/Finished$1;

    .line 223
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/Finished$T10VerifyDataGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public createVerifyData(Lorg/openjsse/sun/security/ssl/HandshakeContext;Z)[B
    .locals 16
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "isValidation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    move-object/from16 v1, p1

    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    .line 228
    .local v2, "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 229
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 231
    .local v11, "masterSecretKey":Ljavax/crypto/SecretKey;
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v12, v0

    .line 235
    .local v12, "useClientLabel":Z
    if-eqz v12, :cond_3

    .line 236
    const-string v0, "client finished"

    move-object v13, v0

    .local v0, "tlsLabel":Ljava/lang/String;
    goto :goto_1

    .line 238
    .end local v0    # "tlsLabel":Ljava/lang/String;
    :cond_3
    const-string v0, "server finished"

    move-object v13, v0

    .line 242
    .local v13, "tlsLabel":Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->digest()[B

    move-result-object v6

    .line 243
    .local v6, "seed":[B
    const-string v0, "SunTlsPrf"

    .line 244
    .local v0, "prfAlg":Ljava/lang/String;
    sget-object v3, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->H_NONE:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    move-object v14, v3

    .line 253
    .local v14, "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    new-instance v15, Lsun/security/internal/spec/TlsPrfParameterSpec;

    iget-object v8, v14, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    iget v9, v14, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    iget v10, v14, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->blockSize:I

    const/16 v7, 0xc

    move-object v3, v15

    move-object v4, v11

    move-object v5, v13

    invoke-direct/range {v3 .. v10}, Lsun/security/internal/spec/TlsPrfParameterSpec;-><init>(Ljavax/crypto/SecretKey;Ljava/lang/String;[BILjava/lang/String;II)V

    move-object v3, v15

    .line 256
    .local v3, "spec":Lsun/security/internal/spec/TlsPrfParameterSpec;
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4

    .line 257
    .local v4, "kg":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v4, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 258
    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 259
    .local v5, "prfKey":Ljavax/crypto/SecretKey;
    const-string v7, "RAW"

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 264
    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    .line 265
    .local v7, "finished":[B
    return-object v7

    .line 260
    .end local v7    # "finished":[B
    :cond_4
    new-instance v7, Ljava/security/ProviderException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid PRF output, format must be RAW. Format received: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 262
    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local v2    # "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    .end local v11    # "masterSecretKey":Ljavax/crypto/SecretKey;
    .end local v12    # "useClientLabel":Z
    .end local v13    # "tlsLabel":Ljava/lang/String;
    .end local p1    # "context":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .end local p2    # "isValidation":Z
    throw v7
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v0    # "prfAlg":Ljava/lang/String;
    .end local v3    # "spec":Lsun/security/internal/spec/TlsPrfParameterSpec;
    .end local v4    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v5    # "prfKey":Ljavax/crypto/SecretKey;
    .end local v6    # "seed":[B
    .end local v14    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .restart local v2    # "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    .restart local v11    # "masterSecretKey":Ljavax/crypto/SecretKey;
    .restart local v12    # "useClientLabel":Z
    .restart local v13    # "tlsLabel":Ljava/lang/String;
    .restart local p1    # "context":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .restart local p2    # "isValidation":Z
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PRF failed"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
