.class public Lorg/openjsse/java/security/spec/RSAPrivateKeySpec;
.super Ljava/security/spec/RSAPrivateKeySpec;
.source "RSAPrivateKeySpec.java"


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "privateExponent"    # Ljava/math/BigInteger;

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "privateExponent"    # Ljava/math/BigInteger;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 84
    invoke-direct {p0, p1, p2, p3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 85
    return-void
.end method
