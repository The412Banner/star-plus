.class final Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyConsumer;
.super Ljava/lang/Object;
.source "PreSharedKeyExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHPreSharedKeyConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;

    .line 353
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    move-object v0, p2

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;

    .line 364
    .local v0, "clientHello":Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;
    move-object v1, p1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 366
    .local v1, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "ssl,handshake"

    if-nez v2, :cond_1

    .line 367
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    const-string v2, "Ignore unavailable pre_shared_key extension"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    :cond_0
    return-void

    .line 375
    :cond_1
    const/4 v2, 0x0

    .line 377
    .local v2, "pskSpec":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;
    :try_start_0
    new-instance v5, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;

    invoke-direct {v5, v1, p3}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 380
    nop

    .line 383
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLExtension;->PSK_KEY_EXCHANGE_MODES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 391
    iget-object v5, v2, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->identities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, v2, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->binders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 396
    iget-boolean v5, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    if-eqz v5, :cond_5

    .line 397
    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 398
    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v5

    check-cast v5, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;

    .line 399
    .local v5, "sessionCache":Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
    const/4 v6, 0x0

    .line 400
    .local v6, "idIndex":I
    iget-object v7, v2, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->identities:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;

    .line 401
    .local v8, "requestedId":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;
    iget-object v9, v8, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;->identity:[B

    invoke-virtual {v5, v9}, Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;->pull([B)Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    move-result-object v9

    .line 402
    .local v9, "s":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    if-eqz v9, :cond_3

    invoke-static {v0, v1, v9}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->access$1000(Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 403
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_2

    invoke-static {v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 404
    const-string v4, "Resuming session: "

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    :cond_2
    iput-object v9, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 409
    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    new-instance v10, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeySpec;

    invoke-direct {v10, v6}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeySpec;-><init>(I)V

    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    goto :goto_1

    .line 414
    :cond_3
    nop

    .end local v8    # "requestedId":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$PskIdentity;
    .end local v9    # "s":Lorg/openjsse/sun/security/ssl/SSLSessionImpl;
    add-int/lit8 v6, v6, 0x1

    .line 415
    goto :goto_0

    .line 417
    :cond_4
    :goto_1
    iget-object v4, v2, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->identities:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v6, v4, :cond_5

    .line 419
    iput-boolean v3, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    .line 420
    const/4 v3, 0x0

    iput-object v3, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 425
    .end local v5    # "sessionCache":Lorg/openjsse/sun/security/ssl/SSLSessionContextImpl;
    .end local v6    # "idIndex":I
    :cond_5
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    return-void

    .line 392
    :cond_6
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "PSK extension has incorrect number of binders"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 385
    :cond_7
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Client sent PSK but not PSK modes, or the PSK extension is not the last extension"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 378
    :catch_0
    move-exception v3

    .line 379
    .local v3, "ioe":Ljava/io/IOException;
    iget-object v4, v1, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v4, v5, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4
.end method
