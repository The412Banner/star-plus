.class final Lorg/openjsse/sun/security/ssl/HKDF;
.super Ljava/lang/Object;
.source "HKDF.java"


# instance fields
.field private final hmacAlg:Ljava/lang/String;

.field private final hmacLen:I

.field private final hmacObj:Ljavax/crypto/Mac;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "hashAlg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "Must provide underlying HKDF Digest algorithm."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hmac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacAlg:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacAlg:Ljava/lang/String;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/JsseJce;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacObj:Ljavax/crypto/Mac;

    .line 66
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacObj:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacLen:I

    .line 67
    return-void
.end method


# virtual methods
.method expand(Ljavax/crypto/SecretKey;[BILjava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 8
    .param p1, "pseudoRandKey"    # Ljavax/crypto/SecretKey;
    .param p2, "info"    # [B
    .param p3, "outLen"    # I
    .param p4, "keyAlg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 143
    const-string v0, "A null PRK is not allowed."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    iget v0, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacLen:I

    mul-int/lit16 v0, v0, 0xff

    if-gt p3, v0, :cond_2

    .line 150
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacObj:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 151
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 152
    new-array p2, v0, [B

    .line 154
    :cond_0
    iget v1, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacLen:I

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacLen:I

    div-int/2addr v1, v2

    .line 155
    .local v1, "rounds":I
    iget v2, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacLen:I

    mul-int/2addr v2, v1

    new-array v2, v2, [B

    .line 156
    .local v2, "kdfOutput":[B
    const/4 v3, 0x0

    .line 157
    .local v3, "offset":I
    const/4 v4, 0x0

    .line 159
    .local v4, "tLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 167
    :try_start_0
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacObj:Ljavax/crypto/Mac;

    iget v7, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacLen:I

    sub-int v7, v3, v7

    .line 168
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 167
    invoke-virtual {v6, v2, v7, v4}, Ljavax/crypto/Mac;->update([BII)V

    .line 169
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacObj:Ljavax/crypto/Mac;

    invoke-virtual {v6, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 170
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacObj:Ljavax/crypto/Mac;

    add-int/lit8 v7, v5, 0x1

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Ljavax/crypto/Mac;->update(B)V

    .line 171
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacObj:Ljavax/crypto/Mac;

    invoke-virtual {v6, v2, v3}, Ljavax/crypto/Mac;->doFinal([BI)V

    .line 173
    iget v6, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacLen:I

    move v4, v6

    .line 174
    iget v6, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacLen:I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v6

    .line 180
    nop

    .line 159
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 179
    .local v0, "sbe":Ljavax/crypto/ShortBufferException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 183
    .end local v0    # "sbe":Ljavax/crypto/ShortBufferException;
    .end local v5    # "i":I
    :cond_1
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v5, v2, v0, p3, p4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    return-object v5

    .line 147
    .end local v1    # "rounds":I
    .end local v2    # "kdfOutput":[B
    .end local v3    # "offset":I
    .end local v4    # "tLength":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested output length exceeds maximum length allowed for HKDF expansion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method extract(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p1, "salt"    # Ljavax/crypto/SecretKey;
    .param p2, "inputKey"    # Ljavax/crypto/SecretKey;
    .param p3, "keyAlg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget v1, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacLen:I

    new-array v1, v1, [B

    const-string v2, "HKDF-Salt"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object p1, v0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacObj:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 93
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacObj:Ljavax/crypto/Mac;

    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method extract([BLjavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1, "salt"    # [B
    .param p2, "inputKey"    # Ljavax/crypto/SecretKey;
    .param p3, "keyAlg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 116
    if-nez p1, :cond_0

    .line 117
    iget v0, p0, Lorg/openjsse/sun/security/ssl/HKDF;->hmacLen:I

    new-array p1, v0, [B

    .line 119
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "HKDF-Salt"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/openjsse/sun/security/ssl/HKDF;->extract(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method
