.class final Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestConsumer;
.super Ljava/lang/Object;
.source "CertificateRequest.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T12CertificateRequestConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateRequest$1;

    .line 645
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestConsumer;-><init>()V

    return-void
.end method

.method private static choosePossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLPossession;
    .locals 10
    .param p0, "hc"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->peerRequestedCertSignSchemes:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ssl,handshake"

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->peerRequestedCertSignSchemes:Ljava/util/List;

    .line 719
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 727
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 728
    .local v0, "checkedKeyTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->peerRequestedCertSignSchemes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 729
    .local v5, "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    iget-object v6, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->keyAlgorithm:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "Unsupported authentication scheme: "

    if-eqz v6, :cond_2

    .line 730
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_1

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 731
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 739
    :cond_2
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->peerRequestedSignatureSchemes:Ljava/util/List;

    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-static {v6, v5, v8}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getPreferableAlgorithm(Ljava/util/List;Lorg/openjsse/sun/security/ssl/SignatureScheme;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SignatureScheme;

    move-result-object v6

    if-nez v6, :cond_4

    .line 743
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 744
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to produce CertificateVerify for signature scheme: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    :cond_3
    iget-object v6, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->keyAlgorithm:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 749
    goto :goto_0

    .line 752
    :cond_4
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/X509Authentication;->valueOf(Lorg/openjsse/sun/security/ssl/SignatureScheme;)Lorg/openjsse/sun/security/ssl/X509Authentication;

    move-result-object v6

    .line 753
    .local v6, "ka":Lorg/openjsse/sun/security/ssl/SSLAuthentication;
    if-nez v6, :cond_6

    .line 754
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_5

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 755
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    :cond_5
    iget-object v7, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->keyAlgorithm:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 759
    goto/16 :goto_0

    .line 762
    :cond_6
    invoke-interface {v6, p0}, Lorg/openjsse/sun/security/ssl/SSLAuthentication;->createPossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLPossession;

    move-result-object v7

    .line 763
    .local v7, "pos":Lorg/openjsse/sun/security/ssl/SSLPossession;
    if-nez v7, :cond_7

    .line 764
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_1

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 765
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unavailable authentication scheme: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 771
    :cond_7
    return-object v7

    .line 774
    .end local v5    # "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    .end local v6    # "ka":Lorg/openjsse/sun/security/ssl/SSLAuthentication;
    .end local v7    # "pos":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_8
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_9

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 775
    const-string v3, "No available authentication scheme"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    :cond_9
    return-object v1

    .line 720
    .end local v0    # "checkedKeyTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_a
    :goto_1
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_b

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 721
    const-string v0, "No signature and hash algorithms in CertificateRequest"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    :cond_b
    return-object v1
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 658
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_STATUS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 661
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 660
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 662
    .local v1, "certStatCons":Lorg/openjsse/sun/security/ssl/SSLConsumer;
    if-eqz v1, :cond_0

    .line 666
    sget-object v2, Lorg/openjsse/sun/security/ssl/CertificateStatus;->handshakeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lorg/openjsse/sun/security/ssl/HandshakeAbsence;->absent(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    .line 669
    :cond_0
    new-instance v2, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;

    invoke-direct {v2, v0, p2}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 671
    .local v2, "crm":Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_1

    const-string v3, "ssl,handshake"

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 672
    const-string v3, "Consuming CertificateRequest handshake message"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    :cond_1
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 690
    .local v3, "sss":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    iget-object v4, v2, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->algorithmIds:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget v7, v4, v6

    .line 691
    .local v7, "id":I
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->valueOf(I)Lorg/openjsse/sun/security/ssl/SignatureScheme;

    move-result-object v8

    .line 692
    .local v8, "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    if-eqz v8, :cond_2

    .line 693
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    .end local v7    # "id":I
    .end local v8    # "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 696
    :cond_3
    iput-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->peerRequestedSignatureSchemes:Ljava/util/List;

    .line 697
    iput-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->peerRequestedCertSignSchemes:Ljava/util/List;

    .line 698
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v4, v3}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setPeerSupportedSignatureAlgorithms(Ljava/util/Collection;)V

    .line 699
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;->getAuthorities()[Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    iput-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->peerSupportedAuthorities:[Ljavax/security/auth/x500/X500Principal;

    .line 706
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestConsumer;->choosePossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLPossession;

    move-result-object v4

    .line 707
    .local v4, "pos":Lorg/openjsse/sun/security/ssl/SSLPossession;
    if-nez v4, :cond_4

    .line 708
    return-void

    .line 711
    :cond_4
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v6, v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    return-void
.end method
