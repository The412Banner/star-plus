.class final Lorg/openjsse/sun/security/ssl/AlpnExtension$CHAlpnConsumer;
.super Ljava/lang/Object;
.source "AlpnExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/AlpnExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHAlpnConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/AlpnExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/AlpnExtension$1;

    .line 257
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/AlpnExtension$CHAlpnConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 270
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_ALPN:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    const-string v2, "ssl,handshake"

    const-string v3, ""

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 271
    iput-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    .line 272
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iput-object v3, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->applicationProtocol:Ljava/lang/String;

    .line 273
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore server unavailable extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_ALPN:Lorg/openjsse/sun/security/ssl/SSLExtension;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    :cond_0
    return-void

    .line 283
    :cond_1
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/TransportContext;->transport:Lorg/openjsse/sun/security/ssl/SSLTransport;

    instance-of v1, v1, Lorg/openjsse/javax/net/ssl/SSLEngine;

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    .line 284
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->engineAPSelector:Ljava/util/function/BiFunction;

    if-nez v1, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    move v1, v4

    .local v1, "noAPSelector":Z
    :goto_0
    goto :goto_1

    .line 286
    .end local v1    # "noAPSelector":Z
    :cond_3
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->socketAPSelector:Ljava/util/function/BiFunction;

    if-nez v1, :cond_4

    move v1, v5

    goto :goto_1

    :cond_4
    move v1, v4

    .line 289
    .restart local v1    # "noAPSelector":Z
    :goto_1
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->applicationProtocols:[Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->applicationProtocols:[Ljava/lang/String;

    array-length v6, v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    move v5, v4

    .line 292
    .local v5, "noAlpnProtocols":Z
    :cond_6
    :goto_2
    if-eqz v1, :cond_8

    if-eqz v5, :cond_8

    .line 293
    iput-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    .line 294
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iput-object v3, v6, Lorg/openjsse/sun/security/ssl/TransportContext;->applicationProtocol:Ljava/lang/String;

    .line 295
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_7

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore server unenabled extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_ALPN:Lorg/openjsse/sun/security/ssl/SSLExtension;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_7
    return-void

    .line 306
    :cond_8
    :try_start_0
    new-instance v2, Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnSpec;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnSpec;-><init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/AlpnExtension$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .local v2, "spec":Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnSpec;
    nop

    .line 312
    if-eqz v1, :cond_c

    .line 313
    iget-object v3, v2, Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnSpec;->applicationProtocols:Ljava/util/List;

    .line 314
    .local v3, "protocolNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 316
    .local v6, "matched":Z
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v7, v7, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->applicationProtocols:[Ljava/lang/String;

    array-length v8, v7

    :goto_3
    if-ge v4, v8, :cond_a

    aget-object v9, v7, v4

    .line 317
    .local v9, "ap":Ljava/lang/String;
    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 318
    iput-object v9, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->applicationProtocol:Ljava/lang/String;

    .line 319
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    iput-object v9, v4, Lorg/openjsse/sun/security/ssl/TransportContext;->applicationProtocol:Ljava/lang/String;

    .line 320
    const/4 v6, 0x1

    .line 321
    goto :goto_4

    .line 316
    .end local v9    # "ap":Ljava/lang/String;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 325
    :cond_a
    :goto_4
    if-eqz v6, :cond_b

    goto :goto_5

    .line 326
    :cond_b
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v7, Lorg/openjsse/sun/security/ssl/Alert;->NO_APPLICATION_PROTOCOL:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v8, "No matching application layer protocol values"

    invoke-virtual {v4, v7, v8}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 332
    .end local v3    # "protocolNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "matched":Z
    :cond_c
    :goto_5
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_ALPN:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void

    .line 307
    .end local v2    # "spec":Lorg/openjsse/sun/security/ssl/AlpnExtension$AlpnSpec;
    :catch_0
    move-exception v2

    .line 308
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v3, v4, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3
.end method
