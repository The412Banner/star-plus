.class public final Lorg/openjsse/com/sun/crypto/provider/TlsRsaPremasterSecretGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "TlsRsaPremasterSecretGenerator.java"


# static fields
.field private static final MSG:Ljava/lang/String; = "TlsRsaPremasterSecretGenerator must be initialized using a TlsRsaPremasterSecretParameterSpec"


# instance fields
.field private random:Ljava/security/SecureRandom;

.field private spec:Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->getEncodedSecret()[B

    move-result-object v0

    .line 80
    .local v0, "b":[B
    if-nez v0, :cond_1

    .line 81
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->random:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->random:Ljava/security/SecureRandom;

    .line 84
    :cond_0
    const/16 v1, 0x30

    new-array v0, v1, [B

    .line 85
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 87
    :cond_1
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->getMajorVersion()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 88
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->getMinorVersion()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 90
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "TlsRsaPremasterSecret"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 75
    .end local v0    # "b":[B
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TlsRsaPremasterSecretGenerator must be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 69
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TlsRsaPremasterSecretGenerator must be initialized using a TlsRsaPremasterSecretParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "random"    # Ljava/security/SecureRandom;

    .line 55
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TlsRsaPremasterSecretGenerator must be initialized using a TlsRsaPremasterSecretParameterSpec"

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

    .line 61
    instance-of v0, p1, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->spec:Lorg/openjsse/sun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    .line 65
    iput-object p2, p0, Lorg/openjsse/com/sun/crypto/provider/TlsRsaPremasterSecretGenerator;->random:Ljava/security/SecureRandom;

    .line 66
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "TlsRsaPremasterSecretGenerator must be initialized using a TlsRsaPremasterSecretParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
