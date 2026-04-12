.class final Lorg/conscrypt/OpenSSLX509CRL;
.super Ljava/security/cert/X509CRL;
.source "OpenSSLX509CRL.java"


# instance fields
.field private final mContext:J

.field private final nextUpdate:Ljava/util/Date;

.field private final thisUpdate:Ljava/util/Date;


# direct methods
.method private constructor <init>(J)V
    .locals 2
    .param p1, "ctx"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 57
    iput-wide p1, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 60
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->X509_CRL_get_lastUpdate(JLorg/conscrypt/OpenSSLX509CRL;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/conscrypt/OpenSSLX509CRL;->toDate(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->thisUpdate:Ljava/util/Date;

    .line 61
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->X509_CRL_get_nextUpdate(JLorg/conscrypt/OpenSSLX509CRL;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/conscrypt/OpenSSLX509CRL;->toDate(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->nextUpdate:Ljava/util/Date;

    .line 62
    return-void
.end method

.method static fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lorg/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 94
    .local v0, "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lorg/conscrypt/NativeCrypto;->d2i_PKCS7_bio(JI)[J

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 99
    nop

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509CRL;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 103
    aget-wide v4, v1, v3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 104
    goto :goto_1

    .line 106
    :cond_0
    new-instance v4, Lorg/conscrypt/OpenSSLX509CRL;

    aget-wide v5, v1, v3

    invoke-direct {v4, v5, v6}, Lorg/conscrypt/OpenSSLX509CRL;-><init>(J)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 98
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509CRL;>;"
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_2
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v1
.end method

.method static fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lorg/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 129
    new-instance v0, Lorg/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 133
    .local v0, "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lorg/conscrypt/NativeCrypto;->PEM_read_bio_PKCS7(JI)[J

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 139
    nop

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509CRL;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 143
    aget-wide v4, v1, v3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 144
    goto :goto_1

    .line 146
    :cond_0
    new-instance v4, Lorg/conscrypt/OpenSSLX509CRL;

    aget-wide v5, v1, v3

    invoke-direct {v4, v5, v6}, Lorg/conscrypt/OpenSSLX509CRL;-><init>(J)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 138
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509CRL;>;"
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_2
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v1
.end method

.method static fromX509DerInputStream(Ljava/io/InputStream;)Lorg/conscrypt/OpenSSLX509CRL;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 73
    new-instance v0, Lorg/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 76
    .local v0, "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->d2i_X509_CRL_bio(J)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .local v1, "crlCtx":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 78
    nop

    .line 84
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 78
    const/4 v3, 0x0

    return-object v3

    .line 80
    :cond_0
    :try_start_1
    new-instance v3, Lorg/conscrypt/OpenSSLX509CRL;

    invoke-direct {v3, v1, v2}, Lorg/conscrypt/OpenSSLX509CRL;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 80
    return-object v3

    .line 84
    .end local v1    # "crlCtx":J
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v1
.end method

.method static fromX509PemInputStream(Ljava/io/InputStream;)Lorg/conscrypt/OpenSSLX509CRL;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 112
    new-instance v0, Lorg/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 115
    .local v0, "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->PEM_read_bio_X509_CRL(J)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .local v1, "crlCtx":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 117
    nop

    .line 123
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 117
    const/4 v3, 0x0

    return-object v3

    .line 119
    :cond_0
    :try_start_1
    new-instance v3, Lorg/conscrypt/OpenSSLX509CRL;

    invoke-direct {v3, v1, v2}, Lorg/conscrypt/OpenSSLX509CRL;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 119
    return-object v3

    .line 123
    .end local v1    # "crlCtx":J
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v1
.end method

.method static toDate(J)Ljava/util/Date;
    .locals 3
    .param p0, "asn1time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 66
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 67
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 68
    invoke-static {p0, p1, v0}, Lorg/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 69
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509CRL;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "sigAlg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509CRL;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_0
    if-nez p2, :cond_1

    .line 233
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .local v1, "sig":Ljava/security/Signature;
    goto :goto_0

    .line 235
    .end local v1    # "sig":Ljava/security/Signature;
    :cond_1
    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 238
    .restart local v1    # "sig":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 239
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509CRL;->getTBSCertList()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 240
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509CRL;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    return-void

    .line 241
    :cond_2
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "signature did not verify"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private verifyOpenSSL(Lorg/conscrypt/OpenSSLKey;)V
    .locals 3
    .param p1, "pkey"    # Lorg/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 217
    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->X509_CRL_verify(JLorg/conscrypt/OpenSSLX509CRL;Lorg/conscrypt/NativeRef$EVP_PKEY;)V
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    nop

    .line 221
    return-void

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 417
    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 418
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->X509_CRL_free(JLorg/conscrypt/OpenSSLX509CRL;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 422
    nop

    .line 423
    return-void

    .line 421
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 154
    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JLorg/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v1, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 162
    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3}, Lorg/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JLorg/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 164
    const/4 v1, 0x0

    return-object v1

    .line 167
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 211
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->i2d_X509_CRL(JLorg/conscrypt/OpenSSLX509CRL;)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2
    .param p1, "oid"    # Ljava/lang/String;

    .line 172
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0, p1}, Lorg/conscrypt/NativeCrypto;->X509_CRL_get_ext_oid(JLorg/conscrypt/OpenSSLX509CRL;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    .line 271
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 2

    .line 276
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->X509_CRL_get_issuer_name(JLorg/conscrypt/OpenSSLX509CRL;)[B

    move-result-object v0

    .line 277
    .local v0, "issuer":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 178
    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JLorg/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "nonCritOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v1, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 187
    const/4 v3, 0x1

    invoke-static {v1, v2, p0, v3}, Lorg/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JLorg/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 189
    const/4 v1, 0x0

    return-object v1

    .line 192
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .locals 6
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .line 292
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 293
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 292
    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->X509_CRL_get0_by_serial(JLorg/conscrypt/OpenSSLX509CRL;[B)J

    move-result-wide v0

    .line 294
    .local v0, "revokedRef":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 295
    return-object v3

    .line 298
    :cond_0
    :try_start_0
    new-instance v2, Lorg/conscrypt/OpenSSLX509CRLEntry;

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->X509_REVOKED_dup(J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 299
    :catch_0
    move-exception v2

    .line 300
    .local v2, "e":Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    return-object v3
.end method

.method public getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .locals 7
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 306
    instance-of v0, p1, Lorg/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_1

    .line 307
    move-object v0, p1

    check-cast v0, Lorg/conscrypt/OpenSSLX509Certificate;

    .line 308
    .local v0, "osslCert":Lorg/conscrypt/OpenSSLX509Certificate;
    iget-wide v1, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 309
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v4

    .line 308
    move-object v3, p0

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lorg/conscrypt/NativeCrypto;->X509_CRL_get0_by_cert(JLorg/conscrypt/OpenSSLX509CRL;JLorg/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v1

    .line 311
    .local v1, "x509RevokedRef":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 312
    return-object v4

    .line 316
    :cond_0
    :try_start_0
    new-instance v3, Lorg/conscrypt/OpenSSLX509CRLEntry;

    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->X509_REVOKED_dup(J)J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Lorg/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 317
    :catch_0
    move-exception v3

    .line 318
    .local v3, "e":Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    return-object v4

    .line 322
    .end local v0    # "osslCert":Lorg/conscrypt/OpenSSLX509Certificate;
    .end local v1    # "x509RevokedRef":J
    .end local v3    # "e":Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLX509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation

    .line 327
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->X509_CRL_get_REVOKED(JLorg/conscrypt/OpenSSLX509CRL;)[J

    move-result-object v0

    .line 328
    .local v0, "entryRefs":[J
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 332
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 333
    .local v1, "crlSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/conscrypt/OpenSSLX509CRLEntry;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-wide v4, v0, v3

    .line 335
    .local v4, "entryRef":J
    :try_start_0
    new-instance v6, Lorg/conscrypt/OpenSSLX509CRLEntry;

    invoke-direct {v6, v4, v5}, Lorg/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    goto :goto_1

    .line 336
    :catch_0
    move-exception v6

    .line 333
    .end local v4    # "entryRef":J
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    :cond_1
    return-object v1

    .line 329
    .end local v1    # "crlSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/conscrypt/OpenSSLX509CRLEntry;>;"
    :cond_2
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 2

    .line 356
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509CRL;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "oid":Ljava/lang/String;
    invoke-static {v0}, Lorg/conscrypt/OidData;->oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "algName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 359
    return-object v1

    .line 361
    :cond_0
    invoke-static {v0}, Lorg/conscrypt/Platform;->oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_1

    .line 363
    return-object v1

    .line 365
    :cond_1
    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 2

    .line 370
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_CRL_sig_alg_oid(JLorg/conscrypt/OpenSSLX509CRL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 2

    .line 375
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_CRL_sig_alg_parameter(JLorg/conscrypt/OpenSSLX509CRL;)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 2

    .line 351
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_CRL_signature(JLorg/conscrypt/OpenSSLX509CRL;)[B

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertList()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 346
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_CRL_crl_enc(JLorg/conscrypt/OpenSSLX509CRL;)[B

    move-result-object v0

    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getVersion()I
    .locals 2

    .line 266
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->X509_CRL_get_version(JLorg/conscrypt/OpenSSLX509CRL;)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 9

    .line 197
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 198
    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JLorg/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "criticalOids":[Ljava/lang/String;
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 200
    .local v5, "oid":Ljava/lang/String;
    iget-wide v6, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v6, v7, p0, v5}, Lorg/conscrypt/NativeCrypto;->X509_CRL_get_ext(JLorg/conscrypt/OpenSSLX509CRL;Ljava/lang/String;)J

    move-result-wide v6

    .line 201
    .local v6, "extensionRef":J
    invoke-static {v6, v7}, Lorg/conscrypt/NativeCrypto;->X509_supported_extension(J)I

    move-result v8

    if-eq v8, v2, :cond_0

    .line 202
    return v2

    .line 199
    .end local v5    # "oid":Ljava/lang/String;
    .end local v6    # "extensionRef":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 206
    :cond_1
    return v3
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .locals 8
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 380
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 381
    return v1

    .line 385
    :cond_0
    instance-of v0, p1, Lorg/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_1

    .line 386
    move-object v0, p1

    check-cast v0, Lorg/conscrypt/OpenSSLX509Certificate;

    .local v0, "osslCert":Lorg/conscrypt/OpenSSLX509Certificate;
    goto :goto_0

    .line 389
    .end local v0    # "osslCert":Lorg/conscrypt/OpenSSLX509Certificate;
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 390
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 389
    invoke-static {v0}, Lorg/conscrypt/OpenSSLX509Certificate;->fromX509DerInputStream(Ljava/io/InputStream;)Lorg/conscrypt/OpenSSLX509Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .restart local v0    # "osslCert":Lorg/conscrypt/OpenSSLX509Certificate;
    nop

    .line 396
    :goto_0
    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 397
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v5

    .line 396
    move-object v4, p0

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lorg/conscrypt/NativeCrypto;->X509_CRL_get0_by_cert(JLorg/conscrypt/OpenSSLX509CRL;JLorg/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v2

    .line 399
    .local v2, "x509RevokedRef":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 391
    .end local v0    # "osslCert":Lorg/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "x509RevokedRef":J
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "cannot convert certificate"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 404
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 405
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v1

    .line 407
    .local v1, "bioCtx":J
    :try_start_0
    iget-wide v3, p0, Lorg/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v1, v2, v3, v4, p0}, Lorg/conscrypt/NativeCrypto;->X509_CRL_print(JJLorg/conscrypt/OpenSSLX509CRL;)V

    .line 408
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 408
    return-object v3

    .line 410
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V

    throw v3
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 248
    instance-of v0, p1, Lorg/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_0

    .line 249
    move-object v0, p1

    check-cast v0, Lorg/conscrypt/OpenSSLKeyHolder;

    invoke-interface {v0}, Lorg/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 250
    .local v0, "pkey":Lorg/conscrypt/OpenSSLKey;
    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLX509CRL;->verifyOpenSSL(Lorg/conscrypt/OpenSSLKey;)V

    .line 251
    return-void

    .line 254
    .end local v0    # "pkey":Lorg/conscrypt/OpenSSLKey;
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSSLX509CRL;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLX509CRL;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 262
    return-void
.end method
