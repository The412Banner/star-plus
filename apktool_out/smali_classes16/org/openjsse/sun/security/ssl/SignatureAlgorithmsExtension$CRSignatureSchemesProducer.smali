.class final Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CRSignatureSchemesProducer;
.super Ljava/lang/Object;
.source "SignatureAlgorithmsExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CRSignatureSchemesProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;

    .line 390
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CRSignatureSchemesProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 10
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 406
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CR_SIGNATURE_ALGORITHMS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 415
    .local v1, "protocols":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 416
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 417
    invoke-static {v2, v3, v1}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getSupportedAlgorithms(Lorg/openjsse/sun/security/ssl/SSLConfiguration;Ljava/security/AlgorithmConstraints;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 421
    .local v2, "sigAlgs":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->sizeInRecord()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v3, v4

    .line 422
    .local v3, "vectorLen":I
    add-int/lit8 v4, v3, 0x2

    new-array v4, v4, [B

    .line 423
    .local v4, "extData":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 424
    .local v5, "m":Ljava/nio/ByteBuffer;
    invoke-static {v5, v3}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 425
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 426
    .local v7, "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    iget v8, v7, Lorg/openjsse/sun/security/ssl/SignatureScheme;->id:I

    invoke-static {v5, v8}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 427
    .end local v7    # "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    goto :goto_0

    .line 430
    :cond_0
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLExtension;->CR_SIGNATURE_ALGORITHMS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    new-instance v8, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;

    iget-object v9, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    invoke-direct {v8, v9}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    return-object v4

    .line 408
    .end local v1    # "protocols":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/ProtocolVersion;>;"
    .end local v2    # "sigAlgs":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    .end local v3    # "vectorLen":I
    .end local v4    # "extData":[B
    .end local v5    # "m":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->MISSING_EXTENSION:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "No available signature_algorithms extension for client certificate authentication"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method
