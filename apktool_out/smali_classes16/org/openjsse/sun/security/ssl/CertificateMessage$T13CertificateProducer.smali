.class final Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateProducer;
.super Ljava/lang/Object;
.source "CertificateMessage.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T13CertificateProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 950
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateMessage$1;

    .line 946
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateProducer;-><init>()V

    return-void
.end method

.method private static choosePossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)Lorg/openjsse/sun/security/ssl/SSLPossession;
    .locals 10
    .param p0, "hc"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p1, "clientHello"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1036
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->peerRequestedCertSignSchemes:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ssl,handshake"

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->peerRequestedCertSignSchemes:Ljava/util/List;

    .line 1037
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1045
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1046
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

    .line 1047
    .local v5, "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    iget-object v6, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->keyAlgorithm:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "Unsupported authentication scheme: "

    if-eqz v6, :cond_2

    .line 1048
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_1

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1049
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

    .line 1057
    :cond_2
    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->peerRequestedSignatureSchemes:Ljava/util/List;

    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-static {v6, v5, v8}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getPreferableAlgorithm(Ljava/util/List;Lorg/openjsse/sun/security/ssl/SignatureScheme;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/SignatureScheme;

    move-result-object v6

    if-nez v6, :cond_4

    .line 1061
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1062
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

    .line 1066
    :cond_3
    iget-object v6, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->keyAlgorithm:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1067
    goto :goto_0

    .line 1070
    :cond_4
    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/X509Authentication;->valueOf(Lorg/openjsse/sun/security/ssl/SignatureScheme;)Lorg/openjsse/sun/security/ssl/X509Authentication;

    move-result-object v6

    .line 1071
    .local v6, "ka":Lorg/openjsse/sun/security/ssl/SSLAuthentication;
    if-nez v6, :cond_6

    .line 1072
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_5

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1073
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

    .line 1076
    :cond_5
    iget-object v7, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->keyAlgorithm:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1077
    goto/16 :goto_0

    .line 1080
    :cond_6
    invoke-interface {v6, p0}, Lorg/openjsse/sun/security/ssl/SSLAuthentication;->createPossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Lorg/openjsse/sun/security/ssl/SSLPossession;

    move-result-object v7

    .line 1081
    .local v7, "pos":Lorg/openjsse/sun/security/ssl/SSLPossession;
    if-nez v7, :cond_7

    .line 1082
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_1

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1083
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

    .line 1089
    :cond_7
    return-object v7

    .line 1092
    .end local v5    # "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    .end local v6    # "ka":Lorg/openjsse/sun/security/ssl/SSLAuthentication;
    .end local v7    # "pos":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_8
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_9

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1093
    const-string v3, "No available authentication scheme"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    :cond_9
    return-object v1

    .line 1038
    .end local v0    # "checkedKeyTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_a
    :goto_1
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_b

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1039
    const-string v0, "No signature_algorithms(_cert) in ClientHello"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1042
    :cond_b
    return-object v1
.end method

.method private onProduceCertificate(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 7
    .param p1, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1100
    move-object v0, p2

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 1101
    .local v0, "clientHello":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    invoke-static {p1, v0}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateProducer;->choosePossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)Lorg/openjsse/sun/security/ssl/SSLPossession;

    move-result-object v1

    .line 1103
    .local v1, "pos":Lorg/openjsse/sun/security/ssl/SSLPossession;
    const-string v2, "ssl,handshake"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 1104
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1105
    const-string v4, "No available client authentication scheme"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1107
    :cond_0
    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    .local v3, "localCerts":[Ljava/security/cert/X509Certificate;
    goto :goto_0

    .line 1109
    .end local v3    # "localCerts":[Ljava/security/cert/X509Certificate;
    :cond_1
    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1110
    instance-of v4, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    if-nez v4, :cond_3

    .line 1111
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1112
    const-string v4, "No X.509 certificate for client authentication"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    :cond_2
    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    .restart local v3    # "localCerts":[Ljava/security/cert/X509Certificate;
    goto :goto_0

    .line 1117
    .end local v3    # "localCerts":[Ljava/security/cert/X509Certificate;
    :cond_3
    move-object v3, v1

    check-cast v3, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    .line 1118
    .local v3, "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    iget-object v4, v3, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popCerts:[Ljava/security/cert/X509Certificate;

    .line 1119
    .local v4, "localCerts":[Ljava/security/cert/X509Certificate;
    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-object v6, v3, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setLocalPrivateKey(Ljava/security/PrivateKey;)V

    move-object v3, v4

    .line 1124
    .end local v4    # "localCerts":[Ljava/security/cert/X509Certificate;
    .local v3, "localCerts":[Ljava/security/cert/X509Certificate;
    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_4

    array-length v5, v3

    if-eqz v5, :cond_4

    .line 1125
    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v5, v3}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setLocalCertificates([Ljava/security/cert/X509Certificate;)V

    goto :goto_1

    .line 1127
    :cond_4
    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v5, v4}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setLocalCertificates([Ljava/security/cert/X509Certificate;)V

    .line 1132
    :goto_1
    :try_start_0
    new-instance v5, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;

    iget-object v6, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->certRequestContext:[B

    invoke-direct {v5, p1, v6, v3}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;[B[Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    .local v5, "cm":Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;
    nop

    .line 1138
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_5

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1139
    const-string v2, "Produced client Certificate message"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1143
    :cond_5
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v5, v2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 1144
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 1147
    return-object v4

    .line 1134
    .end local v5    # "cm":Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;
    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    .line 1135
    .local v2, "ce":Ljava/lang/Exception;
    :goto_2
    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v6, "Failed to produce client Certificate message"

    invoke-virtual {v4, v5, v6, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4
.end method

.method private onProduceCertificate(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 9
    .param p1, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    move-object v0, p2

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 970
    .local v0, "clientHello":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    invoke-static {p1, v0}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateProducer;->choosePossession(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)Lorg/openjsse/sun/security/ssl/SSLPossession;

    move-result-object v1

    .line 971
    .local v1, "pos":Lorg/openjsse/sun/security/ssl/SSLPossession;
    if-eqz v1, :cond_5

    .line 976
    instance-of v2, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    const-string v3, "No X.509 certificate for server authentication"

    if-eqz v2, :cond_4

    .line 981
    move-object v2, v1

    check-cast v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    .line 982
    .local v2, "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    iget-object v4, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popCerts:[Ljava/security/cert/X509Certificate;

    .line 983
    .local v4, "localCerts":[Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_3

    array-length v5, v4

    if-eqz v5, :cond_3

    .line 989
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-object v5, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v3, v5}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setLocalPrivateKey(Ljava/security/PrivateKey;)V

    .line 992
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setLocalCertificates([Ljava/security/cert/X509Certificate;)V

    .line 995
    :try_start_0
    new-instance v3, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;

    const/4 v5, 0x0

    new-array v6, v5, [B

    invoke-direct {v3, p1, v6, v4}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;[B[Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    .local v3, "cm":Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;
    nop

    .line 1004
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/StatusResponseManager;->processStapling(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;)Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;

    move-result-object v6

    iput-object v6, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->stapleParams:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;

    .line 1005
    iget-object v6, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->stapleParams:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    iput-boolean v5, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->staplingActive:Z

    .line 1013
    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v7, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->PROTOCOLS_OF_13:[Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 1015
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 1013
    invoke-virtual {v5, v6, v7}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;Ljava/util/List;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v5

    .line 1016
    .local v5, "enabledCTExts":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->access$600(Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    .line 1017
    .local v7, "certEnt":Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
    iput-object v7, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->currentCertEntry:Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    .line 1018
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->access$500(Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;)Lorg/openjsse/sun/security/ssl/SSLExtensions;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->produce(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 1019
    .end local v7    # "certEnt":Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;
    goto :goto_0

    .line 1021
    :cond_1
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_2

    const-string v6, "ssl,handshake"

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1022
    const-string v6, "Produced server Certificate message"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1026
    :cond_2
    iget-object v6, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v3, v6}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 1027
    iget-object v6, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v6}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 1030
    const/4 v6, 0x0

    return-object v6

    .line 996
    .end local v3    # "cm":Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;
    .end local v5    # "enabledCTExts":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 997
    .local v3, "ce":Ljava/lang/Exception;
    :goto_1
    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v7, "Failed to produce server Certificate message"

    invoke-virtual {v5, v6, v7, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    .line 984
    .end local v3    # "ce":Ljava/lang/Exception;
    :cond_3
    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v5, v6, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 977
    .end local v2    # "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    .end local v4    # "localCerts":[Ljava/security/cert/X509Certificate;
    :cond_4
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v4, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 972
    :cond_5
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "No available authentication scheme"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 2
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 957
    .local v0, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v1, :cond_0

    .line 958
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    invoke-direct {p0, v1, p2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateProducer;->onProduceCertificate(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    move-result-object v1

    return-object v1

    .line 961
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    invoke-direct {p0, v1, p2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateProducer;->onProduceCertificate(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    move-result-object v1

    return-object v1
.end method
