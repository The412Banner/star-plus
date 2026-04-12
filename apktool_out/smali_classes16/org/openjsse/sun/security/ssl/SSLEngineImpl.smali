.class final Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
.super Lorg/openjsse/javax/net/ssl/SSLEngine;
.source "SSLEngineImpl.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLTransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;
    }
.end annotation


# instance fields
.field final conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

.field private final sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;)V
    .locals 2
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 93
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V
    .locals 4
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .line 101
    invoke-direct {p0, p2, p3}, Lorg/openjsse/javax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    .line 102
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 103
    new-instance v0, Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/HandshakeHash;-><init>()V

    .line 104
    .local v0, "handshakeHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    invoke-virtual {p1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Lorg/openjsse/sun/security/ssl/TransportContext;

    new-instance v2, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;

    invoke-direct {v2, v0}, Lorg/openjsse/sun/security/ssl/DTLSInputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    new-instance v3, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;

    invoke-direct {v3, v0}, Lorg/openjsse/sun/security/ssl/DTLSOutputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    invoke-direct {v1, p1, p0, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    goto :goto_0

    .line 109
    :cond_0
    new-instance v1, Lorg/openjsse/sun/security/ssl/TransportContext;

    new-instance v2, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;

    invoke-direct {v2, v0}, Lorg/openjsse/sun/security/ssl/SSLEngineInputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    new-instance v3, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;

    invoke-direct {v3, v0}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeHash;)V

    invoke-direct {v1, p1, p0, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLTransport;Lorg/openjsse/sun/security/ssl/InputRecord;Lorg/openjsse/sun/security/ssl/OutputRecord;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 115
    :goto_0
    if-eqz p2, :cond_1

    .line 116
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->serverNames:Ljava/util/List;

    .line 117
    invoke-static {v2, p2}, Lorg/openjsse/sun/security/ssl/Utilities;->addToSNIServerNameList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->serverNames:Ljava/util/List;

    .line 120
    :cond_1
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Exception;)Ljavax/net/ssl/SSLException;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Exception;

    .line 81
    invoke-static {p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->getTaskThrown(Ljava/lang/Exception;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    return-object v0
.end method

.method private static checkParams([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)V
    .locals 5
    .param p0, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p1, "srcsOffset"    # I
    .param p2, "srcsLength"    # I
    .param p3, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p4, "dstsOffset"    # I
    .param p5, "dstsLength"    # I

    .line 419
    if-eqz p0, :cond_7

    if-eqz p3, :cond_7

    .line 424
    if-ltz p4, :cond_6

    if-ltz p5, :cond_6

    array-length v0, p3

    sub-int/2addr v0, p5

    if-gt p4, v0, :cond_6

    .line 430
    if-ltz p1, :cond_5

    if-ltz p2, :cond_5

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_5

    .line 436
    move v0, p4

    .local v0, "i":I
    :goto_0
    add-int v1, p4, p5

    const-string v2, "] == null"

    if-ge v0, v1, :cond_2

    .line 437
    aget-object v1, p3, v0

    if-eqz v1, :cond_1

    .line 445
    aget-object v1, p3, v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_0
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 438
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destination buffer["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    .end local v0    # "i":I
    :cond_2
    move v0, p1

    .restart local v0    # "i":I
    :goto_1
    add-int v1, p1, p2

    if-ge v0, v1, :cond_4

    .line 451
    aget-object v1, p0, v0

    if-eqz v1, :cond_3

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 452
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "source buffer["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    .end local v0    # "i":I
    :cond_4
    return-void

    .line 432
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index out of bound of the source buffers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index out of bound of the destination buffers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source or destination buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized checkTaskThrown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 950
    const/4 v0, 0x0

    .line 953
    .local v0, "exc":Ljava/lang/Exception;
    :try_start_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 954
    .local v1, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedThrown:Ljava/lang/Exception;

    if-eqz v3, :cond_0

    .line 955
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedThrown:Ljava/lang/Exception;

    move-object v0, v3

    .line 956
    iput-object v2, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedThrown:Ljava/lang/Exception;

    .line 967
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :cond_0
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->delegatedThrown:Ljava/lang/Exception;

    if-eqz v3, :cond_2

    .line 968
    if-eqz v0, :cond_1

    .line 970
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->delegatedThrown:Ljava/lang/Exception;

    if-ne v3, v0, :cond_2

    .line 972
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iput-object v2, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->delegatedThrown:Ljava/lang/Exception;

    goto :goto_0

    .line 977
    :cond_1
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->delegatedThrown:Ljava/lang/Exception;

    move-object v0, v3

    .line 978
    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iput-object v2, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->delegatedThrown:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 984
    monitor-exit p0

    return-void

    .line 988
    :cond_3
    :try_start_1
    instance-of v2, v0, Ljavax/net/ssl/SSLException;

    if-nez v2, :cond_5

    .line 990
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_4

    .line 991
    move-object v2, v0

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 993
    :cond_4
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->getTaskThrown(Ljava/lang/Exception;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 989
    :cond_5
    move-object v2, v0

    check-cast v2, Ljavax/net/ssl/SSLException;

    throw v2

    .line 949
    .end local v0    # "exc":Ljava/lang/Exception;
    .end local v1    # "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private decode([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/sun/security/ssl/Plaintext;
    .locals 7
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p5, "dstsOffset"    # I
    .param p6, "dstsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/openjsse/sun/security/ssl/SSLTransport;->decode(Lorg/openjsse/sun/security/ssl/TransportContext;[Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v0

    .line 717
    .local v0, "pt":Lorg/openjsse/sun/security/ssl/Plaintext;
    sget-object v1, Lorg/openjsse/sun/security/ssl/Plaintext;->PLAINTEXT_NULL:Lorg/openjsse/sun/security/ssl/Plaintext;

    if-eq v0, v1, :cond_2

    .line 718
    iget-byte v1, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->contentType:B

    invoke-direct {p0, v1}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->tryToFinishHandshake(B)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    .line 719
    .local v1, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    if-nez v1, :cond_0

    .line 720
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    iput-object v2, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    .line 722
    :cond_0
    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 726
    :goto_0
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/InputRecord;->seqNumIsHuge()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/InputRecord;->readCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;

    .line 727
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;->atKeyLimit()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 728
    :cond_1
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 729
    invoke-direct {p0, v2}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->tryKeyUpdate(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    iput-object v2, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 733
    .end local v1    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_2
    return-object v0
.end method

.method private encode([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/sun/security/ssl/Ciphertext;
    .locals 9
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p5, "dstsOffset"    # I
    .param p6, "dstsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, "ciphertext":Lorg/openjsse/sun/security/ssl/Ciphertext;
    :try_start_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lorg/openjsse/sun/security/ssl/OutputRecord;->encode([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/sun/security/ssl/Ciphertext;

    move-result-object v1
    :try_end_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 320
    nop

    .line 322
    if-nez v0, :cond_0

    .line 323
    const/4 v1, 0x0

    return-object v1

    .line 327
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 328
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableRetransmissions:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 331
    .local v1, "needRetransmission":Z
    :goto_0
    iget-byte v3, v0, Lorg/openjsse/sun/security/ssl/Ciphertext;->contentType:B

    .line 332
    invoke-direct {p0, v3}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->tryToFinishHandshake(B)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 333
    .local v3, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    if-eqz v1, :cond_3

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v4, :cond_3

    iget-object v4, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 335
    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-byte v4, v0, Lorg/openjsse/sun/security/ssl/Ciphertext;->handshakeType:B

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->FINISHED:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v5, v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    if-ne v4, v5, :cond_3

    .line 344
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_2

    const-string v4, "ssl,verbose"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 345
    const-string v4, "retransmit the last flight messages"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    :cond_2
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/OutputRecord;->launchRetransmission()V

    .line 349
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 352
    :cond_3
    if-nez v3, :cond_4

    .line 353
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 357
    :cond_4
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/OutputRecord;->seqNumIsHuge()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/OutputRecord;->writeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

    .line 358
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;->atKeyLimit()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 359
    :cond_5
    invoke-direct {p0, v3}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->tryKeyUpdate(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 363
    :cond_6
    iput-object v3, v0, Lorg/openjsse/sun/security/ssl/Ciphertext;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 365
    return-object v0

    .line 318
    .end local v1    # "needRetransmission":Z
    .end local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v3, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 315
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 317
    .local v1, "she":Ljavax/net/ssl/SSLHandshakeException;
    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v3, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method

.method private static getTaskThrown(Ljava/lang/Exception;)Ljavax/net/ssl/SSLException;
    .locals 2
    .param p0, "taskThrown"    # Ljava/lang/Exception;

    .line 998
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1000
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1001
    const-string v0, "Delegated task threw Exception or Error"

    .line 1004
    :cond_0
    instance-of v1, p0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_6

    .line 1006
    instance-of v1, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_1

    .line 1007
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v1, p0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLHandshakeException;

    .line 1007
    return-object v1

    .line 1009
    :cond_1
    instance-of v1, p0, Ljavax/net/ssl/SSLKeyException;

    if-eqz v1, :cond_2

    .line 1010
    new-instance v1, Ljavax/net/ssl/SSLKeyException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v1, p0}, Ljavax/net/ssl/SSLKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLKeyException;

    .line 1010
    return-object v1

    .line 1012
    :cond_2
    instance-of v1, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v1, :cond_3

    .line 1013
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v1, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 1013
    return-object v1

    .line 1015
    :cond_3
    instance-of v1, p0, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v1, :cond_4

    .line 1016
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v1, p0}, Ljavax/net/ssl/SSLProtocolException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLProtocolException;

    .line 1016
    return-object v1

    .line 1018
    :cond_4
    instance-of v1, p0, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_5

    .line 1019
    move-object v1, p0

    check-cast v1, Ljavax/net/ssl/SSLException;

    return-object v1

    .line 1021
    :cond_5
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 1005
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readRecord([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/javax/net/ssl/SSLEngineResult;
    .locals 26
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p5, "dstsOffset"    # I
    .param p6, "dstsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    new-instance v0, Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    sget-object v13, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 512
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v14

    const-wide/16 v17, -0x1

    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->needUnwrapAgain()Z

    move-result v19

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Lorg/openjsse/javax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;IIJZ)V

    .line 511
    return-object v0

    .line 515
    :cond_0
    const/4 v0, 0x0

    .line 516
    .local v0, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-object v1, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    if-nez v1, :cond_1

    iget-object v1, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 517
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 518
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 519
    iget-object v1, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->kickstart()V

    .line 525
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 526
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_1

    .line 527
    new-instance v1, Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v1, v3, v0, v2, v2}, Lorg/openjsse/javax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v1

    .line 531
    :cond_1
    if-nez v0, :cond_2

    .line 532
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    move-object v15, v0

    goto :goto_0

    .line 531
    :cond_2
    move-object v15, v0

    .line 541
    .end local v0    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .local v15, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v15, v0, :cond_3

    .line 542
    new-instance v0, Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v0, v1, v15, v2, v2}, Lorg/openjsse/javax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v0

    .line 546
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->needUnwrapAgain()Z

    move-result v24

    .line 547
    .local v24, "needUnwrapAgain":Z
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const-string v12, "readRecord"

    if-ne v15, v0, :cond_7

    if-eqz v24, :cond_7

    .line 549
    const/4 v13, 0x0

    .line 551
    .local v13, "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->decode([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .end local v13    # "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    .local v0, "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    nop

    .line 561
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->isInboundDone()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_1

    :cond_4
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_1
    move-object/from16 v17, v1

    .line 562
    .local v17, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eqz v1, :cond_5

    .line 563
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .end local v15    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .local v1, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    goto :goto_2

    .line 565
    .end local v1    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v15    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    .line 568
    .end local v15    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v1    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_2
    new-instance v2, Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    const/16 v20, 0x0

    iget-wide v3, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->recordSN:J

    const/16 v19, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v1

    move-wide/from16 v21, v3

    move/from16 v23, v24

    invoke-direct/range {v16 .. v23}, Lorg/openjsse/javax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;IIJZ)V

    return-object v2

    .line 553
    .end local v0    # "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    .end local v1    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v17    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .restart local v13    # "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    .restart local v15    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 554
    .local v0, "ioe":Ljava/io/IOException;
    nop

    instance-of v1, v0, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_6

    .line 555
    throw v0

    .line 557
    :cond_6
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v12, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 572
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v13    # "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    :cond_7
    const/4 v0, 0x0

    .line 573
    .local v0, "srcsRemains":I
    move/from16 v1, p2

    move/from16 v25, v1

    move v1, v0

    move/from16 v0, v25

    .local v0, "i":I
    .local v1, "srcsRemains":I
    :goto_3
    add-int v2, v10, v11

    if-ge v0, v2, :cond_8

    .line 574
    aget-object v2, v9, v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 577
    .end local v0    # "i":I
    :cond_8
    if-nez v1, :cond_9

    .line 578
    new-instance v0, Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    sget-object v13, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    const/4 v2, 0x0

    move-object v12, v0

    move-object v14, v15

    move-object v3, v15

    .end local v15    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .local v3, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    move v15, v2

    move/from16 v19, v24

    invoke-direct/range {v12 .. v19}, Lorg/openjsse/javax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;IIJZ)V

    return-object v0

    .line 586
    .end local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v15    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_9
    move-object v3, v15

    .end local v15    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    const/4 v2, 0x0

    .line 588
    .local v2, "packetLen":I
    :try_start_1
    iget-object v0, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    invoke-virtual {v0, v9, v10, v11}, Lorg/openjsse/sun/security/ssl/InputRecord;->bytesInCompletePacket([Ljava/nio/ByteBuffer;II)I

    move-result v0
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_2

    move v2, v0

    .line 611
    nop

    .line 614
    iget-object v0, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPacketBufferSize()I

    move-result v0

    if-le v2, v0, :cond_d

    .line 615
    iget-object v0, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x414d

    goto :goto_4

    :cond_a
    const v0, 0x8145

    .line 617
    .local v0, "largestRecordSize":I
    :goto_4
    if-gt v2, v0, :cond_b

    iget-object v4, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v4

    if-nez v4, :cond_b

    .line 625
    iget-object v4, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->expandBufferSizes()V

    .line 629
    :cond_b
    iget-object v4, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPacketBufferSize()I

    move-result v0

    .line 630
    if-gt v2, v0, :cond_c

    goto :goto_5

    .line 631
    :cond_c
    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input record too big: max = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 643
    .end local v0    # "largestRecordSize":I
    :cond_d
    :goto_5
    const/4 v0, 0x0

    .line 644
    .local v0, "dstsRemains":I
    move/from16 v4, p5

    move/from16 v25, v4

    move v4, v0

    move/from16 v0, v25

    .local v0, "i":I
    .local v4, "dstsRemains":I
    :goto_6
    add-int v5, p5, p6

    if-ge v0, v5, :cond_e

    .line 645
    aget-object v5, p4, v0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    add-int/2addr v4, v5

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 648
    .end local v0    # "i":I
    :cond_e
    iget-object v0, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-eqz v0, :cond_f

    .line 649
    iget-object v0, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->inputRecord:Lorg/openjsse/sun/security/ssl/InputRecord;

    .line 650
    invoke-virtual {v0, v2}, Lorg/openjsse/sun/security/ssl/InputRecord;->estimateFragmentSize(I)I

    move-result v0

    .line 651
    .local v0, "FragLen":I
    if-le v0, v4, :cond_f

    .line 652
    new-instance v5, Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    sget-object v13, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    const/4 v15, 0x0

    move-object v12, v5

    move-object v14, v3

    move/from16 v19, v24

    invoke-direct/range {v12 .. v19}, Lorg/openjsse/javax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;IIJZ)V

    return-object v5

    .line 658
    .end local v0    # "FragLen":I
    :cond_f
    const/4 v0, -0x1

    if-eq v2, v0, :cond_16

    if-ge v1, v2, :cond_10

    goto/16 :goto_b

    .line 665
    :cond_10
    const/4 v5, 0x0

    .line 667
    .local v5, "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    :try_start_2
    invoke-direct/range {p0 .. p6}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->decode([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/sun/security/ssl/Plaintext;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 675
    .end local v5    # "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    .local v0, "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    nop

    .line 687
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->isInboundDone()Z

    move-result v5

    if-eqz v5, :cond_11

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_7

    :cond_11
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_7
    move-object/from16 v17, v5

    .line 688
    .restart local v17    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eqz v5, :cond_12

    .line 689
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_8

    .line 691
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 694
    :goto_8
    move v5, v1

    .line 695
    .local v5, "deltaNet":I
    move/from16 v6, p2

    .local v6, "i":I
    :goto_9
    add-int v7, v10, v11

    if-ge v6, v7, :cond_13

    .line 696
    aget-object v7, v9, v6

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    sub-int/2addr v5, v7

    .line 695
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 699
    .end local v6    # "i":I
    :cond_13
    move v6, v4

    .line 700
    .local v6, "deltaApp":I
    move/from16 v7, p5

    .local v7, "i":I
    :goto_a
    add-int v12, p5, p6

    if-ge v7, v12, :cond_14

    .line 701
    aget-object v12, p4, v7

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    sub-int/2addr v6, v12

    .line 700
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 704
    .end local v7    # "i":I
    :cond_14
    new-instance v7, Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    iget-wide v12, v0, Lorg/openjsse/sun/security/ssl/Plaintext;->recordSN:J

    move-object/from16 v16, v7

    move-object/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move-wide/from16 v21, v12

    move/from16 v23, v24

    invoke-direct/range {v16 .. v23}, Lorg/openjsse/javax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;IIJZ)V

    return-object v7

    .line 669
    .end local v0    # "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    .end local v6    # "deltaApp":I
    .end local v17    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .local v5, "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 670
    .local v0, "ioe":Ljava/io/IOException;
    nop

    instance-of v6, v0, Ljavax/net/ssl/SSLException;

    if-eqz v6, :cond_15

    .line 671
    throw v0

    .line 673
    :cond_15
    new-instance v6, Ljavax/net/ssl/SSLException;

    invoke-direct {v6, v12, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 659
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v5    # "plainText":Lorg/openjsse/sun/security/ssl/Plaintext;
    :cond_16
    :goto_b
    new-instance v0, Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    sget-object v13, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    const/4 v15, 0x0

    move-object v12, v0

    move-object v14, v3

    move/from16 v19, v24

    invoke-direct/range {v12 .. v19}, Lorg/openjsse/javax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;IIJZ)V

    return-object v0

    .line 590
    .end local v4    # "dstsRemains":I
    :catch_2
    move-exception v0

    .line 592
    .local v0, "ssle":Ljavax/net/ssl/SSLException;
    iget-object v4, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 593
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_17

    const-string v4, "ssl,verbose"

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 594
    const-string v4, "Discard invalid DTLS records"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    :cond_17
    const/4 v4, 0x0

    .line 602
    .local v4, "deltaNet":I
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->isInboundDone()Z

    move-result v5

    if-eqz v5, :cond_18

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_c

    :cond_18
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_c
    move-object/from16 v17, v5

    .line 603
    .restart local v17    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    if-nez v3, :cond_19

    .line 604
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v15

    .end local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v15    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    goto :goto_d

    .line 603
    .end local v15    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_19
    move-object v15, v3

    .line 607
    .end local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v15    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_d
    new-instance v3, Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    const/16 v20, 0x0

    const-wide/16 v21, -0x1

    move-object/from16 v16, v3

    move-object/from16 v18, v15

    move/from16 v19, v4

    move/from16 v23, v24

    invoke-direct/range {v16 .. v23}, Lorg/openjsse/javax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;IIJZ)V

    return-object v3

    .line 609
    .end local v4    # "deltaNet":I
    .end local v15    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v17    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .restart local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_1a
    throw v0
.end method

.method private tryKeyUpdate(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2
    .param p1, "currentHandshakeStatus"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 402
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 403
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    if-nez v0, :cond_1

    .line 405
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "trigger key update"

    invoke-static {v1, v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    :cond_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->beginHandshake()V

    .line 409
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    .line 412
    :cond_1
    return-object p1
.end method

.method private tryToFinishHandshake(B)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2
    .param p1, "contentType"    # B

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v1, Lorg/openjsse/sun/security/ssl/ContentType;->HANDSHAKE:Lorg/openjsse/sun/security/ssl/ContentType;

    iget-byte v1, v1, Lorg/openjsse/sun/security/ssl/ContentType;->id:B

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    .line 371
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/OutputRecord;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-nez v1, :cond_0

    .line 373
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    .line 374
    :cond_0
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->isPostHandshakeContext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->finishPostHandshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_1
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeFinished:Z

    if-eqz v1, :cond_2

    .line 378
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->finishHandshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 382
    :cond_2
    :goto_0
    return-object v0
.end method

.method private writeRecord([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/javax/net/ssl/SSLEngineResult;
    .locals 22
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p5, "dstsOffset"    # I
    .param p6, "dstsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    sget-object v10, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 184
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    iget-object v1, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->needUnwrapAgain()Z

    move-result v16

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/openjsse/javax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;IIJZ)V

    .line 183
    return-object v0

    .line 187
    :cond_0
    iget-object v0, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    .line 188
    .local v9, "hc":Lorg/openjsse/sun/security/ssl/HandshakeContext;
    const/4 v0, 0x0

    .line 189
    .local v0, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-object v1, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v1, :cond_2

    iget-object v1, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->isBroken:Z

    if-nez v1, :cond_2

    iget-object v1, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 190
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 191
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 192
    iget-object v1, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->kickstart()V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 195
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->needUnwrapAgain()Z

    move-result v1

    if-nez v1, :cond_2

    .line 202
    iget-object v1, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v9, :cond_1

    iget-object v1, v9, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableRetransmissions:Z

    if-eqz v1, :cond_1

    iget-object v1, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/OutputRecord;->firstMessage:Z

    if-eqz v1, :cond_2

    .line 206
    :cond_1
    new-instance v1, Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    sget-object v11, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    const-wide/16 v15, -0x1

    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->needUnwrapAgain()Z

    move-result v17

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v1

    move-object v12, v0

    invoke-direct/range {v10 .. v17}, Lorg/openjsse/javax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;IIJZ)V

    return-object v1

    .line 211
    :cond_2
    if-nez v0, :cond_3

    .line 212
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 211
    :cond_3
    move-object v10, v0

    .line 221
    .end local v0    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .local v10, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v10, v0, :cond_4

    .line 222
    new-instance v0, Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v10, v2, v2}, Lorg/openjsse/javax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v0

    .line 225
    :cond_4
    const/4 v0, 0x0

    .line 226
    .local v0, "dstsRemains":I
    move/from16 v1, p5

    move v11, v0

    .end local v0    # "dstsRemains":I
    .local v1, "i":I
    .local v11, "dstsRemains":I
    :goto_1
    add-int v0, p5, p6

    if-ge v1, v0, :cond_5

    .line 227
    aget-object v0, p4, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v11, v0

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 234
    .end local v1    # "i":I
    :cond_5
    iget-object v0, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getPacketBufferSize()I

    move-result v0

    if-ge v11, v0, :cond_6

    .line 235
    new-instance v0, Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    sget-object v13, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 236
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v14

    const-wide/16 v17, -0x1

    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->needUnwrapAgain()Z

    move-result v19

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Lorg/openjsse/javax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;IIJZ)V

    .line 235
    return-object v0

    .line 239
    :cond_6
    const/4 v0, 0x0

    .line 240
    .local v0, "srcsRemains":I
    move/from16 v1, p2

    move v12, v0

    .end local v0    # "srcsRemains":I
    .restart local v1    # "i":I
    .local v12, "srcsRemains":I
    :goto_2
    add-int v0, p2, p3

    if-ge v1, v0, :cond_7

    .line 241
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v12, v0

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 244
    .end local v1    # "i":I
    :cond_7
    const/4 v13, 0x0

    .line 249
    .local v13, "ciphertext":Lorg/openjsse/sun/security/ssl/Ciphertext;
    :try_start_0
    iget-object v0, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/OutputRecord;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v9, :cond_9

    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableRetransmissions:Z

    if-eqz v0, :cond_9

    iget-object v0, v9, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 251
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v10, v0, :cond_9

    .line 253
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->needUnwrapAgain()Z

    move-result v0

    if-nez v0, :cond_9

    .line 254
    :cond_8
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->encode([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/sun/security/ssl/Ciphertext;

    move-result-object v0

    move-object v13, v0

    .line 258
    :cond_9
    if-nez v13, :cond_a

    if-eqz v12, :cond_a

    .line 259
    invoke-direct/range {p0 .. p6}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->encode([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/sun/security/ssl/Ciphertext;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v0

    .line 268
    :cond_a
    nop

    .line 273
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_3

    :cond_b
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 274
    .local v0, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :goto_3
    if-eqz v13, :cond_c

    iget-object v1, v13, Lorg/openjsse/sun/security/ssl/Ciphertext;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eqz v1, :cond_c

    .line 275
    iget-object v1, v13, Lorg/openjsse/sun/security/ssl/Ciphertext;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .end local v10    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .local v1, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    goto :goto_4

    .line 277
    .end local v1    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v10    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    .line 278
    .end local v10    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v1    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    if-nez v13, :cond_d

    iget-object v2, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v2, v2, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v2, :cond_d

    iget-object v2, v8, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 279
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v1, v2, :cond_d

    .line 289
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 293
    :cond_d
    :goto_4
    move v2, v12

    .line 294
    .local v2, "deltaSrcs":I
    move/from16 v3, p2

    .local v3, "i":I
    :goto_5
    add-int v4, p2, p3

    if-ge v3, v4, :cond_e

    .line 295
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    sub-int/2addr v2, v4

    .line 294
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 298
    .end local v3    # "i":I
    :cond_e
    move v3, v11

    .line 299
    .local v3, "deltaDsts":I
    move/from16 v4, p5

    .local v4, "i":I
    :goto_6
    add-int v5, p5, p6

    if-ge v4, v5, :cond_f

    .line 300
    aget-object v5, p4, v4

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    sub-int/2addr v3, v5

    .line 299
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 303
    .end local v4    # "i":I
    :cond_f
    new-instance v4, Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    if-eqz v13, :cond_10

    iget-wide v5, v13, Lorg/openjsse/sun/security/ssl/Ciphertext;->recordSN:J

    goto :goto_7

    :cond_10
    const-wide/16 v5, -0x1

    :goto_7
    move-wide/from16 v19, v5

    .line 304
    invoke-virtual/range {p0 .. p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->needUnwrapAgain()Z

    move-result v21

    move-object v14, v4

    move-object v15, v0

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-direct/range {v14 .. v21}, Lorg/openjsse/javax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;IIJZ)V

    .line 303
    return-object v4

    .line 262
    .end local v0    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .end local v1    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v2    # "deltaSrcs":I
    .end local v3    # "deltaDsts":I
    .restart local v10    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :catch_0
    move-exception v0

    .line 263
    .local v0, "ioe":Ljava/io/IOException;
    instance-of v1, v0, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_11

    .line 264
    throw v0

    .line 266
    :cond_11
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "Write problems"

    invoke-direct {v1, v2, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized beginHandshake()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isUnsureMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 130
    :try_start_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->kickstart()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    nop

    .line 138
    monitor-exit p0

    return-void

    .line 134
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Fail to begin handshake"

    invoke-virtual {v1, v2, v3, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 131
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 132
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Couldn\'t kickstart handshaking"

    invoke-virtual {v1, v2, v3, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 125
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client/Server mode has not yet been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized closeInbound()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 750
    :try_start_0
    invoke-virtual {p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->isInboundDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 751
    monitor-exit p0

    return-void

    .line 754
    :cond_0
    :try_start_1
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_1

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    const-string v0, "Closing inbound of SSLEngine"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isInputCloseNotified:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-nez v0, :cond_2

    goto :goto_0

    .line 764
    :cond_2
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v2, "closing inbound before receiving peer\'s close_notify"

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 768
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->closeInbound()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 769
    monitor-exit p0

    return-void

    .line 749
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized closeOutbound()V
    .locals 2

    monitor-enter p0

    .line 778
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 779
    monitor-exit p0

    return-void

    .line 782
    :cond_0
    :try_start_1
    sget-boolean v0, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v0, :cond_1

    const-string v0, "ssl"

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    const-string v0, "Closing outbound of SSLEngine"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 786
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->closeOutbound()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    monitor-exit p0

    return-void

    .line 777
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized getApplicationProtocol()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 916
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->applicationProtocol:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 916
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getDelegatedTask()Ljava/lang/Runnable;
    .locals 2

    monitor-enter p0

    .line 738
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->taskDelegated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->delegatedActions:Ljava/util/Queue;

    .line 740
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->taskDelegated:Z

    .line 742
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl$DelegatedTask;-><init>(Lorg/openjsse/sun/security/ssl/SSLEngineImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 745
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 737
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getEnableSessionCreation()Z
    .locals 1

    monitor-enter p0

    .line 896
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableSessionCreation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 896
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 801
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledCipherSuites:Ljava/util/List;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/CipherSuite;->namesOf(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 801
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 818
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->toStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 818
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getHandshakeApplicationProtocol()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 921
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->applicationProtocol:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 921
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getHandshakeApplicationProtocolSelector()Ljava/util/function/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 934
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->engineAPSelector:Ljava/util/function/BiFunction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 934
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    monitor-enter p0

    .line 839
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 839
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    monitor-enter p0

    .line 845
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 845
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getNeedClientAuth()Z
    .locals 2

    monitor-enter p0

    .line 872
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUIRED:Lorg/openjsse/sun/security/ssl/ClientAuthType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 872
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    monitor-enter p0

    .line 901
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 901
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    monitor-enter p0

    .line 834
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->conSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 834
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 796
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSupportedCipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/CipherSuite;->namesOf(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .line 812
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 813
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSupportedProtocolVersions()Ljava/util/List;

    move-result-object v0

    .line 812
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->toStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getUseClientMode()Z
    .locals 1

    monitor-enter p0

    .line 860
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 860
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getWantClientAuth()Z
    .locals 2

    monitor-enter p0

    .line 885
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUESTED:Lorg/openjsse/sun/security/ssl/ClientAuthType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 885
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isInboundDone()Z
    .locals 1

    monitor-enter p0

    .line 773
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isInboundClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 773
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isOutboundDone()Z
    .locals 1

    monitor-enter p0

    .line 791
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->isOutboundDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 791
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized needUnwrapAgain()Z
    .locals 1

    monitor-enter p0

    .line 850
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->needUnwrapAgain()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 850
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setEnableSessionCreation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    monitor-enter p0

    .line 891
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iput-boolean p1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableSessionCreation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    monitor-exit p0

    return-void

    .line 890
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    .end local p1    # "flag":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 2
    .param p1, "suites"    # [Ljava/lang/String;

    monitor-enter p0

    .line 806
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    .line 807
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/CipherSuite;->validValuesOf([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledCipherSuites:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    monitor-exit p0

    return-void

    .line 805
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    .end local p1    # "suites":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setEnabledProtocols([Ljava/lang/String;)V
    .locals 2
    .param p1, "protocols"    # [Ljava/lang/String;

    monitor-enter p0

    .line 824
    if-eqz p1, :cond_0

    .line 828
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    .line 829
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->namesOf([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    monitor-exit p0

    return-void

    .line 823
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    .end local p1    # "protocols":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 825
    .restart local p1    # "protocols":[Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocols cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    .end local p1    # "protocols":[Ljava/lang/String;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setHandshakeApplicationProtocolSelector(Ljava/util/function/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p1, "selector":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljavax/net/ssl/SSLEngine;Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;>;"
    monitor-enter p0

    .line 928
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iput-object p1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->engineAPSelector:Ljava/util/function/BiFunction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    monitor-exit p0

    return-void

    .line 927
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    .end local p1    # "selector":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljavax/net/ssl/SSLEngine;Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setNeedClientAuth(Z)V
    .locals 2
    .param p1, "need"    # Z

    monitor-enter p0

    .line 865
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    if-eqz p1, :cond_0

    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUIRED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    goto :goto_0

    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :cond_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_NONE:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    :goto_0
    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    monitor-exit p0

    return-void

    .line 864
    .end local p1    # "need":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 2
    .param p1, "params"    # Ljavax/net/ssl/SSLParameters;

    monitor-enter p0

    .line 906
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 908
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->outputRecord:Lorg/openjsse/sun/security/ssl/OutputRecord;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/OutputRecord;->changePacketSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 905
    .end local p1    # "params":Ljavax/net/ssl/SSLParameters;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setUseClientMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    monitor-enter p0

    .line 855
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/TransportContext;->setUseClientMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    monitor-exit p0

    return-void

    .line 854
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    .end local p1    # "mode":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setWantClientAuth(Z)V
    .locals 2
    .param p1, "want"    # Z

    monitor-enter p0

    .line 878
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    if-eqz p1, :cond_0

    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUESTED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    goto :goto_0

    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :cond_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_NONE:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    :goto_0
    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    monitor-exit p0

    return-void

    .line 877
    .end local p1    # "want":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Lorg/openjsse/javax/net/ssl/SSLEngineResult;
    .locals 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 461
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 461
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p3    # "offset":I
    .end local p4    # "length":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/javax/net/ssl/SSLEngineResult;
    .locals 4
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p5, "dstsOffset"    # I
    .param p6, "dstsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 470
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isUnsureMode:Z

    if-nez v0, :cond_0

    .line 476
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->checkTaskThrown()V

    .line 479
    invoke-static/range {p1 .. p6}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->checkParams([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    :try_start_1
    invoke-direct/range {p0 .. p6}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->readRecord([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_1
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 497
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catch_0
    move-exception v0

    .line 498
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Fail to unwrap network record"

    invoke-virtual {v1, v2, v3, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 488
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 495
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "problem unwrapping net record"

    invoke-virtual {v1, v2, v3, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 484
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 486
    .local v0, "spe":Ljavax/net/ssl/SSLProtocolException;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    .line 487
    invoke-virtual {v0}, Ljavax/net/ssl/SSLProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 486
    invoke-virtual {v1, v2, v3, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 471
    .end local v0    # "spe":Ljavax/net/ssl/SSLProtocolException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client/Server mode has not yet been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public useDelegatedTask()Z
    .locals 1

    .line 939
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Lorg/openjsse/javax/net/ssl/SSLEngineResult;
    .locals 8
    .param p1, "appData"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "netData"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 143
    const/4 v0, 0x1

    :try_start_0
    new-array v5, v0, [Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    aput-object p4, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->wrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 143
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    .end local p1    # "appData":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "netData":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized wrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/javax/net/ssl/SSLEngineResult;
    .locals 4
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p5, "dstsOffset"    # I
    .param p6, "dstsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isUnsureMode:Z

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->checkTaskThrown()V

    .line 160
    invoke-static/range {p1 .. p6}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->checkParams([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :try_start_1
    invoke-direct/range {p0 .. p6}, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->writeRecord([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Lorg/openjsse/javax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_1
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 171
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLEngineImpl;
    :catch_0
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Fail to wrap application data"

    invoke-virtual {v1, v2, v3, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 168
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 169
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "problem wrapping app data"

    invoke-virtual {v1, v2, v3, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 165
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 167
    .local v0, "spe":Ljavax/net/ssl/SSLProtocolException;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLEngineImpl;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v2, v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 152
    .end local v0    # "spe":Ljavax/net/ssl/SSLProtocolException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client/Server mode has not yet been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
