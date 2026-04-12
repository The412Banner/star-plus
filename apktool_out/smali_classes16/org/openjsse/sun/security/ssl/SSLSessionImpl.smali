.class final Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
.super Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;
.source "SSLSessionImpl.java"


# static fields
.field private static defaultRejoinable:Z


# instance fields
.field private acceptLargeFragments:Z

.field private final boundValues:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/openjsse/sun/security/ssl/SecureKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private certificateAuthorities:[Ljavax/security/auth/x500/X500Principal;

.field private final childSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/openjsse/sun/security/ssl/SSLSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

.field private context:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

.field private final creationTime:J

.field private final host:Ljava/lang/String;

.field private final identificationProtocol:Ljava/lang/String;

.field private invalidated:Z

.field private isSessionResumption:Z

.field private lastUsedTime:J

.field private localCerts:[Ljava/security/cert/X509Certificate;

.field private localPrivateKey:Ljava/security/PrivateKey;

.field private final localSupportedSignAlgs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            ">;"
        }
    .end annotation
.end field

.field private masterSecret:Ljavax/crypto/SecretKey;

.field private maximumPacketSize:I

.field private negotiatedMaxFragLen:I

.field private peerCerts:[Ljava/security/cert/X509Certificate;

.field private peerSupportedSignAlgs:[Ljava/lang/String;

.field private final port:I

.field private preSharedKey:Ljavax/crypto/SecretKey;

.field private final protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field private pskIdentity:[B

.field private final requestedServerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation
.end field

.field private resumptionMasterSecret:Ljavax/crypto/SecretKey;

.field final serverNameIndication:Ljavax/net/ssl/SNIServerName;

.field private final sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

.field private statusResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private ticketAgeAdd:I

.field private final ticketCreationTime:J

.field private ticketNonceCounter:Ljava/math/BigInteger;

.field private useDefaultPeerSignAlgs:Z

.field final useExtendedMasterSecret:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    const/4 v0, 0x1

    sput-boolean v0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->defaultRejoinable:Z

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 142
    invoke-direct {p0}, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;-><init>()V

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->lastUsedTime:J

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useDefaultPeerSignAlgs:Z

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->ticketCreationTime:J

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->negotiatedMaxFragLen:I

    .line 107
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->childSessions:Ljava/util/Queue;

    .line 116
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isSessionResumption:Z

    .line 128
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->ticketNonceCounter:Ljava/math/BigInteger;

    .line 914
    nop

    .line 915
    const-string v2, "jsse.SSLEngine.acceptLargeFragments"

    invoke-static {v2, v0}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->acceptLargeFragments:Z

    .line 143
    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 144
    sget-object v2, Lorg/openjsse/sun/security/ssl/CipherSuite;->C_NULL:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 145
    new-instance v2, Lorg/openjsse/sun/security/ssl/SessionId;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/openjsse/sun/security/ssl/SessionId;-><init>(ZLjava/security/SecureRandom;)V

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    .line 146
    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->host:Ljava/lang/String;

    .line 147
    iput v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->port:I

    .line 148
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localSupportedSignAlgs:Ljava/util/Collection;

    .line 149
    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->serverNameIndication:Ljavax/net/ssl/SNIServerName;

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->requestedServerNames:Ljava/util/List;

    .line 151
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useExtendedMasterSecret:Z

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->creationTime:J

    .line 153
    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->identificationProtocol:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->boundValues:Ljava/util/concurrent/ConcurrentHashMap;

    .line 155
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/CipherSuite;)V
    .locals 3
    .param p1, "hc"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "cipherSuite"    # Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 163
    new-instance v0, Lorg/openjsse/sun/security/ssl/SessionId;

    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->defaultRejoinable:Z

    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 164
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/SessionId;-><init>(ZLjava/security/SecureRandom;)V

    .line 163
    invoke-direct {p0, p1, p2, v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/CipherSuite;Lorg/openjsse/sun/security/ssl/SessionId;)V

    .line 165
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/CipherSuite;Lorg/openjsse/sun/security/ssl/SessionId;)V
    .locals 6
    .param p1, "hc"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "cipherSuite"    # Lorg/openjsse/sun/security/ssl/CipherSuite;
    .param p3, "id"    # Lorg/openjsse/sun/security/ssl/SessionId;

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/CipherSuite;Lorg/openjsse/sun/security/ssl/SessionId;J)V

    .line 172
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Lorg/openjsse/sun/security/ssl/CipherSuite;Lorg/openjsse/sun/security/ssl/SessionId;J)V
    .locals 4
    .param p1, "hc"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "cipherSuite"    # Lorg/openjsse/sun/security/ssl/CipherSuite;
    .param p3, "id"    # Lorg/openjsse/sun/security/ssl/SessionId;
    .param p4, "creationTime"    # J

    .line 179
    invoke-direct {p0}, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;-><init>()V

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->lastUsedTime:J

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useDefaultPeerSignAlgs:Z

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->ticketCreationTime:J

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->negotiatedMaxFragLen:I

    .line 107
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->childSessions:Ljava/util/Queue;

    .line 116
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isSessionResumption:Z

    .line 128
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->ticketNonceCounter:Ljava/math/BigInteger;

    .line 914
    nop

    .line 915
    const-string v1, "jsse.SSLEngine.acceptLargeFragments"

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->acceptLargeFragments:Z

    .line 180
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 181
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 182
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    .line 183
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    invoke-interface {v1}, Lorg/openjsse/sun/security/ssl/SSLTransport;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->host:Ljava/lang/String;

    .line 184
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    invoke-interface {v1}, Lorg/openjsse/sun/security/ssl/SSLTransport;->getPeerPort()I

    move-result v1

    iput v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->port:I

    .line 185
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    if-nez v1, :cond_0

    .line 186
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localSupportedSignAlgs:Ljava/util/Collection;

    .line 189
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedServerName:Ljavax/net/ssl/SNIServerName;

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->serverNameIndication:Ljavax/net/ssl/SNIServerName;

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    .line 191
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/HandshakeContext;->getRequestedServerNames()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 190
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->requestedServerNames:Ljava/util/List;

    .line 192
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 193
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_EXTENDED_MASTER_SECRET:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 194
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_EXTENDED_MASTER_SECRET:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 196
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useExtendedMasterSecret:Z

    goto :goto_3

    .line 199
    :cond_2
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_EXTENDED_MASTER_SECRET:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 200
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 202
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useExtendedMasterSecret:Z

    .line 204
    :goto_3
    iput-wide p4, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->creationTime:J

    .line 205
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->identificationProtocol:Ljava/lang/String;

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->identificationProtocol:Ljava/lang/String;

    .line 206
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->boundValues:Ljava/util/concurrent/ConcurrentHashMap;

    .line 208
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_4

    const-string v1, "session"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session initialized:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :cond_4
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLSessionImpl;Lorg/openjsse/sun/security/ssl/SessionId;)V
    .locals 3
    .param p1, "baseSession"    # Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .param p2, "newId"    # Lorg/openjsse/sun/security/ssl/SessionId;

    .line 213
    invoke-direct {p0}, Lorg/openjsse/javax/net/ssl/ExtendedSSLSession;-><init>()V

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->lastUsedTime:J

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useDefaultPeerSignAlgs:Z

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->ticketCreationTime:J

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->negotiatedMaxFragLen:I

    .line 107
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->childSessions:Ljava/util/Queue;

    .line 116
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isSessionResumption:Z

    .line 128
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->ticketNonceCounter:Ljava/math/BigInteger;

    .line 914
    nop

    .line 915
    const-string v1, "jsse.SSLEngine.acceptLargeFragments"

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->acceptLargeFragments:Z

    .line 214
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 215
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 216
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    .line 217
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->host:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPeerPort()I

    move-result v1

    iput v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->port:I

    .line 219
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localSupportedSignAlgs:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 221
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localSupportedSignAlgs:Ljava/util/Collection;

    :goto_0
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localSupportedSignAlgs:Ljava/util/Collection;

    .line 222
    nop

    .line 223
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerSupportedSignAlgs:[Ljava/lang/String;

    .line 224
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->serverNameIndication:Ljavax/net/ssl/SNIServerName;

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->serverNameIndication:Ljavax/net/ssl/SNIServerName;

    .line 225
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getRequestedServerNames()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->requestedServerNames:Ljava/util/List;

    .line 226
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->masterSecret:Ljavax/crypto/SecretKey;

    .line 227
    iget-boolean v1, p1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useExtendedMasterSecret:Z

    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useExtendedMasterSecret:Z

    .line 228
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getCreationTime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->creationTime:J

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->lastUsedTime:J

    .line 230
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getIdentificationProtocol()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->identificationProtocol:Ljava/lang/String;

    .line 231
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    .line 232
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    .line 233
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->statusResponses:Ljava/util/List;

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->statusResponses:Ljava/util/List;

    .line 234
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->resumptionMasterSecret:Ljavax/crypto/SecretKey;

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->resumptionMasterSecret:Ljavax/crypto/SecretKey;

    .line 235
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->context:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->context:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    .line 236
    iget v1, p1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->negotiatedMaxFragLen:I

    iput v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->negotiatedMaxFragLen:I

    .line 237
    iget v1, p1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->maximumPacketSize:I

    iput v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->maximumPacketSize:I

    .line 238
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->boundValues:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->boundValues:Ljava/util/concurrent/ConcurrentHashMap;

    .line 240
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_1

    const-string v1, "session"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session initialized:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    :cond_1
    return-void
.end method

.method private isLocalAuthenticationValid()Z
    .locals 2

    .line 399
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localPrivateKey:Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    .line 404
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localPrivateKey:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->invalidate()V

    .line 407
    const/4 v1, 0x0

    return v1

    .line 411
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method addChild(Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)V
    .locals 1
    .param p1, "session"    # Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 258
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->childSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method declared-synchronized consumePreSharedKey()Ljavax/crypto/SecretKey;
    .locals 2

    monitor-enter p0

    .line 292
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->preSharedKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :try_start_1
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->preSharedKey:Ljavax/crypto/SecretKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 292
    monitor-exit p0

    return-object v1

    .line 294
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :catchall_0
    move-exception v1

    :try_start_2
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->preSharedKey:Ljavax/crypto/SecretKey;

    .line 295
    throw v1

    .line 291
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method declared-synchronized consumePskIdentity()[B
    .locals 2

    monitor-enter p0

    .line 312
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->pskIdentity:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :try_start_1
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->pskIdentity:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 312
    monitor-exit p0

    return-object v1

    .line 314
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :catchall_0
    move-exception v1

    :try_start_2
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->pskIdentity:[B

    .line 315
    throw v1

    .line 311
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 522
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 523
    return v0

    .line 526
    :cond_0
    instance-of v1, p1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 527
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 528
    .local v1, "sess":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    .line 529
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSessionId()Lorg/openjsse/sun/security/ssl/SessionId;

    move-result-object v4

    .line 528
    invoke-virtual {v3, v4}, Lorg/openjsse/sun/security/ssl/SessionId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 532
    .end local v1    # "sess":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :cond_2
    return v2
.end method

.method protected declared-synchronized expandBufferSizes()V
    .locals 1

    monitor-enter p0

    .line 923
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->acceptLargeFragments:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    monitor-exit p0

    return-void

    .line 922
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method finish()Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .locals 1

    .line 357
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useDefaultPeerSignAlgs:Z

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerSupportedSignAlgs:[Ljava/lang/String;

    .line 361
    :cond_0
    return-object p0
.end method

.method public declared-synchronized getApplicationBufferSize()I
    .locals 5

    monitor-enter p0

    .line 966
    const/4 v0, 0x0

    .line 967
    .local v0, "fragmentSize":I
    :try_start_0
    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->maximumPacketSize:I

    if-lez v1, :cond_0

    .line 968
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget v2, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->maximumPacketSize:I

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-boolean v4, v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/openjsse/sun/security/ssl/CipherSuite;->calculateFragSize(ILorg/openjsse/sun/security/ssl/ProtocolVersion;Z)I

    move-result v1

    move v0, v1

    .line 973
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :cond_0
    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->negotiatedMaxFragLen:I

    if-lez v1, :cond_2

    .line 974
    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->negotiatedMaxFragLen:I

    if-le v1, v0, :cond_1

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->negotiatedMaxFragLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    monitor-exit p0

    return v1

    .line 978
    :cond_2
    if-eqz v0, :cond_3

    .line 979
    monitor-exit p0

    return v0

    .line 982
    :cond_3
    :try_start_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 983
    monitor-exit p0

    const/16 v1, 0x4000

    return v1

    .line 985
    :cond_4
    :try_start_2
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->acceptLargeFragments:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    const v1, 0x8145

    goto :goto_1

    :cond_5
    const/16 v1, 0x4145

    .line 987
    .local v1, "maxPacketSize":I
    :goto_1
    add-int/lit8 v2, v1, -0x5

    monitor-exit p0

    return v2

    .line 965
    .end local v0    # "fragmentSize":I
    .end local v1    # "maxPacketSize":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method getCertificateAuthorities()[Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .line 555
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->certificateAuthorities:[Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 664
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    .line 667
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "peer not authenticated"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 493
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getSuite()Lorg/openjsse/sun/security/ssl/CipherSuite;

    move-result-object v0

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .line 740
    iget-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->creationTime:J

    return-wide v0
.end method

.method public getId()[B
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SessionId;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method getIdentificationProtocol()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->identificationProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 4

    .line 749
    iget-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->lastUsedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->lastUsedTime:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->creationTime:J

    :goto_0
    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 600
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    .line 601
    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 600
    :goto_0
    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .line 724
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 725
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_1

    .line 724
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 1

    .line 1030
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localSupportedSignAlgs:Ljava/util/Collection;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getAlgorithmNames(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSupportedSignatureSchemes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            ">;"
        }
    .end annotation

    .line 1038
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localSupportedSignAlgs:Ljava/util/Collection;

    return-object v0
.end method

.method getMasterSecret()Ljavax/crypto/SecretKey;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->masterSecret:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method declared-synchronized getMaximumPacketSize()I
    .locals 1

    monitor-enter p0

    .line 1021
    :try_start_0
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->maximumPacketSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1021
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized getNegotiatedMaxFragSize()I
    .locals 1

    monitor-enter p0

    .line 1013
    :try_start_0
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->negotiatedMaxFragLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1013
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getPacketBufferSize()I
    .locals 5

    monitor-enter p0

    .line 934
    const/4 v0, 0x0

    .line 935
    .local v0, "packetSize":I
    :try_start_0
    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->negotiatedMaxFragLen:I

    if-lez v1, :cond_0

    .line 936
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iget v2, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->negotiatedMaxFragLen:I

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-boolean v4, v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/openjsse/sun/security/ssl/CipherSuite;->calculatePacketSize(ILorg/openjsse/sun/security/ssl/ProtocolVersion;Z)I

    move-result v1

    move v0, v1

    .line 941
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :cond_0
    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->maximumPacketSize:I

    if-lez v1, :cond_2

    .line 942
    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->maximumPacketSize:I

    if-le v1, v0, :cond_1

    iget v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->maximumPacketSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    monitor-exit p0

    return v1

    .line 946
    :cond_2
    if-eqz v0, :cond_3

    .line 947
    monitor-exit p0

    return v0

    .line 950
    :cond_3
    :try_start_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->isDTLS:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 951
    monitor-exit p0

    const/16 v1, 0x414d

    return v1

    .line 953
    :cond_4
    :try_start_2
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->acceptLargeFragments:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    const v1, 0x8145

    goto :goto_1

    :cond_5
    const/16 v1, 0x4145

    :goto_1
    monitor-exit p0

    return v1

    .line 933
    .end local v0    # "packetSize":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getPeerAddress()Ljava/net/InetAddress;
    .locals 2

    .line 765
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 628
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    new-array v0, v0, [Ljavax/security/cert/X509Certificate;

    .line 633
    .local v0, "certs":[Ljavax/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 634
    const/4 v2, 0x0

    .line 636
    .local v2, "der":[B
    :try_start_0
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    move-object v2, v3

    .line 637
    invoke-static {v2}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    nop

    .line 633
    .end local v2    # "der":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 640
    .restart local v2    # "der":[B
    :catch_0
    move-exception v3

    .line 641
    .local v3, "e":Ljavax/security/cert/CertificateException;
    new-instance v4, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v3}, Ljavax/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 638
    .end local v3    # "e":Ljavax/security/cert/CertificateException;
    :catch_1
    move-exception v3

    .line 639
    .local v3, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v3}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 645
    .end local v1    # "i":I
    .end local v2    # "der":[B
    .end local v3    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_0
    return-object v0

    .line 629
    .end local v0    # "certs":[Ljavax/security/cert/X509Certificate;
    :cond_1
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "peer not authenticated"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0

    .line 577
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "peer not authenticated"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    .line 773
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    .line 782
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->port:I

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0

    .line 710
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "peer not authenticated"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 1

    .line 1047
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerSupportedSignAlgs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerSupportedSignAlgs:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 1051
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getPreSharedKey()Ljavax/crypto/SecretKey;
    .locals 1

    monitor-enter p0

    .line 287
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->preSharedKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 287
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 505
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    move-result-object v0

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    return-object v0
.end method

.method getProtocolVersion()Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .locals 1

    .line 497
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    return-object v0
.end method

.method public getRequestedServerNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation

    .line 1060
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->requestedServerNames:Ljava/util/List;

    return-object v0
.end method

.method getResumptionMasterSecret()Ljavax/crypto/SecretKey;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->resumptionMasterSecret:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 3

    .line 441
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    move-object v1, v0

    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Ljavax/net/ssl/SSLPermission;

    const-string v2, "getSSLSessionContext"

    invoke-direct {v0, v2}, Ljavax/net/ssl/SSLPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 445
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->context:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    return-object v0
.end method

.method getSessionId()Lorg/openjsse/sun/security/ssl/SessionId;
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    return-object v0
.end method

.method public getStatusResponses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->statusResponses:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->statusResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 687
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->statusResponses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 688
    .local v0, "responses":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->statusResponses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 689
    .local v2, "respBytes":[B
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    .end local v2    # "respBytes":[B
    goto :goto_0

    .line 691
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 684
    .end local v0    # "responses":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getSuite()Lorg/openjsse/sun/security/ssl/CipherSuite;
    .locals 1

    .line 458
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    return-object v0
.end method

.method getTicketAgeAdd()I
    .locals 1

    .line 299
    iget v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->ticketAgeAdd:I

    return v0
.end method

.method public getTicketCreationTime()J
    .locals 2

    .line 732
    iget-wide v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->ticketCreationTime:J

    return-wide v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 852
    if-eqz p1, :cond_0

    .line 856
    new-instance v0, Lorg/openjsse/sun/security/ssl/SecureKey;

    invoke-direct {v0, p1}, Lorg/openjsse/sun/security/ssl/SecureKey;-><init>(Ljava/lang/Object;)V

    .line 857
    .local v0, "secureKey":Lorg/openjsse/sun/security/ssl/SecureKey;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->boundValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 853
    .end local v0    # "secureKey":Lorg/openjsse/sun/security/ssl/SecureKey;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 5

    .line 888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 889
    .local v0, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SecureKey;->getCurrentSecurityContext()Ljava/lang/Object;

    move-result-object v1

    .line 890
    .local v1, "securityCtx":Ljava/lang/Object;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->boundValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 891
    .local v2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/openjsse/sun/security/ssl/SecureKey;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 892
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/SecureKey;

    .line 893
    .local v3, "key":Lorg/openjsse/sun/security/ssl/SecureKey;
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SecureKey;->getSecurityContext()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 894
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SecureKey;->getAppKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    .end local v3    # "key":Lorg/openjsse/sun/security/ssl/SecureKey;
    :cond_0
    goto :goto_0

    .line 898
    .end local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/openjsse/sun/security/ssl/SecureKey;>;"
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public hashCode()I
    .locals 1

    .line 513
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SessionId;->hashCode()I

    move-result v0

    return v0
.end method

.method incrTicketNonceCounter()Ljava/math/BigInteger;
    .locals 4

    .line 270
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->ticketNonceCounter:Ljava/math/BigInteger;

    .line 271
    .local v0, "result":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->ticketNonceCounter:Ljava/math/BigInteger;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->ticketNonceCounter:Ljava/math/BigInteger;

    .line 272
    return-object v0
.end method

.method public declared-synchronized invalidate()V
    .locals 2

    monitor-enter p0

    .line 797
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->context:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->context:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->remove(Lorg/openjsse/sun/security/ssl/SessionId;)V

    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->context:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    .line 801
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :cond_0
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->invalidated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 802
    monitor-exit p0

    return-void

    .line 804
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->invalidated:Z

    .line 805
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_2

    const-string v0, "session"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalidated session:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 808
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->childSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 809
    .local v1, "child":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 810
    .end local v1    # "child":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    goto :goto_0

    .line 811
    :cond_3
    monitor-exit p0

    return-void

    .line 796
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method isRejoinable()Z
    .locals 1

    .line 385
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->sessionId:Lorg/openjsse/sun/security/ssl/SessionId;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SessionId;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->invalidated:Z

    if-nez v0, :cond_0

    .line 386
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isLocalAuthenticationValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 385
    :goto_0
    return v0
.end method

.method isSessionResumption()Z
    .locals 1

    .line 477
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isSessionResumption:Z

    return v0
.end method

.method public declared-synchronized isValid()Z
    .locals 1

    monitor-enter p0

    .line 391
    :try_start_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 391
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 826
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 830
    new-instance v0, Lorg/openjsse/sun/security/ssl/SecureKey;

    invoke-direct {v0, p1}, Lorg/openjsse/sun/security/ssl/SecureKey;-><init>(Ljava/lang/Object;)V

    .line 831
    .local v0, "secureKey":Lorg/openjsse/sun/security/ssl/SecureKey;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->boundValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 833
    .local v1, "oldValue":Ljava/lang/Object;
    instance-of v2, v1, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v2, :cond_0

    .line 836
    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v2, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    .line 837
    .local v2, "e":Ljavax/net/ssl/SSLSessionBindingEvent;
    move-object v3, v1

    check-cast v3, Ljavax/net/ssl/SSLSessionBindingListener;

    invoke-interface {v3, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 839
    .end local v2    # "e":Ljavax/net/ssl/SSLSessionBindingEvent;
    :cond_0
    instance-of v2, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v2, :cond_1

    .line 842
    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v2, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    .line 843
    .restart local v2    # "e":Ljavax/net/ssl/SSLSessionBindingEvent;
    move-object v3, p2

    check-cast v3, Ljavax/net/ssl/SSLSessionBindingListener;

    invoke-interface {v3, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 845
    .end local v2    # "e":Ljavax/net/ssl/SSLSessionBindingEvent;
    :cond_1
    return-void

    .line 827
    .end local v0    # "secureKey":Lorg/openjsse/sun/security/ssl/SecureKey;
    .end local v1    # "oldValue":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "arguments can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 867
    if-eqz p1, :cond_1

    .line 871
    new-instance v0, Lorg/openjsse/sun/security/ssl/SecureKey;

    invoke-direct {v0, p1}, Lorg/openjsse/sun/security/ssl/SecureKey;-><init>(Ljava/lang/Object;)V

    .line 872
    .local v0, "secureKey":Lorg/openjsse/sun/security/ssl/SecureKey;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->boundValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 874
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v2, :cond_0

    .line 877
    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v2, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    .line 878
    .local v2, "e":Ljavax/net/ssl/SSLSessionBindingEvent;
    move-object v3, v1

    check-cast v3, Ljavax/net/ssl/SSLSessionBindingListener;

    invoke-interface {v3, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 880
    .end local v2    # "e":Ljavax/net/ssl/SSLSessionBindingEvent;
    :cond_0
    return-void

    .line 868
    .end local v0    # "secureKey":Lorg/openjsse/sun/security/ssl/SecureKey;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setAsSessionResumption(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 485
    iput-boolean p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->isSessionResumption:Z

    .line 486
    return-void
.end method

.method setCertificateAuthorities([Ljavax/security/auth/x500/X500Principal;)V
    .locals 0
    .param p1, "certificateAuthorities"    # [Ljavax/security/auth/x500/X500Principal;

    .line 543
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->certificateAuthorities:[Ljavax/security/auth/x500/X500Principal;

    .line 544
    return-void
.end method

.method setContext(Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;)V
    .locals 1
    .param p1, "ctx"    # Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    .line 786
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->context:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    if-nez v0, :cond_0

    .line 787
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->context:Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    .line 789
    :cond_0
    return-void
.end method

.method setLastAccessedTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 753
    iput-wide p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->lastUsedTime:J

    .line 754
    return-void
.end method

.method setLocalCertificates([Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "local"    # [Ljava/security/cert/X509Certificate;

    .line 325
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    .line 326
    return-void
.end method

.method setLocalPrivateKey(Ljava/security/PrivateKey;)V
    .locals 0
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .line 329
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->localPrivateKey:Ljava/security/PrivateKey;

    .line 330
    return-void
.end method

.method setMasterSecret(Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "secret"    # Ljavax/crypto/SecretKey;

    .line 246
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->masterSecret:Ljavax/crypto/SecretKey;

    .line 247
    return-void
.end method

.method declared-synchronized setMaximumPacketSize(I)V
    .locals 0
    .param p1, "maximumPacketSize"    # I

    monitor-enter p0

    .line 1017
    :try_start_0
    iput p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->maximumPacketSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    monitor-exit p0

    return-void

    .line 1016
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .end local p1    # "maximumPacketSize":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized setNegotiatedMaxFragSize(I)V
    .locals 0
    .param p1, "negotiatedMaxFragLen"    # I

    monitor-enter p0

    .line 1002
    :try_start_0
    iput p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->negotiatedMaxFragLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    monitor-exit p0

    return-void

    .line 1001
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    .end local p1    # "negotiatedMaxFragLen":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method setPeerCertificates([Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "peer"    # [Ljava/security/cert/X509Certificate;

    .line 319
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 320
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    .line 322
    :cond_0
    return-void
.end method

.method setPeerSupportedSignatureAlgorithms(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            ">;)V"
        }
    .end annotation

    .line 334
    .local p1, "signatureSchemes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    nop

    .line 335
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getAlgorithmNames(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerSupportedSignAlgs:[Ljava/lang/String;

    .line 336
    return-void
.end method

.method setPreSharedKey(Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "key"    # Ljavax/crypto/SecretKey;

    .line 254
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->preSharedKey:Ljavax/crypto/SecretKey;

    .line 255
    return-void
.end method

.method setPskIdentity([B)V
    .locals 0
    .param p1, "pskIdentity"    # [B

    .line 266
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->pskIdentity:[B

    .line 267
    return-void
.end method

.method setResumptionMasterSecret(Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "secret"    # Ljavax/crypto/SecretKey;

    .line 250
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->resumptionMasterSecret:Ljavax/crypto/SecretKey;

    .line 251
    return-void
.end method

.method setStatusResponses(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 370
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->statusResponses:Ljava/util/List;

    goto :goto_0

    .line 373
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->statusResponses:Ljava/util/List;

    .line 375
    :goto_0
    return-void
.end method

.method setSuite(Lorg/openjsse/sun/security/ssl/CipherSuite;)V
    .locals 2
    .param p1, "suite"    # Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 465
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 467
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "session"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negotiating session:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    :cond_0
    return-void
.end method

.method setTicketAgeAdd(I)V
    .locals 0
    .param p1, "ticketAgeAdd"    # I

    .line 262
    iput p1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->ticketAgeAdd:I

    .line 263
    return-void
.end method

.method setUseDefaultPeerSignAlgs()V
    .locals 4

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useDefaultPeerSignAlgs:Z

    .line 351
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "SHA1withRSA"

    aput-object v3, v1, v2

    const-string v2, "SHA1withDSA"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "SHA1withECDSA"

    aput-object v2, v1, v0

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->peerSupportedSignAlgs:[Ljava/lang/String;

    .line 353
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->creationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
