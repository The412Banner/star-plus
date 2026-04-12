.class final Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesConsumer;
.super Ljava/lang/Object;
.source "PskKeyExchangeModesExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PskKeyExchangeModesConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$1;

    .line 169
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesConsumer;-><init>()V

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

    .line 180
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 183
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->PSK_KEY_EXCHANGE_MODES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ssl,handshake"

    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 185
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string v1, "Ignore unavailable psk_key_exchange_modes extension"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :cond_0
    iget-boolean v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-eqz v1, :cond_1

    .line 192
    iput-boolean v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    .line 193
    iput-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 196
    :cond_1
    return-void

    .line 202
    :cond_2
    :try_start_0
    new-instance v1, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;

    invoke-direct {v1, p3}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .local v1, "spec":Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;
    nop

    .line 208
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLExtension;->PSK_KEY_EXCHANGE_MODES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-boolean v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    if-eqz v5, :cond_3

    .line 218
    sget-object v5, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;->PSK_DHE_KE:Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;

    invoke-virtual {v1, v5}, Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;->contains(Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeMode;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 219
    iput-boolean v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    .line 220
    iput-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 221
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    const-string v2, "abort session resumption, no supported psk_dhe_ke PSK key exchange mode"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :cond_3
    return-void

    .line 203
    .end local v1    # "spec":Lorg/openjsse/sun/security/ssl/PskKeyExchangeModesExtension$PskKeyExchangeModesSpec;
    :catch_0
    move-exception v1

    .line 204
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v3, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method
