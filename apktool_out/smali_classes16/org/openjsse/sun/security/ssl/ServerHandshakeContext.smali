.class Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
.super Lorg/openjsse/sun/security/ssl/HandshakeContext;
.source "ServerHandshakeContext.java"


# static fields
.field private static final DEFAULT_STATUS_RESP_DELAY:J = 0x1388L

.field static final legacyAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

.field static final rejectClientInitiatedRenego:Z


# instance fields
.field currentCertEntry:Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;

.field interimAuthn:Lorg/openjsse/sun/security/ssl/SSLPossession;

.field stapleParams:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;

.field final statusRespTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    nop

    .line 42
    const-string v0, "jdk.tls.rejectClientInitiatedRenegotiation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/Utilities;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->rejectClientInitiatedRenego:Z

    .line 46
    new-instance v0, Lsun/security/util/LegacyAlgorithmConstraints;

    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;

    invoke-direct {v1}, Lorg/openjsse/sun/security/ssl/SSLAlgorithmDecomposer;-><init>()V

    const-string v2, "jdk.tls.legacyAlgorithms"

    invoke-direct {v0, v2, v1}, Lsun/security/util/LegacyAlgorithmConstraints;-><init>(Ljava/lang/String;Lsun/security/util/AlgorithmDecomposer;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->legacyAlgorithmConstraints:Ljava/security/AlgorithmConstraints;

    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/TransportContext;)V
    .locals 6
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "conContext"    # Lorg/openjsse/sun/security/ssl/TransportContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/openjsse/sun/security/ssl/HandshakeContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/TransportContext;)V

    .line 63
    new-instance v0, Lsun/security/action/GetLongAction;

    const-string v1, "jdk.tls.stapling.responseTimeout"

    const-wide/16 v2, 0x1388

    invoke-direct {v0, v1, v2, v3}, Lsun/security/action/GetLongAction;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 66
    .local v0, "respTimeOut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    move-wide v2, v0

    :cond_0
    iput-wide v2, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->statusRespTimeout:J

    .line 68
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 69
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CLIENT_HELLO:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 68
    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method


# virtual methods
.method kickstart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->kickstartMessageDelivered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->kickstart(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->kickstartMessageDelivered:Z

    .line 80
    return-void

    .line 75
    :cond_1
    :goto_0
    return-void
.end method
