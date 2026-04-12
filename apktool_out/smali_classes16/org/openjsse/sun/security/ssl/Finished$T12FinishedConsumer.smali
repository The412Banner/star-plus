.class final Lorg/openjsse/sun/security/ssl/Finished$T12FinishedConsumer;
.super Ljava/lang/Object;
.source "Finished.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Finished;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T12FinishedConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/Finished$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/Finished$1;

    .line 497
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/Finished$T12FinishedConsumer;-><init>()V

    return-void
.end method

.method private onConsumeFinished(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    new-instance v0, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;

    invoke-direct {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 530
    .local v0, "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    const-string v1, "Consuming server Finished handshake message"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    :cond_0
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->secureRenegotiation:Z

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;->access$800(Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;)[B

    move-result-object v2

    iput-object v2, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->serverVerifyData:[B

    .line 539
    :cond_1
    iget-boolean v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->isResumption:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 540
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 541
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 542
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->put(Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)V

    .line 545
    :cond_2
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->finish()Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    move-result-object v3

    iput-object v3, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 546
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v3, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 549
    iput-boolean v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeFinished:Z

    .line 552
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v1

    if-nez v1, :cond_4

    .line 553
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->finishHandshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    .line 556
    :cond_3
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_4
    :goto_0
    new-array v1, v2, [Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 567
    .local v1, "probableHandshakeMessages":[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 568
    .local v4, "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    iget-byte v6, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 569
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 570
    .local v5, "handshakeProducer":Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    if-eqz v5, :cond_5

    .line 571
    invoke-interface {v5, p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    .line 567
    .end local v4    # "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .end local v5    # "handshakeProducer":Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 574
    :cond_6
    return-void
.end method

.method private onConsumeFinished(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "shc"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    iget-boolean v0, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    if-nez v0, :cond_1

    .line 581
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 582
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 581
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v2, "Unexpected Finished handshake message"

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 588
    :cond_1
    :goto_0
    new-instance v0, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;

    invoke-direct {v0, p1, p2}, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 589
    .local v0, "fm":Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_2

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 590
    const-string v1, "Consuming client Finished handshake message"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    :cond_2
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->secureRenegotiation:Z

    if-eqz v1, :cond_3

    .line 595
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;->access$800(Lorg/openjsse/sun/security/ssl/Finished$FinishedMessage;)[B

    move-result-object v2

    iput-object v2, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->clientVerifyData:[B

    .line 598
    :cond_3
    iget-boolean v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 599
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 600
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 601
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->put(Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)V

    .line 604
    :cond_4
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->finish()Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    move-result-object v3

    iput-object v3, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 605
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v3, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 608
    iput-boolean v2, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeFinished:Z

    .line 611
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v1

    if-nez v1, :cond_6

    .line 612
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->finishHandshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_1

    .line 615
    :cond_5
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :cond_6
    :goto_1
    new-array v1, v2, [Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 626
    .local v1, "probableHandshakeMessages":[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_8

    aget-object v4, v1, v3

    .line 627
    .local v4, "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    iget-byte v6, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 628
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 629
    .local v5, "handshakeProducer":Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    if-eqz v5, :cond_7

    .line 630
    invoke-interface {v5, p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    .line 626
    .end local v4    # "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .end local v5    # "handshakeProducer":Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 633
    :cond_8
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

    .line 507
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 510
    .local v0, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->consumers:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    .line 515
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 514
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 520
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v1, :cond_0

    .line 521
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    invoke-direct {p0, v1, p2}, Lorg/openjsse/sun/security/ssl/Finished$T12FinishedConsumer;->onConsumeFinished(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 523
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    invoke-direct {p0, v1, p2}, Lorg/openjsse/sun/security/ssl/Finished$T12FinishedConsumer;->onConsumeFinished(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 525
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Missing ChangeCipherSpec message"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method
