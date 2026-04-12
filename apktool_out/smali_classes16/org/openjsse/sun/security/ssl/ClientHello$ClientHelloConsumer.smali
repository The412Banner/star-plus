.class final Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloConsumer;
.super Ljava/lang/Object;
.source "ClientHello.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ClientHello;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientHelloConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ClientHello$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ClientHello$1;

    .line 780
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloConsumer;-><init>()V

    return-void
.end method

.method private negotiateProtocol(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;I)Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "clientHelloVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 866
    move v0, p2

    .line 867
    .local v0, "chv":I
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-ge v0, v1, :cond_1

    .line 869
    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->DTLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v0, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    goto :goto_0

    .line 872
    :cond_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-le v0, v1, :cond_1

    .line 873
    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->TLS12:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v0, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    .line 878
    :cond_1
    :goto_0
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->activeProtocols:Ljava/util/List;

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->selectedFrom(Ljava/util/List;I)Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v1

    .line 880
    .local v1, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    if-eqz v1, :cond_2

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-eq v1, v2, :cond_2

    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-eq v1, v2, :cond_2

    .line 888
    return-object v1

    .line 882
    :cond_2
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->PROTOCOL_VERSION:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client requested protocol "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 884
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->nameOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not enabled or supported in server context"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 882
    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method

.method private negotiateProtocol(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;[I)Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "clientSupportedVersions"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 900
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->activeProtocols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 901
    .local v1, "spv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-ne v1, v2, :cond_0

    .line 902
    goto :goto_0

    .line 904
    :cond_0
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget v4, p2, v3

    .line 905
    .local v4, "cpv":I
    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget v5, v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-ne v4, v5, :cond_1

    .line 906
    goto :goto_2

    .line 908
    :cond_1
    iget v5, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    if-ne v5, v4, :cond_2

    .line 909
    return-object v1

    .line 904
    .end local v4    # "cpv":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 912
    .end local v1    # "spv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_3
    goto :goto_0

    .line 915
    :cond_4
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->PROTOCOL_VERSION:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The client supported protocol versions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 917
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->toStringArray([I)[Ljava/lang/String;

    move-result-object v3

    .line 916
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " are not accepted by server preferences "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->activeProtocols:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 915
    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method

.method private onClientHello(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)V
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    .param p2, "clientHello"    # Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 823
    .local v0, "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v1, p2, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v1, p1, v0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnLoad(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 826
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 827
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsSpec;

    .line 829
    .local v1, "svs":Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsSpec;
    if-eqz v1, :cond_0

    .line 830
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsSpec;->requestedProtocols:[I

    .line 831
    invoke-direct {p0, p1, v3}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloConsumer;->negotiateProtocol(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;[I)Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v3

    .local v3, "negotiatedProtocol":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    goto :goto_0

    .line 833
    .end local v3    # "negotiatedProtocol":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_0
    iget v3, p2, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientVersion:I

    .line 834
    invoke-direct {p0, p1, v3}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloConsumer;->negotiateProtocol(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;I)Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v3

    .line 836
    .restart local v3    # "negotiatedProtocol":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :goto_0
    iput-object v3, p1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 837
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_1

    const-string v4, "ssl,handshake"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 838
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

    .line 843
    :cond_1
    iget-boolean v2, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    if-eqz v2, :cond_3

    .line 844
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 845
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ClientHello;->access$700()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    goto :goto_1

    .line 847
    :cond_2
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ClientHello;->access$800()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    goto :goto_1

    .line 850
    :cond_3
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 851
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ClientHello;->access$900()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    goto :goto_1

    .line 853
    :cond_4
    invoke-static {}, Lorg/openjsse/sun/security/ssl/ClientHello;->access$1000()Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    .line 856
    :goto_1
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

    .line 790
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 793
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 802
    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v1

    .line 805
    .local v1, "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    new-instance v2, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    invoke-direct {v2, v0, p2, v1}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 807
    .local v2, "chm":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_0

    const-string v3, "ssl,handshake"

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 808
    const-string v3, "Consuming ClientHello handshake message"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    :cond_0
    iget v3, v2, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientVersion:I

    iput v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->clientHelloVersion:I

    .line 812
    invoke-direct {p0, v0, v2}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloConsumer;->onClientHello(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;)V

    .line 813
    return-void

    .line 795
    .end local v1    # "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    .end local v2    # "chm":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    :cond_1
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "No more handshake message allowed in a ClientHello flight"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method
