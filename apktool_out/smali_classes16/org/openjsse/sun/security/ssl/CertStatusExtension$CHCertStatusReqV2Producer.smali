.class final Lorg/openjsse/sun/security/ssl/CertStatusExtension$CHCertStatusReqV2Producer;
.super Ljava/lang/Object;
.source "CertStatusExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertStatusExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHCertStatusReqV2Producer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;

    .line 892
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CHCertStatusReqV2Producer;-><init>()V

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

    .line 902
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 904
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isStaplingEnabled(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 905
    return-object v2

    .line 908
    :cond_0
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_STATUS_REQUEST_V2:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 909
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_1

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 910
    const-string v1, "Ignore unavailable status_request_v2 extension"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 914
    :cond_1
    return-object v2

    .line 921
    :cond_2
    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 925
    .local v1, "extData":[B
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_STATUS_REQUEST_V2:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v4, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;->DEFAULT:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestV2Spec;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    return-object v1

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x2t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
