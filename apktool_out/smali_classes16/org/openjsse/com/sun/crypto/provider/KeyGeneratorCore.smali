.class final Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;
.super Ljava/lang/Object;
.source "KeyGeneratorCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore$ChaCha20KeyGenerator;
    }
.end annotation


# instance fields
.field private final defaultKeySize:I

.field private keySize:I

.field private final name:Ljava/lang/String;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultKeySize"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->name:Ljava/lang/String;

    .line 67
    iput p2, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->defaultKeySize:I

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->implInit(Ljava/security/SecureRandom;)V

    .line 69
    return-void
.end method


# virtual methods
.method implGenerateKey()Ljavax/crypto/SecretKey;
    .locals 3

    .line 100
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->random:Ljava/security/SecureRandom;

    .line 103
    :cond_0
    iget v0, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->keySize:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    .line 104
    .local v0, "b":[B
    iget-object v1, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 105
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->name:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method implInit(ILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 89
    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 93
    iput p1, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->keySize:I

    .line 94
    iput-object p2, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->random:Ljava/security/SecureRandom;

    .line 95
    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Key length must be at least 40 bits"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method implInit(Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;

    .line 74
    iget v0, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->defaultKeySize:I

    iput v0, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->keySize:I

    .line 75
    iput-object p1, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->random:Ljava/security/SecureRandom;

    .line 76
    return-void
.end method

.method implInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key generation does not take any parameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
