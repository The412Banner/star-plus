.class final Lorg/openjsse/sun/security/ssl/MaxFragExtension$SHMaxFragmentLengthConsumer;
.super Ljava/lang/Object;
.source "MaxFragExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/MaxFragExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SHMaxFragmentLengthConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;

    .line 344
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$SHMaxFragmentLengthConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 358
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 359
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;

    .line 360
    .local v1, "requestedSpec":Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;
    if-eqz v1, :cond_2

    .line 368
    :try_start_0
    new-instance v2, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;-><init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .local v2, "spec":Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;
    nop

    .line 373
    iget-byte v3, v2, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;->id:B

    iget-byte v4, v1, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;->id:B

    if-ne v3, v4, :cond_1

    .line 378
    iget-byte v3, v2, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;->id:B

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->access$1200(B)Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    move-result-object v3

    .line 379
    .local v3, "mfle":Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;
    if-eqz v3, :cond_0

    .line 386
    iget v4, v3, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->fragmentSize:I

    iput v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->maxFragmentLength:I

    .line 387
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    return-void

    .line 380
    :cond_0
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v5, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v6, "the requested maximum fragment length is other than the allowed values"

    invoke-virtual {v4, v5, v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 374
    .end local v3    # "mfle":Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;
    :cond_1
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "The maximum fragment length response is not requested"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 369
    .end local v2    # "spec":Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;
    :catch_0
    move-exception v2

    .line 370
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v3, v4, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 361
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_2
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "Unexpected max_fragment_length extension in ServerHello"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method
