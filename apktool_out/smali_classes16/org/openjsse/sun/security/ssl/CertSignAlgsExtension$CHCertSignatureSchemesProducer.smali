.class final Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CHCertSignatureSchemesProducer;
.super Ljava/lang/Object;
.source "CertSignAlgsExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHCertSignatureSchemesProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$1;

    .line 76
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CHCertSignatureSchemesProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 8
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 89
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SIGNATURE_ALGORITHMS_CERT:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Ignore unavailable signature_algorithms_cert extension"

    invoke-static {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 101
    :cond_1
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    if-nez v1, :cond_2

    .line 102
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->activeProtocols:Ljava/util/List;

    .line 103
    invoke-static {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getSupportedAlgorithms(Lorg/openjsse/sun/security/ssl/SSLConfiguration;Ljava/security/AlgorithmConstraints;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    .line 108
    :cond_2
    invoke-static {}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->sizeInRecord()I

    move-result v1

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    .line 109
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v1, v2

    .line 110
    .local v1, "vectorLen":I
    add-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    .line 111
    .local v2, "extData":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 112
    .local v3, "m":Ljava/nio/ByteBuffer;
    invoke-static {v3, v1}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 113
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;

    .line 114
    .local v5, "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    iget v6, v5, Lorg/openjsse/sun/security/ssl/SignatureScheme;->id:I

    invoke-static {v3, v6}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 115
    .end local v5    # "ss":Lorg/openjsse/sun/security/ssl/SignatureScheme;
    goto :goto_0

    .line 118
    :cond_3
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SIGNATURE_ALGORITHMS_CERT:Lorg/openjsse/sun/security/ssl/SSLExtension;

    new-instance v6, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;

    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->localSupportedSignAlgs:Ljava/util/List;

    invoke-direct {v6, v7}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;-><init>(Ljava/util/List;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-object v2
.end method
