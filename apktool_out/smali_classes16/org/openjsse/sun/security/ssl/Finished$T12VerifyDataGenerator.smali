.class final Lorg/openjsse/sun/security/ssl/Finished$T12VerifyDataGenerator;
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
    name = "T12VerifyDataGenerator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/Finished$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/Finished$1;

    .line 274
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/Finished$T12VerifyDataGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public createVerifyData(Lorg/openjsse/sun/security/ssl/HandshakeContext;Z)[B
    .locals 17
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "isValidation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    move-object/from16 v1, p1

    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 279
    .local v2, "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    .line 280
    .local v3, "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 281
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v12

    .line 283
    .local v12, "masterSecretKey":Ljavax/crypto/SecretKey;
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
    move v13, v0

    .line 287
    .local v13, "useClientLabel":Z
    if-eqz v13, :cond_3

    .line 288
    const-string v0, "client finished"

    move-object v14, v0

    .local v0, "tlsLabel":Ljava/lang/String;
    goto :goto_1

    .line 290
    .end local v0    # "tlsLabel":Ljava/lang/String;
    :cond_3
    const-string v0, "server finished"

    move-object v14, v0

    .line 294
    .local v14, "tlsLabel":Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->digest()[B

    move-result-object v7

    .line 295
    .local v7, "seed":[B
    const-string v0, "SunTls12Prf"

    .line 296
    .local v0, "prfAlg":Ljava/lang/String;
    iget-object v4, v2, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    move-object v15, v4

    .line 305
    .local v15, "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    new-instance v16, Lsun/security/internal/spec/TlsPrfParameterSpec;

    iget-object v9, v15, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    iget v10, v15, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    iget v11, v15, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->blockSize:I

    const/16 v8, 0xc

    move-object/from16 v4, v16

    move-object v5, v12

    move-object v6, v14

    invoke-direct/range {v4 .. v11}, Lsun/security/internal/spec/TlsPrfParameterSpec;-><init>(Ljavax/crypto/SecretKey;Ljava/lang/String;[BILjava/lang/String;II)V

    move-object/from16 v4, v16

    .line 308
    .local v4, "spec":Lsun/security/internal/spec/TlsPrfParameterSpec;
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v5

    .line 309
    .local v5, "kg":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v5, v4}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 310
    invoke-virtual {v5}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 311
    .local v6, "prfKey":Ljavax/crypto/SecretKey;
    const-string v8, "RAW"

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 316
    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v8

    .line 317
    .local v8, "finished":[B
    return-object v8

    .line 312
    .end local v8    # "finished":[B
    :cond_4
    new-instance v8, Ljava/security/ProviderException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid PRF output, format must be RAW. Format received: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 314
    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local v2    # "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    .end local v3    # "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    .end local v12    # "masterSecretKey":Ljavax/crypto/SecretKey;
    .end local v13    # "useClientLabel":Z
    .end local v14    # "tlsLabel":Ljava/lang/String;
    .end local p1    # "context":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .end local p2    # "isValidation":Z
    throw v8
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v0    # "prfAlg":Ljava/lang/String;
    .end local v4    # "spec":Lsun/security/internal/spec/TlsPrfParameterSpec;
    .end local v5    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v6    # "prfKey":Ljavax/crypto/SecretKey;
    .end local v7    # "seed":[B
    .end local v15    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .restart local v2    # "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    .restart local v3    # "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    .restart local v12    # "masterSecretKey":Ljavax/crypto/SecretKey;
    .restart local v13    # "useClientLabel":Z
    .restart local v14    # "tlsLabel":Ljava/lang/String;
    .restart local p1    # "context":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .restart local p2    # "isValidation":Z
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "PRF failed"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
