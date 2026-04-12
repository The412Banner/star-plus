.class final Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNameProducer;
.super Ljava/lang/Object;
.source "ServerNameExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ServerNameExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHServerNameProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;

    .line 196
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNameProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 9
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 209
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SERVER_NAME:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ssl,handshake"

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 210
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    const-string v1, "Ignore unavailable server_name extension"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_0
    return-object v4

    .line 219
    :cond_1
    iget-boolean v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->isResumption:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-eqz v1, :cond_2

    .line 220
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 221
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getRequestedServerNames()Ljava/util/List;

    move-result-object v1

    .local v1, "serverNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    goto :goto_0

    .line 223
    .end local v1    # "serverNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    :cond_2
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->serverNames:Ljava/util/List;

    .line 227
    .restart local v1    # "serverNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    :goto_0
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 228
    const/4 v2, 0x0

    .line 229
    .local v2, "sniLen":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/SNIServerName;

    .line 235
    .local v5, "sniName":Ljavax/net/ssl/SNIServerName;
    add-int/lit8 v2, v2, 0x3

    .line 236
    invoke-virtual {v5}, Ljavax/net/ssl/SNIServerName;->getEncoded()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v2, v6

    .line 237
    .end local v5    # "sniName":Ljavax/net/ssl/SNIServerName;
    goto :goto_1

    .line 239
    :cond_3
    add-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    .line 240
    .local v3, "extData":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 241
    .local v5, "m":Ljava/nio/ByteBuffer;
    invoke-static {v5, v2}, Lorg/openjsse/sun/security/ssl/Record;->putInt16(Ljava/nio/ByteBuffer;I)V

    .line 242
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SNIServerName;

    .line 243
    .local v7, "sniName":Ljavax/net/ssl/SNIServerName;
    invoke-virtual {v7}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v8

    invoke-static {v5, v8}, Lorg/openjsse/sun/security/ssl/Record;->putInt8(Ljava/nio/ByteBuffer;I)V

    .line 244
    invoke-virtual {v7}, Ljavax/net/ssl/SNIServerName;->getEncoded()[B

    move-result-object v8

    invoke-static {v5, v8}, Lorg/openjsse/sun/security/ssl/Record;->putBytes16(Ljava/nio/ByteBuffer;[B)V

    .line 245
    .end local v7    # "sniName":Ljavax/net/ssl/SNIServerName;
    goto :goto_2

    .line 248
    :cond_4
    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->requestedServerNames:Ljava/util/List;

    .line 249
    iget-object v6, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v7, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SERVER_NAME:Lorg/openjsse/sun/security/ssl/SSLExtension;

    new-instance v8, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;

    invoke-direct {v8, v1, v4}, Lorg/openjsse/sun/security/ssl/ServerNameExtension$CHServerNamesSpec;-><init>(Ljava/util/List;Lorg/openjsse/sun/security/ssl/ServerNameExtension$1;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-object v3

    .line 255
    .end local v2    # "sniLen":I
    .end local v3    # "extData":[B
    .end local v5    # "m":Ljava/nio/ByteBuffer;
    :cond_5
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_6

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 256
    const-string v3, "Unable to indicate server name"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :cond_6
    return-object v4
.end method
