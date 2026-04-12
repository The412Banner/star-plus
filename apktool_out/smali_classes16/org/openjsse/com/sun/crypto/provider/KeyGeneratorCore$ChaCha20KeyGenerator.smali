.class public final Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore$ChaCha20KeyGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "KeyGeneratorCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChaCha20KeyGenerator"
.end annotation


# instance fields
.field private final core:Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 111
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    .line 112
    new-instance v0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;

    const-string v1, "ChaCha20"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore$ChaCha20KeyGenerator;->core:Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;

    .line 113
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore$ChaCha20KeyGenerator;->core:Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;

    invoke-virtual {v0}, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->implGenerateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "keySize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 125
    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore$ChaCha20KeyGenerator;->core:Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;

    invoke-virtual {v0, p1, p2}, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->implInit(ILjava/security/SecureRandom;)V

    .line 130
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Key length for ChaCha20 must be 256 bits"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;

    .line 116
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore$ChaCha20KeyGenerator;->core:Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;

    invoke-virtual {v0, p1}, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->implInit(Ljava/security/SecureRandom;)V

    .line 117
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore$ChaCha20KeyGenerator;->core:Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;

    invoke-virtual {v0, p1, p2}, Lorg/openjsse/com/sun/crypto/provider/KeyGeneratorCore;->implInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 122
    return-void
.end method
