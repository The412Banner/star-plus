.class final Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "DHServerKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/DHServerKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DHServerKeyExchangeMessage"
.end annotation


# instance fields
.field private final g:[B

.field private final p:[B

.field private final paramsSignature:[B

.field private final signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

.field private final useExplicitSigAlgorithm:Z

.field private final y:[B


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V
    .locals 12
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 89
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 92
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    const/4 v1, 0x0

    .line 93
    .local v1, "dhePossession":Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;
    const/4 v2, 0x0

    .line 94
    .local v2, "x509Possession":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjsse/sun/security/ssl/SSLPossession;

    .line 95
    .local v4, "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v5, v4, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;

    if-eqz v5, :cond_0

    .line 96
    move-object v1, v4

    check-cast v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;

    .line 97
    if-eqz v2, :cond_1

    .line 98
    goto :goto_1

    .line 100
    :cond_0
    instance-of v5, v4, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    if-eqz v5, :cond_1

    .line 101
    move-object v2, v4

    check-cast v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    .line 102
    if-eqz v1, :cond_1

    .line 103
    goto :goto_1

    .line 106
    .end local v4    # "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_1
    goto :goto_0

    .line 108
    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    .line 113
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHEPossession;->publicKey:Ljavax/crypto/interfaces/DHPublicKey;

    .line 114
    .local v3, "publicKey":Ljavax/crypto/interfaces/DHPublicKey;
    invoke-interface {v3}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    .line 115
    .local v4, "params":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/Utilities;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v5

    iput-object v5, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->p:[B

    .line 116
    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/Utilities;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v5

    iput-object v5, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->g:[B

    .line 117
    invoke-interface {v3}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/Utilities;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v5

    iput-object v5, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->y:[B

    .line 119
    const/4 v5, 0x0

    if-nez v2, :cond_3

    .line 121
    iput-object v5, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->paramsSignature:[B

    .line 122
    iput-object v5, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 123
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    goto :goto_3

    .line 125
    :cond_3
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 126
    invoke-virtual {v6}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec()Z

    move-result v6

    iput-boolean v6, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    .line 127
    const/4 v6, 0x0

    .line 128
    .local v6, "signer":Ljava/security/Signature;
    iget-boolean v7, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    if-eqz v7, :cond_5

    .line 129
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->peerRequestedSignatureSchemes:Ljava/util/List;

    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 130
    invoke-static {v5, v2, v7}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getSignerOfPreferableAlgorithm(Ljava/util/List;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Ljava/util/Map$Entry;

    move-result-object v5

    .line 134
    .local v5, "schemeAndSigner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SignatureScheme;Ljava/security/Signature;>;"
    if-eqz v5, :cond_4

    .line 142
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iput-object v7, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 143
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, Ljava/security/Signature;

    .line 145
    .end local v6    # "signer":Ljava/security/Signature;
    .local v5, "signer":Ljava/security/Signature;
    goto :goto_2

    .line 137
    .local v5, "schemeAndSigner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SignatureScheme;Ljava/security/Signature;>;"
    .restart local v6    # "signer":Ljava/security/Signature;
    :cond_4
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No supported signature algorithm for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 139
    invoke-interface {v10}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  key"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 137
    invoke-virtual {v7, v8, v9}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    throw v7

    .line 146
    .end local v5    # "schemeAndSigner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/openjsse/sun/security/ssl/SignatureScheme;Ljava/security/Signature;>;"
    :cond_5
    iput-object v5, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 148
    :try_start_0
    iget-object v5, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 149
    invoke-interface {v5}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 148
    invoke-static {v5, v7}, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->getSignature(Ljava/lang/String;Ljava/security/Key;)Ljava/security/Signature;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    .end local v6    # "signer":Ljava/security/Signature;
    .local v5, "signer":Ljava/security/Signature;
    nop

    .line 158
    :goto_2
    const/4 v6, 0x0

    .line 160
    .local v6, "signature":[B
    :try_start_1
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->clientHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->serverHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v8, v8, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    invoke-direct {p0, v5, v7, v8}, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->updateSignature(Ljava/security/Signature;[B[B)V

    .line 162
    invoke-virtual {v5}, Ljava/security/Signature;->sign()[B

    move-result-object v7
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v7

    .line 167
    nop

    .line 168
    iput-object v6, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->paramsSignature:[B

    .line 170
    .end local v5    # "signer":Ljava/security/Signature;
    .end local v6    # "signature":[B
    :goto_3
    return-void

    .line 163
    .restart local v5    # "signer":Ljava/security/Signature;
    .restart local v6    # "signature":[B
    :catch_0
    move-exception v7

    .line 164
    .local v7, "ex":Ljava/security/SignatureException;
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v9, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to sign dhe parameters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 166
    invoke-interface {v11}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 164
    invoke-virtual {v8, v9, v10, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v8

    throw v8

    .line 151
    .end local v5    # "signer":Ljava/security/Signature;
    .end local v7    # "ex":Ljava/security/SignatureException;
    .local v6, "signer":Ljava/security/Signature;
    :catch_1
    move-exception v5

    goto :goto_4

    :catch_2
    move-exception v5

    .line 152
    .local v5, "e":Ljava/security/GeneralSecurityException;
    :goto_4
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v8, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported signature algorithm: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 154
    invoke-interface {v10}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 152
    invoke-virtual {v7, v8, v9, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v7

    throw v7

    .line 110
    .end local v3    # "publicKey":Ljavax/crypto/interfaces/DHPublicKey;
    .end local v4    # "params":Ljavax/crypto/spec/DHParameterSpec;
    .end local v5    # "e":Ljava/security/GeneralSecurityException;
    .end local v6    # "signer":Ljava/security/Signature;
    :cond_6
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "No DHE credentials negotiated for server key exchange"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 177
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 180
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->p:[B

    .line 181
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->g:[B

    .line 182
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->y:[B

    .line 185
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/DHPublicKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->y:[B

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->p:[B

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->p:[B

    invoke-direct {v5, v4, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v2, v3, v5}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v1}, Lsun/security/util/KeyUtil;->validate(Ljava/security/spec/KeySpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_6

    .line 192
    nop

    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeCredentials:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/SSLCredentials;

    .line 196
    .local v3, "cd":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    instance-of v4, v3, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    if-eqz v4, :cond_0

    .line 197
    move-object v1, v3

    check-cast v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    .line 198
    goto :goto_1

    .line 200
    .end local v3    # "cd":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    :cond_0
    goto :goto_0

    .line 202
    :cond_1
    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 204
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_2

    .line 209
    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 210
    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->paramsSignature:[B

    .line 211
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    .line 213
    return-void

    .line 205
    :cond_2
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "Invalid DH ServerKeyExchange: unknown extra data"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 216
    :cond_3
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 217
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec()Z

    move-result v3

    iput-boolean v3, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    .line 218
    iget-boolean v3, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    if-eqz v3, :cond_6

    .line 219
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 220
    .local v2, "ssid":I
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->valueOf(I)Lorg/openjsse/sun/security/ssl/SignatureScheme;

    move-result-object v3

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 221
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    const-string v4, ") used in DH ServerKeyExchange handshake message"

    if-eqz v3, :cond_5

    .line 227
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 233
    .end local v2    # "ssid":I
    goto :goto_2

    .line 228
    .restart local v2    # "ssid":I
    :cond_4
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported signature algorithm ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 222
    :cond_5
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid signature algorithm ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 234
    .end local v2    # "ssid":I
    :cond_6
    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 238
    :goto_2
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->paramsSignature:[B

    .line 240
    iget-boolean v2, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    const-string v3, "Unsupported signature algorithm: "

    if-eqz v2, :cond_7

    .line 242
    :try_start_1
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v2, v4}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getVerifier(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    .local v2, "signer":Ljava/security/Signature;
    goto :goto_4

    .line 244
    .end local v2    # "signer":Ljava/security/Signature;
    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 246
    .local v2, "nsae":Ljava/security/GeneralSecurityException;
    :goto_3
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 252
    .end local v2    # "nsae":Ljava/security/GeneralSecurityException;
    :cond_7
    :try_start_2
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    .line 253
    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    .line 252
    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->getSignature(Ljava/lang/String;Ljava/security/Key;)Ljava/security/Signature;

    move-result-object v2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_4

    .line 259
    .local v2, "signer":Ljava/security/Signature;
    nop

    .line 263
    :goto_4
    :try_start_3
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->clientHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->serverHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    invoke-direct {p0, v2, v3, v4}, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->updateSignature(Ljava/security/Signature;[B[B)V

    .line 267
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->paramsSignature:[B

    invoke-virtual {v2, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 274
    nop

    .line 275
    return-void

    .line 268
    :cond_8
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Invalid signature on DH ServerKeyExchange message"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    .end local v0    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .end local v1    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    .end local v2    # "signer":Ljava/security/Signature;
    .end local p1    # "handshakeContext":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .end local p2    # "m":Ljava/nio/ByteBuffer;
    throw v3
    :try_end_3
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_3

    .line 271
    .restart local v0    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .restart local v1    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    .restart local v2    # "signer":Ljava/security/Signature;
    .restart local p1    # "handshakeContext":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .restart local p2    # "m":Ljava/nio/ByteBuffer;
    :catch_3
    move-exception v3

    .line 272
    .local v3, "ex":Ljava/security/SignatureException;
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v6, "Cannot verify DH ServerKeyExchange signature"

    invoke-virtual {v4, v5, v6, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 255
    .end local v2    # "signer":Ljava/security/Signature;
    .end local v3    # "ex":Ljava/security/SignatureException;
    :catch_4
    move-exception v2

    goto :goto_5

    :catch_5
    move-exception v2

    .line 256
    .local v2, "e":Ljava/security/GeneralSecurityException;
    :goto_5
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    .line 258
    invoke-interface {v6}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {v4, v5, v3, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 189
    .end local v1    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :catch_6
    move-exception v1

    .line 190
    .local v1, "ike":Ljava/security/InvalidKeyException;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "Invalid DH ServerKeyExchange: invalid parameters"

    invoke-virtual {v2, v3, v4, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method

.method static synthetic access$200(Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;)[B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;

    .line 71
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->y:[B

    return-object v0
.end method

.method static synthetic access$300(Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;)[B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;

    .line 71
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->p:[B

    return-object v0
.end method

.method static synthetic access$400(Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;)[B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;

    .line 71
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->g:[B

    return-object v0
.end method

.method private static getSignature(Ljava/lang/String;Ljava/security/Key;)Ljava/security/Signature;
    .locals 4
    .param p0, "keyAlgorithm"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, "signer":Ljava/security/Signature;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "DSA"

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "RSA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 427
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "neither an RSA or a DSA key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    :pswitch_0
    invoke-static {}, Lorg/openjsse/sun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    move-result-object v0

    .line 425
    goto :goto_2

    .line 421
    :pswitch_1
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 422
    nop

    .line 431
    :goto_2
    if-eqz v0, :cond_2

    .line 432
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_1

    .line 433
    move-object v1, p1

    check-cast v1, Ljava/security/PublicKey;

    move-object v2, v1

    check-cast v2, Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    goto :goto_3

    .line 435
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 439
    :cond_2
    :goto_3
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10992 -> :sswitch_1
        0x13e20 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSignature(Ljava/security/Signature;[B[B)V
    .locals 1
    .param p1, "sig"    # Ljava/security/Signature;
    .param p2, "clntNonce"    # [B
    .param p3, "svrNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 449
    invoke-virtual {p1, p2}, Ljava/security/Signature;->update([B)V

    .line 450
    invoke-virtual {p1, p3}, Ljava/security/Signature;->update([B)V

    .line 452
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->p:[B

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    .line 453
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->p:[B

    array-length v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    .line 454
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->p:[B

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update([B)V

    .line 456
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->g:[B

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    .line 457
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->g:[B

    array-length v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    .line 458
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->g:[B

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update([B)V

    .line 460
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->y:[B

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    .line 461
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->y:[B

    array-length v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    .line 462
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->y:[B

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update([B)V

    .line 463
    return-void
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 279
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 3

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "sigLen":I
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->paramsSignature:[B

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->paramsSignature:[B

    array-length v1, v1

    add-int/lit8 v0, v1, 0x2

    .line 287
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    if-eqz v1, :cond_0

    .line 288
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->sizeInRecord()I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->p:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->g:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->y:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "hos"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->p:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 299
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->g:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 300
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->y:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 302
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->paramsSignature:[B

    if-eqz v0, :cond_1

    .line 303
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/SignatureScheme;->id:I

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->paramsSignature:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 309
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 313
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->paramsSignature:[B

    const-string v1, "      "

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/text/MessageFormat;

    const-string v2, "\"DH ServerKeyExchange\": \'{\'\n  \"parameters\": \'{\'\n    \"dh_p\": \'{\'\n{0}\n    \'}\',\n    \"dh_g\": \'{\'\n{1}\n    \'}\',\n    \"dh_Ys\": \'{\'\n{2}\n    \'}\',\n  \'}\'\n\'}\'"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 330
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v2, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 331
    .local v2, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->p:[B

    .line 333
    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    .line 332
    invoke-static {v3, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->g:[B

    .line 335
    invoke-virtual {v2, v4}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v4

    .line 334
    invoke-static {v4, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->y:[B

    .line 337
    invoke-virtual {v2, v5}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v5

    .line 336
    invoke-static {v5, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 340
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 343
    .end local v0    # "messageFormat":Ljava/text/MessageFormat;
    .end local v1    # "messageFields":[Ljava/lang/Object;
    .end local v2    # "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    :cond_0
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->useExplicitSigAlgorithm:Z

    if-eqz v0, :cond_1

    .line 344
    new-instance v0, Ljava/text/MessageFormat;

    const-string v2, "\"DH ServerKeyExchange\": \'{\'\n  \"parameters\": \'{\'\n    \"dh_p\": \'{\'\n{0}\n    \'}\',\n    \"dh_g\": \'{\'\n{1}\n    \'}\',\n    \"dh_Ys\": \'{\'\n{2}\n    \'}\',\n  \'}\',\n  \"digital signature\":  \'{\'\n    \"signature algorithm\": \"{3}\"\n    \"signature\": \'{\'\n{4}\n    \'}\',\n  \'}\'\n\'}\'"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 366
    .restart local v0    # "messageFormat":Ljava/text/MessageFormat;
    new-instance v2, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 367
    .restart local v2    # "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->p:[B

    .line 369
    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-static {v3, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->g:[B

    .line 371
    invoke-virtual {v2, v4}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v4

    .line 370
    invoke-static {v4, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->y:[B

    .line 373
    invoke-virtual {v2, v5}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v5

    .line 372
    invoke-static {v5, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->signatureScheme:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/SignatureScheme;->name:Ljava/lang/String;

    iget-object v7, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->paramsSignature:[B

    .line 376
    invoke-virtual {v2, v7}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v7

    .line 375
    invoke-static {v7, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v4, v5, v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 379
    .restart local v1    # "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 381
    .end local v0    # "messageFormat":Ljava/text/MessageFormat;
    .end local v1    # "messageFields":[Ljava/lang/Object;
    .end local v2    # "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    :cond_1
    new-instance v0, Ljava/text/MessageFormat;

    const-string v2, "\"DH ServerKeyExchange\": \'{\'\n  \"parameters\": \'{\'\n    \"dh_p\": \'{\'\n{0}\n    \'}\',\n    \"dh_g\": \'{\'\n{1}\n    \'}\',\n    \"dh_Ys\": \'{\'\n{2}\n    \'}\',\n  \'}\',\n  \"signature\": \'{\'\n{3}\n  \'}\'\n\'}\'"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 400
    .restart local v0    # "messageFormat":Ljava/text/MessageFormat;
    new-instance v2, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 401
    .restart local v2    # "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->p:[B

    .line 403
    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-static {v3, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->g:[B

    .line 405
    invoke-virtual {v2, v4}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v4

    .line 404
    invoke-static {v4, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->y:[B

    .line 407
    invoke-virtual {v2, v5}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v5

    .line 406
    invoke-static {v5, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->paramsSignature:[B

    .line 409
    invoke-virtual {v2, v5}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v5

    .line 408
    const-string v6, "    "

    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v4, v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 412
    .restart local v1    # "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
