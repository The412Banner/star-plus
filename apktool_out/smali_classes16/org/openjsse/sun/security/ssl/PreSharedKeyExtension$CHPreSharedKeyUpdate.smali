.class final Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyUpdate;
.super Ljava/lang/Object;
.source "PreSharedKeyExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHPreSharedKeyUpdate"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$1;

    .line 517
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeyUpdate;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 9
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 527
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-boolean v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-nez v1, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 533
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;

    .line 534
    .local v1, "chPsk":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_PRE_SHARED_KEY:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 535
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeySpec;

    .line 536
    .local v2, "shPsk":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeySpec;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 541
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;->binders:Ljava/util/List;

    iget v4, v2, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeySpec;->selectedIdentity:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 544
    .local v3, "binder":[B
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeHash:Lorg/openjsse/sun/security/ssl/HandshakeHash;

    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->copy()Lorg/openjsse/sun/security/ssl/HandshakeHash;

    move-result-object v4

    .line 545
    .local v4, "pskBinderHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    invoke-virtual {v4}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->removeLastReceived()[B

    move-result-object v5

    .line 546
    .local v5, "lastMessage":[B
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 548
    .local v6, "messageBuf":Ljava/nio/ByteBuffer;
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 550
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    invoke-static {v7, v6}, Lorg/openjsse/sun/security/ssl/ClientHello$ClientHelloMessage;->readPartial(Lorg/openjsse/sun/security/ssl/TransportContext;Ljava/nio/ByteBuffer;)V

    .line 551
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 552
    .local v7, "length":I
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 553
    invoke-virtual {v4, v6, v7}, Lorg/openjsse/sun/security/ssl/HandshakeHash;->receive(Ljava/nio/ByteBuffer;I)V

    .line 555
    iget-object v8, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-static {v0, v8, v4, v3}, Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension;->access$1100(Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;Lorg/openjsse/sun/security/ssl/SSLSessionImpl;Lorg/openjsse/sun/security/ssl/HandshakeHash;[B)V

    .line 556
    return-void

    .line 537
    .end local v3    # "binder":[B
    .end local v4    # "pskBinderHash":Lorg/openjsse/sun/security/ssl/HandshakeHash;
    .end local v5    # "lastMessage":[B
    .end local v6    # "messageBuf":Ljava/nio/ByteBuffer;
    .end local v7    # "length":I
    :cond_1
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->INTERNAL_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Required extensions are unavailable"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 529
    .end local v1    # "chPsk":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$CHPreSharedKeySpec;
    .end local v2    # "shPsk":Lorg/openjsse/sun/security/ssl/PreSharedKeyExtension$SHPreSharedKeySpec;
    :cond_2
    :goto_0
    return-void
.end method
