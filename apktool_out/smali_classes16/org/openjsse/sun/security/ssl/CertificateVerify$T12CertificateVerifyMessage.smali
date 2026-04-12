.class final Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "CertificateVerify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateVerify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "T12CertificateVerifyMessage"
.end annotation


# instance fields
.field private final signature:[B

.field private final signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 622
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 629
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_6

    .line 635
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 636
    .local v1, "ssid":I
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->valueOf(I)Lorg/openjsse/sun/security/ssl/SignatureScheme;

    move-result-object v2

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 637
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    const-string v3, ") used in CertificateVerify handshake message"

    if-eqz v2, :cond_5

    .line 643
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "Unsupported signature algorithm ("

    if-eqz v2, :cond_4

    .line 651
    const/4 v2, 0x0

    .line 652
    .local v2, "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeCredentials:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjsse/sun/security/ssl/SSLCredentials;

    .line 653
    .local v6, "cd":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    instance-of v7, v6, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    if-eqz v7, :cond_0

    .line 654
    move-object v2, v6

    check-cast v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    .line 655
    goto :goto_1

    .line 657
    .end local v6    # "cd":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    :cond_0
    goto :goto_0

    .line 659
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    iget-object v5, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    if-eqz v5, :cond_3

    .line 666
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v5

    iput-object v5, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;->signature:[B

    .line 668
    :try_start_0
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget-object v6, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    .line 669
    invoke-virtual {v5, v6}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getVerifier(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v5

    .line 670
    .local v5, "signer":Ljava/security/Signature;
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v6}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->archived()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/Signature;->update([B)V

    .line 671
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;->signature:[B

    invoke-virtual {v5, v6}, Ljava/security/Signature;->verify([B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 684
    .end local v5    # "signer":Ljava/security/Signature;
    nop

    .line 685
    return-void

    .line 672
    .restart local v5    # "signer":Ljava/security/Signature;
    :cond_2
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v7, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v8, "Invalid CertificateVerify signature"

    invoke-virtual {v6, v7, v8}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v6

    .end local v0    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .end local v1    # "ssid":I
    .end local v2    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    .end local p1    # "handshakeContext":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .end local p2    # "m":Ljava/nio/ByteBuffer;
    throw v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v5    # "signer":Ljava/security/Signature;
    .restart local v0    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .restart local v1    # "ssid":I
    .restart local v2    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    .restart local p1    # "handshakeContext":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .restart local p2    # "m":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    .line 682
    .local v3, "ikse":Ljava/security/GeneralSecurityException;
    :goto_2
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v6, "Cannot verify CertificateVerify signature"

    invoke-virtual {v4, v5, v6, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 675
    .end local v3    # "ikse":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v5

    goto :goto_3

    :catch_3
    move-exception v5

    .line 677
    .local v5, "nsae":Ljava/security/GeneralSecurityException;
    :goto_3
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v7, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget-object v8, v8, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v7, v3, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 661
    .end local v5    # "nsae":Ljava/security/GeneralSecurityException;
    :cond_3
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "No X509 credentials negotiated for CertificateVerify"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 644
    .end local v2    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    :cond_4
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 638
    :cond_5
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid signature algorithm ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 630
    .end local v1    # "ssid":I
    :cond_6
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Invalid CertificateVerify message: no sufficient data"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;)V
    .locals 7
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "x509Possession"    # Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 588
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 589
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->peerRequestedSignatureSchemes:Ljava/util/List;

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 590
    invoke-static {v1, p2, v2}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getSignerOfPreferableAlgorithm(Ljava/util/List;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 594
    .local v1, "schemeAndSigner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SignatureScheme;Ljava/security/Signature;>;"
    if-eqz v1, :cond_0

    .line 603
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 604
    const/4 v2, 0x0

    .line 606
    .local v2, "temproary":[B
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Signature;

    .line 607
    .local v3, "signer":Ljava/security/Signature;
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->archived()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/Signature;->update([B)V

    .line 608
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v4
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 612
    .end local v3    # "signer":Ljava/security/Signature;
    nop

    .line 614
    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;->signature:[B

    .line 615
    return-void

    .line 609
    :catch_0
    move-exception v3

    .line 610
    .local v3, "ikse":Ljava/security/SignatureException;
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v6, "Cannot produce CertificateVerify signature"

    invoke-virtual {v4, v5, v6, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 597
    .end local v2    # "temproary":[B
    .end local v3    # "ikse":Ljava/security/SignatureException;
    :cond_0
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No supported CertificateVerify signature algorithm for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 599
    invoke-interface {v5}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 597
    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 689
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 1

    .line 694
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;->signature:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "hos"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->id:I

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 701
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;->signature:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 702
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 706
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"CertificateVerify\": \'{\'\n  \"signature algorithm\": {0}\n  \"signature\": \'{\'\n{1}\n  \'}\'\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 715
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v1}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 716
    .local v1, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$T12CertificateVerifyMessage;->signature:[B

    .line 719
    invoke-virtual {v1, v3}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    .line 718
    const-string v4, "    "

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 722
    .local v2, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
