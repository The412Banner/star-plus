.class public Lorg/openjsse/java/security/spec/RSAKeyGenParameterSpec;
.super Ljava/security/spec/RSAKeyGenParameterSpec;
.source "RSAKeyGenParameterSpec.java"


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 0
    .param p1, "keysize"    # I
    .param p2, "publicExponent"    # Ljava/math/BigInteger;

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    .line 73
    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0
    .param p1, "keysize"    # I
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "keyParams"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 86
    invoke-direct {p0, p1, p2, p3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 87
    return-void
.end method
