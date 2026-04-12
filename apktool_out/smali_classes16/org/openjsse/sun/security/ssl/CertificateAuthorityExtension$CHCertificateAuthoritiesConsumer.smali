.class final Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesConsumer;
.super Ljava/lang/Object;
.source "CertificateAuthorityExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHCertificateAuthoritiesConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$1;

    .line 240
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 253
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_CERTIFICATE_AUTHORITIES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Ignore unavailable certificate_authorities extension"

    invoke-static {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    :cond_0
    return-void

    .line 265
    :cond_1
    :try_start_0
    new-instance v1, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;

    invoke-direct {v1, p3}, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .local v1, "spec":Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;
    nop

    .line 271
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_CERTIFICATE_AUTHORITIES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    return-void

    .line 266
    .end local v1    # "spec":Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;
    :catch_0
    move-exception v1

    .line 267
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v3, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method
