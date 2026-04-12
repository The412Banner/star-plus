.class final Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeProducer;
.super Ljava/lang/Object;
.source "RSAServerKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RSAServerKeyExchangeProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$1;

    .line 218
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 7
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 230
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    const/4 v1, 0x0

    .line 231
    .local v1, "rsaPossession":Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;
    const/4 v2, 0x0

    .line 232
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

    .line 233
    .local v4, "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    instance-of v5, v4, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;

    if-eqz v5, :cond_0

    .line 234
    move-object v1, v4

    check-cast v1, Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;

    .line 235
    if-eqz v2, :cond_1

    .line 236
    goto :goto_1

    .line 238
    :cond_0
    instance-of v5, v4, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    if-eqz v5, :cond_1

    .line 239
    move-object v2, v4

    check-cast v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;

    .line 240
    if-eqz v1, :cond_1

    .line 241
    goto :goto_1

    .line 244
    .end local v4    # "possession":Lorg/openjsse/sun/security/ssl/SSLPossession;
    :cond_1
    goto :goto_0

    .line 246
    :cond_2
    :goto_1
    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 250
    return-object v3

    .line 251
    :cond_3
    if-eqz v2, :cond_6

    .line 255
    iget-object v4, v2, Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;->popPrivateKey:Ljava/security/PrivateKey;

    .line 256
    invoke-interface {v4}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 255
    const-string v5, "RSA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 263
    new-instance v4, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;

    invoke-direct {v4, v0, v2, v1, v3}, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/X509Authentication$X509Possession;Lorg/openjsse/sun/security/ssl/RSAKeyExchange$EphemeralRSAPossession;Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$1;)V

    .line 266
    .local v4, "skem":Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_4

    const-string v5, "ssl,handshake"

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 267
    const-string v5, "Produced RSA ServerKeyExchange handshake message"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    :cond_4
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v4, v5}, Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 273
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 276
    return-object v3

    .line 258
    .end local v4    # "skem":Lorg/openjsse/sun/security/ssl/RSAServerKeyExchange$RSAServerKeyExchangeMessage;
    :cond_5
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "No X.509 possession can be used for ephemeral RSA ServerKeyExchange"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 253
    :cond_6
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "No RSA certificate negotiated for server key exchange"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3
.end method
