.class final Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;
.super Ljava/lang/Object;
.source "SSLAlgorithmConstraints.java"

# interfaces
.implements Ljava/security/AlgorithmConstraints;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;
    }
.end annotation


# static fields
.field static final DEFAULT:Ljava/security/AlgorithmConstraints;

.field static final DEFAULT_SSL_ONLY:Ljava/security/AlgorithmConstraints;

.field private static final tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

.field private static final x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;


# instance fields
.field private final enabledX509DisabledAlgConstraints:Z

.field private final peerSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

.field private final userSpecifiedConstraints:Ljava/security/AlgorithmConstraints;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints;

    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;

    invoke-direct {v1}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;-><init>()V

    const-string v2, "jdk.tls.disabledAlgorithms"

    invoke-direct {v0, v2, v1}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;Lsun/security/util/AlgorithmDecomposer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 49
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints;

    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;-><init>(Z)V

    const-string v2, "jdk.certpath.disabledAlgorithms"

    invoke-direct {v0, v2, v1}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;Lsun/security/util/AlgorithmDecomposer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    .line 59
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljava/security/AlgorithmConstraints;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->DEFAULT:Ljava/security/AlgorithmConstraints;

    .line 63
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;

    move-object v2, v1

    check-cast v2, Lorg/openjsse/javax/net/ssl/SSLSocket;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;-><init>(Lorg/openjsse/javax/net/ssl/SSLSocket;Z)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->DEFAULT_SSL_ONLY:Ljava/security/AlgorithmConstraints;

    return-void
.end method

.method constructor <init>(Ljava/security/AlgorithmConstraints;)V
    .locals 1
    .param p1, "userSpecifiedConstraints"    # Ljava/security/AlgorithmConstraints;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->userSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->peerSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    .line 70
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLEngine;Z)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "withDefaultCertPathConstraints"    # Z

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->getUserSpecifiedConstraints(Ljavax/net/ssl/SSLEngine;)Ljava/security/AlgorithmConstraints;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->userSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->peerSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    .line 83
    iput-boolean p2, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    .line 84
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "supportedAlgorithms"    # [Ljava/lang/String;
    .param p3, "withDefaultCertPathConstraints"    # Z

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->getUserSpecifiedConstraints(Ljavax/net/ssl/SSLEngine;)Ljava/security/AlgorithmConstraints;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->userSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    .line 97
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;

    invoke-direct {v0, p2}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->peerSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    .line 99
    iput-boolean p3, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    .line 100
    return-void
.end method

.method constructor <init>(Lorg/openjsse/javax/net/ssl/SSLSocket;Z)V
    .locals 1
    .param p1, "socket"    # Lorg/openjsse/javax/net/ssl/SSLSocket;
    .param p2, "withDefaultCertPathConstraints"    # Z

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->getUserSpecifiedConstraints(Lorg/openjsse/javax/net/ssl/SSLSocket;)Ljava/security/AlgorithmConstraints;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->userSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->peerSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    .line 76
    iput-boolean p2, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    .line 77
    return-void
.end method

.method constructor <init>(Lorg/openjsse/javax/net/ssl/SSLSocket;[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "socket"    # Lorg/openjsse/javax/net/ssl/SSLSocket;
    .param p2, "supportedAlgorithms"    # [Ljava/lang/String;
    .param p3, "withDefaultCertPathConstraints"    # Z

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->getUserSpecifiedConstraints(Lorg/openjsse/javax/net/ssl/SSLSocket;)Ljava/security/AlgorithmConstraints;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->userSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    .line 89
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;

    invoke-direct {v0, p2}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->peerSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    .line 91
    iput-boolean p3, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    .line 92
    return-void
.end method

.method private static getUserSpecifiedConstraints(Ljavax/net/ssl/SSLEngine;)Ljava/security/AlgorithmConstraints;
    .locals 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 104
    if-eqz p0, :cond_1

    .line 108
    instance-of v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    if-eqz v0, :cond_0

    .line 109
    move-object v0, p0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 111
    .local v0, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    if-eqz v0, :cond_0

    .line 112
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->userSpecifiedAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

    return-object v1

    .line 116
    .end local v0    # "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    :cond_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    return-object v0

    .line 119
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getUserSpecifiedConstraints(Lorg/openjsse/javax/net/ssl/SSLSocket;)Ljava/security/AlgorithmConstraints;
    .locals 2
    .param p0, "socket"    # Lorg/openjsse/javax/net/ssl/SSLSocket;

    .line 124
    if-eqz p0, :cond_1

    .line 128
    instance-of v0, p0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    .line 129
    move-object v0, p0

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 131
    .local v0, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    if-eqz v0, :cond_0

    .line 132
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->userSpecifiedAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

    return-object v1

    .line 136
    .end local v0    # "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    :cond_0
    invoke-virtual {p0}, Lorg/openjsse/javax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    return-object v0

    .line 139
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    .line 146
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v0, 0x1

    .line 148
    .local v0, "permitted":Z
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->peerSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->peerSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    .line 153
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->userSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->userSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    .line 158
    :cond_1
    if-eqz v0, :cond_2

    .line 159
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    .line 163
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    if-eqz v1, :cond_3

    .line 164
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    .line 168
    :cond_3
    return v0
.end method

.method public permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    .line 199
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v0, 0x1

    .line 201
    .local v0, "permitted":Z
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->peerSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->peerSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    .line 206
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->userSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->userSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    .line 211
    :cond_1
    if-eqz v0, :cond_2

    .line 212
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    .line 216
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    if-eqz v1, :cond_3

    .line 217
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    .line 221
    :cond_3
    return v0
.end method

.method public permits(Ljava/util/Set;Ljava/security/Key;)Z
    .locals 2
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/security/Key;",
            ")Z"
        }
    .end annotation

    .line 174
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v0, 0x1

    .line 176
    .local v0, "permitted":Z
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->peerSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->peerSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    .line 180
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->userSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->userSpecifiedConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    .line 184
    :cond_1
    if-eqz v0, :cond_2

    .line 185
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->tlsDisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    .line 188
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->enabledX509DisabledAlgConstraints:Z

    if-eqz v1, :cond_3

    .line 189
    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLAlgorithmConstraints;->x509DisabledAlgConstraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v1, p1, p2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    .line 192
    :cond_3
    return v0
.end method
