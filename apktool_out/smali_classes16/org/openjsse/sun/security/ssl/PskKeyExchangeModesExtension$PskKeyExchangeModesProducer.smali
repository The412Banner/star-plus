.class final Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesProducer;
.super Ljava/lang/Object;
.source "PskKeyExchangeModesExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PskKeyExchangeModesProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$1;

    .line 236
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesProducer;-><init>()V

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

    .line 247
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 250
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->PSK_KEY_EXCHANGE_MODES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Ignore unavailable psk_key_exchange_modes extension"

    invoke-static {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 260
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 263
    .local v1, "extData":[B
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->PSK_KEY_EXCHANGE_MODES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 265
    invoke-static {}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;->access$500()Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;

    move-result-object v4

    .line 263
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-object v1

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method
