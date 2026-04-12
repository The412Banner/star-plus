.class abstract Lorg/openjsse/sun/security/ssl/HandshakeContext;
.super Ljava/lang/Object;
.source "HandshakeContext.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/ConnectionContext;


# static fields
.field static final allowLegacyHelloMessages:Z

.field static final allowUnsafeRenegotiation:Z


# instance fields
.field final activeCipherSuites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field final activeProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field final algorithmConstraints:Ljava/security/AlgorithmConstraints;

.field applicationProtocol:Ljava/lang/String;

.field baseReadSecret:Ljavax/crypto/SecretKey;

.field baseWriteSecret:Ljavax/crypto/SecretKey;

.field certRequestContext:[B

.field clientHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

.field clientHelloVersion:I

.field clientRequestedNamedGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;",
            ">;"
        }
    .end annotation
.end field

.field final conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

.field final delegatedActions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Byte;",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field volatile delegatedThrown:Ljava/lang/Exception;

.field handshakeConsumers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Byte;",
            "Lorg/openjsse/sun/security/ssl/SSLConsumer;",
            ">;"
        }
    .end annotation
.end field

.field final handshakeCredentials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SSLCredentials;",
            ">;"
        }
    .end annotation
.end field

.field final handshakeExtensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjsse/sun/security/ssl/SSLExtension;",
            "Lorg/openjsse/sun/security/ssl/SSLExtension$SSLExtensionSpec;",
            ">;"
        }
    .end annotation
.end field

.field handshakeFinished:Z

.field final handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

.field handshakeKeyDerivation:Lorg/openjsse/sun/security/ssl/SSLKeyDerivation;

.field handshakeKeyExchange:Lorg/openjsse/sun/security/ssl/SSLKeyExchange;

.field final handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

.field final handshakePossessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SSLPossession;",
            ">;"
        }
    .end annotation
.end field

.field final handshakeProducers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Byte;",
            "Lorg/openjsse/sun/security/ssl/HandshakeProducer;",
            ">;"
        }
    .end annotation
.end field

.field handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

.field isResumption:Z

.field kickstartMessageDelivered:Z

.field localSupportedAuthorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field

.field localSupportedSignAlgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            ">;"
        }
    .end annotation
.end field

.field maxFragmentLength:I

.field final maximumActiveProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

.field negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field negotiatedServerName:Ljavax/net/ssl/SNIServerName;

.field peerRequestedCertSignSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            ">;"
        }
    .end annotation
.end field

.field peerRequestedSignatureSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SignatureScheme;",
            ">;"
        }
    .end annotation
.end field

