.class final Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "RSAServerKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RSAServerKeyExchangeMessage"
.end annotation


# instance fields
.field private final exponent:[B

.field private final modulus:[B

.field private final paramsSignature:[B


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

    .line 106
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 109
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 112
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->modulus:[B

    .line 113
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->exponent:[B

    .line 114
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->paramsSignature:[B

    .line 116
    const/4 v1, 0x0

    .line 117
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

    .line 118
    .local v3, "cd":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    instance-of v4, v3, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    if-eqz v4, :cond_0

    .line 119
    move-object v1, v3

    check-cast v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;

    .line 120
    goto :goto_1

    .line 122
    .end local v3    # "cd":Lorg/openjsse/sun/security/ssl/SSLCredentials;
    :cond_0
    goto :goto_0

    .line 124
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 130
    :try_start_0
    invoke-static {}, Lorg/openjsse/sun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    move-result-object v2

    .line 131
    .local v2, "signer":Ljava/security/Signature;
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;->popPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v2, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 132
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->clientHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->serverHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    invoke-direct {p0, v2, v3, v4}, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->updateSignature(Ljava/security/Signature;[B[B)V

    .line 135
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->paramsSignature:[B

    invoke-virtual {v2, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    .end local v2    # "signer":Ljava/security/Signature;
    nop

    .line 144
    return-void

    .line 136
    .restart local v2    # "signer":Ljava/security/Signature;
    :cond_2
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Invalid signature of RSA ServerKeyExchange message"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    .end local v0    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .end local v1    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    .end local p1    # "handshakeContext":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .end local p2    # "m":Ljava/nio/ByteBuffer;
    throw v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v2    # "signer":Ljava/security/Signature;
    .restart local v0    # "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .restart local v1    # "x509Credentials":Lorg/openjsse/sun/security/ssl/X509Authentication$X509Credentials;
    .restart local p1    # "handshakeContext":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .restart local p2    # "m":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 141
    .local v2, "ex":Ljava/security/GeneralSecurityException;
    :goto_2
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Failed to sign ephemeral RSA parameters"

    invoke-virtual {v3, v4, v5, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 125
    .end local v2    # "ex":Ljava/security/GeneralSecurityException;
    :cond_3
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "No RSA credentials negotiated for server key exchange"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method

.method private constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;)V
    .locals 8
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "x509Possession"    # Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    .param p3, "rsaPossession"    # Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 79
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 82
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, p3, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;->popPublicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 83
    .local v1, "publicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/JsseJce;->getRSAPublicKeySpec(Ljava/security/PublicKey;)Ljava/security/spec/RSAPublicKeySpec;

    move-result-object v2

    .line 84
    .local v2, "spec":Ljava/security/spec/RSAPublicKeySpec;
    invoke-virtual {v2}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Utilities;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->modulus:[B

    .line 85
    invoke-virtual {v2}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Utilities;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->exponent:[B

    .line 86
    const/4 v3, 0x0

    .line 88
    .local v3, "signature":[B
    :try_start_0
    invoke-static {}, Lorg/openjsse/sun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    move-result-object v4

    .line 89
    .local v4, "signer":Ljava/security/Signature;
    iget-object v5, p2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 90
    invoke-virtual {v6}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    .line 89
    invoke-virtual {v4, v5, v6}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 91
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->clientHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->serverHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    invoke-direct {p0, v4, v5, v6}, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->updateSignature(Ljava/security/Signature;[B[B)V

    .line 94
    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B

    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 99
    .end local v4    # "signer":Ljava/security/Signature;
    nop

    .line 101
    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->paramsSignature:[B

    .line 102
    return-void

    .line 95
    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    .line 97
    .local v4, "ex":Ljava/security/GeneralSecurityException;
    :goto_0
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v7, "Failed to sign ephemeral RSA parameters"

    invoke-virtual {v5, v6, v7, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "x1"    # Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;
    .param p3, "x2"    # Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;
    .param p4, "x3"    # Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;)V

    return-void
.end method

.method static synthetic access$300(Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;)[B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;

    .line 65
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->modulus:[B

    return-object v0
.end method

.method static synthetic access$400(Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;)[B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;

    .line 65
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->exponent:[B

    return-object v0
.end method

.method private updateSignature(Ljava/security/Signature;[B[B)V
    .locals 1
    .param p1, "signature"    # Ljava/security/Signature;
    .param p2, "clntNonce"    # [B
    .param p3, "svrNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 201
    invoke-virtual {p1, p2}, Ljava/security/Signature;->update([B)V

    .line 202
    invoke-virtual {p1, p3}, Ljava/security/Signature;->update([B)V

    .line 204
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->modulus:[B

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    .line 205
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->modulus:[B

    array-length v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    .line 206
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->modulus:[B

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update([B)V

    .line 208
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->exponent:[B

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    .line 209
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->exponent:[B

    array-length v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    .line 210
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->exponent:[B

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update([B)V

    .line 211
    return-void
.end method


# virtual methods
.method handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 148
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method messageLength()I
    .locals 2

    .line 153
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->modulus:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->exponent:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->paramsSignature:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "hos"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->modulus:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 160
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->exponent:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 161
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->paramsSignature:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 166
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"RSA ServerKeyExchange\": \'{\'\n  \"parameters\": \'{\'\n    \"rsa_modulus\": \'{\'\n{0}\n    \'}\',\n    \"rsa_exponent\": \'{\'\n{1}\n    \'}\'\n  \'}\',\n  \"digital signature\":  \'{\'\n    \"signature\": \'{\'\n{2}\n    \'}\',\n  \'}\'\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 184
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v1}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 185
    .local v1, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->modulus:[B

    .line 187
    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v2

    .line 186
    const-string v3, "      "

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->exponent:[B

    .line 189
    invoke-virtual {v1, v4}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-static {v4, v3}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->paramsSignature:[B

    .line 191
    invoke-virtual {v1, v5}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-static {v5, v3}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v4, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 193
    .local v2, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
