.class public final Lorg/openjsse/sun/security/ssl/RSASignature;
.super Ljava/security/SignatureSpi;
.source "RSASignature.java"


# instance fields
.field private final mdMD5:Ljava/security/MessageDigest;

.field private final mdSHA:Ljava/security/MessageDigest;

.field private final rawRsa:Ljava/security/Signature;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 56
    const-string v0, "NONEwithRSA"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    .line 57
    const-string v0, "MD5"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->mdMD5:Ljava/security/MessageDigest;

    .line 58
    const-string v0, "SHA"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->mdSHA:Ljava/security/MessageDigest;

    .line 59
    return-void
.end method

.method private getDigest()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 114
    const/16 v0, 0x24

    :try_start_0
    new-array v0, v0, [B

    .line 115
    .local v0, "data":[B
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->mdMD5:Ljava/security/MessageDigest;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->digest([BII)I

    .line 116
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->mdSHA:Ljava/security/MessageDigest;

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v3, v2}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-object v0

    .line 118
    .end local v0    # "data":[B
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/security/DigestException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getInstance()Ljava/security/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 69
    const-string v0, "MD5andSHA1withRSA"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/openjsse/sun/security/ssl/RSASignature;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 87
    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 92
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->mdMD5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 96
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->mdSHA:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 97
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 98
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Private key must not be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 75
    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->mdMD5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 79
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->mdSHA:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 80
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 81
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Public key must not be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 152
    if-nez p1, :cond_0

    .line 155
    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No parameters accepted"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/RSASignature;->getDigest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 127
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "b"    # B

    .line 102
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->mdMD5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 103
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->mdSHA:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 104
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 108
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->mdMD5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 109
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->mdSHA:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 110
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 2
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjsse/sun/security/ssl/RSASignature;->engineVerify([BII)Z

    move-result v0

    return v0
.end method

.method protected engineVerify([BII)Z
    .locals 2
    .param p1, "sigBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/RSASignature;->getDigest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 139
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->verify([BII)Z

    move-result v0

    return v0
.end method
