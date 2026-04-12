.class final Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "ServerHello.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ServerHello;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServerHelloMessage"
.end annotation


# instance fields
.field final cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

.field final clientHello:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

.field final compressionMethod:B

.field final extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

.field final handshakeRecord:Ljava/nio/ByteBuffer;

.field final serverRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

.field final serverVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field final sessionId:Lorg/openjsse/sun/security/ssl/SessionId;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 128
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->handshakeRecord:Ljava/nio/ByteBuffer;

    .line 130
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 131
    .local v0, "major":B
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 132
    .local v1, "minor":B
    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->valueOf(BB)Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v2

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 133
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-eqz v2, :cond_4

    .line 140
    new-instance v2, Lorg/openjsse/sun/security/ssl/RandomCookie;

    invoke-direct {v2, p2}, Lorg/openjsse/sun/security/ssl/RandomCookie;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    .line 141
    new-instance v2, Lorg/openjsse/sun/security/ssl/SessionId;

    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/openjsse/sun/security/ssl/SessionId;-><init>([B)V

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    .line 143
    :try_start_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v3, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/SessionId;->checkLength(I)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    nop

    .line 149
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 150
    .local v2, "cipherSuiteId":I
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/CipherSuite;->valueOf(I)Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v3

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 151
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    invoke-virtual {p1, v3}, Lorg/openjsse/sun/security/ssl/HandshakeContext;->isNegotiable(Lorg/openjsse/sun/security/ssl/CipherSuite;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 157
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->compressionMethod:B

    .line 158
    iget-byte v3, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->compressionMethod:B

    if-nez v3, :cond_2

    .line 164
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/RandomCookie;->isHelloRetryRequest()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_RETRY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v3

    .local v3, "supportedExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    goto :goto_0

    .line 168
    .end local v3    # "supportedExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_0
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v3

    .line 172
    .restart local v3    # "supportedExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-direct {v4, p0, p2, v3}, Lorg/openjsse/sun/security/ssl/SSLExtensions;-><init>(Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    iput-object v4, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    goto :goto_1

    .line 176
    :cond_1
    new-instance v4, Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-direct {v4, p0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;-><init>(Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    iput-object v4, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 182
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->clientHello:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 183
    return-void

    .line 159
    .end local v3    # "supportedExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_2
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compression type not supported, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->compressionMethod:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 152
    :cond_3
    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server selected improper ciphersuite "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 154
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/CipherSuite;->nameOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 144
    .end local v2    # "cipherSuiteId":I
    :catch_0
    move-exception v2

    .line 145
    .local v2, "ex":Ljavax/net/ssl/SSLProtocolException;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v3, v4, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 135
    .end local v2    # "ex":Ljavax/net/ssl/SSLProtocolException;
    :cond_4
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->PROTOCOL_VERSION:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported protocol version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 137
    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(BB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/SessionId;Lorg/openjsse/sun/security/ssl/CipherSuite;Lorg/openjsse/sun/security/ssl/RandomCookie;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)V
    .locals 1
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "serverVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p3, "sessionId"    # Lorg/openjsse/sun/security/ssl/SessionId;
    .param p4, "cipherSuite"    # Lorg/openjsse/sun/security/ssl/CipherSuite;
    .param p5, "serverRandom"    # Lorg/openjsse/sun/security/ssl/RandomCookie;
    .param p6, "clientHello"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 105
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 107
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 108
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    .line 109
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    .line 110
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 111
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->compressionMethod:B

    .line 112
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;-><init>(Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 115
    iput-object p6, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->clientHello:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->handshakeRecord:Ljava/nio/ByteBuffer;

    .line 121
    return-void
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/RandomCookie;->isHelloRetryRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_RETRY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    :goto_0
    return-object v0
.end method

.method public messageLength()I
    .locals 2

    .line 201
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SessionId;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x26

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->length()I

    move-result v1

    add-int/2addr v0, v1

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

    .line 206
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 207
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 208
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->write([B)V

    .line 209
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SessionId;->getId()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 210
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->id:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 211
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->id:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 212
    iget-byte v0, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->compressionMethod:B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 214
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 220
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"{0}\": \'{\'\n  \"server version\"      : \"{1}\",\n  \"random\"              : \"{2}\",\n  \"session id\"          : \"{3}\",\n  \"cipher suite\"        : \"{4}\",\n  \"compression methods\" : \"{5}\",\n  \"extensions\"          : [\n{6}\n  ]\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 232
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    .line 233
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/RandomCookie;->isHelloRetryRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HelloRetryRequest"

    goto :goto_0

    :cond_0
    const-string v1, "ServerHello"

    :goto_0
    move-object v2, v1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/RandomCookie;->randomBytes:[B

    .line 236
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    .line 237
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SessionId;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget v6, v6, Lorg/openjsse/sun/security/ssl/CipherSuite;->id:I

    .line 239
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/Utilities;->byte16HexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-byte v1, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->compressionMethod:B

    .line 240
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString(B)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 241
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "    "

    invoke-static {v1, v8}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    .line 244
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
