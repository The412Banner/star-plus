.class final Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "CertificateMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "T12CertificateMessage"
.end annotation


# instance fields
.field final encodedCertChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 128
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt24(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 129
    .local v0, "listLen":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 134
    if-lez v0, :cond_2

    .line 135
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 136
    .local v1, "encodedCerts":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_0
    if-lez v0, :cond_1

    .line 137
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes24(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 138
    .local v2, "encodedCert":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    .line 139
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maxCertificateChainLength:I

    if-gt v3, v4, :cond_0

    .line 149
    .end local v2    # "encodedCert":[B
    goto :goto_0

    .line 141
    .restart local v2    # "encodedCert":[B
    :cond_0
    new-instance v3, Ljavax/net/ssl/SSLProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The certificate chain length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 143
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") exceeds the maximum allowed length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maxCertificateChainLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 150
    .end local v2    # "encodedCert":[B
    :cond_1
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;->encodedCertChain:Ljava/util/List;

    .line 151
    .end local v1    # "encodedCerts":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto :goto_1

    .line 152
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;->encodedCertChain:Ljava/util/List;

    .line 154
    :goto_1
    return-void

    .line 130
    :cond_3
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Error parsing certificate message:no sufficient data"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Ljava/security/cert/X509Certificate;)V
    .locals 7
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "certChain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .local v0, "encodedCerts":Ljava/util/List;, "Ljava/util/List<[B>;"
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 111
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    nop

    .line 109
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .restart local v3    # "cert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "cee":Ljava/security/cert/CertificateEncodingException;
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not encode certificate ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 117
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-virtual {v2, v4, v5, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 121
    .end local v1    # "cee":Ljava/security/cert/CertificateEncodingException;
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;->encodedCertChain:Ljava/util/List;

    .line 122
    return-void
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 158
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 4

    .line 163
    const/4 v0, 0x3

    .line 164
    .local v0, "msgLen":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;->encodedCertChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 165
    .local v2, "encodedCert":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v3

    .line 166
    .end local v2    # "encodedCert":[B
    goto :goto_0

    .line 168
    :cond_0
    return v0
.end method

.method public send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 4
    .param p1, "hos"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "listLen":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;->encodedCertChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 175
    .local v2, "encodedCert":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v3

    .line 176
    .end local v2    # "encodedCert":[B
    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt24(I)V

    .line 179
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;->encodedCertChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 180
    .restart local v2    # "encodedCert":[B
    invoke-virtual {p1, v2}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes24([B)V

    .line 181
    .end local v2    # "encodedCert":[B
    goto :goto_1

    .line 182
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 186
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;->encodedCertChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "\"Certificates\": <empty list>"

    return-object v0

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;->encodedCertChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 192
    .local v0, "x509Certs":[Ljava/lang/Object;
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 193
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v2, 0x0

    .line 194
    .local v2, "i":I
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;->encodedCertChain:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    .local v4, "encodedCert":[B
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    .local v5, "obj":Ljava/lang/Object;
    goto :goto_1

    .line 199
    .end local v5    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 200
    .local v5, "ce":Ljava/security/cert/CertificateException;
    move-object v6, v4

    move-object v5, v6

    .line 202
    .local v5, "obj":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    :try_start_2
    aput-object v5, v0, v2
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 203
    .end local v4    # "encodedCert":[B
    .end local v5    # "obj":Ljava/lang/Object;
    move v2, v6

    goto :goto_0

    .line 210
    .end local v1    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v6    # "i":I
    :cond_1
    goto :goto_3

    .line 204
    :catch_1
    move-exception v1

    .line 206
    .local v1, "ce":Ljava/security/cert/CertificateException;
    const/4 v2, 0x0

    .line 207
    .restart local v2    # "i":I
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;->encodedCertChain:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 208
    .restart local v4    # "encodedCert":[B
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    aput-object v4, v0, v2

    .line 209
    .end local v4    # "encodedCert":[B
    move v2, v5

    goto :goto_2

    .line 212
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    .end local v5    # "i":I
    :cond_2
    :goto_3
    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "\"Certificates\": [\n{0}\n]"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 217
    .local v1, "messageFormat":Ljava/text/MessageFormat;
    nop

    .line 218
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 221
    .local v2, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
