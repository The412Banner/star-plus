.class final Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesOnTradeAbsence;
.super Ljava/lang/Object;
.source "SignatureAlgorithmsExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeAbsence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHSignatureSchemesOnTradeAbsence"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;

    .line 346
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesOnTradeAbsence;-><init>()V

    return-void
.end method


# virtual methods
.method public absent(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 353
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS12PlusSpec()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/openjsse/sun/security/ssl/SignatureScheme;

    const/4 v2, 0x0

    sget-object v3, Lorg/openjsse/sun/security/ssl/SignatureScheme;->RSA_PKCS1_SHA1:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/openjsse/sun/security/ssl/SignatureScheme;->DSA_SHA1:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lorg/openjsse/sun/security/ssl/SignatureScheme;->ECDSA_SHA1:Lorg/openjsse/sun/security/ssl/SignatureScheme;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 373
    .local v1, "schemes":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->peerRequestedSignatureSchemes:Ljava/util/List;

    .line 374
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->peerRequestedCertSignSchemes:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->peerRequestedCertSignSchemes:Ljava/util/List;

    .line 375
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    :cond_0
    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->peerRequestedCertSignSchemes:Ljava/util/List;

    .line 380
    :cond_1
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setUseDefaultPeerSignAlgs()V

    .line 382
    .end local v1    # "schemes":Ljava/util/List;, "Ljava/util/List<Lorg/openjsse/sun/security/ssl/SignatureScheme;>;"
    :cond_2
    return-void
.end method
