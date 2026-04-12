.class final Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNameConsumer;
.super Ljava/lang/Object;
.source "ServerNameExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ServerNameExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHServerNameConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;

    .line 267
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNameConsumer;-><init>()V

    return-void
.end method

.method private static chooseSni(Ljava/util/Collection;Ljava/util/List;)Ljavax/net/ssl/SNIServerName;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;)",
            "Ljavax/net/ssl/SNIServerName;"
        }
    .end annotation

    .line 356
    .local p0, "matchers":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/net/ssl/SNIMatcher;>;"
    .local p1, "sniNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 357
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SNIMatcher;

    .line 358
    .local v1, "matcher":Ljavax/net/ssl/SNIMatcher;
    invoke-virtual {v1}, Ljavax/net/ssl/SNIMatcher;->getType()I

    move-result v2

    .line 359
    .local v2, "matcherType":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SNIServerName;

    .line 360
    .local v4, "sniName":Ljavax/net/ssl/SNIServerName;
    invoke-virtual {v4}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 361
    invoke-virtual {v1, v4}, Ljavax/net/ssl/SNIMatcher;->matches(Ljavax/net/ssl/SNIServerName;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 362
    return-object v4

    .line 368
    .end local v4    # "sniName":Ljavax/net/ssl/SNIServerName;
    :cond_0
    goto :goto_1

    .line 369
    .end local v1    # "matcher":Ljavax/net/ssl/SNIMatcher;
    .end local v2    # "matcherType":I
    :cond_1
    goto :goto_0

    .line 372
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 280
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SERVER_NAME:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    const-string v2, "ssl,handshake"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 281
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore unavailable extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SERVER_NAME:Lorg/openjsse/sun/security/ssl/SSLExtension;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    :cond_0
    return-void

    .line 291
    :cond_1
    :try_start_0
    new-instance v1, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;

    const/4 v4, 0x0

    invoke-direct {v1, p3, v4}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;-><init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .local v1, "spec":Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;
    nop

    .line 297
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SERVER_NAME:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const/4 v5, 0x0

    .line 301
    .local v5, "sni":Ljavax/net/ssl/SNIServerName;
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->sniMatchers:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 302
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->sniMatchers:Ljava/util/Collection;

    iget-object v7, v1, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;->serverNames:Ljava/util/List;

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNameConsumer;->chooseSni(Ljava/util/Collection;Ljava/util/List;)Ljavax/net/ssl/SNIServerName;

    move-result-object v5

    .line 303
    if-eqz v5, :cond_2

    .line 304
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_4

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "server name indication ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") is accepted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNRECOGNIZED_NAME:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "Unrecognized server name indication"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 321
    :cond_3
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_4

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 322
    const-string v6, "no server name matchers, ignore server name indication"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :cond_4
    :goto_0
    iget-boolean v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    if-eqz v6, :cond_5

    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-eqz v6, :cond_5

    .line 338
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-object v6, v6, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->serverNameIndication:Ljavax/net/ssl/SNIServerName;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 340
    iput-boolean v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    .line 341
    iput-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 342
    sget-boolean v4, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v4, :cond_5

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 343
    const-string v2, "abort session resumption, different server name indication used"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    :cond_5
    iget-object v2, v1, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;->serverNames:Ljava/util/List;

    iput-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->requestedServerNames:Ljava/util/List;

    .line 351
    iput-object v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedServerName:Ljavax/net/ssl/SNIServerName;

    .line 352
    return-void

    .line 292
    .end local v1    # "spec":Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;
    .end local v5    # "sni":Ljavax/net/ssl/SNIServerName;
    :catch_0
    move-exception v1

    .line 293
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v3, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method
