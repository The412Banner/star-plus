.class final Lorg/openjsse/sun/security/ssl/ClientHello$T12ClientHelloConsumer;
.super Ljava/lang/Object;
.source "ClientHello.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ClientHello;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T12ClientHelloConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ClientHello$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ClientHello$1;

    .line 928
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ClientHello$T12ClientHelloConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 10
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 938
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 939
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    move-object v1, p2

    check-cast v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 957
    .local v1, "clientHello":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-eqz v2, :cond_3

    .line 958
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->secureRenegotiation:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lorg/openjsse/sun/security/ssl/HandshakeContext;->allowUnsafeRenegotiation:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 960
    :cond_0
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "Unsafe renegotiation is not allowed"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 964
    :cond_1
    :goto_0
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->rejectClientInitiatedRenego:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->kickstartMessageDelivered:Z

    if-eqz v2, :cond_2

    goto :goto_1

    .line 966
    :cond_2
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "Client initiated renegotiation is not allowed"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 972
    :cond_3
    :goto_1
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SessionId;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_d

    .line 973
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 974
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    .line 975
    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SessionId;->getId()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->get([B)Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    move-result-object v2

    .line 977
    .local v2, "previous":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    if-eqz v2, :cond_4

    .line 978
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    move v5, v4

    .line 979
    .local v5, "resumingSession":Z
    :goto_2
    const-string v6, "ssl,handshake,verbose"

    if-nez v5, :cond_5

    .line 980
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_5

    .line 981
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 982
    const-string v7, "Can\'t resume, the existing session is not rejoinable"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 988
    :cond_5
    if-eqz v5, :cond_6

    .line 989
    nop

    .line 990
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v7

    .line 991
    .local v7, "sessionProtocol":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-eq v7, v8, :cond_6

    .line 992
    const/4 v5, 0x0

    .line 993
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_6

    .line 994
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 995
    const-string v8, "Can\'t resume, not the same protocol version"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1002
    .end local v7    # "sessionProtocol":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_6
    if-eqz v5, :cond_7

    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    sget-object v8, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUIRED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    if-ne v7, v8, :cond_7

    .line 1005
    :try_start_0
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPeerPrincipal()Ljava/security/Principal;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    goto :goto_3

    .line 1006
    :catch_0
    move-exception v7

    .line 1007
    .local v7, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v5, 0x0

    .line 1008
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_7

    .line 1009
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1010
    const-string v8, "Can\'t resume, client authentication is required"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1018
    .end local v7    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :cond_7
    :goto_3
    if-eqz v5, :cond_9

    .line 1019
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSuite()Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v7

    .line 1020
    .local v7, "suite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    invoke-virtual {v0, v7}, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isNegotiable(Lorg/openjsse/sun/security/ssl/CipherSuite;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->cipherSuites:Ljava/util/List;

    .line 1021
    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1022
    :cond_8
    const/4 v5, 0x0

    .line 1023
    sget-boolean v8, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v8, :cond_9

    .line 1024
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1025
    const-string v8, "Can\'t resume, the session cipher suite is absent"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1034
    .end local v7    # "suite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :cond_9
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->identificationProtocol:Ljava/lang/String;

    .line 1035
    .local v7, "identityAlg":Ljava/lang/String;
    if-eqz v5, :cond_b

    if-eqz v7, :cond_b

    .line 1036
    nop

    .line 1037
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getIdentificationProtocol()Ljava/lang/String;

    move-result-object v8

    .line 1038
    .local v8, "sessionIdentityAlg":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1039
    sget-boolean v9, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v9, :cond_a

    .line 1040
    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1041
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t resume, endpoint id algorithm does not match, requested: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", cached: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v6, v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1045
    :cond_a
    const/4 v5, 0x0

    .line 1051
    .end local v8    # "sessionIdentityAlg":Ljava/lang/String;
    :cond_b
    iput-boolean v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    .line 1052
    if-eqz v5, :cond_c

    move-object v6, v2

    goto :goto_4

    :cond_c
    const/4 v6, 0x0

    :goto_4
    iput-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 1056
    .end local v2    # "previous":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .end local v5    # "resumingSession":Z
    .end local v7    # "identityAlg":Ljava/lang/String;
    :cond_d
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->clientRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    iput-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->clientHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

    .line 1059
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v2, v5}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v2

    .line 1061
    .local v2, "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v5, v0, v2}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnLoad(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 1066
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v5, v5, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v5, :cond_e

    .line 1067
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v6, v5, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 1068
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v5, v6}, Lorg/openjsse/sun/security/ssl/OutputRecord;->setVersion(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 1077
    :cond_e
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v6, v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    const/4 v5, 0x7

    new-array v5, v5, [Lorg/openjsse/sun/security/ssl/SSLHandshake;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v6, v5, v4

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v6, v5, v3

    const/4 v3, 0x2

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_STATUS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v6, v5, v3

    const/4 v3, 0x3

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_KEY_EXCHANGE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v6, v5, v3

    const/4 v3, 0x4

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v6, v5, v3

    const/4 v3, 0x5

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->SERVER_HELLO_DONE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v6, v5, v3

    const/4 v3, 0x6

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    aput-object v6, v5, v3

    move-object v3, v5

    .line 1097
    .local v3, "probableHandshakeMessages":[Lorg/openjsse/sun/security/ssl/SSLHandshake;
    array-length v5, v3

    :goto_5
    if-ge v4, v5, :cond_10

    aget-object v6, v3, v4

    .line 1098
    .local v6, "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    iget-byte v8, v6, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 1099
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 1100
    .local v7, "handshakeProducer":Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    if-eqz v7, :cond_f

    .line 1101
    invoke-interface {v7, p1, v1}, Lorg/openjsse/sun/security/ssl/HandshakeProducer;->produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B

    .line 1097
    .end local v6    # "hs":Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .end local v7    # "handshakeProducer":Lorg/openjsse/sun/security/ssl/HandshakeProducer;
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1104
    :cond_10
    return-void
.end method
