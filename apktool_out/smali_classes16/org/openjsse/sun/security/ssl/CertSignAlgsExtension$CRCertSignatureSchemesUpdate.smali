.class final Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CRCertSignatureSchemesUpdate;
.super Ljava/lang/Object;
.source "CertSignAlgsExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CRCertSignatureSchemesUpdate"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$1;

    .line 320
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CRCertSignatureSchemesUpdate;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 333
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CR_SIGNATURE_ALGORITHMS_CERT:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 334
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;

    .line 336
    .local v1, "spec":Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;
    if-nez v1, :cond_0

    .line 338
    return-void

    .line 342
    :cond_0
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    iget-object v5, v1, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$SignatureSchemesSpec;->signatureSchemes:[I

    .line 343
    invoke-static {v2, v3, v4, v5}, Lorg/openjsse/sun/security/ssl/SignatureScheme;->getSupportedAlgorithms(Lorg/openjsse/sun/security/ssl/SSLConfiguration;Ljava/security/AlgorithmConstraints;Lorg/openjsse/sun/security/ssl/ProtocolVersion;[I)Ljava/util/List;

    move-result-object v2

    .line 347
    .local v2, "schemes":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    iput-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->peerRequestedCertSignSchemes:Ljava/util/List;

    .line 348
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setPeerSupportedSignatureAlgorithms(Ljava/util/Collection;)V

    .line 349
    return-void
.end method
