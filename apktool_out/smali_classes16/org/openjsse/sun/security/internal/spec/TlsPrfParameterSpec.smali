.class public Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;
.super Ljava/lang/Object;
.source "TlsPrfParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final label:Ljava/lang/String;

.field private final outputLength:I

.field private final prfBlockSize:I

.field private final prfHashAlg:Ljava/lang/String;

.field private final prfHashLength:I

.field private final secret:Ljavax/crypto/SecretKey;

.field private final seed:[B


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljava/lang/String;[BILjava/lang/String;II)V
    .locals 2
    .param p1, "secret"    # Ljavax/crypto/SecretKey;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "seed"    # [B
    .param p4, "outputLength"    # I
    .param p5, "prfHashAlg"    # Ljava/lang/String;
    .param p6, "prfHashLength"    # I
    .param p7, "prfBlockSize"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 78
    if-lez p4, :cond_0

    .line 81
    iput-object p1, p0, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->secret:Ljavax/crypto/SecretKey;

    .line 82
    iput-object p2, p0, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->label:Ljava/lang/String;

    .line 83
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->seed:[B

    .line 84
    iput p4, p0, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->outputLength:I

    .line 85
    iput-object p5, p0, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->prfHashAlg:Ljava/lang/String;

    .line 86
    iput p6, p0, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->prfHashLength:I

    .line 87
    iput p7, p0, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->prfBlockSize:I

    .line 88
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputLength must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "label and seed must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputLength()I
    .locals 1

    .line 125
    iget v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->outputLength:I

    return v0
.end method

.method public getPRFBlockSize()I
    .locals 1

    .line 155
    iget v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->prfBlockSize:I

    return v0
.end method

.method public getPRFHashAlg()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->prfHashAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getPRFHashLength()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->prfHashLength:I

    return v0
.end method

.method public getSecret()Ljavax/crypto/SecretKey;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->secret:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/openjsse/sun/security/internal/spec/TlsPrfParameterSpec;->seed:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
