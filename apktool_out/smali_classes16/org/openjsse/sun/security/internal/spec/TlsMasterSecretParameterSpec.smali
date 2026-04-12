.class public Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;
.super Ljava/lang/Object;
.source "TlsMasterSecretParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final clientRandom:[B

.field private final extendedMasterSecretSessionHash:[B

.field private final majorVersion:I

.field private final minorVersion:I

.field private final premasterSecret:Ljavax/crypto/SecretKey;

.field private final prfBlockSize:I

.field private final prfHashAlg:Ljava/lang/String;

.field private final prfHashLength:I

.field private final serverRandom:[B


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;II[BLjava/lang/String;II)V
    .locals 11
    .param p1, "premasterSecret"    # Ljavax/crypto/SecretKey;
    .param p2, "majorVersion"    # I
    .param p3, "minorVersion"    # I
    .param p4, "extendedMasterSecretSessionHash"    # [B
    .param p5, "prfHashAlg"    # Ljava/lang/String;
    .param p6, "prfHashLength"    # I
    .param p7, "prfBlockSize"    # I

    .line 117
    const/4 v0, 0x0

    new-array v5, v0, [B

    new-array v6, v0, [B

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;-><init>(Ljavax/crypto/SecretKey;II[B[B[BLjava/lang/String;II)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;II[B[BLjava/lang/String;II)V
    .locals 11
    .param p1, "premasterSecret"    # Ljavax/crypto/SecretKey;
    .param p2, "majorVersion"    # I
    .param p3, "minorVersion"    # I
    .param p4, "clientRandom"    # [B
    .param p5, "serverRandom"    # [B
    .param p6, "prfHashAlg"    # Ljava/lang/String;
    .param p7, "prfHashLength"    # I
    .param p8, "prfBlockSize"    # I

    .line 84
    const/4 v0, 0x0

    new-array v7, v0, [B

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;-><init>(Ljavax/crypto/SecretKey;II[B[B[BLjava/lang/String;II)V

    .line 88
    return-void
.end method

.method private constructor <init>(Ljavax/crypto/SecretKey;II[B[B[BLjava/lang/String;II)V
    .locals 2
    .param p1, "premasterSecret"    # Ljavax/crypto/SecretKey;
    .param p2, "majorVersion"    # I
    .param p3, "minorVersion"    # I
    .param p4, "clientRandom"    # [B
    .param p5, "serverRandom"    # [B
    .param p6, "extendedMasterSecretSessionHash"    # [B
    .param p7, "prfHashAlg"    # Ljava/lang/String;
    .param p8, "prfHashLength"    # I
    .param p9, "prfBlockSize"    # I

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    if-eqz p1, :cond_1

    .line 131
    iput-object p1, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->premasterSecret:Ljavax/crypto/SecretKey;

    .line 132
    invoke-static {p2}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->checkVersion(I)I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->majorVersion:I

    .line 133
    invoke-static {p3}, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->checkVersion(I)I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->minorVersion:I

    .line 134
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->clientRandom:[B

    .line 135
    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->serverRandom:[B

    .line 136
    if-eqz p6, :cond_0

    .line 138
    invoke-virtual {p6}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->extendedMasterSecretSessionHash:[B

    .line 139
    iput-object p7, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->prfHashAlg:Ljava/lang/String;

    .line 140
    iput p8, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->prfHashLength:I

    .line 141
    iput p9, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->prfBlockSize:I

    .line 142
    return-void

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "premasterSecret must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkVersion(I)I
    .locals 2
    .param p0, "version"    # I

    .line 145
    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    .line 149
    return p0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version must be between 0 and 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getClientRandom()[B
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->clientRandom:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getExtendedMasterSecretSessionHash()[B
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->extendedMasterSecretSessionHash:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 167
    iget v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .line 176
    iget v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->minorVersion:I

    return v0
.end method

.method public getPRFBlockSize()I
    .locals 1

    .line 232
    iget v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->prfBlockSize:I

    return v0
.end method

.method public getPRFHashAlg()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->prfHashAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getPRFHashLength()I
    .locals 1

    .line 223
    iget v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->prfHashLength:I

    return v0
.end method

.method public getPremasterSecret()Ljavax/crypto/SecretKey;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->premasterSecret:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getServerRandom()[B
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsMasterSecretParameterSpec;->serverRandom:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
