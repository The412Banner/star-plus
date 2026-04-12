.class final Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeConsumer;
.super Ljava/lang/Object;
.source "DHServerKeyExchange.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/DHServerKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DHServerKeyExchangeConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$1;

    .line 500
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 512
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    new-instance v1, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;

    invoke-direct {v1, v0, p2}, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 514
    .local v1, "skem":Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    const-string v2, "ssl,handshake"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    const-string v2, "Consuming DH ServerKeyExchange handshake message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    :cond_0
    :try_start_0
    const-string v2, "DiffieHellman"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 526
    .local v2, "kf":Ljava/security/KeyFactory;
    new-instance v3, Ljavax/crypto/spec/DHPublicKeySpec;

    new-instance v4, Ljava/math/BigInteger;

    .line 527
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->access$200(Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;)[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/math/BigInteger;

    .line 528
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->access$300(Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;)[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v7, Ljava/math/BigInteger;

    .line 529
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;->access$400(Lorg/openjsse/sun/security/ssl/DHServerKeyExchange$DHServerKeyExchangeMessage;)[B

    move-result-object v8

    invoke-direct {v7, v6, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v3, v4, v5, v7}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 530
    .local v3, "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Ljavax/crypto/interfaces/DHPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 534
    .end local v3    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    .local v2, "publicKey":Ljavax/crypto/interfaces/DHPublicKey;
    nop

    .line 536
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    sget-object v4, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 537
    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 536
    invoke-interface {v3, v4, v2}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 546
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;->valueOf(Ljavax/crypto/spec/DHParameterSpec;)Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;

    move-result-object v3

    .line 547
    .local v3, "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeCredentials:Ljava/util/List;

    new-instance v5, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;

    invoke-direct {v5, v2, v3}, Lorg/openjsse/sun/security/ssl/DHKeyExchange$DHECredentials;-><init>(Ljavax/crypto/interfaces/DHPublicKey;Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    return-void

    .line 538
    .end local v3    # "namedGroup":Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroup;
    :cond_1
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->INSUFFICIENT_SECURITY:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "DH ServerKeyExchange does not comply to algorithm constraints"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 531
    .end local v2    # "publicKey":Ljavax/crypto/interfaces/DHPublicKey;
    :catch_0
    move-exception v2

    .line 532
    .local v2, "gse":Ljava/security/GeneralSecurityException;
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->INSUFFICIENT_SECURITY:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Could not generate DHPublicKey"

    invoke-virtual {v3, v4, v5, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3
.end method
