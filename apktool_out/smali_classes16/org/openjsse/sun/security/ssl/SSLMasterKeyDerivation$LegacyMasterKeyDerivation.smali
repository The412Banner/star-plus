.class final Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation$LegacyMasterKeyDerivation;
.super Ljava/lang/Object;
.source "SSLMasterKeyDerivation.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyMasterKeyDerivation"
.end annotation


# instance fields
.field final context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

.field final preMasterSecret:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "preMasterSecret"    # Ljavax/crypto/SecretKey;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation$LegacyMasterKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 82
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation$LegacyMasterKeyDerivation;->preMasterSecret:Ljavax/crypto/SecretKey;

    .line 83
    return-void
.end method


# virtual methods
.method public deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;
    .locals 18
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation$LegacyMasterKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 91
    .local v2, "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    iget-object v0, v1, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation$LegacyMasterKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 97
    .local v3, "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-byte v0, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    .line 98
    .local v0, "majorVersion":B
    iget-byte v4, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    .line 99
    .local v4, "minorVersion":B
    iget-boolean v5, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    if-eqz v5, :cond_1

    .line 101
    iget v5, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v6, v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-ne v5, v6, :cond_0

    .line 102
    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v0, v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    .line 103
    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v4, v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    .line 105
    const-string v5, "SunTlsMasterSecret"

    .line 106
    .local v5, "masterAlg":Ljava/lang/String;
    sget-object v6, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->H_NONE:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    move/from16 v17, v4

    move v4, v0

    move-object v0, v5

    move/from16 v5, v17

    .local v6, "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    goto :goto_0

    .line 108
    .end local v5    # "masterAlg":Ljava/lang/String;
    .end local v6    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    :cond_0
    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v0, v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    .line 109
    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v4, v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    .line 111
    const-string v5, "SunTls12MasterSecret"

    .line 112
    .restart local v5    # "masterAlg":Ljava/lang/String;
    iget-object v6, v2, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    move/from16 v17, v4

    move v4, v0

    move-object v0, v5

    move/from16 v5, v17

    .restart local v6    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    goto :goto_0

    .line 115
    .end local v5    # "masterAlg":Ljava/lang/String;
    .end local v6    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    :cond_1
    iget v5, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v6, v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-lt v5, v6, :cond_2

    .line 116
    const-string v5, "SunTls12MasterSecret"

    .line 117
    .restart local v5    # "masterAlg":Ljava/lang/String;
    iget-object v6, v2, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    move/from16 v17, v4

    move v4, v0

    move-object v0, v5

    move/from16 v5, v17

    .restart local v6    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    goto :goto_0

    .line 119
    .end local v5    # "masterAlg":Ljava/lang/String;
    .end local v6    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    :cond_2
    const-string v5, "SunTlsMasterSecret"

    .line 120
    .restart local v5    # "masterAlg":Ljava/lang/String;
    sget-object v6, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->H_NONE:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    move/from16 v17, v4

    move v4, v0

    move-object v0, v5

    move/from16 v5, v17

    .line 125
    .local v0, "masterAlg":Ljava/lang/String;
    .local v4, "majorVersion":B
    .local v5, "minorVersion":B
    .restart local v6    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    :goto_0
    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation$LegacyMasterKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-boolean v7, v7, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useExtendedMasterSecret:Z

    if-eqz v7, :cond_3

    .line 127
    const-string v0, "SunTlsExtendedMasterSecret"

    .line 131
    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation$LegacyMasterKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v7}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->utilize()V

    .line 132
    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation$LegacyMasterKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v7}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->digest()[B

    move-result-object v7

    .line 133
    .local v7, "sessionHash":[B
    new-instance v16, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    iget-object v9, v1, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation$LegacyMasterKeyDerivation;->preMasterSecret:Ljavax/crypto/SecretKey;

    and-int/lit16 v10, v4, 0xff

    and-int/lit16 v11, v5, 0xff

    iget-object v13, v6, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    iget v14, v6, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    iget v15, v6, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->blockSize:I

    move-object/from16 v8, v16

    move-object v12, v7

    invoke-direct/range {v8 .. v15}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;-><init>(Ljavax/crypto/SecretKey;II[BLjava/lang/String;II)V

    move-object/from16 v7, v16

    .line 138
    .local v7, "spec":Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;
    move-object v8, v7

    move-object v7, v0

    goto :goto_1

    .line 139
    .end local v7    # "spec":Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;
    :cond_3
    new-instance v7, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    iget-object v9, v1, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation$LegacyMasterKeyDerivation;->preMasterSecret:Ljavax/crypto/SecretKey;

    and-int/lit16 v10, v4, 0xff

    and-int/lit16 v11, v5, 0xff

    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation$LegacyMasterKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v8, v8, Lorg/openjsse/sun/security/ssl/HandshakeContext;->clientHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v12, v8, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/SSLMasterKeyDerivation$LegacyMasterKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v8, v8, Lorg/openjsse/sun/security/ssl/HandshakeContext;->serverHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v13, v8, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    iget-object v14, v6, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    iget v15, v6, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    iget v8, v6, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->blockSize:I

    move/from16 v16, v8

    move-object v8, v7

    invoke-direct/range {v8 .. v16}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;-><init>(Ljavax/crypto/SecretKey;II[B[BLjava/lang/String;II)V

    move-object v7, v0

    .line 148
    .end local v0    # "masterAlg":Ljava/lang/String;
    .local v7, "masterAlg":Ljava/lang/String;
    .local v8, "spec":Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;
    :goto_1
    :try_start_0
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 149
    .local v0, "kg":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v0, v8}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 150
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v9
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 151
    .end local v0    # "kg":Ljavax/crypto/KeyGenerator;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 157
    .local v0, "iae":Ljava/security/GeneralSecurityException;
    :goto_2
    sget-boolean v9, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v9, :cond_4

    const-string v9, "handshake"

    invoke-static {v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 158
    const-string v9, "RSA master secret generation error."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_4
    new-instance v9, Ljava/security/ProviderException;

    invoke-direct {v9, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method
