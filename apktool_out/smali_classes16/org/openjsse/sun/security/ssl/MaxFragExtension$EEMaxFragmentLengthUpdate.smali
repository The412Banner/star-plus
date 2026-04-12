.class final Lorg/openjsse/sun/security/ssl/MaxFragExtension$EEMaxFragmentLengthUpdate;
.super Ljava/lang/Object;
.source "MaxFragExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/MaxFragExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EEMaxFragmentLengthUpdate"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;

    .line 568
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$EEMaxFragmentLengthUpdate;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 580
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->EE_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 581
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;

    .line 582
    .local v1, "spec":Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;
    if-nez v1, :cond_0

    .line 584
    return-void

    .line 587
    :cond_0
    iget v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->maxFragmentLength:I

    if-lez v2, :cond_2

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget v2, v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    if-eqz v2, :cond_2

    .line 589
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->maxFragmentLength:I

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 592
    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v5

    .line 590
    invoke-virtual {v2, v3, v4, v5}, Lorg/openjsse/sun/security/ssl/CipherSuite;->calculatePacketSize(ILorg/openjsse/sun/security/ssl/ProtocolVersion;Z)I

    move-result v2

    .line 593
    .local v2, "estimatedMaxFragSize":I
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget v3, v3, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    if-le v2, v3, :cond_2

    .line 597
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_1

    const-string v3, "ssl,handshake"

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 598
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Abort the maximum fragment length negotiation, may overflow the maximum packet size limit."

    invoke-static {v4, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    :cond_1
    const/4 v3, -0x1

    iput v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->maxFragmentLength:I

    .line 607
    .end local v2    # "estimatedMaxFragSize":I
    :cond_2
    iget v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->maxFragmentLength:I

    if-lez v2, :cond_3

    .line 608
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->maxFragmentLength:I

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setNegotiatedMaxFragSize(I)V

    .line 610
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    iget v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->maxFragmentLength:I

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/InputRecord;->changeFragmentSize(I)V

    .line 612
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->maxFragmentLength:I

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/OutputRecord;->changeFragmentSize(I)V

    .line 615
    :cond_3
    return-void
.end method
