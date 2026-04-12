.class final Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "RSAClientKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RSAClientKeyExchangeMessage"
.end annotation


# instance fields
.field final encrypted:[B

.field final protocolVersion:I

.field final useTLS10PlusSpec:Z


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 77
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 82
    iget v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->clientHelloVersion:I

    iput v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->protocolVersion:I

    .line 83
    iget v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->protocolVersion:I

    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 84
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v1

    .line 83
    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS10PlusSpec(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->useTLS10PlusSpec:Z

    .line 85
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->useTLS10PlusSpec:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes16(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->encrypted:[B

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->encrypted:[B

    .line 89
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->encrypted:[B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 91
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v2, "Invalid RSA ClientKeyExchange message: insufficient data"

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "premaster"    # Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;
    .param p3, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 66
    iget v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->clientHelloVersion:I

    iput v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->protocolVersion:I

    .line 67
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 68
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 67
    invoke-virtual {p2, p3, v0}, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$RSAPremasterSecret;->getEncoded(Ljava/security/PublicKey;Ljava/security/SecureRandom;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->encrypted:[B

    .line 69
    iget v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->protocolVersion:I

    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 70
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v1

    .line 69
    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS10PlusSpec(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->useTLS10PlusSpec:Z

    .line 71
    return-void
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 95
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 1

    .line 100
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->useTLS10PlusSpec:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->encrypted:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->encrypted:[B

    array-length v0, v0

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

    .line 109
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->useTLS10PlusSpec:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->encrypted:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->encrypted:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->write([B)V

    .line 114
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 118
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"RSA ClientKeyExchange\": \'{\'\n  \"client_version\":  {0}\n  \"encncrypted\": \'{\'\n{1}\n  \'}\'\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 127
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    new-instance v1, Lorg/openjsse/sun/security/util/HexDumpEncoder;

    invoke-direct {v1}, Lorg/openjsse/sun/security/util/HexDumpEncoder;-><init>()V

    .line 128
    .local v1, "hexEncoder":Lorg/openjsse/sun/security/util/HexDumpEncoder;
    iget v2, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->protocolVersion:I

    .line 129
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/RSAClientKeyExchange$RSAClientKeyExchangeMessage;->encrypted:[B

    .line 131
    invoke-virtual {v1, v3}, Lorg/openjsse/sun/security/util/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    .line 130
    const-string v4, "    "

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 133
    .local v2, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
