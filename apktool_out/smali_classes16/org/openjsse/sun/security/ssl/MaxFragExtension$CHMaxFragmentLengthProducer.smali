.class final Lorg/openjsse/sun/security/ssl/MaxFragExtension$CHMaxFragmentLengthProducer;
.super Ljava/lang/Object;
.source "MaxFragExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/MaxFragExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHMaxFragmentLengthProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/MaxFragExtension$1;

    .line 163
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$CHMaxFragmentLengthProducer;-><init>()V

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

    .line 173
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 176
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    const-string v2, "ssl,handshake"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 177
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const-string v1, "Ignore unavailable max_fragment_length extension"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_0
    return-object v4

    .line 186
    :cond_1
    iget-boolean v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->isResumption:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 189
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getNegotiatedMaxFragSize()I

    move-result v1

    .local v1, "requestedMFLength":I
    goto :goto_0

    .line 190
    .end local v1    # "requestedMFLength":I
    :cond_2
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    if-eqz v1, :cond_4

    .line 193
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->maximumPacketSize:I

    .line 194
    .restart local v1    # "requestedMFLength":I
    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v5}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDTLS()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 195
    add-int/lit16 v1, v1, -0x14d

    goto :goto_0

    .line 197
    :cond_3
    add-int/lit16 v1, v1, -0x145

    goto :goto_0

    .line 201
    .end local v1    # "requestedMFLength":I
    :cond_4
    const/4 v1, -0x1

    .line 204
    .restart local v1    # "requestedMFLength":I
    :goto_0
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->valueOf(I)Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;

    move-result-object v5

    .line 205
    .local v5, "mfl":Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;
    if-eqz v5, :cond_5

    .line 207
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v6, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_MAX_FRAGMENT_LENGTH:Lorg/openjsse/sun/security/ssl/SSLExtension;

    new-instance v7, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;

    iget-byte v8, v5, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->id:B

    invoke-direct {v7, v8, v4}, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenSpec;-><init>(BLorg/openjsse/sun/security/ssl/MaxFragExtension$1;)V

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-byte v2, v5, Lorg/openjsse/sun/security/ssl/MaxFragExtension$MaxFragLenEnum;->id:B

    const/4 v4, 0x1

    new-array v4, v4, [B

    aput-byte v2, v4, v3

    return-object v4

    .line 213
    :cond_5
    const/4 v6, -0x1

    iput v6, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->maxFragmentLength:I

    .line 214
    sget-boolean v6, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v6, :cond_6

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No available max_fragment_length extension can be used for fragment size of "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "bytes"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    :cond_6
    return-object v4
.end method
