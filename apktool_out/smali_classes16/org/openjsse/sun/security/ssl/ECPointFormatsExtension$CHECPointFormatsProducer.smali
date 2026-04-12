.class final Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$CHECPointFormatsProducer;
.super Ljava/lang/Object;
.source "ECPointFormatsExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHECPointFormatsProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$1;

    .line 158
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$CHECPointFormatsProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)[B
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 171
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_EC_POINT_FORMATS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    const-string v2, "ssl,handshake"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 172
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "Ignore unavailable ec_point_formats extension"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_0
    return-object v3

    .line 182
    :cond_1
    sget-object v1, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->NAMED_GROUP_ECDHE:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;

    iget-object v5, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->activeCipherSuites:Ljava/util/List;

    invoke-virtual {v1, v5}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedGroupType;->isSupported(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 188
    .local v1, "extData":[B
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_EC_POINT_FORMATS:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v4, Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;->DEFAULT:Lorg/openjsse/sun/security/ssl/ECPointFormatsExtension$ECPointFormatsSpec;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-object v1

    .line 194
    .end local v1    # "extData":[B
    :cond_2
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_3

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    const-string v1, "Need no ec_point_formats extension"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :cond_3
    return-object v3

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method
