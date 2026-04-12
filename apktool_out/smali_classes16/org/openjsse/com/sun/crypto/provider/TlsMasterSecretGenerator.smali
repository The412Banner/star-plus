.class public final Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "TlsMasterSecretGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;
    }
.end annotation


# static fields
.field private static final MSG:Ljava/lang/String; = "TlsMasterSecretGenerator must be initialized using a TlsMasterSecretParameterSpec"


# instance fields
.field private protocolVersion:I

.field private spec:Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 15

    .line 85
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    if-eqz v0, :cond_5

    .line 89
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->getPremasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 90
    .local v0, "premasterKey":Ljavax/crypto/SecretKey;
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v8

    .line 93
    .local v8, "premaster":[B
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TlsRsaPremasterSecret"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 95
    aget-byte v1, v8, v2

    and-int/lit16 v1, v1, 0xff

    .line 96
    .local v1, "premasterMajor":I
    const/4 v3, 0x1

    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    move v9, v1

    move v10, v3

    .local v3, "premasterMinor":I
    goto :goto_0

    .line 99
    .end local v1    # "premasterMajor":I
    .end local v3    # "premasterMinor":I
    :cond_0
    const/4 v1, -0x1

    .line 100
    .restart local v1    # "premasterMajor":I
    const/4 v3, -0x1

    move v9, v1

    move v10, v3

    .line 105
    .end local v1    # "premasterMajor":I
    .local v9, "premasterMajor":I
    .local v10, "premasterMinor":I
    :goto_0
    :try_start_0
    iget v1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->protocolVersion:I

    const/16 v3, 0x301

    const/16 v4, 0x30

    if-lt v1, v3, :cond_3

    .line 108
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    .line 109
    invoke-virtual {v1}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->getExtendedMasterSecretSessionHash()[B

    move-result-object v1

    move-object v11, v1

    .line 110
    .local v11, "extendedMasterSecretSessionHash":[B
    array-length v1, v11

    if-eqz v1, :cond_1

    .line 111
    sget-object v1, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->LABEL_EXTENDED_MASTER_SECRET:[B

    .line 112
    .local v1, "label":[B
    move-object v2, v11

    move-object v12, v1

    move-object v13, v2

    .local v2, "seed":[B
    goto :goto_1

    .line 114
    .end local v1    # "label":[B
    .end local v2    # "seed":[B
    :cond_1
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->getClientRandom()[B

    move-result-object v1

    .line 115
    .local v1, "clientRandom":[B
    iget-object v2, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->getServerRandom()[B

    move-result-object v2

    .line 116
    .local v2, "serverRandom":[B
    sget-object v3, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->LABEL_MASTER_SECRET:[B

    .line 117
    .local v3, "label":[B
    invoke-static {v1, v2}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->concat([B[B)[B

    move-result-object v5

    move-object v12, v3

    move-object v13, v5

    .line 119
    .end local v1    # "clientRandom":[B
    .end local v2    # "serverRandom":[B
    .end local v3    # "label":[B
    .local v12, "label":[B
    .local v13, "seed":[B
    :goto_1
    iget v1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->protocolVersion:I

    const/16 v2, 0x303

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    .line 121
    invoke-virtual {v1}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->getPRFHashAlg()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->getPRFHashLength()I

    move-result v6

    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    .line 122
    invoke-virtual {v1}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->getPRFBlockSize()I

    move-result v7

    .line 120
    const/16 v4, 0x30

    move-object v1, v8

    move-object v2, v12

    move-object v3, v13

    invoke-static/range {v1 .. v7}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->doTLS12PRF([B[B[BILjava/lang/String;II)[B

    move-result-object v1

    goto :goto_2

    :cond_2
    nop

    .line 123
    invoke-static {v8, v12, v13, v4}, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->doTLS10PRF([B[B[BI)[B

    move-result-object v1

    :goto_2
    nop

    .line 124
    .end local v11    # "extendedMasterSecretSessionHash":[B
    .end local v12    # "label":[B
    .end local v13    # "seed":[B
    .local v1, "master":[B
    goto :goto_4

    .line 125
    .end local v1    # "master":[B
    :cond_3
    new-array v1, v4, [B

    .line 126
    .restart local v1    # "master":[B
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 127
    .local v3, "md5":Ljava/security/MessageDigest;
    const-string v4, "SHA"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 129
    .local v4, "sha":Ljava/security/MessageDigest;
    iget-object v5, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    invoke-virtual {v5}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->getClientRandom()[B

    move-result-object v5

    .line 130
    .local v5, "clientRandom":[B
    iget-object v6, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    invoke-virtual {v6}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->getServerRandom()[B

    move-result-object v6

    .line 131
    .local v6, "serverRandom":[B
    const/16 v7, 0x14

    new-array v11, v7, [B

    .line 132
    .local v11, "tmp":[B
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    const/4 v13, 0x3

    if-ge v12, v13, :cond_4

    .line 133
    sget-object v13, Lorg/openjsse/com/sun/crypto/provider/TlsPrfGenerator;->SSL3_CONST:[[B

    aget-object v13, v13, v12

    invoke-virtual {v4, v13}, Ljava/security/MessageDigest;->update([B)V

    .line 134
    invoke-virtual {v4, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 135
    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 136
    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 137
    invoke-virtual {v4, v11, v2, v7}, Ljava/security/MessageDigest;->digest([BII)I

    .line 139
    invoke-virtual {v3, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 140
    invoke-virtual {v3, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 141
    shl-int/lit8 v13, v12, 0x4

    const/16 v14, 0x10

    invoke-virtual {v3, v1, v13, v14}, Ljava/security/MessageDigest;->digest([BII)I

    .line 132
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 146
    .end local v3    # "md5":Ljava/security/MessageDigest;
    .end local v4    # "sha":Ljava/security/MessageDigest;
    .end local v5    # "clientRandom":[B
    .end local v6    # "serverRandom":[B
    .end local v11    # "tmp":[B
    .end local v12    # "i":I
    :cond_4
    :goto_4
    new-instance v2, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;

    invoke-direct {v2, v1, v9, v10}, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator$TlsMasterSecretKey;-><init>([BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 150
    .end local v1    # "master":[B
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/security/DigestException;
    new-instance v2, Ljava/security/ProviderException;

    invoke-direct {v2, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 148
    .end local v1    # "e":Ljava/security/DigestException;
    :catch_1
    move-exception v1

    .line 149
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/ProviderException;

    invoke-direct {v2, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 86
    .end local v0    # "premasterKey":Ljavax/crypto/SecretKey;
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v8    # "premaster":[B
    .end local v9    # "premasterMajor":I
    .end local v10    # "premasterMinor":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TlsMasterSecretGenerator must be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 81
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TlsMasterSecretGenerator must be initialized using a TlsMasterSecretParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "random"    # Ljava/security/SecureRandom;

    .line 58
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TlsMasterSecretGenerator must be initialized using a TlsMasterSecretParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 64
    instance-of v0, p1, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    if-eqz v0, :cond_2

    .line 67
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    .line 68
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->getPremasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RAW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->getMajorVersion()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;

    .line 73
    invoke-virtual {v1}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->getMinorVersion()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->protocolVersion:I

    .line 74
    iget v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->protocolVersion:I

    const/16 v1, 0x300

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsMasterSecretGenerator;->protocolVersion:I

    const/16 v1, 0x303

    if-gt v0, v1, :cond_0

    .line 78
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Only SSL 3.0, TLS 1.0/1.1/1.2 supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Key format must be RAW"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "TlsMasterSecretGenerator must be initialized using a TlsMasterSecretParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
