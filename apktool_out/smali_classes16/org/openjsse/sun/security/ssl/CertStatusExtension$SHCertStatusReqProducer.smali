.class final Lorg/openjsse/sun/security/ssl/CertStatusExtension$SHCertStatusReqProducer;
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
    name = "SHCertStatusReqProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;

    .line 626
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$SHCertStatusReqProducer;-><init>()V

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

    .line 636
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 646
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->stapleParams:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->stapleParams:Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/StatusResponseManager$StaplingParameters;->statusRespExt:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 653
    :cond_0
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 654
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;

    .line 655
    .local v1, "spec":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;
    const-string v3, "ssl,handshake"

    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 657
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_1

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore unavailable extension: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

    iget-object v5, v5, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    :cond_1
    return-object v2

    .line 666
    :cond_2
    iget-boolean v5, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    if-eqz v5, :cond_4

    .line 667
    sget-boolean v5, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v5, :cond_3

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 668
    const-string v3, "No status_request response for session resuming"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    :cond_3
    return-object v2

    .line 677
    :cond_4
    new-array v2, v4, [B

    .line 680
    .local v2, "extData":[B
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_STATUS_REQUEST:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v5, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;->DEFAULT:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    return-object v2

    .line 649
    .end local v1    # "spec":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusRequestSpec;
    .end local v2    # "extData":[B
    :cond_5
    :goto_0
    return-object v2
.end method
