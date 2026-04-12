.class final Lorg/openjsse/sun/security/ssl/MaxFragExtension$EEMaxFragmentLengthProducer;
.super Ljava/lang/Object;
.source "MaxFragExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/MaxFragExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EEMaxFragmentLengthProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;

    .line 452
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$EEMaxFragmentLengthProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 9
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 465
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 466
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;

    .line 467
    .local v1, "spec":Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;
    const-string v2, "ssl,handshake"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 468
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    const-string v2, "Ignore unavailable max_fragment_length extension"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    :cond_0
    return-object v3

    .line 475
    :cond_1
    iget v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->maxFragmentLength:I

    if-lez v5, :cond_3

    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget v5, v5, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    if-eqz v5, :cond_3

    .line 477
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->maxFragmentLength:I

    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 480
    invoke-virtual {v8}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v8

    .line 478
    invoke-virtual {v5, v6, v7, v8}, Lorg/openjsse/sun/security/ssl/CipherSuite;->calculatePacketSize(ILorg/openjsse/sun/security/ssl/ProtocolVersion;Z)I

    move-result v5

    .line 481
    .local v5, "estimatedMaxFragSize":I
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget v6, v6, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    if-le v5, v6, :cond_3

    .line 485
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 486
    const-string v2, "Abort the maximum fragment length negotiation, may overflow the maximum packet size limit."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    :cond_2
    const/4 v2, -0x1

    iput v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->maxFragmentLength:I

    .line 495
    .end local v5    # "estimatedMaxFragSize":I
    :cond_3
    iget v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->maxFragmentLength:I

    if-lez v2, :cond_4

    .line 496
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->maxFragmentLength:I

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setNegotiatedMaxFragSize(I)V

    .line 498
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    iget v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->maxFragmentLength:I

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/InputRecord;->changeFragmentSize(I)V

    .line 500
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->maxFragmentLength:I

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/OutputRecord;->changeFragmentSize(I)V

    .line 504
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->EE_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-byte v2, v1, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;->id:B

    const/4 v3, 0x1

    new-array v3, v3, [B

    aput-byte v2, v3, v4

    return-object v3

    .line 508
    :cond_4
    return-object v3
.end method
