.class final Lorg/openjsse/sun/security/ssl/ServerHello$T13HelloRetryRequestReproducer;
.super Ljava/lang/Object;
.source "ServerHello.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ServerHello;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T13HelloRetryRequestReproducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ServerHello$1;

    .line 798
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ServerHello$T13HelloRetryRequestReproducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 11
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    move-object v7, p1

    check-cast v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 808
    .local v7, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    move-object v8, p2

    check-cast v8, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 811
    .local v8, "clientHello":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    iget-object v9, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 812
    .local v9, "cipherSuite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    new-instance v10, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v3, v8, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    sget-object v5, Lorg/openjsse/sun/security/ssl/RandomCookie;->hrrRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    move-object v0, v10

    move-object v1, v7

    move-object v4, v9

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/SessionId;Lorg/openjsse/sun/security/ssl/CipherSuite;Lorg/openjsse/sun/security/ssl/RandomCookie;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)V

    .line 821
    .local v0, "hhrm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    iget-object v1, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->MESSAGE_HASH:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-object v3, v7, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 822
    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v1

    .line 824
    .local v1, "serverHelloExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v2, v7, v1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->produce(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 825
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    const-string v2, "ssl,handshake"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 826
    const-string v2, "Reproduced HelloRetryRequest handshake message"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 830
    :cond_0
    new-instance v2, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;-><init>(Lorg/openjsse/sun/security/ssl/OutputRecord;)V

    .line 831
    .local v2, "hos":Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    invoke-virtual {v0, v2}, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 833
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method
