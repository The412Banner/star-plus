.class final Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "CertificateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "T12CertificateRequestMessage"
.end annotation


# instance fields
.field final algorithmIds:[I

.field final authorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field final types:[B


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 448
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const-string v1, "Invalid CertificateRequest handshake message: no sufficient data"

    const/16 v2, 0x8

    if-lt v0, v2, :cond_7

    .line 453
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->types:[B

    .line 456
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v3, 0x6

    if-lt v0, v3, :cond_6

    .line 462
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 463
    .local v0, "algs":[B
    if-eqz v0, :cond_5

    array-length v3, v0

    if-eqz v3, :cond_5

    array-length v3, v0

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_5

    .line 469
    array-length v3, v0

    shr-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->algorithmIds:[I

    .line 470
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 471
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    aget-byte v3, v0, v3

    .line 472
    .local v3, "hash":B
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget-byte v5, v0, v5

    .line 473
    .local v5, "sign":B
    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->algorithmIds:[I

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "j":I
    .local v8, "j":I
    and-int/lit16 v9, v3, 0xff

    shl-int/2addr v9, v2

    and-int/lit16 v10, v5, 0xff

    or-int/2addr v9, v10

    aput v9, v7, v4

    .line 474
    .end local v3    # "hash":B
    .end local v5    # "sign":B
    move v3, v6

    move v4, v8

    goto :goto_0

    .line 477
    .end local v6    # "i":I
    .end local v8    # "j":I
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    .line 483
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 484
    .local v1, "listLen":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 489
    if-lez v1, :cond_1

    .line 490
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->authorities:Ljava/util/List;

    .line 491
    :goto_1
    if-lez v1, :cond_2

    .line 493
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 494
    .local v2, "encoded":[B
    array-length v4, v2

    add-int/2addr v4, v3

    sub-int/2addr v1, v4

    .line 495
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->authorities:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    .end local v2    # "encoded":[B
    goto :goto_1

    .line 498
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->authorities:Ljava/util/List;

    .line 500
    :cond_2
    return-void

    .line 485
    :cond_3
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "Invalid CertificateRequest message: no sufficient data"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 478
    .end local v1    # "listLen":I
    :cond_4
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v3, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 464
    :cond_5
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Invalid CertificateRequest handshake message: incomplete signature algorithms"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 457
    .end local v0    # "algs":[B
    :cond_6
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v0, v2, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 449
    :cond_7
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v0, v2, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Ljava/security/cert/X509Certificate;Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;Ljava/util/List;)V
    .locals 7
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "trustedCerts"    # [Ljava/security/cert/X509Certificate;
    .param p3, "keyExchange"    # Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/HandshakeContext;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    .local p4, "signatureSchemes":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 416
    invoke-static {}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->access$600()[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->types:[B

    .line 418
    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 423
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->algorithmIds:[I

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "i":I
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 426
    .local v2, "scheme":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->algorithmIds:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    iget v5, v2, Lorg/openjsse/sun/security/ssl/SignatureScheme;->id:I

    aput v5, v3, v0

    .line 427
    .end local v2    # "scheme":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    move v0, v4

    goto :goto_0

    .line 429
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->authorities:Ljava/util/List;

    .line 430
    array-length v1, p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 431
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 432
    .local v4, "x500Principal":Ljavax/security/auth/x500/X500Principal;
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->authorities:Ljava/util/List;

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "x500Principal":Ljavax/security/auth/x500/X500Principal;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 434
    :cond_1
    return-void

    .line 419
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v2, "No signature algorithms specified for CertificateRequest hanshake message"

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method getAuthorities()[Ljavax/security/auth/x500/X500Principal;
    .locals 4

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->authorities:Ljava/util/List;

    .line 508
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 509
    .local v0, "principals":Ljava/util/List;, "Ljava/util/List<Ljavax/security/auth/x500/X500Principal;>;"
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->authorities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 510
    .local v2, "encoded":[B
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v3, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    .line 511
    .local v3, "principal":Ljavax/security/auth/x500/X500Principal;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    .end local v2    # "encoded":[B
    .end local v3    # "principal":Ljavax/security/auth/x500/X500Principal;
    goto :goto_0

    .line 514
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljavax/security/auth/x500/X500Principal;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/security/auth/x500/X500Principal;

    return-object v1
.end method

.method getKeyTypes()[Ljava/lang/String;
    .locals 1

    .line 503
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->types:[B

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->access$700([B)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 519
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 4

    .line 524
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->types:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->algorithmIds:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 525
    .local v0, "len":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->authorities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 526
    .local v2, "encoded":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 527
    .end local v2    # "encoded":[B
    goto :goto_0

    .line 528
    :cond_0
    return v0
.end method

.method public send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 5
    .param p1, "hos"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->types:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, "listLen":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->authorities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 537
    .local v2, "encoded":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 538
    .end local v2    # "encoded":[B
    goto :goto_0

    .line 540
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->algorithmIds:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 541
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->algorithmIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 542
    .local v4, "algorithmId":I
    invoke-virtual {p1, v4}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 541
    .end local v4    # "algorithmId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 545
    :cond_1
    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 546
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->authorities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 547
    .restart local v2    # "encoded":[B
    invoke-virtual {p1, v2}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 548
    .end local v2    # "encoded":[B
    goto :goto_2

    .line 549
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 553
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"CertificateRequest\": \'{\'\n  \"certificate types\": {0}\n  \"supported signature algorithms\": {1}\n  \"certificate authorities\": {2}\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 561
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->types:[B

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 562
    .local v1, "typeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->types:[B

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-byte v6, v2, v5

    .line 563
    .local v6, "type":B
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;->access$800(B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    .end local v6    # "type":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 566
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->algorithmIds:[I

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 567
    .local v2, "algorithmNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->algorithmIds:[I

    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_1

    aget v6, v3, v4

    .line 568
    .local v6, "algorithmId":I
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->nameOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    .end local v6    # "algorithmId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 571
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->authorities:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 572
    .local v3, "authorityNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->authorities:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 573
    .local v5, "encoded":[B
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v6, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    .line 574
    .local v6, "principal":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    .end local v5    # "encoded":[B
    .end local v6    # "principal":Ljavax/security/auth/x500/X500Principal;
    goto :goto_2

    .line 576
    :cond_2
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v4

    .line 582
    .local v4, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
