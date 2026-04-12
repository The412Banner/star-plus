.class public Lorg/conscrypt/ct/CertificateEntry;
.super Ljava/lang/Object;
.source "CertificateEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ct/CertificateEntry$LogEntryType;
    }
.end annotation


# instance fields
.field private final certificate:[B

.field private final entryType:Lorg/conscrypt/ct/CertificateEntry$LogEntryType;

.field private final issuerKeyHash:[B


# direct methods
.method private constructor <init>(Lorg/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V
    .locals 2
    .param p1, "entryType"    # Lorg/conscrypt/ct/CertificateEntry$LogEntryType;
    .param p2, "certificate"    # [B
    .param p3, "issuerKeyHash"    # [B

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lorg/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lorg/conscrypt/ct/CertificateEntry$LogEntryType;

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "issuerKeyHash missing for precert entry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    :goto_0
    sget-object v0, Lorg/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lorg/conscrypt/ct/CertificateEntry$LogEntryType;

    if-ne p1, v0, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected issuerKeyHash for X509 entry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    array-length v0, p3

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    goto :goto_2

    .line 66
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "issuerKeyHash must be 32 bytes long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_5
    :goto_2
    iput-object p1, p0, Lorg/conscrypt/ct/CertificateEntry;->entryType:Lorg/conscrypt/ct/CertificateEntry$LogEntryType;

    .line 70
    iput-object p3, p0, Lorg/conscrypt/ct/CertificateEntry;->issuerKeyHash:[B

    .line 71
    iput-object p2, p0, Lorg/conscrypt/ct/CertificateEntry;->certificate:[B

    .line 72
    return-void
.end method

.method public static createForPrecertificate(Lorg/conscrypt/OpenSSLX509Certificate;Lorg/conscrypt/OpenSSLX509Certificate;)Lorg/conscrypt/ct/CertificateEntry;
    .locals 6
    .param p0, "leaf"    # Lorg/conscrypt/OpenSSLX509Certificate;
    .param p1, "issuer"    # Lorg/conscrypt/OpenSSLX509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 84
    const-string v0, "1.3.6.1.4.1.11129.2.4.2"

    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLX509Certificate;->withDeletedExtension(Ljava/lang/String;)Lorg/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    .line 89
    .local v0, "preCert":Lorg/conscrypt/OpenSSLX509Certificate;
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object v1

    .line 91
    .local v1, "tbs":[B
    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 92
    .local v2, "issuerKey":[B
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 93
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 94
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 96
    .local v4, "issuerKeyHash":[B
    invoke-static {v1, v4}, Lorg/conscrypt/ct/CertificateEntry;->createForPrecertificate([B[B)Lorg/conscrypt/ct/CertificateEntry;

    move-result-object v5

    return-object v5

    .line 85
    .end local v0    # "preCert":Lorg/conscrypt/OpenSSLX509Certificate;
    .end local v1    # "tbs":[B
    .end local v2    # "issuerKey":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "issuerKeyHash":[B
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Certificate does not contain embedded signed timestamps"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "leaf":Lorg/conscrypt/OpenSSLX509Certificate;
    .end local p1    # "issuer":Lorg/conscrypt/OpenSSLX509Certificate;
    throw v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .restart local p0    # "leaf":Lorg/conscrypt/OpenSSLX509Certificate;
    .restart local p1    # "issuer":Lorg/conscrypt/OpenSSLX509Certificate;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createForPrecertificate([B[B)Lorg/conscrypt/ct/CertificateEntry;
    .locals 2
    .param p0, "tbsCertificate"    # [B
    .param p1, "issuerKeyHash"    # [B

    .line 78
    new-instance v0, Lorg/conscrypt/ct/CertificateEntry;

    sget-object v1, Lorg/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lorg/conscrypt/ct/CertificateEntry$LogEntryType;

    invoke-direct {v0, v1, p0, p1}, Lorg/conscrypt/ct/CertificateEntry;-><init>(Lorg/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V

    return-object v0
.end method

.method public static createForX509Certificate(Ljava/security/cert/X509Certificate;)Lorg/conscrypt/ct/CertificateEntry;
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/ct/CertificateEntry;->createForX509Certificate([B)Lorg/conscrypt/ct/CertificateEntry;

    move-result-object v0

    return-object v0
.end method

.method public static createForX509Certificate([B)Lorg/conscrypt/ct/CertificateEntry;
    .locals 3
    .param p0, "x509Certificate"    # [B

    .line 104
    new-instance v0, Lorg/conscrypt/ct/CertificateEntry;

    sget-object v1, Lorg/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lorg/conscrypt/ct/CertificateEntry$LogEntryType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/conscrypt/ct/CertificateEntry;-><init>(Lorg/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/conscrypt/ct/CertificateEntry;->entryType:Lorg/conscrypt/ct/CertificateEntry$LogEntryType;

    invoke-virtual {v0}, Lorg/conscrypt/ct/CertificateEntry$LogEntryType;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lorg/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 127
    iget-object v0, p0, Lorg/conscrypt/ct/CertificateEntry;->entryType:Lorg/conscrypt/ct/CertificateEntry$LogEntryType;

    sget-object v1, Lorg/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lorg/conscrypt/ct/CertificateEntry$LogEntryType;

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lorg/conscrypt/ct/CertificateEntry;->issuerKeyHash:[B

    invoke-static {p1, v0}, Lorg/conscrypt/ct/Serialization;->writeFixedBytes(Ljava/io/OutputStream;[B)V

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/ct/CertificateEntry;->certificate:[B

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lorg/conscrypt/ct/Serialization;->writeVariableBytes(Ljava/io/OutputStream;[BI)V

    .line 131
    return-void
.end method

.method public getCertificate()[B
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/conscrypt/ct/CertificateEntry;->certificate:[B

    return-object v0
.end method

.method public getEntryType()Lorg/conscrypt/ct/CertificateEntry$LogEntryType;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/conscrypt/ct/CertificateEntry;->entryType:Lorg/conscrypt/ct/CertificateEntry$LogEntryType;

    return-object v0
.end method

.method public getIssuerKeyHash()[B
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/conscrypt/ct/CertificateEntry;->issuerKeyHash:[B

    return-object v0
.end method
