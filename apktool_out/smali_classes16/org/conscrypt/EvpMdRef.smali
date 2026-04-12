.class final Lorg/conscrypt/EvpMdRef;
.super Ljava/lang/Object;
.source "EvpMdRef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/EvpMdRef$SHA512;,
        Lorg/conscrypt/EvpMdRef$SHA384;,
        Lorg/conscrypt/EvpMdRef$SHA256;,
        Lorg/conscrypt/EvpMdRef$SHA224;,
        Lorg/conscrypt/EvpMdRef$SHA1;,
        Lorg/conscrypt/EvpMdRef$MD5;
    }
.end annotation


# static fields
.field static final MGF1_ALGORITHM_NAME:Ljava/lang/String; = "MGF1"

.field static final MGF1_OID:Ljava/lang/String; = "1.2.840.113549.1.1.8"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDigestSizeBytesByJcaDigestAlgorithmStandardName(Ljava/lang/String;)I
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 75
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "algorithmUpper":Ljava/lang/String;
    const-string v1, "SHA-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    sget v1, Lorg/conscrypt/EvpMdRef$SHA256;->SIZE_BYTES:I

    return v1

    .line 78
    :cond_0
    const-string v1, "SHA-512"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    sget v1, Lorg/conscrypt/EvpMdRef$SHA512;->SIZE_BYTES:I

    return v1

    .line 80
    :cond_1
    const-string v1, "SHA-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    sget v1, Lorg/conscrypt/EvpMdRef$SHA1;->SIZE_BYTES:I

    return v1

    .line 82
    :cond_2
    const-string v1, "SHA-384"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    sget v1, Lorg/conscrypt/EvpMdRef$SHA384;->SIZE_BYTES:I

    return v1

    .line 84
    :cond_3
    const-string v1, "SHA-224"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 85
    sget v1, Lorg/conscrypt/EvpMdRef$SHA224;->SIZE_BYTES:I

    return v1

    .line 87
    :cond_4
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 57
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "algorithmUpper":Ljava/lang/String;
    const-string v1, "SHA-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    sget-wide v1, Lorg/conscrypt/EvpMdRef$SHA256;->EVP_MD:J

    return-wide v1

    .line 60
    :cond_0
    const-string v1, "SHA-512"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    sget-wide v1, Lorg/conscrypt/EvpMdRef$SHA512;->EVP_MD:J

    return-wide v1

    .line 62
    :cond_1
    const-string v1, "SHA-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    sget-wide v1, Lorg/conscrypt/EvpMdRef$SHA1;->EVP_MD:J

    return-wide v1

    .line 64
    :cond_2
    const-string v1, "SHA-384"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    sget-wide v1, Lorg/conscrypt/EvpMdRef$SHA384;->EVP_MD:J

    return-wide v1

    .line 66
    :cond_3
    const-string v1, "SHA-224"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    sget-wide v1, Lorg/conscrypt/EvpMdRef$SHA224;->EVP_MD:J

    return-wide v1

    .line 69
    :cond_4
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getJcaDigestAlgorithmStandardName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 34
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "algorithmUpper":Ljava/lang/String;
    const-string v1, "SHA-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 36
    const-string v2, "2.16.840.1.101.3.4.2.1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_4

    .line 38
    :cond_0
    const-string v1, "SHA-512"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 39
    const-string v2, "2.16.840.1.101.3.4.2.3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    .line 41
    :cond_1
    const-string v1, "SHA-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 42
    const-string v2, "1.3.14.3.2.26"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 44
    :cond_2
    const-string v1, "SHA-384"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 45
    const-string v2, "2.16.840.1.101.3.4.2.2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 47
    :cond_3
    const-string v1, "SHA-224"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 48
    const-string v2, "2.16.840.1.101.3.4.2.4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 51
    :cond_4
    const/4 v1, 0x0

    return-object v1

    .line 49
    :cond_5
    :goto_0
    return-object v1

    .line 46
    :cond_6
    :goto_1
    return-object v1

    .line 43
    :cond_7
    :goto_2
    return-object v1

    .line 40
    :cond_8
    :goto_3
    return-object v1

    .line 37
    :cond_9
    :goto_4
    return-object v1
.end method

.method static getJcaDigestAlgorithmStandardNameFromEVP_MD(J)Ljava/lang/String;
    .locals 2
    .param p0, "evpMdRef"    # J

    .line 92
    sget-wide v0, Lorg/conscrypt/EvpMdRef$MD5;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 93
    const-string v0, "MD5"

    return-object v0

    .line 94
    :cond_0
    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA1;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 95
    const-string v0, "SHA-1"

    return-object v0

    .line 96
    :cond_1
    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA224;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 97
    const-string v0, "SHA-224"

    return-object v0

    .line 98
    :cond_2
    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA256;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    .line 99
    const-string v0, "SHA-256"

    return-object v0

    .line 100
    :cond_3
    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA384;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_4

    .line 101
    const-string v0, "SHA-384"

    return-object v0

    .line 102
    :cond_4
    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA512;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_5

    .line 103
    const-string v0, "SHA-512"

    return-object v0

    .line 105
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown EVP_MD reference"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
