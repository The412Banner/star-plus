.class public abstract Lorg/conscrypt/KeyGeneratorImpl;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/KeyGeneratorImpl$ARC4;,
        Lorg/conscrypt/KeyGeneratorImpl$ChaCha20;,
        Lorg/conscrypt/KeyGeneratorImpl$AES;,
        Lorg/conscrypt/KeyGeneratorImpl$DESEDE;,
        Lorg/conscrypt/KeyGeneratorImpl$HmacSHA512;,
        Lorg/conscrypt/KeyGeneratorImpl$HmacSHA384;,
        Lorg/conscrypt/KeyGeneratorImpl$HmacSHA256;,
        Lorg/conscrypt/KeyGeneratorImpl$HmacSHA224;,
        Lorg/conscrypt/KeyGeneratorImpl$HmacSHA1;,
        Lorg/conscrypt/KeyGeneratorImpl$HmacMD5;
    }
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private keySizeBits:I

.field protected secureRandom:Ljava/security/SecureRandom;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "defaultKeySizeBits"    # I

    .line 37
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/conscrypt/KeyGeneratorImpl;->algorithm:Ljava/lang/String;

    .line 39
    iput p2, p0, Lorg/conscrypt/KeyGeneratorImpl;->keySizeBits:I

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/conscrypt/KeyGeneratorImpl$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/conscrypt/KeyGeneratorImpl$1;

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected checkKeySize(I)V
    .locals 2
    .param p1, "keySize"    # I

    .line 43
    if-lez p1, :cond_0

    .line 46
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Key size must be positive"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doKeyGeneration(I)[B
    .locals 2
    .param p1, "keyBytes"    # I

    .line 72
    new-array v0, p1, [B

    .line 73
    .local v0, "keyData":[B
    iget-object v1, p0, Lorg/conscrypt/KeyGeneratorImpl;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 74
    return-object v0
.end method

.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 3

    .line 79
    iget-object v0, p0, Lorg/conscrypt/KeyGeneratorImpl;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/KeyGeneratorImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 83
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget v1, p0, Lorg/conscrypt/KeyGeneratorImpl;->keySizeBits:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, v1}, Lorg/conscrypt/KeyGeneratorImpl;->doKeyGeneration(I)[B

    move-result-object v1

    iget-object v2, p0, Lorg/conscrypt/KeyGeneratorImpl;->algorithm:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "keySize"    # I
    .param p2, "secureRandom"    # Ljava/security/SecureRandom;

    .line 66
    invoke-virtual {p0, p1}, Lorg/conscrypt/KeyGeneratorImpl;->checkKeySize(I)V

    .line 67
    iput p1, p0, Lorg/conscrypt/KeyGeneratorImpl;->keySizeBits:I

    .line 68
    iput-object p2, p0, Lorg/conscrypt/KeyGeneratorImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 69
    return-void
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;

    .line 50
    iput-object p1, p0, Lorg/conscrypt/KeyGeneratorImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 51
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No params provided"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown param type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
