.class public Lorg/openjsse/util/RSAKeyUtil;
.super Ljava/lang/Object;
.source "RSAKeyUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParams(Ljava/security/interfaces/RSAKey;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1
    .param p0, "rsaKey"    # Ljava/security/interfaces/RSAKey;

    .line 48
    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getParams()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0
.end method
