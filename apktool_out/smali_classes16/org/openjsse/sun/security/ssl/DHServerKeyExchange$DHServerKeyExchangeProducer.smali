.class final Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeProducer;
.super Ljava/lang/Object;
.source "DHServerKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/DHServerKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DHServerKeyExchangeProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$1;

    .line 469
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 481
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    new-instance v1, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;

    invoke-direct {v1, v0}, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 483
    .local v1, "skem":Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    const-string v2, "ssl,handshake"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    const-string v2, "Produced DH ServerKeyExchange handshake message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    :cond_0
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 490
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 493
    const/4 v2, 0x0

    return-object v2
.end method
