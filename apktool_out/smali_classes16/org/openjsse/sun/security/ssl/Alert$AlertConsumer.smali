.class final Lorg/openjsse/sun/security/ssl/Alert$AlertConsumer;
.super Ljava/lang/Object;
.source "Alert.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/Alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlertConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/Alert$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/Alert$1;

    .line 225
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/Alert$AlertConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/TransportContext;

    .line 236
    .local v0, "tc":Lorg/openjsse/sun/security/ssl/TransportContext;
    new-instance v1, Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;

    invoke-direct {v1, v0, p2}, Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;-><init>(Lorg/openjsse/sun/security/ssl/TransportContext;Ljava/nio/ByteBuffer;)V

    .line 237
    .local v1, "am":Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    const-string v2, "ssl"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const-string v2, "Received alert message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :cond_0
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;->access$100(Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;)B

    move-result v2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Alert$Level;->valueOf(B)Lorg/openjsse/sun/security/ssl/Alert$Level;

    move-result-object v2

    .line 242
    .local v2, "level":Lorg/openjsse/sun/security/ssl/Alert$Level;
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;->access$200(Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;)B

    move-result v3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/Alert;->valueOf(B)Lorg/openjsse/sun/security/ssl/Alert;

    move-result-object v3

    .line 243
    .local v3, "alert":Lorg/openjsse/sun/security/ssl/Alert;
    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->CLOSE_NOTIFY:Lorg/openjsse/sun/security/ssl/Alert;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    .line 244
    iput-boolean v5, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->isInputCloseNotified:Z

    .line 245
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->closeInbound()V

    .line 247
    iget-boolean v4, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->peerUserCanceled:Z

    if-eqz v4, :cond_1

    .line 248
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/TransportContext;->closeOutbound()V

    goto/16 :goto_0

    .line 249
    :cond_1
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-nez v4, :cond_2

    goto/16 :goto_0

    .line 250
    :cond_2
    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Received close_notify during handshake"

    invoke-virtual {v0, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 253
    :cond_3
    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->USER_CANCELED:Lorg/openjsse/sun/security/ssl/Alert;

    const/4 v6, 0x0

    if-ne v3, v4, :cond_5

    .line 254
    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert$Level;->WARNING:Lorg/openjsse/sun/security/ssl/Alert$Level;

    if-ne v2, v4, :cond_4

    .line 255
    iput-boolean v5, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->peerUserCanceled:Z

    goto :goto_0

    .line 257
    :cond_4
    const-string v4, "Received fatal close_notify alert"

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;ZLjava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 260
    :cond_5
    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert$Level;->WARNING:Lorg/openjsse/sun/security/ssl/Alert$Level;

    if-ne v2, v4, :cond_8

    if-eqz v3, :cond_8

    .line 264
    iget-boolean v4, v3, Lorg/openjsse/sun/security/ssl/Alert;->handshakeOnly:Z

    if-eqz v4, :cond_7

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    if-eqz v4, :cond_7

    .line 268
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v4, v4, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-nez v4, :cond_6

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->NO_CERTIFICATE:Lorg/openjsse/sun/security/ssl/Alert;

    if-ne v3, v4, :cond_6

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    sget-object v5, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUESTED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    if-ne v4, v5, :cond_6

    .line 278
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v5, v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 279
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 278
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/TransportContext;->handshakeContext:Lorg/openjsse/sun/security/ssl/HandshakeContext;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/HandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_VERIFY:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v5, v5, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    .line 281
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 280
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 272
    :cond_6
    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received handshake warning: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lorg/openjsse/sun/security/ssl/Alert;->description:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 295
    :cond_7
    :goto_0
    return-void

    .line 286
    :cond_8
    if-nez v3, :cond_9

    .line 287
    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown alert description ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;->access$200(Lorg/openjsse/sun/security/ssl/Alert$AlertMessage;)B

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "diagnostic":Ljava/lang/String;
    goto :goto_1

    .line 290
    .end local v4    # "diagnostic":Ljava/lang/String;
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received fatal alert: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v3, Lorg/openjsse/sun/security/ssl/Alert;->description:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 293
    .restart local v4    # "diagnostic":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;ZLjava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5
.end method
