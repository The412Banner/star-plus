.class final Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeConsumer;
.super Ljava/lang/Object;
.source "ECDHServerKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ECDHServerKeyExchangeConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$1;

    .line 515
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 527
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    new-instance v1, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;

    invoke-direct {v1, v0, p2}, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 529
    .local v1, "skem":Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    const-string v2, "ssl,handshake"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    const-string v2, "Consuming ECDH ServerKeyExchange handshake message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    :cond_0
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    sget-object v3, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 539
    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 540
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->access$200(Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;)Ljava/security/interfaces/ECPublicKey;

    move-result-object v4

    .line 538
    invoke-interface {v2, v3, v4}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeCredentials:Ljava/util/List;

    new-instance v3, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;

    .line 550
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->access$200(Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;)Ljava/security/interfaces/ECPublicKey;

    move-result-object v4

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;->access$300(Lorg/openjsse/sun/security/ssl/ECDHServerKeyExchange$ECDHServerKeyExchangeMessage;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/ECDHKeyExchange$ECDHECredentials;-><init>(Ljava/security/interfaces/ECPublicKey;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)V

    .line 549
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    return-void

    .line 541
    :cond_1
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->INSUFFICIENT_SECURITY:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "ECDH ServerKeyExchange does not comply to algorithm constraints"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method
