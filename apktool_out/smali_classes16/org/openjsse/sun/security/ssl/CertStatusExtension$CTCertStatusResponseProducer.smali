.class final Lorg/openjsse/sun/security/ssl/CertStatusExtension$CTCertStatusResponseProducer;
.super Ljava/lang/Object;
.source "CertStatusExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertStatusExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CTCertStatusResponseProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1101
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;

    .line 1097
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CTCertStatusResponseProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 9
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1106
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 1107
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    const/4 v1, 0x0

    .line 1110
    .local v1, "producedData":[B
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->stapleParams:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;

    const-string v3, "ssl,handshake"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 1111
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1112
    const-string v2, "Stapling is disabled for this connection"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    :cond_0
    return-object v5

    .line 1119
    :cond_1
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->currentCertEntry:Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    if-nez v2, :cond_3

    .line 1120
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_2

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1121
    const-string v2, "Found null CertificateEntry in context"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1123
    :cond_2
    return-object v5

    .line 1130
    :cond_3
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 1131
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->currentCertEntry:Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;->encoded:[B

    invoke-direct {v3, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1132
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 1135
    .local v3, "x509Cert":Ljava/security/cert/X509Certificate;
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->stapleParams:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;->responseMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    .local v6, "respBytes":[B
    const-string v7, "ssl,handshake,verbose"

    if-nez v6, :cond_5

    .line 1138
    :try_start_1
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_4

    .line 1139
    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1140
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No status response found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1141
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    .line 1140
    invoke-static {v7, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1143
    :cond_4
    iput-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->currentCertEntry:Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    .line 1144
    return-object v5

    .line 1148
    :cond_5
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_6

    invoke-static {v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found status response for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1150
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", response length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    .line 1149
    invoke-static {v7, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1153
    :cond_6
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->stapleParams:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;->statReqType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    sget-object v7, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    if-ne v4, v7, :cond_7

    new-instance v4, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusResponse;

    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->stapleParams:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;->statReqType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    iget-byte v7, v7, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->id:B

    invoke-direct {v4, v7, v6, v5}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$OCSPStatusResponse;-><init>(B[BLorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V

    goto :goto_0

    :cond_7
    new-instance v4, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;

    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->stapleParams:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;->statReqType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    iget-byte v7, v7, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->id:B

    invoke-direct {v4, v7, v6}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;-><init>(B[B)V

    .line 1159
    .local v4, "certResp":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;
    :goto_0
    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;->toByteArray()[B

    move-result-object v7
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v7

    .line 1166
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v3    # "x509Cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "certResp":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;
    .end local v6    # "respBytes":[B
    nop

    .line 1169
    iput-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->currentCertEntry:Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

    .line 1170
    return-object v1

    .line 1163
    :catch_0
    move-exception v2

    .line 1164
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERT_STATUS_RESPONSE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Failed to parse certificate status response"

    invoke-virtual {v3, v4, v5, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 1160
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1161
    .local v2, "ce":Ljava/security/cert/CertificateException;
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->BAD_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Failed to parse server certificates"

    invoke-virtual {v3, v4, v5, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3
.end method
