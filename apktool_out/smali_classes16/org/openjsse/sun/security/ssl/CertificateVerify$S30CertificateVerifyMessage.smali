.class final Lorg/openjsse/sun/security/ssl/CertificateVerify$S30CertificateVerifyMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "CertificateVerify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateVerify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "S30CertificateVerifyMessage"
.end annotation


# instance fields
.field private final signature:[B


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 103
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 115
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_4

    .line 121
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$S30CertificateVerifyMessage;->signature:[B

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeCredentials:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/SSLCredentials;

    .line 124
    .local v3, "cd":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    instance-of v4, v3, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    if-eqz v4, :cond_0

    .line 125
    move-object v1, v3

    check-cast v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    .line 126
    goto :goto_1

    .line 128
    .end local v3    # "cd":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    :cond_0
    goto :goto_0

    .line 130
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    if-eqz v2, :cond_3

    .line 136
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "algorithm":Ljava/lang/String;
    :try_start_0
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    .line 139
    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/CertificateVerify$S30CertificateVerifyMessage;->getSignature(Ljava/lang/String;Ljava/security/Key;)Ljava/security/Signature;

    move-result-object v3

    .line 140
    .local v3, "signer":Ljava/security/Signature;
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 141
    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 140
    invoke-virtual {v4, v2, v5}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->digest(Ljava/lang/String;Ljavax/crypto/SecretKey;)[B

    move-result-object v4

    .line 142
    .local v4, "hashes":[B
    invoke-virtual {v3, v4}, Ljava/security/Signature;->update([B)V

    .line 143
    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$S30CertificateVerifyMessage;->signature:[B

    invoke-virtual {v3, v5}, Ljava/security/Signature;->verify([B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    .end local v3    # "signer":Ljava/security/Signature;
    .end local v4    # "hashes":[B
    nop

    .line 155
    return-void

    .line 144
    .restart local v3    # "signer":Ljava/security/Signature;
    .restart local v4    # "hashes":[B
    :cond_2
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v7, "Invalid CertificateVerify message: invalid signature"

    invoke-virtual {v5, v6, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    .end local v0    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .end local v1    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    .end local v2    # "algorithm":Ljava/lang/String;
    .end local p1    # "context":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .end local p2    # "m":Ljava/nio/ByteBuffer;
    throw v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v3    # "signer":Ljava/security/Signature;
    .end local v4    # "hashes":[B
    .restart local v0    # "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .restart local v1    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    .restart local v2    # "algorithm":Ljava/lang/String;
    .restart local p1    # "context":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .restart local p2    # "m":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v3

    .line 152
    .local v3, "gse":Ljava/security/GeneralSecurityException;
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v6, "Cannot verify CertificateVerify signature"

    invoke-virtual {v4, v5, v6, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 147
    .end local v3    # "gse":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v3

    .line 148
    .local v3, "nsae":Ljava/security/NoSuchAlgorithmException;
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported signature algorithm ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") used in CertificateVerify handshake message"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 132
    .end local v2    # "algorithm":Ljava/lang/String;
    .end local v3    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :cond_3
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "No X509 credentials negotiated for CertificateVerify"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 116
    .end local v1    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    :cond_4
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Invalid CertificateVerify message: no sufficient data"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;)V
    .locals 8
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "x509Possession"    # Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 76
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 77
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    const/4 v1, 0x0

    .line 78
    .local v1, "temproary":[B
    iget-object v2, p2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    invoke-interface {v2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "algorithm":Ljava/lang/String;
    :try_start_0
    iget-object v3, p2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 81
    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/CertificateVerify$S30CertificateVerifyMessage;->getSignature(Ljava/lang/String;Ljava/security/Key;)Ljava/security/Signature;

    move-result-object v3

    .line 82
    .local v3, "signer":Ljava/security/Signature;
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 83
    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 82
    invoke-virtual {v4, v2, v5}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->digest(Ljava/lang/String;Ljavax/crypto/SecretKey;)[B

    move-result-object v4

    .line 84
    .local v4, "hashes":[B
    invoke-virtual {v3, v4}, Ljava/security/Signature;->update([B)V

    .line 85
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 93
    .end local v3    # "signer":Ljava/security/Signature;
    .end local v4    # "hashes":[B
    nop

    .line 95
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$S30CertificateVerifyMessage;->signature:[B

    .line 96
    return-void

    .line 90
    :catch_0
    move-exception v3

    .line 91
    .local v3, "gse":Ljava/security/GeneralSecurityException;
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v6, "Cannot produce CertificateVerify signature"

    invoke-virtual {v4, v5, v6, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 86
    .end local v3    # "gse":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v3

    .line 87
    .local v3, "nsae":Ljava/security/NoSuchAlgorithmException;
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported signature algorithm ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") used in CertificateVerify handshake message"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4
.end method

.method private static getSignature(Ljava/lang/String;Ljava/security/Key;)Ljava/security/Signature;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "signer":Ljava/security/Signature;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "RSA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "DSA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "EC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 209
    new-instance v1, Ljava/security/SignatureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :pswitch_0
    const-string v1, "NONEwithECDSA"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 207
    goto :goto_2

    .line 203
    :pswitch_1
    const-string v1, "RawDSA"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 204
    goto :goto_2

    .line 200
    :pswitch_2
    const-string v1, "NONEwithRSA"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 201
    nop

    .line 213
    :goto_2
    if-eqz v0, :cond_2

    .line 214
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_1

    .line 215
    move-object v1, p1

    check-cast v1, Ljava/security/PublicKey;

    move-object v2, v1

    check-cast v2, Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    goto :goto_3

    .line 217
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 221
    :cond_2
    :goto_3
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x89e -> :sswitch_2
        0x10992 -> :sswitch_1
        0x13e20 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 159
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$S30CertificateVerifyMessage;->signature:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

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

    .line 169
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$S30CertificateVerifyMessage;->signature:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 170
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 174
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"CertificateVerify\": \'{\'\n  \"signature\": \'{\'\n{0}\n  \'}\'\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 182
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v1}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 183
    .local v1, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateVerify$S30CertificateVerifyMessage;->signature:[B

    .line 185
    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v2

    .line 184
    const-string v3, "    "

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 188
    .local v2, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
