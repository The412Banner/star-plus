.class final Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloConsumer;
.super Ljava/lang/Object;
.source "ServerHello.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ServerHello;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServerHelloConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ServerHello$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ServerHello$1;

    .line 841
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloConsumer;-><init>()V

    return-void
.end method

.method private onHelloRetryRequest(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;)V
    .locals 7
    .param p1, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .param p2, "helloRetryRequest"    # Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 882
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLExtension;->HRR_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 885
    .local v0, "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v1, p2, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v1, p1, v0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnLoad(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 888
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->HRR_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 889
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsSpec;

    .line 891
    .local v1, "svs":Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsSpec;
    if-eqz v1, :cond_0

    .line 892
    iget v3, v1, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsSpec;->selectedVersion:I

    .line 893
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->valueOf(I)Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v3

    .local v3, "serverVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    goto :goto_0

    .line 895
    .end local v3    # "serverVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_0
    iget-object v3, p2, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 898
    .restart local v3    # "serverVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :goto_0
    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->activeProtocols:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 905
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 910
    iput-object v3, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 911
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_1

    const-string v4, "ssl,handshake"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 912
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Negotiated protocol version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 920
    :cond_1
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 922
    iget-boolean v2, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    if-eqz v2, :cond_2

    .line 923
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ServerHello;->access$1100()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    goto :goto_1

    .line 925
    :cond_2
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ServerHello;->access$1200()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    .line 927
    :goto_1
    return-void

    .line 906
    :cond_3
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->PROTOCOL_VERSION:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected HelloRetryRequest for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 899
    :cond_4
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->PROTOCOL_VERSION:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The server selected protocol version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not accepted by client preferences "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->activeProtocols:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method

.method private onServerHello(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;)V
    .locals 7
    .param p1, "chc"    # Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    .param p2, "serverHello"    # Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 937
    .local v0, "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v1, p2, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v1, p1, v0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnLoad(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 940
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 941
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsSpec;

    .line 943
    .local v1, "svs":Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsSpec;
    if-eqz v1, :cond_0

    .line 944
    iget v3, v1, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$SHSupportedVersionsSpec;->selectedVersion:I

    .line 945
    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->valueOf(I)Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v3

    .local v3, "serverVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    goto :goto_0

    .line 947
    .end local v3    # "serverVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_0
    iget-object v3, p2, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 950
    .restart local v3    # "serverVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :goto_0
    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->activeProtocols:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 957
    iput-object v3, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 958
    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v4, :cond_1

    .line 959
    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v5, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 960
    iget-object v4, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget-object v5, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v4, v5}, Lorg/openjsse/sun/security/ssl/OutputRecord;->setVersion(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 962
    :cond_1
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_2

    const-string v4, "ssl,handshake"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 963
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Negotiated protocol version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    :cond_2
    iget-object v2, p2, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    invoke-virtual {v2, p1}, Lorg/openjsse/sun/security/ssl/RandomCookie;->isVersionDowngrade(Lorg/openjsse/sun/security/ssl/HandshakeContext;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 973
    iget-boolean v2, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    if-eqz v2, :cond_4

    .line 974
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 975
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ServerHello;->access$1300()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    goto :goto_1

    .line 979
    :cond_3
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 981
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ServerHello;->access$1400()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    goto :goto_1

    .line 984
    :cond_4
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 985
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ServerHello;->access$1500()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    goto :goto_1

    .line 989
    :cond_5
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakePossessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 991
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ServerHello;->access$1600()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    .line 994
    :goto_1
    return-void

    .line 968
    :cond_6
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "A potential protocol version downgrade attack"

    invoke-virtual {v2, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 951
    :cond_7
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->PROTOCOL_VERSION:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The server selected protocol version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not accepted by client preferences "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->activeProtocols:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
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

    .line 851
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 854
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 857
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_VERIFY_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 858
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 857
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    :cond_0
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 865
    new-instance v1, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;

    invoke-direct {v1, v0, p2}, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 866
    .local v1, "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_1

    const-string v2, "ssl,handshake"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 867
    const-string v2, "Consuming ServerHello handshake message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 870
    :cond_1
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;->serverRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/RandomCookie;->isHelloRetryRequest()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 871
    invoke-direct {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloConsumer;->onHelloRetryRequest(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;)V

    goto :goto_0

    .line 873
    :cond_2
    invoke-direct {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloConsumer;->onServerHello(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;)V

    .line 875
    :goto_0
    return-void

    .line 861
    .end local v1    # "shm":Lorg/openjsse/sun/security/ssl/ServerHello$ServerHelloMessage;
    :cond_3
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "No more message expected before ServerHello is processed"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method
