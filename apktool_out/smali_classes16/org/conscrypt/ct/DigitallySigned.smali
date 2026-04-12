.class public Lorg/conscrypt/ct/DigitallySigned;
.super Ljava/lang/Object;
.source "DigitallySigned.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;,
        Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;
    }
.end annotation


# instance fields
.field private final hashAlgorithm:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field private final signature:[B

.field private final signatureAlgorithm:Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;


# direct methods
.method public constructor <init>(II[B)V
    .locals 2
    .param p1, "hashAlgorithm"    # I
    .param p2, "signatureAlgorithm"    # I
    .param p3, "signature"    # [B

    .line 78
    nop

    .line 79
    invoke-static {p1}, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;->valueOf(I)Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    move-result-object v0

    .line 80
    invoke-static {p2}, Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->valueOf(I)Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    move-result-object v1

    .line 78
    invoke-direct {p0, v0, v1, p3}, Lorg/conscrypt/ct/DigitallySigned;-><init>(Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;[B)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;[B)V
    .locals 0
    .param p1, "hashAlgorithm"    # Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .param p2, "signatureAlgorithm"    # Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .param p3, "signature"    # [B

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 71
    iput-object p2, p0, Lorg/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    .line 72
    iput-object p3, p0, Lorg/conscrypt/ct/DigitallySigned;->signature:[B

    .line 73
    return-void
.end method

.method public static decode(Ljava/io/InputStream;)Lorg/conscrypt/ct/DigitallySigned;
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 109
    :try_start_0
    new-instance v0, Lorg/conscrypt/ct/DigitallySigned;

    .line 110
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v2

    .line 111
    invoke-static {p0, v1}, Lorg/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v1

    .line 112
    const/4 v3, 0x2

    invoke-static {p0, v3}, Lorg/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lorg/conscrypt/ct/DigitallySigned;-><init>(II[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decode([B)Lorg/conscrypt/ct/DigitallySigned;
    .locals 1
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/conscrypt/ct/DigitallySigned;->decode(Ljava/io/InputStream;)Lorg/conscrypt/ct/DigitallySigned;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    iget-object v1, p0, Lorg/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%swith%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHashAlgorithm()Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/conscrypt/ct/DigitallySigned;->signature:[B

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lorg/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    return-object v0
.end method
