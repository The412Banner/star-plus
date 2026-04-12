.class final Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;
.super Ljava/lang/Object;
.source "SSLTrafficKeyDerivation.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LegacyTrafficKeyDerivation"
.end annotation


# instance fields
.field private final context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

.field private final keyMaterialSpec:Lsun/security/internal/spec/TlsKeyMaterialSpec;

.field private final masterSecret:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljavax/crypto/SecretKey;)V
    .locals 26
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "masterSecret"    # Ljavax/crypto/SecretKey;

    .line 211
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object v2, v1, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;->context:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 213
    move-object/from16 v15, p2

    iput-object v15, v1, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;->masterSecret:Ljavax/crypto/SecretKey;

    .line 215
    iget-object v14, v2, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 216
    .local v14, "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    iget-object v13, v2, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 225
    .local v13, "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-object v0, v14, Lorg/openjsse/sun/security/ssl/CipherSuite;->macAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;

    iget v12, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 226
    .local v12, "hashSize":I
    iget-boolean v10, v14, Lorg/openjsse/sun/security/ssl/CipherSuite;->exportable:Z

    .line 227
    .local v10, "is_exportable":Z
    iget-object v9, v14, Lorg/openjsse/sun/security/ssl/CipherSuite;->bulkCipher:Lorg/openjsse/sun/security/ssl/SSLCipher;

    .line 228
    .local v9, "cipher":Lorg/openjsse/sun/security/ssl/SSLCipher;
    if-eqz v10, :cond_0

    iget v0, v9, Lorg/openjsse/sun/security/ssl/SSLCipher;->expandedKeySize:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v11, v0

    .line 234
    .local v11, "expandedKeySize":I
    iget-byte v0, v13, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    .line 235
    .local v0, "majorVersion":B
    iget-byte v3, v13, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    .line 236
    .local v3, "minorVersion":B
    iget-boolean v4, v13, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    if-eqz v4, :cond_2

    .line 238
    iget v4, v13, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v5, v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-ne v4, v5, :cond_1

    .line 239
    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v0, v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    .line 240
    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS11:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v3, v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    .line 242
    const-string v4, "SunTlsKeyMaterial"

    .line 243
    .local v4, "keyMaterialAlg":Ljava/lang/String;
    sget-object v5, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->H_NONE:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    move v8, v0

    move v7, v3

    move-object/from16 v17, v4

    move-object v6, v5

    .local v5, "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    goto :goto_1

    .line 245
    .end local v4    # "keyMaterialAlg":Ljava/lang/String;
    .end local v5    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    :cond_1
    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v0, v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    .line 246
    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v3, v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    .line 248
    const-string v4, "SunTls12KeyMaterial"

    .line 249
    .restart local v4    # "keyMaterialAlg":Ljava/lang/String;
    iget-object v5, v14, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    move v8, v0

    move v7, v3

    move-object/from16 v17, v4

    move-object v6, v5

    .restart local v5    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    goto :goto_1

    .line 252
    .end local v4    # "keyMaterialAlg":Ljava/lang/String;
    .end local v5    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    :cond_2
    iget v4, v13, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v5, v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-lt v4, v5, :cond_3

    .line 253
    const-string v4, "SunTls12KeyMaterial"

    .line 254
    .restart local v4    # "keyMaterialAlg":Ljava/lang/String;
    iget-object v5, v14, Lorg/openjsse/sun/security/ssl/CipherSuite;->hashAlg:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    move v8, v0

    move v7, v3

    move-object/from16 v17, v4

    move-object v6, v5

    .restart local v5    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    goto :goto_1

    .line 256
    .end local v4    # "keyMaterialAlg":Ljava/lang/String;
    .end local v5    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    :cond_3
    const-string v4, "SunTlsKeyMaterial"

    .line 257
    .restart local v4    # "keyMaterialAlg":Ljava/lang/String;
    sget-object v5, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->H_NONE:Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;

    move v8, v0

    move v7, v3

    move-object/from16 v17, v4

    move-object v6, v5

    .line 265
    .end local v0    # "majorVersion":B
    .end local v3    # "minorVersion":B
    .end local v4    # "keyMaterialAlg":Ljava/lang/String;
    .local v6, "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .local v7, "minorVersion":B
    .local v8, "majorVersion":B
    .local v17, "keyMaterialAlg":Ljava/lang/String;
    :goto_1
    iget v0, v9, Lorg/openjsse/sun/security/ssl/SSLCipher;->ivSize:I

    .line 266
    .local v0, "ivSize":I
    iget-object v3, v9, Lorg/openjsse/sun/security/ssl/SSLCipher;->cipherType:Lorg/openjsse/sun/security/ssl/CipherType;

    sget-object v4, Lorg/openjsse/sun/security/ssl/CipherType;->AEAD_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    if-ne v3, v4, :cond_4

    .line 267
    iget v0, v9, Lorg/openjsse/sun/security/ssl/SSLCipher;->fixedIvSize:I

    move/from16 v18, v0

    goto :goto_2

    .line 268
    :cond_4
    iget-object v3, v9, Lorg/openjsse/sun/security/ssl/SSLCipher;->cipherType:Lorg/openjsse/sun/security/ssl/CipherType;

    sget-object v4, Lorg/openjsse/sun/security/ssl/CipherType;->BLOCK_CIPHER:Lorg/openjsse/sun/security/ssl/CipherType;

    if-ne v3, v4, :cond_5

    .line 270
    invoke-virtual {v13}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS11PlusSpec()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 271
    const/4 v0, 0x0

    move/from16 v18, v0

    goto :goto_2

    .line 274
    :cond_5
    move/from16 v18, v0

    .end local v0    # "ivSize":I
    .local v18, "ivSize":I
    :goto_2
    new-instance v0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    and-int/lit16 v5, v8, 0xff

    and-int/lit16 v4, v7, 0xff

    iget-object v3, v2, Lorg/openjsse/sun/security/ssl/HandshakeContext;->clientHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    move-object/from16 v16, v3

    iget-object v3, v2, Lorg/openjsse/sun/security/ssl/HandshakeContext;->serverHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    iget-object v2, v9, Lorg/openjsse/sun/security/ssl/SSLCipher;->algorithm:Ljava/lang/String;

    move/from16 v19, v10

    .end local v10    # "is_exportable":Z
    .local v19, "is_exportable":Z
    iget v10, v9, Lorg/openjsse/sun/security/ssl/SSLCipher;->keySize:I

    move-object/from16 v20, v14

    .end local v14    # "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    .local v20, "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    iget-object v14, v6, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->name:Ljava/lang/String;

    iget v15, v6, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->hashLength:I

    iget v1, v6, Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;->blockSize:I

    move-object/from16 v21, v3

    move-object v3, v0

    move/from16 v22, v4

    move-object/from16 v4, p2

    move-object/from16 v23, v6

    .end local v6    # "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    .local v23, "hashAlg":Lorg/openjsse/sun/security/ssl/CipherSuite$HashAlg;
    move/from16 v6, v22

    move/from16 v22, v7

    .end local v7    # "minorVersion":B
    .local v22, "minorVersion":B
    move-object/from16 v7, v16

    move/from16 v24, v8

    .end local v8    # "majorVersion":B
    .local v24, "majorVersion":B
    move-object/from16 v8, v21

    move-object/from16 v21, v9

    .end local v9    # "cipher":Lorg/openjsse/sun/security/ssl/SSLCipher;
    .local v21, "cipher":Lorg/openjsse/sun/security/ssl/SSLCipher;
    move-object v9, v2

    move/from16 v2, v19

    .end local v19    # "is_exportable":Z
    .local v2, "is_exportable":Z
    move/from16 v19, v12

    .end local v12    # "hashSize":I
    .local v19, "hashSize":I
    move/from16 v12, v18

    move-object/from16 v25, v13

    .end local v13    # "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .local v25, "protocolVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    move/from16 v13, v19

    move/from16 v16, v1

    invoke-direct/range {v3 .. v16}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;-><init>(Ljavax/crypto/SecretKey;II[B[BLjava/lang/String;IIIILjava/lang/String;II)V

    move-object v1, v0

    .line 283
    .local v1, "spec":Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;
    :try_start_0
    invoke-static/range {v17 .. v17}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 284
    .local v0, "kg":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 286
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    check-cast v3, Lsun/security/internal/spec/TlsKeyMaterialSpec;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, p0

    :try_start_1
    iput-object v3, v4, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;->keyMaterialSpec:Lsun/security/internal/spec/TlsKeyMaterialSpec;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    .end local v0    # "kg":Ljavax/crypto/KeyGenerator;
    nop

    .line 290
    return-void

    .line 287
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    .line 288
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_3
    new-instance v3, Ljava/security/ProviderException;

    invoke-direct {v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-virtual {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;->getTrafficKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method getTrafficKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "clientWriteIv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "serverMacKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "clientMacKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "serverWriteKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "clientWriteKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "serverWriteIv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "TlsIv"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 312
    return-object v2

    .line 307
    :pswitch_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;->keyMaterialSpec:Lsun/security/internal/spec/TlsKeyMaterialSpec;

    invoke-virtual {v0}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getServerIv()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v0

    .line 308
    .local v0, "srvIvSpec":Ljavax/crypto/spec/IvParameterSpec;
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 309
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 308
    :goto_2
    return-object v2

    .line 303
    .end local v0    # "srvIvSpec":Ljavax/crypto/spec/IvParameterSpec;
    :pswitch_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;->keyMaterialSpec:Lsun/security/internal/spec/TlsKeyMaterialSpec;

    invoke-virtual {v0}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getClientIv()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v0

    .line 304
    .local v0, "cliIvSpec":Ljavax/crypto/spec/IvParameterSpec;
    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 305
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 304
    :goto_3
    return-object v2

    .line 301
    .end local v0    # "cliIvSpec":Ljavax/crypto/spec/IvParameterSpec;
    :pswitch_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;->keyMaterialSpec:Lsun/security/internal/spec/TlsKeyMaterialSpec;

    invoke-virtual {v0}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getServerCipherKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0

    .line 299
    :pswitch_3
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;->keyMaterialSpec:Lsun/security/internal/spec/TlsKeyMaterialSpec;

    invoke-virtual {v0}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getClientCipherKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0

    .line 297
    :pswitch_4
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;->keyMaterialSpec:Lsun/security/internal/spec/TlsKeyMaterialSpec;

    invoke-virtual {v0}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getServerMacKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0

    .line 295
    :pswitch_5
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLTrafficKeyDerivation$LegacyTrafficKeyDerivation;->keyMaterialSpec:Lsun/security/internal/spec/TlsKeyMaterialSpec;

    invoke-virtual {v0}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getClientMacKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6651d357 -> :sswitch_5
        -0x6580d515 -> :sswitch_4
        -0x63e8919d -> :sswitch_3
        -0x60b419c5 -> :sswitch_2
        0x668ea7b3 -> :sswitch_1
        0x7898bf21 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
