.class final Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$CHExtendedMasterSecretProducer;
.super Ljava/lang/Object;
.source "ExtendedMasterSecretExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHExtendedMasterSecretProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$1;

    .line 104
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$CHExtendedMasterSecretProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 5
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 117
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_EXTENDED_MASTER_SECRET:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->useExtendedMasterSecret:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->protocolVersion:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 119
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS10PlusSpec()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useExtendedMasterSecret:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    return-object v3

    .line 130
    :cond_2
    :goto_0
    new-array v1, v2, [B

    .line 131
    .local v1, "extData":[B
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_EXTENDED_MASTER_SECRET:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;->NOMINAL:Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-object v1

    .line 120
    .end local v1    # "extData":[B
    :cond_3
    :goto_1
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_4

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    const-string v1, "Ignore unavailable extended_master_secret extension"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_4
    return-object v3
.end method
