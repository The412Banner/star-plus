.class final Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestConsumer;
.super Ljava/lang/Object;
.source "HelloVerifyRequest.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/HelloVerifyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HelloVerifyRequestConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$1;

    .line 169
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 184
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_VERIFY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->finish()V

    .line 197
    new-instance v1, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;

    invoke-direct {v1, v0, p2}, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 199
    .local v1, "hvrm":Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_1

    const-string v2, "ssl,handshake"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    const-string v2, "Consuming HelloVerifyRequest handshake message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :cond_1
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->initialClientHelloMsg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;->cookie:[B

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->setHelloCookie([B)V

    .line 213
    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v2, p1, v1}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    .line 214
    return-void

    .line 189
    .end local v1    # "hvrm":Lorg/openjsse/sun/security/ssl/HelloVerifyRequest$HelloVerifyRequestMessage;
    :cond_2
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "No more message expected before HelloVerifyRequest is processed"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method
