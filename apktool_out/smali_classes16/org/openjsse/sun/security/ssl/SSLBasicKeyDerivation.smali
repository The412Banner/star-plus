.class final Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation;
.super Ljava/lang/Object;
.source "SSLBasicKeyDerivation.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation$SecretSizeSpec;
    }
.end annotation


# instance fields
.field private final hashAlg:Ljava/lang/String;

.field private final hkdfInfo:[B

.field private final secret:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>(Ljavax/crypto/SecretKey;Ljava/lang/String;[B[BI)V
    .locals 2
    .param p1, "secret"    # Ljavax/crypto/SecretKey;
    .param p2, "hashAlg"    # Ljava/lang/String;
    .param p3, "label"    # [B
    .param p4, "context"    # [B
    .param p5, "length"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation;->hashAlg:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation;->secret:Ljavax/crypto/SecretKey;

    .line 44
    invoke-static {p3, p4, p5}, Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation;->createHkdfInfo([B[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation;->hkdfInfo:[B

    .line 45
    return-void
.end method

.method private static createHkdfInfo([B[BI)[B
    .locals 3
    .param p0, "label"    # [B
    .param p1, "context"    # [B
    .param p2, "length"    # I

    .line 62
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 63
    .local v0, "info":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 65
    .local v1, "m":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {v1, p2}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 66
    invoke-static {v1, p0}, Lorg/openjsse/sun/security/ssl/Record;->putBytes8(Ljava/nio/ByteBuffer;[B)V

    .line 67
    invoke-static {v1, p1}, Lorg/openjsse/sun/security/ssl/Record;->putBytes8(Ljava/nio/ByteBuffer;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v2

    .line 71
    :goto_0
    return-object v0
.end method


# virtual methods
.method public deriveKey(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "keySpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    :try_start_0
    new-instance v0, Lorg/openjsse/sun/security/ssl/HKDF;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation;->hashAlg:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/HKDF;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation;->secret:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation;->hkdfInfo:[B

    move-object v3, p2

    check-cast v3, Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation$SecretSizeSpec;

    iget v3, v3, Lorg/openjsse/sun/security/ssl/SSLBasicKeyDerivation$SecretSizeSpec;->length:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/openjsse/sun/security/ssl/HKDF;->expand(Ljavax/crypto/SecretKey;[BILjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 54
    .end local v0    # "hkdf":Lorg/openjsse/sun/security/ssl/HKDF;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "gse":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "Could not generate secret"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLHandshakeException;

    throw v1
.end method