.field peerSupportedAuthorities:[Ljavax/security/auth/x500/X500Principal;

.field requestedServerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation
.end field

.field resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

.field serverHelloRandom:Lorg/openjsse/sun/security/ssl/RandomCookie;

.field serverSelectedNamedGroup:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

.field final sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

.field final sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

.field staplingActive:Z

.field volatile taskDelegated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    nop

    .line 59
    const-string v0, "sun.security.ssl.allowUnsafeRenegotiation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->allowUnsafeRenegotiation:Z

    .line 70
    nop

    .line 71
    const-string v0, "sun.security.ssl.allowLegacyHelloMessages"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->allowLegacyHelloMessages:Z

    .line 70
    return-void
.end method

.method protected constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/TransportContext;)V
    .locals 6
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "conContext"    # Lorg/openjsse/sun/security/ssl/TransportContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->taskDelegated:Z

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedThrown:Ljava/lang/Exception;

    .line 143
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->peerSupportedAuthorities:[Ljavax/security/auth/x500/X500Principal;

    .line 144
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->localSupportedAuthorities:Ljava/util/List;

    .line 159
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->staplingActive:Z

    .line 163
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 164
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 165
    iget-object v2, p2, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    .line 167
    new-instance v2, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->userSpecifiedAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-direct {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljava/security/AlgorithmConstraints;)V

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 169
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledCipherSuites:Ljava/util/List;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-static {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/HandshakeContext;->getActiveProtocols(Ljava/util/List;Ljava/util/List;Ljava/security/AlgorithmConstraints;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->activeProtocols:Ljava/util/List;

    .line 171
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->activeProtocols:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 177
    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 178
    .local v2, "maximumVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->activeProtocols:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 179
    .local v4, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    sget-object v5, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->NONE:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-eq v2, v5, :cond_0

    .line 180
    invoke-virtual {v4, v2}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->compare(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)I

    move-result v5

    if-lez v5, :cond_1

    .line 181
    :cond_0
    move-object v2, v4

    .line 183
    .end local v4    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_1
    goto :goto_0

    .line 184
    :cond_2
    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->maximumActiveProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 185
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->activeProtocols:Ljava/util/List;

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledCipherSuites:Ljava/util/List;

    iget-object v5, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-static {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/HandshakeContext;->getActiveCipherSuites(Ljava/util/List;Ljava/util/List;Ljava/security/AlgorithmConstraints;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->activeCipherSuites:Ljava/util/List;

    .line 187
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->activeCipherSuites:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 191
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    .line 192
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    .line 193
    iget-object v3, p2, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/InputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    .line 194
    new-instance v3, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    iget-object v4, p2, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-direct {v3, v4}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;-><init>(Lorg/openjsse/sun/security/ssl/OutputRecord;)V

    iput-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    .line 196
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeFinished:Z

    .line 197
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->kickstartMessageDelivered:Z

    .line 199
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedActions:Ljava/util/Queue;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeExtensions:Ljava/util/Map;

    .line 201
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakePossessions:Ljava/util/List;

    .line 202
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeCredentials:Ljava/util/List;

    .line 203
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->requestedServerNames:Ljava/util/List;

    .line 204
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedServerName:Ljavax/net/ssl/SNIServerName;

    .line 205
    iget-object v0, p2, Lorg/openjsse/sun/security/ssl/TransportContext;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 206
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/HandshakeContext;->initialize()V

    .line 207
    return-void

    .line 188
    :cond_3
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "No appropriate cipher suite"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    .end local v2    # "maximumVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_4
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "No appropriate protocol (protocol is disabled or cipher suites are inappropriate)"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Lorg/openjsse/sun/security/ssl/TransportContext;)V
    .locals 3
    .param p1, "conContext"    # Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->taskDelegated:Z

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedThrown:Ljava/lang/Exception;

    .line 143
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->peerSupportedAuthorities:[Ljavax/security/auth/x500/X500Principal;

    .line 144
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->localSupportedAuthorities:Ljava/util/List;

    .line 159
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->staplingActive:Z

    .line 213
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/TransportContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 214
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 215
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    .line 217
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 218
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/TransportContext;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 219
    new-instance v0, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-direct {v0, v2}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;-><init>(Lorg/openjsse/sun/security/ssl/OutputRecord;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    .line 220
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedActions:Ljava/util/Queue;

    .line 222
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    .line 223
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeProducers:Ljava/util/HashMap;

    .line 224
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    .line 225
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->activeProtocols:Ljava/util/List;

    .line 226
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->activeCipherSuites:Ljava/util/List;

    .line 227
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 228
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->maximumActiveProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 229
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeExtensions:Ljava/util/Map;

    .line 230
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakePossessions:Ljava/util/List;

    .line 231
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeCredentials:Ljava/util/List;

    .line 232
    return-void
.end method

.method private static getActiveCipherSuites(Ljava/util/List;Ljava/util/List;Ljava/security/AlgorithmConstraints;)Ljava/util/List;
    .locals 8
    .param p2, "algorithmConstraints"    # Ljava/security/AlgorithmConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;",
            "Ljava/security/AlgorithmConstraints;",
            ")",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 325
    .local p0, "enabledProtocols":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    .local p1, "enabledCipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 326
    .local v0, "suites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 327
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 329
    .local v1, "cachedStatus":Ljava/util/Map;, "Ljava/util/Map<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;Ljava/lang/Boolean;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 330
    .local v3, "suite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/CipherSuite;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 331
    goto :goto_0

    .line 334
    :cond_0
    const/4 v4, 0x0

    .line 335
    .local v4, "isSupported":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 336
    .local v6, "protocol":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    invoke-virtual {v3, v6}, Lorg/openjsse/sun/security/ssl/CipherSuite;->supports(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 337
    goto :goto_1

    .line 339
    :cond_1
    invoke-static {v3, p2, v1}, Lorg/openjsse/sun/security/ssl/HandshakeContext;->isActivatable(Lorg/openjsse/sun/security/ssl/CipherSuite;Ljava/security/AlgorithmConstraints;Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 341
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    const/4 v4, 0x1

    .line 343
    goto :goto_2

    .line 345
    .end local v6    # "protocol":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_2
    goto :goto_1

    .line 347
    :cond_3
    :goto_2
    if-nez v4, :cond_4

    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_4

    .line 348
    const-string v5, "verbose"

    invoke-static {v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore unsupported cipher suite: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    .end local v3    # "suite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    .end local v4    # "isSupported":Z
    :cond_4
    goto :goto_0

    .line 355
    .end local v1    # "cachedStatus":Ljava/util/Map;, "Ljava/util/Map<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;Ljava/lang/Boolean;>;"
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getActiveProtocols(Ljava/util/List;Ljava/util/List;Ljava/security/AlgorithmConstraints;)Ljava/util/List;
    .locals 11
    .param p2, "algorithmConstraints"    # Ljava/security/AlgorithmConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;",
            "Ljava/security/AlgorithmConstraints;",
            ")",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation

    .line 271
    .local p0, "enabledProtocols":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    .local p1, "enabledCipherSuites":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    const/4 v0, 0x0

    .line 272
    .local v0, "enabledSSL20Hello":Z
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    .local v1, "protocols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 274
    .local v3, "protocol":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    if-nez v0, :cond_0

    sget-object v4, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    if-ne v3, v4, :cond_0

    .line 275
    const/4 v0, 0x1

    .line 276
    goto :goto_0

    .line 279
    :cond_0
    sget-object v4, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 280
    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    iget-object v5, v3, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    .line 279
    const/4 v6, 0x0

    invoke-interface {p2, v4, v5, v6}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 283
    goto :goto_0

    .line 286
    :cond_1
    const/4 v4, 0x0

    .line 287
    .local v4, "found":Z
    new-instance v5, Ljava/util/EnumMap;

    const-class v6, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 289
    .local v5, "cachedStatus":Ljava/util/Map;, "Ljava/util/Map<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;Ljava/lang/Boolean;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 290
    .local v7, "suite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    invoke-virtual {v7}, Lorg/openjsse/sun/security/ssl/CipherSuite;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7, v3}, Lorg/openjsse/sun/security/ssl/CipherSuite;->supports(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 291
    invoke-static {v7, p2, v5}, Lorg/openjsse/sun/security/ssl/HandshakeContext;->isActivatable(Lorg/openjsse/sun/security/ssl/CipherSuite;Ljava/security/AlgorithmConstraints;Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 293
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    const/4 v4, 0x1

    .line 295
    goto :goto_2

    .line 297
    :cond_2
    sget-boolean v9, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v9, :cond_3

    const-string v9, "verbose"

    invoke-static {v9}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 298
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignore unsupported cipher suite: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v9, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    .end local v7    # "suite":Lorg/openjsse/sun/security/ssl/CipherSuite;
    :cond_3
    goto :goto_1

    .line 304
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_5

    const-string v6, "handshake"

    invoke-static {v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No available cipher suite for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    .end local v3    # "protocol":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .end local v4    # "found":Z
    .end local v5    # "cachedStatus":Ljava/util/Map;, "Ljava/util/Map<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;Ljava/lang/Boolean;>;"
    :cond_5
    goto/16 :goto_0

    .line 310
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 311
    if-eqz v0, :cond_7

    .line 312
    sget-object v2, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_7
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 317
    :cond_8
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method static getHandshakeType(Lorg/openjsse/sun/security/ssl/TransportContext;Lorg/openjsse/sun/security/ssl/Plaintext;)B
    .locals 4
    .param p0, "conContext"    # Lorg/openjsse/sun/security/ssl/TransportContext;
    .param p1, "plaintext"    # Lorg/openjsse/sun/security/ssl/Plaintext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    iget-byte v0, p1, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B

    sget-object v1, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne v0, v1, :cond_2

    .line 376
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 381
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/Record;->getInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-byte v0, v0

    .line 382
    .local v0, "handshakeType":B
    iget-object v1, p1, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Record;->getInt24(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 383
    .local v1, "handshakeLen":I
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 388
    return v0

    .line 384
    :cond_0
    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Invalid handshake message: insufficient handshake body"

    invoke-virtual {p0, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 377
    .end local v0    # "handshakeType":B
    .end local v1    # "handshakeLen":I
    :cond_1
    sget-object v0, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v1, "Invalid handshake message: insufficient data"

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 372
    :cond_2
    sget-object v0, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected operation for record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p1, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method

.method private initialize()V
    .locals 4

    .line 238
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 240
    .local v0, "inputHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .local v1, "outputHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    goto :goto_0

    .line 242
    .end local v0    # "inputHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .end local v1    # "outputHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->activeProtocols:Ljava/util/List;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    sget-object v0, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 247
    .restart local v0    # "inputHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->maximumActiveProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->maximumActiveProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .restart local v1    # "outputHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    goto :goto_0

    .line 250
    .end local v1    # "outputHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_1
    sget-object v1, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->SSL20Hello:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .restart local v1    # "outputHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    goto :goto_0

    .line 253
    .end local v0    # "inputHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .end local v1    # "outputHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->maximumActiveProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 254
    .restart local v0    # "inputHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->maximumActiveProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 258
    .restart local v1    # "outputHelloVersion":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :goto_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v2, v0}, Lorg/openjsse/sun/security/ssl/InputRecord;->setHelloVersion(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 259
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v2, v1}, Lorg/openjsse/sun/security/ssl/OutputRecord;->setHelloVersion(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 261
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v2, :cond_3

    .line 262
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->maximumActiveProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v3, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 264
    :cond_3
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/OutputRecord;->setVersion(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V

    .line 265
    return-void
.end method

.method private static isActivatable(Lorg/openjsse/sun/security/ssl/CipherSuite;Ljava/security/AlgorithmConstraints;Ljava/util/Map;)Z
    .locals 7
    .param p0, "suite"    # Lorg/openjsse/sun/security/ssl/CipherSuite;
    .param p1, "algorithmConstraints"    # Ljava/security/AlgorithmConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            "Ljava/security/AlgorithmConstraints;",
            "Ljava/util/Map<",
            "Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 516
    .local p2, "cachedStatus":Ljava/util/Map;, "Ljava/util/Map<Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;Ljava/lang/Boolean;>;"
    sget-object v0, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 517
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    .line 516
    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    const-string v1, "verbose"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 518
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 520
    return v3

    .line 524
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CipherSuite;->keyExchange:Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/CipherSuite$KeyExchange;->groupType:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    .line 525
    .local v0, "groupType":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;
    sget-object v4, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_NONE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    if-eq v0, v4, :cond_4

    .line 526
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 527
    .local v3, "checkedStatus":Ljava/lang/Boolean;
    if-nez v3, :cond_1

    .line 528
    invoke-static {p1, v0}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$SupportedGroups;->isActivatable(Ljava/security/AlgorithmConstraints;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;)Z

    move-result v4

    .line 530
    .local v4, "available":Z
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    if-nez v4, :cond_2

    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_2

    .line 533
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 534
    const-string v5, "No activated named group"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 537
    .end local v4    # "available":Z
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 540
    .restart local v4    # "available":Z
    :cond_2
    :goto_0
    if-nez v4, :cond_3

    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_3

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No active named group, ignore "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    :cond_3
    return v4

    .line 546
    .end local v3    # "checkedStatus":Ljava/lang/Boolean;
    .end local v4    # "available":Z
    :cond_4
    return v3

    .line 548
    .end local v0    # "groupType":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;
    :cond_5
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_6

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore disabled cipher suite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    :cond_6
    return v2
.end method

.method static final isNegotiable(Ljava/util/List;Lorg/openjsse/sun/security/ssl/CipherSuite;)Z
    .locals 1
    .param p1, "cs"    # Lorg/openjsse/sun/security/ssl/CipherSuite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ")Z"
        }
    .end annotation

    .line 481
    .local p0, "proposed":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/CipherSuite;->isNegotiable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static final isNegotiable(Ljava/util/List;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/CipherSuite;)Z
    .locals 1
    .param p1, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p2, "cs"    # Lorg/openjsse/sun/security/ssl/CipherSuite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ">;",
            "Lorg/openjsse/sun/security/ssl/ProtocolVersion;",
            "Lorg/openjsse/sun/security/ssl/CipherSuite;",
            ")Z"
        }
    .end annotation

    .line 492
    .local p0, "proposed":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/CipherSuite;>;"
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p2}, Lorg/openjsse/sun/security/ssl/CipherSuite;->isNegotiable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lorg/openjsse/sun/security/ssl/CipherSuite;->supports(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 492
    :goto_0
    return v0
.end method


# virtual methods
.method dispatch(BLjava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "handshakeType"    # B
    .param p2, "fragment"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v0, v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-ne p1, v0, :cond_0

    .line 434
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->HELLO_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .local v0, "consumer":Lorg/openjsse/sun/security/ssl/SSLConsumer;
    goto :goto_0

    .line 436
    .end local v0    # "consumer":Lorg/openjsse/sun/security/ssl/SSLConsumer;
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 439
    .restart local v0    # "consumer":Lorg/openjsse/sun/security/ssl/SSLConsumer;
    :goto_0
    if-eqz v0, :cond_1

    .line 446
    :try_start_0
    invoke-interface {v0, p0, p2}, Lorg/openjsse/sun/security/ssl/SSLConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    nop

    .line 458
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->consume()V

    .line 459
    return-void

    .line 451
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 452
    .local v1, "be":Ljava/lang/RuntimeException;
    :goto_1
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->DECODE_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal handshake message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 454
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->nameOf(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 452
    invoke-virtual {v2, v3, v4, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 447
    .end local v1    # "be":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 448
    .local v1, "unsoe":Ljava/lang/UnsupportedOperationException;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported handshake message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 450
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->nameOf(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 448
    invoke-virtual {v2, v3, v4, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 440
    .end local v1    # "unsoe":Ljava/lang/UnsupportedOperationException;
    :cond_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected handshake message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 442
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->nameOf(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method dispatch(BLorg/openjsse/sun/security/ssl/Plaintext;)V
    .locals 5
    .param p1, "handshakeType"    # B
    .param p2, "plaintext"    # Lorg/openjsse/sun/security/ssl/Plaintext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    invoke-interface {v0}, Lorg/openjsse/sun/security/ssl/SSLTransport;->useDelegatedTask()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedActions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 395
    .local v0, "hasDelegated":Z
    if-nez v0, :cond_1

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq p1, v1, :cond_0

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->KEY_UPDATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq p1, v1, :cond_0

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NEW_SESSION_TICKET:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-object v1, p2, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, v1}, Lorg/openjsse/sun/security/ssl/HandshakeContext;->dispatch(BLjava/nio/ByteBuffer;)V

    goto :goto_1

    .line 399
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 400
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->taskDelegated:Z

    .line 401
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedThrown:Ljava/lang/Exception;

    .line 411
    :cond_2
    iget-object v1, p2, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    .line 412
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 411
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 413
    .local v1, "fragment":Ljava/nio/ByteBuffer;
    iget-object v2, p2, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 414
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 416
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedActions:Ljava/util/Queue;

    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 417
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 416
    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v1    # "fragment":Ljava/nio/ByteBuffer;
    nop

    .line 423
    .end local v0    # "hasDelegated":Z
    :goto_1
    goto :goto_2

    .line 424
    :cond_3
    iget-object v0, p2, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeContext;->dispatch(BLjava/nio/ByteBuffer;)V

    .line 426
    :goto_2
    return-void
.end method

.method getRequestedServerNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->requestedServerNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 557
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 559
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->requestedServerNames:Ljava/util/List;

    return-object v0
.end method

.method isNegotiable(Lorg/openjsse/sun/security/ssl/CipherSuite;)Z
    .locals 1
    .param p1, "cs"    # Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 470
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->activeCipherSuites:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/openjsse/sun/security/ssl/HandshakeContext;->isNegotiable(Ljava/util/List;Lorg/openjsse/sun/security/ssl/CipherSuite;)Z

    move-result v0

    return v0
.end method

.method isNegotiable(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)Z
    .locals 1
    .param p1, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 500
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->activeProtocols:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract kickstart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method setVersion(Lorg/openjsse/sun/security/ssl/ProtocolVersion;)V
    .locals 1
    .param p1, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 509
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iput-object p1, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 510
    return-void
.end method
