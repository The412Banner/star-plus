.class final Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$SHRenegotiationInfoConsumer;
.super Ljava/lang/Object;
.source "RenegoInfoExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/RenegoInfoExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SHRenegotiationInfoConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$1;

    .line 437
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$SHRenegotiationInfoConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;)V
    .locals 12
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 451
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_RENEGOTIATION_INFO:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 452
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;

    .line 453
    .local v1, "requestedSpec":Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;
    if-nez v1, :cond_1

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->activeCipherSuites:Ljava/util/List;

    sget-object v3, Lorg/openjsse/sun/security/ssl/CipherSuite;->TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Lorg/openjsse/sun/security/ssl/CipherSuite;

    .line 454
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "Missing renegotiation_info and SCSV detected in ClientHello"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 464
    :cond_1
    :goto_0
    :try_start_0
    new-instance v2, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;-><init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .local v2, "spec":Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;
    nop

    .line 470
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-boolean v3, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->isNegotiated:Z

    if-nez v3, :cond_3

    .line 476
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;->access$800(Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;)[B

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_2

    .line 482
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->secureRenegotiation:Z

    goto :goto_1

    .line 477
    :cond_2
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Invalid renegotiation_info in ServerHello: not empty renegotiated_connection"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 489
    :cond_3
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/TransportContext;->clientVerifyData:[B

    array-length v3, v3

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->serverVerifyData:[B

    array-length v4, v4

    add-int/2addr v3, v4

    .line 491
    .local v3, "infoLen":I
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;->access$800(Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;)[B

    move-result-object v4

    array-length v4, v4

    if-ne v4, v3, :cond_6

    .line 498
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->clientVerifyData:[B

    .line 500
    .local v4, "cvd":[B
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;->access$800(Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;)[B

    move-result-object v5

    array-length v7, v4

    const/4 v9, 0x0

    array-length v10, v4

    const/4 v6, 0x0

    move-object v8, v4

    invoke-static/range {v5 .. v10}, Lorg/openjsse/sun/security/ssl/Utilities;->equals([BII[BII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 506
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v11, v5, Lorg/openjsse/sun/security/ssl/TransportContext;->serverVerifyData:[B

    .line 508
    .local v11, "svd":[B
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;->access$800(Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;)[B

    move-result-object v5

    array-length v6, v4

    const/4 v9, 0x0

    array-length v10, v11

    move v7, v3

    move-object v8, v11

    invoke-static/range {v5 .. v10}, Lorg/openjsse/sun/security/ssl/Utilities;->equals([BII[BII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 517
    .end local v3    # "infoLen":I
    .end local v4    # "cvd":[B
    .end local v11    # "svd":[B
    :goto_1
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_RENEGOTIATION_INFO:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v5, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;->NOMINAL:Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    return-void

    .line 510
    .restart local v3    # "infoLen":I
    .restart local v4    # "cvd":[B
    .restart local v11    # "svd":[B
    :cond_4
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v7, "Invalid renegotiation_info in ServerHello: unmatched server_verify_data value"

    invoke-virtual {v5, v6, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    .line 502
    .end local v11    # "svd":[B
    :cond_5
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v6, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v7, "Invalid renegotiation_info in ServerHello: unmatched client_verify_data value"

    invoke-virtual {v5, v6, v7}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    .line 492
    .end local v4    # "cvd":[B
    :cond_6
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid renegotiation_info in ServerHello: invalid renegotiated_connection length ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 495
    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;->access$800(Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;)[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 492
    invoke-virtual {v4, v5, v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 465
    .end local v2    # "spec":Lorg/openjsse/sun/security/ssl/RenegoInfoExtension$RenegotiationInfoSpec;
    .end local v3    # "infoLen":I
    :catch_0
    move-exception v2

    .line 466
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v3, v4, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3
.end method
