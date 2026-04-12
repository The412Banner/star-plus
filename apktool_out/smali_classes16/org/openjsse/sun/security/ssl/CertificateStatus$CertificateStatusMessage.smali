.class final Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "CertificateStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CertificateStatusMessage"
.end annotation


# instance fields
.field final encodedResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field encodedResponsesLen:I

.field messageLength:I

.field final statusType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V
    .locals 10
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 93
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponsesLen:I

    .line 89
    const/4 v1, -0x1

    iput v1, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->messageLength:I

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponses:Ljava/util/List;

    .line 95
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 100
    .local v1, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->stapleParams:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;

    .line 102
    .local v2, "stapleParams":Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;
    if-eqz v2, :cond_6

    .line 107
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 108
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, [Ljava/security/cert/X509Certificate;

    check-cast v3, [Ljava/security/cert/X509Certificate;

    .line 109
    .local v3, "certChain":[Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_5

    .line 116
    iget-object v4, v2, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;->statReqType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    iput-object v4, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->statusType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    .line 117
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->statusType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    sget-object v5, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    if-ne v4, v5, :cond_1

    .line 119
    iget-object v4, v2, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;->responseMap:Ljava/util/Map;

    aget-object v5, v3, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 120
    .local v4, "resp":[B
    if-nez v4, :cond_0

    .line 124
    new-array v4, v0, [B

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponses:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponsesLen:I

    array-length v5, v4

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v0, v5

    iput v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponsesLen:I

    .line 128
    .end local v4    # "resp":[B
    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->statusType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    sget-object v5, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP_MULTI:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    if-ne v4, v5, :cond_4

    .line 129
    array-length v4, v3

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 130
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    iget-object v7, v2, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;->responseMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 131
    .local v7, "resp":[B
    if-nez v7, :cond_2

    .line 132
    new-array v7, v0, [B

    .line 134
    :cond_2
    iget-object v8, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponses:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget v8, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponsesLen:I

    array-length v9, v7

    add-int/lit8 v9, v9, 0x3

    add-int/2addr v8, v9

    iput v8, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponsesLen:I

    .line 129
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "resp":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 142
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->messageLength()I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->messageLength:I

    .line 143
    return-void

    .line 138
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported StatusResponseType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->statusType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected null certificate chain"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    .end local v3    # "certChain":[Ljava/security/cert/X509Certificate;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unexpected null stapling parameters"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponsesLen:I

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->messageLength:I

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponses:Ljava/util/List;

    .line 149
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->valueOf(B)Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->statusType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    .line 150
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->statusType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    if-ne v0, v1, :cond_1

    .line 151
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes24(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 153
    .local v0, "respDER":[B
    array-length v1, v0

    if-lez v1, :cond_0

    .line 154
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    array-length v1, v0

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponsesLen:I

    .line 161
    .end local v0    # "respDER":[B
    goto :goto_1

    .line 157
    .restart local v0    # "respDER":[B
    :cond_0
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Zero-length OCSP Response"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 161
    .end local v0    # "respDER":[B
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->statusType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP_MULTI:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    if-ne v0, v1, :cond_4

    .line 162
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt24(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 163
    .local v0, "respListLen":I
    iput v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponsesLen:I

    .line 169
    :goto_0
    if-lez v0, :cond_2

    .line 170
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes24(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 171
    .local v1, "respDER":[B
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    array-length v2, v1

    add-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    .line 173
    .end local v1    # "respDER":[B
    goto :goto_0

    .line 175
    :cond_2
    if-nez v0, :cond_3

    .line 180
    .end local v0    # "respListLen":I
    nop

    .line 185
    :goto_1
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->messageLength()I

    move-result v0

    iput v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->messageLength:I

    .line 186
    return-void

    .line 176
    .restart local v0    # "respListLen":I
    :cond_3
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Bad OCSP response list length"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 181
    .end local v0    # "respListLen":I
    :cond_4
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported StatusResponseType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->statusType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 190
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_STATUS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 3

    .line 195
    const/4 v0, 0x1

    .line 197
    .local v0, "len":I
    iget v1, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->messageLength:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 198
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->statusType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    sget-object v2, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    if-ne v1, v2, :cond_0

    .line 199
    iget v1, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponsesLen:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 200
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->statusType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    sget-object v2, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP_MULTI:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    if-ne v1, v2, :cond_1

    .line 201
    iget v1, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponsesLen:I

    add-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 203
    :cond_1
    :goto_0
    iput v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->messageLength:I

    .line 206
    :cond_2
    iget v1, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->messageLength:I

    return v1
.end method

.method public send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 3
    .param p1, "s"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->statusType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->id:B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 212
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->statusType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    if-ne v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponses:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes24([B)V

    goto :goto_2

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->statusType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->OCSP_MULTI:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    if-ne v0, v1, :cond_3

    .line 215
    iget v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponsesLen:I

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt24(I)V

    .line 216
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 217
    .local v1, "respBytes":[B
    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {p1, v1}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes24([B)V

    goto :goto_1

    .line 220
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes24([B)V

    .line 222
    .end local v1    # "respBytes":[B
    :goto_1
    goto :goto_0

    :cond_2
    nop

    .line 229
    :goto_2
    return-void

    .line 226
    :cond_3
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported status_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->statusType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->id:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 233
    const-string v0, "\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 237
    .local v3, "respDER":[B
    array-length v4, v3

    if-lez v4, :cond_0

    .line 239
    :try_start_0
    new-instance v4, Lsun/security/provider/certpath/OCSPResponse;

    invoke-direct {v4, v3}, Lsun/security/provider/certpath/OCSPResponse;-><init>([B)V

    .line 240
    .local v4, "oResp":Lsun/security/provider/certpath/OCSPResponse;
    invoke-virtual {v4}, Lsun/security/provider/certpath/OCSPResponse;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    nop

    .end local v4    # "oResp":Lsun/security/provider/certpath/OCSPResponse;
    goto :goto_1

    .line 241
    :catch_0
    move-exception v4

    .line 242
    .local v4, "ioe":Ljava/io/IOException;
    const-string v5, "OCSP Response Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 243
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .end local v4    # "ioe":Ljava/io/IOException;
    goto :goto_1

    .line 246
    :cond_0
    const-string v4, "<Zero-length entry>\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .end local v3    # "respDER":[B
    :goto_1
    goto :goto_0

    .line 250
    :cond_1
    new-instance v0, Ljava/text/MessageFormat;

    const-string v2, "\"CertificateStatus\": \'{\'\n  \"type\"                : \"{0}\",\n  \"responses \"          : [\n{1}\n  ]\n\'}\'"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 256
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->statusType:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestType;->name:Ljava/lang/String;

    .line 258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 261
    .local v2, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
