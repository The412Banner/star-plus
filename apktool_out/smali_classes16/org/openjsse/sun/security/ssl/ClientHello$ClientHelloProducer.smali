.class final Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloProducer;
.super Ljava/lang/Object;
.source "ClientHello.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ClientHello;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientHelloProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ClientHello$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ClientHello$1;

    .line 679
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloProducer;-><init>()V

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

    .line 693
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 695
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;->handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;

    move-result-object v1

    .line 696
    .local v1, "ht":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    const-string v2, "Not supported yet."

    if-eqz v1, :cond_6

    .line 700
    sget-object v3, Lorg/openjsse/sun/security/ssl/ClientHello$1;->$SwitchMap$org$openjsse$sun$security$ssl$SSLHandshake:[I

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "ssl,handshake"

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .line 771
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 751
    :pswitch_0
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->initialClientHelloMsg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Produced ClientHello(HRR) handshake message"

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    :cond_0
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->initialClientHelloMsg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 759
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 762
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->consumers:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/ContentType;->CHANGE_CIPHER_SPEC:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    .line 763
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/ChangeCipherSpec;->t13Consumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 762
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    return-object v5

    .line 717
    :pswitch_1
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_1

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 718
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->initialClientHelloMsg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Produced ClientHello(cookie) handshake message"

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    :cond_1
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->initialClientHelloMsg:Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 725
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 728
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 732
    .local v2, "minimumVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->activeProtocols:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 733
    .local v4, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    sget-object v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-eq v2, v6, :cond_2

    .line 734
    invoke-virtual {v4, v2}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->compare(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)I

    move-result v6

    if-gez v6, :cond_3

    .line 735
    :cond_2
    move-object v2, v4

    .line 737
    .end local v4    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_3
    goto :goto_0

    .line 738
    :cond_4
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 739
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v3

    if-nez v3, :cond_5

    .line 740
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_VERIFY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v4, v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 741
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_VERIFY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 740
    invoke-virtual {v3, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :cond_5
    return-object v5

    .line 704
    .end local v2    # "minimumVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :pswitch_2
    :try_start_0
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->kickstart()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    nop

    .line 711
    return-object v5

    .line 705
    :catch_0
    move-exception v2

    .line 706
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v3, v4, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 697
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_6
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
