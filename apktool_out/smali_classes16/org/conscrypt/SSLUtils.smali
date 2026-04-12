.class final Lorg/conscrypt/SSLUtils;
.super Ljava/lang/Object;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/SSLUtils$EngineStates;,
        Lorg/conscrypt/SSLUtils$SessionType;
    }
.end annotation


# static fields
.field private static final KEY_TYPE_EC:Ljava/lang/String; = "EC"

.field private static final KEY_TYPE_RSA:Ljava/lang/String; = "RSA"

.field private static final MAX_ENCRYPTION_OVERHEAD_DIFF:I = 0x7fffffa9

.field private static final MAX_ENCRYPTION_OVERHEAD_LENGTH:I = 0x56

.field private static final MAX_PROTOCOL_LENGTH:I = 0xff

.field static final USE_ENGINE_SOCKET_BY_DEFAULT:Z

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    nop

    .line 65
    const-string v0, "org.conscrypt.useEngineSocketByDefault"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/conscrypt/SSLUtils;->USE_ENGINE_SOCKET_BY_DEFAULT:Z

    .line 68
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/SSLUtils;->US_ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateOutNetBufSize(I)I
    .locals 2
    .param p0, "pendingBytes"    # I

    .line 349
    nop

    .line 350
    const v0, 0x7fffffa9

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x56

    .line 349
    const/16 v1, 0x4145

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method static varargs concat([[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "arrays"    # [[Ljava/lang/String;

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "resultLength":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 569
    .local v4, "array":[Ljava/lang/String;
    array-length v5, v4

    add-int/2addr v0, v5

    .line 568
    .end local v4    # "array":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 571
    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    .line 572
    .local v1, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 573
    .local v3, "resultOffset":I
    array-length v4, p0

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p0, v5

    .line 574
    .local v6, "array":[Ljava/lang/String;
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    array-length v7, v6

    add-int/2addr v3, v7

    .line 573
    .end local v6    # "array":[Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 577
    :cond_1
    return-object v1
.end method

.method static decodeProtocols([B)[Ljava/lang/String;
    .locals 9
    .param p0, "protocols"    # [B

    .line 396
    array-length v0, p0

    if-nez v0, :cond_0

    .line 397
    sget-object v0, Lorg/conscrypt/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    .line 400
    :cond_0
    const/4 v0, 0x0

    .line 401
    .local v0, "numProtocols":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 402
    aget-byte v2, p0, v1

    .line 403
    .local v2, "protocolLength":I
    if-ltz v2, :cond_2

    array-length v3, p0

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_1

    goto :goto_1

    .line 410
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 411
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v3

    .line 412
    .end local v2    # "protocolLength":I
    goto :goto_0

    .line 404
    .restart local v2    # "protocolLength":I
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Protocol has invalid length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 406
    array-length v5, p0

    const/16 v6, 0x32

    if-ge v5, v6, :cond_3

    .line 407
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " byte array"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 414
    .end local v1    # "i":I
    .end local v2    # "protocolLength":I
    :cond_4
    new-array v1, v0, [Ljava/lang/String;

    .line 415
    .local v1, "decoded":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "d":I
    :goto_3
    array-length v4, p0

    if-ge v2, v4, :cond_6

    .line 416
    aget-byte v4, p0, v2

    .line 417
    .local v4, "protocolLength":I
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "d":I
    .local v5, "d":I
    if-lez v4, :cond_5

    .line 418
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    sget-object v8, Lorg/conscrypt/SSLUtils;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, p0, v7, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_4

    .line 419
    :cond_5
    const-string v6, ""

    :goto_4
    aput-object v6, v1, v3

    .line 420
    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v3

    .line 421
    .end local v4    # "protocolLength":I
    move v3, v5

    goto :goto_3

    .line 423
    .end local v2    # "i":I
    .end local v5    # "d":I
    :cond_6
    return-object v1
.end method

.method private static decodeX509Certificate(Ljava/security/cert/CertificateFactory;[B)Ljava/security/cert/X509Certificate;
    .locals 1
    .param p0, "certificateFactory"    # Ljava/security/cert/CertificateFactory;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 202
    if-eqz p0, :cond_0

    .line 203
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    return-object v0

    .line 206
    :cond_0
    invoke-static {p1}, Lorg/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lorg/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method static decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;
    .locals 5
    .param p0, "certChain"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 183
    invoke-static {}, Lorg/conscrypt/SSLUtils;->getCertificateFactory()Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 184
    .local v0, "certificateFactory":Ljava/security/cert/CertificateFactory;
    array-length v1, p0

    .line 185
    .local v1, "numCerts":I
    new-array v2, v1, [Ljava/security/cert/X509Certificate;

    .line 186
    .local v2, "decodedCerts":[Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 187
    aget-object v4, p0, v3

    invoke-static {v0, v4}, Lorg/conscrypt/SSLUtils;->decodeX509Certificate(Ljava/security/cert/CertificateFactory;[B)Ljava/security/cert/X509Certificate;

    move-result-object v4

    aput-object v4, v2, v3

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method static encodeProtocols([Ljava/lang/String;)[B
    .locals 11
    .param p0, "protocols"    # [Ljava/lang/String;

    .line 436
    if-eqz p0, :cond_7

    .line 440
    array-length v0, p0

    if-nez v0, :cond_0

    .line 441
    sget-object v0, Lorg/conscrypt/EmptyArray;->BYTE:[B

    return-object v0

    .line 445
    :cond_0
    const/4 v0, 0x0

    .line 446
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 447
    aget-object v2, p0, v1

    .line 448
    .local v2, "protocol":Ljava/lang/String;
    const-string v3, "protocol["

    if-eqz v2, :cond_2

    .line 451
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 455
    .local v4, "protocolLength":I
    if-eqz v4, :cond_1

    const/16 v5, 0xff

    if-gt v4, v5, :cond_1

    .line 461
    add-int/lit8 v3, v4, 0x1

    add-int/2addr v0, v3

    .line 446
    .end local v2    # "protocol":Ljava/lang/String;
    .end local v4    # "protocolLength":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    .restart local v2    # "protocol":Ljava/lang/String;
    .restart local v4    # "protocolLength":I
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] has invalid length: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 449
    .end local v4    # "protocolLength":I
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] is null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 464
    .end local v1    # "i":I
    .end local v2    # "protocol":Ljava/lang/String;
    :cond_3
    new-array v1, v0, [B

    .line 465
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "dataIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_6

    .line 466
    aget-object v4, p0, v3

    .line 467
    .local v4, "protocol":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 470
    .local v5, "protocolLength":I
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "dataIndex":I
    .local v6, "dataIndex":I
    int-to-byte v7, v5

    aput-byte v7, v1, v2

    .line 471
    const/4 v2, 0x0

    .local v2, "ci":I
    :goto_2
    if-ge v2, v5, :cond_5

    .line 472
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 473
    .local v7, "c":C
    const/16 v8, 0x7f

    if-gt v7, v8, :cond_4

    .line 478
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "dataIndex":I
    .local v8, "dataIndex":I
    int-to-byte v9, v7

    aput-byte v9, v1, v6

    .line 471
    .end local v7    # "c":C
    add-int/lit8 v2, v2, 0x1

    move v6, v8

    goto :goto_2

    .line 475
    .end local v8    # "dataIndex":I
    .restart local v6    # "dataIndex":I
    .restart local v7    # "c":C
    :cond_4
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Protocol contains invalid character: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(protocol="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 465
    .end local v2    # "ci":I
    .end local v4    # "protocol":Ljava/lang/String;
    .end local v5    # "protocolLength":I
    .end local v7    # "c":C
    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_1

    .line 481
    .end local v3    # "i":I
    .end local v6    # "dataIndex":I
    :cond_6
    return-object v1

    .line 437
    .end local v0    # "length":I
    .end local v1    # "data":[B
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols array must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static encodeSubjectX509Principals([Ljava/security/cert/X509Certificate;)[[B
    .locals 3
    .param p0, "certificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 312
    array-length v0, p0

    new-array v0, v0, [[B

    .line 313
    .local v0, "principalBytes":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 314
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static getCertificateFactory()Ljava/security/cert/CertificateFactory;
    .locals 2

    .line 194
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/security/cert/CertificateException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static getClientKeyType(B)Ljava/lang/String;
    .locals 1
    .param p0, "clientCertificateType"    # B

    .line 236
    sparse-switch p0, :sswitch_data_0

    .line 242
    const/4 v0, 0x0

    return-object v0

    .line 240
    :sswitch_0
    const-string v0, "EC"

    return-object v0

    .line 238
    :sswitch_1
    const-string v0, "RSA"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method static getClientKeyTypeFromSignatureAlg(I)Ljava/lang/String;
    .locals 1
    .param p0, "signatureAlg"    # I

    .line 249
    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_signature_algorithm_key_type(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 255
    const/4 v0, 0x0

    return-object v0

    .line 253
    :sswitch_0
    const-string v0, "EC"

    return-object v0

    .line 251
    :sswitch_1
    const-string v0, "RSA"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x198 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 529
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 531
    .local v0, "pos":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lorg/conscrypt/SSLUtils;->unsignedByte(B)S

    move-result v1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    .line 539
    return v2

    .line 536
    :pswitch_0
    nop

    .line 543
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lorg/conscrypt/SSLUtils;->unsignedByte(B)S

    move-result v1

    .line 544
    .local v1, "majorVersion":I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    .line 546
    return v2

    .line 550
    :cond_0
    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    invoke-static {v3}, Lorg/conscrypt/SSLUtils;->unsignedShort(S)I

    move-result v3

    const/4 v4, 0x5

    add-int/2addr v3, v4

    .line 551
    .local v3, "packetLength":I
    if-gt v3, v4, :cond_1

    .line 553
    return v2

    .line 555
    :cond_1
    return v3

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I
    .locals 6
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 497
    aget-object v0, p0, p1

    .line 500
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 501
    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1

    .line 506
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 508
    .local v1, "tmp":Ljava/nio/ByteBuffer;
    :goto_0
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .local v2, "offset":I
    aget-object v0, p0, p1

    .line 509
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    .line 510
    .local p1, "pos":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 511
    .local v3, "limit":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 512
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 515
    :cond_1
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 519
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 520
    nop

    .line 521
    .end local v3    # "limit":I
    .end local p1    # "pos":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_2

    .line 524
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 525
    invoke-static {v1}, Lorg/conscrypt/SSLUtils;->getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    .line 521
    :cond_2
    move p1, v2

    goto :goto_0

    .line 518
    .restart local v3    # "limit":I
    .restart local p1    # "pos":I
    :catchall_0
    move-exception v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 519
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v4
.end method

.method static getServerX509KeyType(J)Ljava/lang/String;
    .locals 3
    .param p0, "sslCipherNative"    # J

    .line 215
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->SSL_CIPHER_get_kx_name(J)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "kx_name":Ljava/lang/String;
    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "DHE_RSA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ECDHE_RSA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    const-string v1, "ECDHE_ECDSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    const-string v1, "EC"

    return-object v1

    .line 221
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 217
    :cond_2
    :goto_0
    return-object v1
.end method

.method static getSupportedClientKeyTypes([B[I)Ljava/util/Set;
    .locals 6
    .param p0, "clientCertificateTypes"    # [B
    .param p1, "signatureAlgs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 279
    .local v0, "fromClientCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p0, v3

    .line 280
    .local v4, "keyTypeCode":B
    invoke-static {v4}, Lorg/conscrypt/SSLUtils;->getClientKeyType(B)Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "keyType":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 283
    goto :goto_1

    .line 285
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v4    # "keyTypeCode":B
    .end local v5    # "keyType":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    :cond_1
    new-instance v1, Ljava/util/LinkedHashSet;

    array-length v3, p1

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 289
    .local v1, "fromSigAlgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v3, p1

    :goto_2
    if-ge v2, v3, :cond_3

    aget v4, p1, v2

    .line 290
    .local v4, "signatureAlg":I
    invoke-static {v4}, Lorg/conscrypt/SSLUtils;->getClientKeyTypeFromSignatureAlg(I)Ljava/lang/String;

    move-result-object v5

    .line 291
    .restart local v5    # "keyType":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 293
    goto :goto_3

    .line 295
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v4    # "signatureAlg":I
    .end local v5    # "keyType":Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 300
    :cond_3
    array-length v2, p0

    if-lez v2, :cond_4

    array-length v2, p1

    if-lez v2, :cond_4

    .line 301
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 302
    return-object v1

    .line 303
    :cond_4
    array-length v2, p1

    if-lez v2, :cond_5

    .line 304
    return-object v1

    .line 306
    :cond_5
    return-object v0
.end method

.method static toCertificateChain([Ljava/security/cert/X509Certificate;)[Ljavax/security/cert/X509Certificate;
    .locals 4
    .param p0, "certificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 325
    :try_start_0
    array-length v0, p0

    new-array v0, v0, [Ljavax/security/cert/X509Certificate;

    .line 328
    .local v0, "chain":[Ljavax/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 329
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 330
    .local v2, "encoded":[B
    invoke-static {v2}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v2    # "encoded":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 337
    .end local v0    # "chain":[Ljavax/security/cert/X509Certificate;
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljavax/security/cert/CertificateException;
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v0}, Ljavax/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v1, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 340
    throw v1

    .line 333
    .end local v0    # "e":Ljavax/security/cert/CertificateException;
    .end local v1    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :catch_1
    move-exception v0

    .line 334
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 335
    .restart local v1    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v1, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 336
    throw v1
.end method

.method static toProtocolBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "protocol"    # Ljava/lang/String;

    .line 382
    if-nez p0, :cond_0

    .line 383
    const/4 v0, 0x0

    return-object v0

    .line 385
    :cond_0
    sget-object v0, Lorg/conscrypt/SSLUtils;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method static toProtocolString([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .line 375
    if-nez p0, :cond_0

    .line 376
    const/4 v0, 0x0

    return-object v0

    .line 378
    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/conscrypt/SSLUtils;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method static toSSLException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 368
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_0

    .line 369
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLException;

    return-object v0

    .line 371
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 357
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_0

    .line 358
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLHandshakeException;

    return-object v0

    .line 361
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLHandshakeException;

    return-object v0
.end method

.method private static unsignedByte(B)S
    .locals 1
    .param p0, "b"    # B

    .line 559
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static unsignedShort(S)I
    .locals 1
    .param p0, "s"    # S

    .line 563
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method
