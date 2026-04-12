.class Lorg/openjsse/sun/security/ssl/TransportContext;
.super Ljava/lang/Object;
.source "TransportContext.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/ConnectionContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;
    }
.end annotation


# static fields
.field private static final emptyByteArray:[B


# instance fields
.field final acc:Ljava/security/AccessControlContext;

.field applicationProtocol:Ljava/lang/String;

.field cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

.field clientVerifyData:[B

.field closeReason:Ljava/lang/Exception;

.field conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

.field final consumers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lorg/openjsse/sun/security/ssl/SSLConsumer;",
            ">;"
        }
    .end annotation
.end field

.field delegatedThrown:Ljava/lang/Exception;

.field handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

.field final inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

.field isBroken:Z

.field isInputCloseNotified:Z

.field isNegotiated:Z

.field isUnsureMode:Z

.field final outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

.field peerUserCanceled:Z

.field protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

.field secureRenegotiation:Z

.field serverRequestedNamedGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;",
            ">;"
        }
    .end annotation
.end field

.field serverVerifyData:[B

.field final sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

.field final sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

.field final transport:Lorg/openjsse/sun/security/ssl/SSLTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/openjsse/sun/security/ssl/TransportContext;->emptyByteArray:[B

    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;)V
    .locals 7
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "transport"    # Lorg/openjsse/sun/security/ssl/SSLTransport;
    .param p3, "inputRecord"    # Lorg/openjsse/sun/security/ssl/InputRecord;
    .param p4, "outputRecord"    # Lorg/openjsse/sun/security/ssl/OutputRecord;

    .line 119
    new-instance v3, Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    const/4 v0, 0x0

    invoke-direct {v3, p1, v0}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Z)V

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/openjsse/sun/security/ssl/TransportContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/SSLConfiguration;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;Z)V

    .line 121
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;Z)V
    .locals 7
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "transport"    # Lorg/openjsse/sun/security/ssl/SSLTransport;
    .param p3, "inputRecord"    # Lorg/openjsse/sun/security/ssl/InputRecord;
    .param p4, "outputRecord"    # Lorg/openjsse/sun/security/ssl/OutputRecord;
    .param p5, "isClientMode"    # Z

    .line 130
    new-instance v3, Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    invoke-direct {v3, p1, p5}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Z)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/openjsse/sun/security/ssl/TransportContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/SSLConfiguration;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;Z)V

    .line 133
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/SSLConfiguration;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;)V
    .locals 8
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "transport"    # Lorg/openjsse/sun/security/ssl/SSLTransport;
    .param p3, "sslConfig"    # Lorg/openjsse/sun/security/ssl/SSLConfiguration;
    .param p4, "inputRecord"    # Lorg/openjsse/sun/security/ssl/InputRecord;
    .param p5, "outputRecord"    # Lorg/openjsse/sun/security/ssl/OutputRecord;

    .line 142
    invoke-virtual {p3}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/TransportContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/SSLConfiguration;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;Z)V

    .line 144
    return-void
.end method

