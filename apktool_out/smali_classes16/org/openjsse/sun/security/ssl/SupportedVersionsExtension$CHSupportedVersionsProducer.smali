.class final Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsProducer;
.super Ljava/lang/Object;
.source "SupportedVersionsExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHSupportedVersionsProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;

    .line 153
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 11
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 166
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 167
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore unavailable extension: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    iget-object v4, v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :cond_0
    return-object v2

    .line 178
    :cond_1
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->activeProtocols:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 179
    .local v1, "protocols":[I
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x2

    .line 180
    .local v4, "verLen":I
    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [B

    .line 181
    .local v5, "extData":[B
    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 182
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v6, 0x1

    .line 183
    .local v6, "j":I
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->activeProtocols:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 184
    .local v8, "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "i":I
    .local v9, "i":I
    iget v10, v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->id:I

    aput v10, v1, v3

    .line 185
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "j":I
    .local v3, "j":I
    iget-byte v10, v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->major:B

    aput-byte v10, v5, v6

    .line 186
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "j":I
    .restart local v6    # "j":I
    iget-byte v10, v8, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->minor:B

    aput-byte v10, v5, v3

    .line 187
    .end local v8    # "pv":Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    move v3, v9

    goto :goto_0

    .line 190
    .end local v9    # "i":I
    .local v3, "i":I
    :cond_2
    iget-object v7, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v8, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_SUPPORTED_VERSIONS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    new-instance v9, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsSpec;

    invoke-direct {v9, v1, v2}, Lorg/openjsse/sun/security/ssl/SupportedVersionsExtension$CHSupportedVersionsSpec;-><init>([ILorg/openjsse/sun/security/ssl/SupportedVersionsExtension$1;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-object v5
.end method
