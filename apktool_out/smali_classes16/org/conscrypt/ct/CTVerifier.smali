.class public Lorg/conscrypt/ct/CTVerifier;
.super Ljava/lang/Object;
.source "CTVerifier.java"


# instance fields
.field private final store:Lorg/conscrypt/ct/CTLogStore;


# direct methods
.method public constructor <init>(Lorg/conscrypt/ct/CTLogStore;)V
    .locals 0
    .param p1, "store"    # Lorg/conscrypt/ct/CTLogStore;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/conscrypt/ct/CTVerifier;->store:Lorg/conscrypt/ct/CTLogStore;

    .line 35
    return-void
.end method

.method private getSCTsFromOCSPResponse([B[Lorg/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "chain"    # [Lorg/conscrypt/OpenSSLX509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[",
            "Lorg/conscrypt/OpenSSLX509Certificate;",
            ")",
            "Ljava/util/List<",
            "Lorg/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    .line 215
    if-eqz p1, :cond_2

    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    const/4 v0, 0x0

    aget-object v1, p2, v0

    .line 220
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v4

    aget-object v6, p2, v0

    const/4 v0, 0x1

    aget-object v1, p2, v0

    .line 221
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v7

    aget-object v9, p2, v0

    .line 219
    const-string v3, "1.3.6.1.4.1.11129.2.4.5"

    move-object v2, p1

    invoke-static/range {v2 .. v9}, Lorg/conscrypt/NativeCrypto;->get_ocsp_single_extension([BLjava/lang/String;JLorg/conscrypt/OpenSSLX509Certificate;JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    .line 222
    .local v0, "extData":[B
    if-nez v0, :cond_1

    .line 223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 227
    :cond_1
    nop

    .line 229
    :try_start_0
    invoke-static {v0}, Lorg/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v1

    .line 228
    invoke-static {v1}, Lorg/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v1

    sget-object v2, Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;->OCSP_RESPONSE:Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

    .line 227
    invoke-static {v1, v2}, Lorg/conscrypt/ct/CTVerifier;->getSCTsFromSCTList([BLorg/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Lorg/conscrypt/ct/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Lorg/conscrypt/ct/SerializationException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 216
    .end local v0    # "extData":[B
    .end local v1    # "e":Lorg/conscrypt/ct/SerializationException;
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getSCTsFromSCTList([BLorg/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "origin"    # Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;",
            ")",
            "Ljava/util/List<",
            "Lorg/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    .line 168
    if-nez p0, :cond_0

    .line 169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, v0, v0}, Lorg/conscrypt/ct/Serialization;->readList([BII)[[B

    move-result-object v0
    :try_end_0
    .catch Lorg/conscrypt/ct/SerializationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    .local v0, "sctList":[[B
    nop

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v1, "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 183
    .local v4, "encodedSCT":[B
    :try_start_1
    invoke-static {v4, p1}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->decode([BLorg/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lorg/conscrypt/ct/SignedCertificateTimestamp;

    move-result-object v5

    .line 184
    .local v5, "sct":Lorg/conscrypt/ct/SignedCertificateTimestamp;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/conscrypt/ct/SerializationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    nop

    .end local v5    # "sct":Lorg/conscrypt/ct/SignedCertificateTimestamp;
    goto :goto_1

    .line 185
    :catch_0
    move-exception v5

    .line 181
    .end local v4    # "encodedSCT":[B
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return-object v1

    .line 176
    .end local v0    # "sctList":[[B
    .end local v1    # "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    :catch_1
    move-exception v0

    .line 177
    .local v0, "e":Lorg/conscrypt/ct/SerializationException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getSCTsFromTLSExtension([B)Ljava/util/List;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lorg/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    .line 201
    sget-object v0, Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;->TLS_EXTENSION:Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-static {p1, v0}, Lorg/conscrypt/ct/CTVerifier;->getSCTsFromSCTList([BLorg/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSCTsFromX509Extension(Lorg/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;
    .locals 3
    .param p1, "leaf"    # Lorg/conscrypt/OpenSSLX509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/conscrypt/OpenSSLX509Certificate;",
            ")",
            "Ljava/util/List<",
            "Lorg/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    .line 243
    const-string v0, "1.3.6.1.4.1.11129.2.4.2"

    invoke-virtual {p1, v0}, Lorg/conscrypt/OpenSSLX509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 244
    .local v0, "extData":[B
    if-nez v0, :cond_0

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 249
    :cond_0
    nop

    .line 251
    :try_start_0
    invoke-static {v0}, Lorg/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v1

    .line 250
    invoke-static {v1}, Lorg/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v1

    sget-object v2, Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;->EMBEDDED:Lorg/conscrypt/ct/SignedCertificateTimestamp$Origin;

    .line 249
    invoke-static {v1, v2}, Lorg/conscrypt/ct/CTVerifier;->getSCTsFromSCTList([BLorg/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Lorg/conscrypt/ct/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Lorg/conscrypt/ct/SerializationException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private markSCTsAsInvalid(Ljava/util/List;Lorg/conscrypt/ct/CTVerificationResult;)V
    .locals 4
    .param p2, "result"    # Lorg/conscrypt/ct/CTVerificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/conscrypt/ct/SignedCertificateTimestamp;",
            ">;",
            "Lorg/conscrypt/ct/CTVerificationResult;",
            ")V"
        }
    .end annotation

    .line 153
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/ct/SignedCertificateTimestamp;

    .line 154
    .local v1, "sct":Lorg/conscrypt/ct/SignedCertificateTimestamp;
    new-instance v2, Lorg/conscrypt/ct/VerifiedSCT;

    sget-object v3, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lorg/conscrypt/ct/VerifiedSCT$Status;

    invoke-direct {v2, v1, v3}, Lorg/conscrypt/ct/VerifiedSCT;-><init>(Lorg/conscrypt/ct/SignedCertificateTimestamp;Lorg/conscrypt/ct/VerifiedSCT$Status;)V

    invoke-virtual {p2, v2}, Lorg/conscrypt/ct/CTVerificationResult;->add(Lorg/conscrypt/ct/VerifiedSCT;)V

    .line 155
    .end local v1    # "sct":Lorg/conscrypt/ct/SignedCertificateTimestamp;
    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method private verifyEmbeddedSCTs(Ljava/util/List;[Lorg/conscrypt/OpenSSLX509Certificate;Lorg/conscrypt/ct/CTVerificationResult;)V
    .locals 5
    .param p2, "chain"    # [Lorg/conscrypt/OpenSSLX509Certificate;
    .param p3, "result"    # Lorg/conscrypt/ct/CTVerificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/conscrypt/ct/SignedCertificateTimestamp;",
            ">;[",
            "Lorg/conscrypt/OpenSSLX509Certificate;",
            "Lorg/conscrypt/ct/CTVerificationResult;",
            ")V"
        }
    .end annotation

    .line 81
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    .line 86
    .local v0, "precertEntry":Lorg/conscrypt/ct/CertificateEntry;
    array-length v1, p2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 87
    const/4 v1, 0x0

    aget-object v1, p2, v1

    .line 88
    .local v1, "leaf":Lorg/conscrypt/OpenSSLX509Certificate;
    const/4 v2, 0x1

    aget-object v2, p2, v2

    .line 91
    .local v2, "issuer":Lorg/conscrypt/OpenSSLX509Certificate;
    :try_start_0
    invoke-static {v1, v2}, Lorg/conscrypt/ct/CertificateEntry;->createForPrecertificate(Lorg/conscrypt/OpenSSLX509Certificate;Lorg/conscrypt/OpenSSLX509Certificate;)Lorg/conscrypt/ct/CertificateEntry;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v3

    .line 97
    .end local v1    # "leaf":Lorg/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "issuer":Lorg/conscrypt/OpenSSLX509Certificate;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 98
    invoke-direct {p0, p1, p3}, Lorg/conscrypt/ct/CTVerifier;->markSCTsAsInvalid(Ljava/util/List;Lorg/conscrypt/ct/CTVerificationResult;)V

    .line 99
    return-void

    .line 102
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/conscrypt/ct/SignedCertificateTimestamp;

    .line 103
    .local v2, "sct":Lorg/conscrypt/ct/SignedCertificateTimestamp;
    invoke-direct {p0, v2, v0}, Lorg/conscrypt/ct/CTVerifier;->verifySingleSCT(Lorg/conscrypt/ct/SignedCertificateTimestamp;Lorg/conscrypt/ct/CertificateEntry;)Lorg/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v3

    .line 104
    .local v3, "status":Lorg/conscrypt/ct/VerifiedSCT$Status;
    new-instance v4, Lorg/conscrypt/ct/VerifiedSCT;

    invoke-direct {v4, v2, v3}, Lorg/conscrypt/ct/VerifiedSCT;-><init>(Lorg/conscrypt/ct/SignedCertificateTimestamp;Lorg/conscrypt/ct/VerifiedSCT$Status;)V

    invoke-virtual {p3, v4}, Lorg/conscrypt/ct/CTVerificationResult;->add(Lorg/conscrypt/ct/VerifiedSCT;)V

    .line 105
    .end local v2    # "sct":Lorg/conscrypt/ct/SignedCertificateTimestamp;
    .end local v3    # "status":Lorg/conscrypt/ct/VerifiedSCT$Status;
    goto :goto_1

    .line 106
    :cond_3
    return-void
.end method

.method private verifyExternalSCTs(Ljava/util/List;Lorg/conscrypt/OpenSSLX509Certificate;Lorg/conscrypt/ct/CTVerificationResult;)V
    .locals 5
    .param p2, "leaf"    # Lorg/conscrypt/OpenSSLX509Certificate;
    .param p3, "result"    # Lorg/conscrypt/ct/CTVerificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/conscrypt/ct/SignedCertificateTimestamp;",
            ">;",
            "Lorg/conscrypt/OpenSSLX509Certificate;",
            "Lorg/conscrypt/ct/CTVerificationResult;",
            ")V"
        }
    .end annotation

    .line 117
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    return-void

    .line 123
    :cond_0
    :try_start_0
    invoke-static {p2}, Lorg/conscrypt/ct/CertificateEntry;->createForX509Certificate(Ljava/security/cert/X509Certificate;)Lorg/conscrypt/ct/CertificateEntry;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .local v0, "x509Entry":Lorg/conscrypt/ct/CertificateEntry;
    nop

    .line 129
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/conscrypt/ct/SignedCertificateTimestamp;

    .line 130
    .local v2, "sct":Lorg/conscrypt/ct/SignedCertificateTimestamp;
    invoke-direct {p0, v2, v0}, Lorg/conscrypt/ct/CTVerifier;->verifySingleSCT(Lorg/conscrypt/ct/SignedCertificateTimestamp;Lorg/conscrypt/ct/CertificateEntry;)Lorg/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v3

    .line 131
    .local v3, "status":Lorg/conscrypt/ct/VerifiedSCT$Status;
    new-instance v4, Lorg/conscrypt/ct/VerifiedSCT;

    invoke-direct {v4, v2, v3}, Lorg/conscrypt/ct/VerifiedSCT;-><init>(Lorg/conscrypt/ct/SignedCertificateTimestamp;Lorg/conscrypt/ct/VerifiedSCT$Status;)V

    invoke-virtual {p3, v4}, Lorg/conscrypt/ct/CTVerificationResult;->add(Lorg/conscrypt/ct/VerifiedSCT;)V

    .line 132
    .end local v2    # "sct":Lorg/conscrypt/ct/SignedCertificateTimestamp;
    .end local v3    # "status":Lorg/conscrypt/ct/VerifiedSCT$Status;
    goto :goto_0

    .line 133
    :cond_1
    return-void

    .line 124
    .end local v0    # "x509Entry":Lorg/conscrypt/ct/CertificateEntry;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-direct {p0, p1, p3}, Lorg/conscrypt/ct/CTVerifier;->markSCTsAsInvalid(Ljava/util/List;Lorg/conscrypt/ct/CTVerificationResult;)V

    .line 126
    return-void
.end method

.method private verifySingleSCT(Lorg/conscrypt/ct/SignedCertificateTimestamp;Lorg/conscrypt/ct/CertificateEntry;)Lorg/conscrypt/ct/VerifiedSCT$Status;
    .locals 2
    .param p1, "sct"    # Lorg/conscrypt/ct/SignedCertificateTimestamp;
    .param p2, "certEntry"    # Lorg/conscrypt/ct/CertificateEntry;

    .line 140
    iget-object v0, p0, Lorg/conscrypt/ct/CTVerifier;->store:Lorg/conscrypt/ct/CTLogStore;

    invoke-virtual {p1}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/conscrypt/ct/CTLogStore;->getKnownLog([B)Lorg/conscrypt/ct/CTLogInfo;

    move-result-object v0

    .line 141
    .local v0, "log":Lorg/conscrypt/ct/CTLogInfo;
    if-nez v0, :cond_0

    .line 142
    sget-object v1, Lorg/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object v1

    .line 145
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/conscrypt/ct/CTLogInfo;->verifySingleSCT(Lorg/conscrypt/ct/SignedCertificateTimestamp;Lorg/conscrypt/ct/CertificateEntry;)Lorg/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public verifySignedCertificateTimestamps(Ljava/util/List;[B[B)Lorg/conscrypt/ct/CTVerificationResult;
    .locals 6
    .param p2, "tlsData"    # [B
    .param p3, "ocspData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;[B[B)",
            "Lorg/conscrypt/ct/CTVerificationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 39
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/conscrypt/OpenSSLX509Certificate;

    .line 40
    .local v0, "certs":[Lorg/conscrypt/OpenSSLX509Certificate;
    const/4 v1, 0x0

    .line 41
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 42
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-static {v3}, Lorg/conscrypt/OpenSSLX509Certificate;->fromCertificate(Ljava/security/cert/Certificate;)Lorg/conscrypt/OpenSSLX509Certificate;

    move-result-object v5

    aput-object v5, v0, v1

    .line 43
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    move v1, v4

    goto :goto_0

    .line 44
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lorg/conscrypt/ct/CTVerifier;->verifySignedCertificateTimestamps([Lorg/conscrypt/OpenSSLX509Certificate;[B[B)Lorg/conscrypt/ct/CTVerificationResult;

    move-result-object v2

    return-object v2
.end method

.method public verifySignedCertificateTimestamps([Lorg/conscrypt/OpenSSLX509Certificate;[B[B)Lorg/conscrypt/ct/CTVerificationResult;
    .locals 5
    .param p1, "chain"    # [Lorg/conscrypt/OpenSSLX509Certificate;
    .param p2, "tlsData"    # [B
    .param p3, "ocspData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 55
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 61
    .local v1, "leaf":Lorg/conscrypt/OpenSSLX509Certificate;
    new-instance v2, Lorg/conscrypt/ct/CTVerificationResult;

    invoke-direct {v2}, Lorg/conscrypt/ct/CTVerificationResult;-><init>()V

    .line 62
    .local v2, "result":Lorg/conscrypt/ct/CTVerificationResult;
    invoke-direct {p0, p2}, Lorg/conscrypt/ct/CTVerifier;->getSCTsFromTLSExtension([B)Ljava/util/List;

    move-result-object v3

    .line 63
    .local v3, "tlsScts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-direct {p0, v3, v1, v2}, Lorg/conscrypt/ct/CTVerifier;->verifyExternalSCTs(Ljava/util/List;Lorg/conscrypt/OpenSSLX509Certificate;Lorg/conscrypt/ct/CTVerificationResult;)V

    .line 65
    invoke-direct {p0, p3, p1}, Lorg/conscrypt/ct/CTVerifier;->getSCTsFromOCSPResponse([B[Lorg/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;

    move-result-object v4

    .line 66
    .local v4, "ocspScts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-direct {p0, v4, v1, v2}, Lorg/conscrypt/ct/CTVerifier;->verifyExternalSCTs(Ljava/util/List;Lorg/conscrypt/OpenSSLX509Certificate;Lorg/conscrypt/ct/CTVerificationResult;)V

    .line 68
    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/conscrypt/ct/CTVerifier;->getSCTsFromX509Extension(Lorg/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "embeddedScts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-direct {p0, v0, p1, v2}, Lorg/conscrypt/ct/CTVerifier;->verifyEmbeddedSCTs(Ljava/util/List;[Lorg/conscrypt/OpenSSLX509Certificate;Lorg/conscrypt/ct/CTVerificationResult;)V

    .line 70
    return-object v2

    .line 56
    .end local v0    # "embeddedScts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    .end local v1    # "leaf":Lorg/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "result":Lorg/conscrypt/ct/CTVerificationResult;
    .end local v3    # "tlsScts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    .end local v4    # "ocspScts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Chain of certificates mustn\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