.method private constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/SSLConfiguration;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;Z)V
    .locals 2
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "transport"    # Lorg/openjsse/sun/security/ssl/SSLTransport;
    .param p3, "sslConfig"    # Lorg/openjsse/sun/security/ssl/SSLConfiguration;
    .param p4, "inputRecord"    # Lorg/openjsse/sun/security/ssl/InputRecord;
    .param p5, "outputRecord"    # Lorg/openjsse/sun/security/ssl/OutputRecord;
    .param p6, "isUnsureMode"    # Z

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    .line 88
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    .line 89
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isInputCloseNotified:Z

    .line 90
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->peerUserCanceled:Z

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    .line 92
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->delegatedThrown:Ljava/lang/Exception;

    .line 97
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->applicationProtocol:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 103
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->secureRenegotiation:Z

    .line 149
    iput-object p2, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    .line 150
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 151
    iput-object p4, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    .line 152
    iput-object p5, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    .line 153
    iput-object p3, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    .line 154
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    invoke-virtual {p5}, Lorg/openjsse/sun/security/ssl/OutputRecord;->getMaxPacketSize()I

    move-result v1

    iput v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    .line 157
    :cond_0
    iput-boolean p6, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isUnsureMode:Z

    .line 160
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 161
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumProtocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 162
    sget-object v0, Lorg/openjsse/sun/security/ssl/TransportContext;->emptyByteArray:[B

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->clientVerifyData:[B

    .line 163
    sget-object v0, Lorg/openjsse/sun/security/ssl/TransportContext;->emptyByteArray:[B

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->serverVerifyData:[B

    .line 165
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->acc:Ljava/security/AccessControlContext;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->consumers:Ljava/util/Map;

    .line 167
    return-void
.end method

.method private initiateInboundClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/InputRecord;->close()V

    .line 565
    :cond_0
    return-void
.end method

.method private initiateOutboundClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "useUserCanceled":Z
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->peerUserCanceled:Z

    if-nez v1, :cond_0

    .line 588
    const/4 v0, 0x1

    .line 591
    :cond_0
    invoke-virtual {p0, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->closeNotify(Z)V

    .line 592
    return-void
.end method

.method private passiveInboundClose()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/InputRecord;->close()V

    .line 539
    :cond_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 540
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->acknowledgeCloseNotify:Z

    .line 541
    .local v0, "needCloseNotify":Z
    if-nez v0, :cond_3

    .line 542
    iget-boolean v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-eqz v1, :cond_1

    .line 543
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v1

    if-nez v1, :cond_3

    .line 544
    const/4 v0, 0x1

    goto :goto_0

    .line 546
    :cond_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v1, :cond_3

    .line 547
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 548
    .local v1, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v2

    if-nez v2, :cond_3

    .line 549
    :cond_2
    const/4 v0, 0x1

    .line 554
    .end local v1    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 555
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->closeNotify(Z)V

    .line 558
    .end local v0    # "needCloseNotify":Z
    :cond_4
    return-void
.end method


# virtual methods
.method closeInbound()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 505
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    return-void

    .line 513
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isInputCloseNotified:Z

    if-nez v0, :cond_1

    .line 515
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->initiateInboundClose()V

    goto :goto_0

    .line 517
    :cond_1
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->passiveInboundClose()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_0
    goto :goto_1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "ioe":Ljava/io/IOException;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_2

    const-string v1, "ssl"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 521
    const-string v1, "inbound closure failed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-void
.end method

.method closeNotify(Z)V
    .locals 3
    .param p1, "isUserCanceled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    instance-of v0, v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->closeNotify(Z)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    monitor-enter v0

    .line 295
    if-eqz p1, :cond_1

    .line 296
    :try_start_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->USER_CANCELED:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {p0, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->warning(Lorg/openjsse/sun/security/ssl/Alert;)V

    .line 300
    :cond_1
    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->CLOSE_NOTIFY:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {p0, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->warning(Lorg/openjsse/sun/security/ssl/Alert;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :try_start_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/OutputRecord;->close()V

    .line 303
    nop

    .line 304
    monitor-exit v0

    .line 306
    :goto_0
    return-void

    .line 302
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/OutputRecord;->close()V

    .line 303
    nop

    .end local p1    # "isUserCanceled":Z
    throw v1

    .line 304
    .restart local p1    # "isUserCanceled":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method closeOutbound()V
    .locals 3

    .line 570
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    return-void

    .line 575
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->initiateOutboundClose()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    goto :goto_0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "ioe":Ljava/io/IOException;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_1

    const-string v1, "ssl"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    const-string v1, "outbound closure failed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-void
.end method

.method dispatch(Lorg/openjsse/sun/security/ssl/Plaintext;)V
    .locals 5
    .param p1, "plaintext"    # Lorg/openjsse/sun/security/ssl/Plaintext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    if-nez p1, :cond_0

    .line 172
    return-void

    .line 175
    :cond_0
    iget-byte v0, p1, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/ContentType;->valueOf(B)Lorg/openjsse/sun/security/ssl/ContentType;

    move-result-object v0

    .line 176
    .local v0, "ct":Lorg/openjsse/sun/security/ssl/ContentType;
    if-eqz v0, :cond_8

    .line 181
    sget-object v1, Lorg/openjsse/sun/security/ssl/TransportContext$1;->$SwitchMap$org$openjsse$sun$security$ssl$ContentType:[I

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ContentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 215
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->consumers:Ljava/util/Map;

    iget-byte v2, p1, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 216
    .local v1, "consumer":Lorg/openjsse/sun/security/ssl/SSLConsumer;
    if-eqz v1, :cond_7

    .line 217
    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    invoke-interface {v1, p0, v2}, Lorg/openjsse/sun/security/ssl/SSLConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_3

    .line 212
    .end local v1    # "consumer":Lorg/openjsse/sun/security/ssl/SSLConsumer;
    :pswitch_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->alertConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    iget-object v2, p1, Lorg/openjsse/sun/security/ssl/Plaintext;->fragment:Ljava/nio/ByteBuffer;

    invoke-interface {v1, p0, v2}, Lorg/openjsse/sun/security/ssl/SSLConsumer;->consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V

    .line 213
    goto/16 :goto_3

    .line 183
    :pswitch_1
    invoke-static {p0, p1}, Lorg/openjsse/sun/security/ssl/HandshakeContext;->getHandshakeType(Lorg/openjsse/sun/security/ssl/TransportContext;Lorg/openjsse/sun/security/ssl/Plaintext;)B

    move-result v1

    .line 185
    .local v1, "type":B
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-nez v2, :cond_6

    .line 186
    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->KEY_UPDATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-eq v1, v2, :cond_3

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->NEW_SESSION_TICKET:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 203
    :cond_1
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v2, :cond_2

    new-instance v2, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-direct {v2, v3, p0}, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/TransportContext;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-direct {v2, v3, p0}, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/TransportContext;)V

    :goto_0
    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 206
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/OutputRecord;->initHandshaker()V

    goto :goto_2

    .line 188
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-eqz v2, :cond_5

    .line 195
    invoke-static {p0, v1}, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;->isConsumable(Lorg/openjsse/sun/security/ssl/TransportContext;B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 201
    new-instance v2, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;

    invoke-direct {v2, p0}, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;-><init>(Lorg/openjsse/sun/security/ssl/TransportContext;)V

    iput-object v2, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    goto :goto_2

    .line 196
    :cond_4
    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected post-handshake message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 198
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->nameOf(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-virtual {p0, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 189
    :cond_5
    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected unnegotiated post-handshake message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 192
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLHandshake;->nameOf(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-virtual {p0, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 209
    :cond_6
    :goto_2
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    invoke-virtual {v2, v1, p1}, Lorg/openjsse/sun/security/ssl/HandshakeContext;->dispatch(BLorg/openjsse/sun/security/ssl/Plaintext;)V

    .line 210
    nop

    .line 223
    .end local v1    # "type":B
    :goto_3
    return-void

    .line 219
    .local v1, "consumer":Lorg/openjsse/sun/security/ssl/SSLConsumer;
    :cond_7
    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p1, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 177
    .end local v1    # "consumer":Lorg/openjsse/sun/security/ssl/SSLConsumer;
    :cond_8
    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown content type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p1, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;
    .locals 1
    .param p1, "alert"    # Lorg/openjsse/sun/security/ssl/Alert;
    .param p2, "diagnostic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    return-object v0
.end method

.method fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    .locals 1
    .param p1, "alert"    # Lorg/openjsse/sun/security/ssl/Alert;
    .param p2, "diagnostic"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;ZLjava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    return-object v0
.end method

.method fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;ZLjava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    .locals 4
    .param p1, "alert"    # Lorg/openjsse/sun/security/ssl/Alert;
    .param p2, "diagnostic"    # Ljava/lang/String;
    .param p3, "recvFatalAlert"    # Z
    .param p4, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    const-string v1, "ssl"

    if-eqz v0, :cond_4

    .line 332
    if-nez p4, :cond_1

    .line 333
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    const-string v2, "Closed transport, general or untracked problem"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_0
    invoke-virtual {p1, v2}, Lorg/openjsse/sun/security/ssl/Alert;->createSSLException(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 341
    :cond_1
    instance-of v0, p4, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_3

    .line 344
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_2

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    const-string v0, "Closed transport, unexpected rethrowing"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    :cond_2
    const-string v0, "Unexpected rethrowing"

    invoke-virtual {p1, v0, p4}, Lorg/openjsse/sun/security/ssl/Alert;->createSSLException(Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 342
    :cond_3
    move-object v0, p4

    check-cast v0, Ljavax/net/ssl/SSLException;

    throw v0

    .line 354
    :cond_4
    if-nez p2, :cond_6

    .line 355
    if-nez p4, :cond_5

    .line 356
    const-string p2, "General/Untracked problem"

    goto :goto_0

    .line 358
    :cond_5
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 362
    :cond_6
    :goto_0
    if-nez p4, :cond_7

    .line 363
    invoke-virtual {p1, p2}, Lorg/openjsse/sun/security/ssl/Alert;->createSSLException(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object p4

    .line 367
    :cond_7
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_8

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fatal ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :cond_8
    instance-of v0, p4, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_9

    .line 373
    move-object v0, p4

    check-cast v0, Ljavax/net/ssl/SSLException;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    goto :goto_1

    .line 376
    :cond_9
    invoke-virtual {p1, p2, p4}, Lorg/openjsse/sun/security/ssl/Alert;->createSSLException(Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    .line 381
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/InputRecord;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    goto :goto_2

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "ioe":Ljava/io/IOException;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_a

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 384
    const-string v2, "Fatal: input record closure failed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    :cond_a
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    invoke-virtual {v2, v0}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 391
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-eqz v0, :cond_b

    .line 392
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->invalidate()V

    .line 395
    :cond_b
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-eqz v0, :cond_c

    .line 397
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->invalidate()V

    .line 404
    :cond_c
    if-nez p3, :cond_f

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v0, :cond_f

    .line 407
    :cond_d
    :try_start_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert$Level;->FATAL:Lorg/openjsse/sun/security/ssl/Alert$Level;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/Alert$Level;->level:B

    iget-byte v3, p1, Lorg/openjsse/sun/security/ssl/Alert;->id:B

    invoke-virtual {v0, v2, v3}, Lorg/openjsse/sun/security/ssl/OutputRecord;->encodeAlert(BB)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 415
    goto :goto_3

    .line 408
    :catch_1
    move-exception v0

    .line 409
    .restart local v0    # "ioe":Ljava/io/IOException;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_e

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fatal: failed to send fatal alert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    :cond_e
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    invoke-virtual {v2, v0}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 420
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_f
    :goto_3
    :try_start_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 427
    goto :goto_4

    .line 421
    :catch_2
    move-exception v0

    .line 422
    .restart local v0    # "ioe":Ljava/io/IOException;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_10

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 423
    const-string v2, "Fatal: output record closure failed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    :cond_10
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    invoke-virtual {v2, v0}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 430
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_4
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v0, :cond_11

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 436
    :cond_11
    const/4 v0, 0x1

    :try_start_3
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    invoke-interface {v2}, Lorg/openjsse/sun/security/ssl/SSLTransport;->shutdown()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 444
    :goto_5
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    .line 445
    goto :goto_6

    .line 444
    :catchall_0
    move-exception v1

    goto :goto_7

    .line 437
    :catch_3
    move-exception v2

    .line 438
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_4
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_12

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 439
    const-string v1, "Fatal: transport closure failed"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    :cond_12
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "ioe":Ljava/io/IOException;
    goto :goto_5

    .line 447
    :goto_6
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_13

    .line 448
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    check-cast v0, Ljavax/net/ssl/SSLException;

    throw v0

    .line 450
    :cond_13
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 444
    :goto_7
    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    .line 445
    throw v1
.end method

.method fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    .locals 1
    .param p1, "alert"    # Lorg/openjsse/sun/security/ssl/Alert;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    return-object v0
.end method

.method finishHandshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 8

    .line 641
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iput-object p0, v0, Lorg/openjsse/sun/security/ssl/OutputRecord;->tc:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 643
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    iput-object p0, v0, Lorg/openjsse/sun/security/ssl/InputRecord;->tc:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 644
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->negotiatedCipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->cipherSuite:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 645
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/InputRecord;->readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->baseReadSecret:Ljavax/crypto/SecretKey;

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->baseSecret:Ljavax/crypto/SecretKey;

    .line 647
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/OutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->baseWriteSecret:Ljavax/crypto/SecretKey;

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->baseSecret:Ljavax/crypto/SecretKey;

    .line 651
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 652
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/OutputRecord;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->finish()V

    .line 653
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/InputRecord;->finishHandshake()V

    .line 654
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->finishHandshake()V

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    .line 658
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    instance-of v0, v0, Lorg/openjsse/javax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->handshakeListeners:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->handshakeListeners:Ljava/util/HashMap;

    .line 660
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 661
    new-instance v0, Ljavax/net/ssl/HandshakeCompletedEvent;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    check-cast v1, Lorg/openjsse/javax/net/ssl/SSLSocket;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-direct {v0, v1, v2}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    .line 664
    .local v0, "hce":Ljavax/net/ssl/HandshakeCompletedEvent;
    new-instance v7, Ljava/lang/Thread;

    new-instance v3, Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->handshakeListeners:Ljava/util/HashMap;

    invoke-direct {v3, v1, v0}, Lorg/openjsse/sun/security/ssl/TransportContext$NotifyHandshake;-><init>(Ljava/util/Map;Ljavax/net/ssl/HandshakeCompletedEvent;)V

    const-string v4, "HandshakeCompletedNotify-Thread"

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 669
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 672
    .end local v0    # "hce":Ljavax/net/ssl/HandshakeCompletedEvent;
    .end local v1    # "thread":Ljava/lang/Thread;
    :cond_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0
.end method

.method finishPostHandshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    .line 676
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 681
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0
.end method

.method getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    .line 596
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 600
    :cond_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 602
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v0, :cond_4

    .line 603
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedActions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 604
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 605
    :cond_2
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 608
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 609
    :cond_3
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 611
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 615
    :cond_4
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0
.end method

.method isInboundClosed()Z
    .locals 1

    .line 499
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/InputRecord;->isClosed()Z

    move-result v0

    return v0
.end method

.method isOutboundClosed()Z
    .locals 1

    .line 495
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->isClosed()Z

    move-result v0

    return v0
.end method

.method isOutboundDone()Z
    .locals 1

    .line 489
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPostHandshakeContext()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    instance-of v0, v0, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method kickstart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isUnsureMode:Z

    if-nez v0, :cond_8

    .line 230
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/InputRecord;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-nez v0, :cond_3

    .line 244
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    new-instance v0, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/PostHandshakeContext;-><init>(Lorg/openjsse/sun/security/ssl/TransportContext;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    goto :goto_1

    .line 247
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v0, :cond_2

    new-instance v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-direct {v0, v1, p0}, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/TransportContext;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-direct {v0, v1, p0}, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/TransportContext;)V

    :goto_0
    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 250
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->initHandshaker()V

    .line 258
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eqz v0, :cond_5

    .line 259
    :cond_4
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/HandshakeContext;->kickstart()V

    .line 261
    :cond_5
    return-void

    .line 231
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    const-string v1, "Cannot kickstart, the connection is broken or closed"

    if-eqz v0, :cond_7

    .line 232
    new-instance v0, Ljavax/net/ssl/SSLException;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->closeReason:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 236
    :cond_7
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client/Server mode not yet set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method needUnwrapAgain()Z
    .locals 3

    .line 620
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 623
    return v1

    .line 624
    :cond_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    return v1

    .line 626
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v0, :cond_4

    .line 627
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedActions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 628
    return v1

    .line 629
    :cond_2
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 630
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    .line 631
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/InputRecord;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 632
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/TransportContext;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 637
    :cond_4
    return v1
.end method

.method setUseClientMode(Z)V
    .locals 3
    .param p1, "useClientMode"    # Z

    .line 457
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v0, :cond_3

    .line 468
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eq v0, p1, :cond_2

    .line 469
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDefaultProtocolVesions(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 472
    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getDefaultProtocolVersions(Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledCipherSuites:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDefaultCipherSuiteList(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 478
    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getDefaultCipherSuites(Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledCipherSuites:Ljava/util/List;

    .line 481
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->toggleClientMode()V

    .line 484
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isUnsureMode:Z

    .line 485
    return-void

    .line 458
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot change mode after SSL traffic has started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method warning(Lorg/openjsse/sun/security/ssl/Alert;)V
    .locals 3
    .param p1, "alert"    # Lorg/openjsse/sun/security/ssl/Alert;

    .line 272
    iget-boolean v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert$Level;->WARNING:Lorg/openjsse/sun/security/ssl/Alert$Level;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/Alert$Level;->level:B

    iget-byte v2, p1, Lorg/openjsse/sun/security/ssl/Alert;->id:B

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/OutputRecord;->encodeAlert(BB)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "ioe":Ljava/io/IOException;
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_1

    const-string v1, "ssl"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: failed to send warning alert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-void
.end method
