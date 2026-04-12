.class final Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestProducer;
.super Ljava/lang/Object;
.source "HelloRequest.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/HelloRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HelloRequestProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/HelloRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/HelloRequest$1;

    .line 126
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 5
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 139
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    new-instance v1, Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestMessage;

    invoke-direct {v1, v0}, Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 140
    .local v1, "hrm":Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestMessage;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    const-string v2, "ssl,handshake"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const-string v2, "Produced HelloRequest handshake message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_0
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/HelloRequest$HelloRequestMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 146
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 151
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 152
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 151
    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/4 v2, 0x0

    return-object v2
.end method
