.class final Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "HelloVerifyRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/HelloVerifyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HelloVerifyRequestMessage"
.end annotation


# instance fields
.field final cookie:[B

.field final serverVersion:I


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 69
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 75
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 80
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 81
    .local v1, "major":B
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 82
    .local v2, "minor":B
    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v4, v2, 0xff

    or-int/2addr v3, v4

    iput v3, p0, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;->serverVersion:I

    .line 83
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;->cookie:[B

    .line 84
    return-void

    .line 76
    .end local v1    # "major":B
    .end local v2    # "minor":B
    :cond_0
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Invalid HelloVerifyRequest: no sufficient data"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 55
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 57
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    move-object v1, p2

    check-cast v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 59
    .local v1, "clientHello":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS10:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 60
    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getHelloCookieManager(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Lorg/openjsse/sun/security/ssl/HelloCookieManager;

    move-result-object v2

    .line 61
    .local v2, "hcMgr":Lorg/openjsse/sun/security/ssl/HelloCookieManager;
    iget v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->clientHelloVersion:I

    iput v3, p0, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;->serverVersion:I

    .line 62
    invoke-virtual {v2, v0, v1}, Lorg/openjsse/sun/security/ssl/HelloCookieManager;->createCookie(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;->cookie:[B

    .line 63
    return-void
.end method


# virtual methods
.method public handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 88
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_VERIFY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method public messageLength()I
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;->cookie:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

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

    .line 99
    iget v0, p0, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;->serverVersion:I

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 100
    iget v0, p0, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;->serverVersion:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 101
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;->cookie:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 106
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"HelloVerifyRequest\": \'{\'\n  \"server version\"      : \"{0}\",\n  \"cookie\"              : \"{1}\",\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 112
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget v1, p0, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;->serverVersion:I

    .line 113
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;->cookie:[B

    .line 114
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 117
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
