.class final Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestConsumer;
.super Ljava/lang/Object;
.source "HelloRequest.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/HelloRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HelloRequestConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/HelloRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/HelloRequest$1;

    .line 162
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 179
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    new-instance v1, Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestMessage;

    invoke-direct {v1, v0, p2}, Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 180
    .local v1, "hrm":Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestMessage;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const-string v3, "ssl,handshake"

    if-eqz v2, :cond_0

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    const-string v2, "Consuming HelloRequest handshake message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_0
    iget-boolean v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->kickstartMessageDelivered:Z

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 186
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->secureRenegotiation:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lorg/openjsse/sun/security/ssl/HandshakeContext;->allowUnsafeRenegotiation:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "Unsafe renegotiation is not allowed"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 192
    :cond_2
    :goto_0
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->secureRenegotiation:Z

    if-nez v2, :cond_3

    .line 193
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    const-string v2, "Continue with insecure renegotiation"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :cond_3
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 201
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 200
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v2, p1, v1}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    goto :goto_1

    .line 209
    :cond_4
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_5

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 210
    const-string v2, "Ingore HelloRequest, handshaking is in progress"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_5
    :goto_1
    return-void
.end method
