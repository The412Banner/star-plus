.class final Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesUpdate;
.super Ljava/lang/Object;
.source "CertificateAuthorityExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHCertificateAuthoritiesUpdate"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$1;

    .line 282
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesUpdate;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 3
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 295
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_CERTIFICATE_AUTHORITIES:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 296
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;

    .line 298
    .local v1, "spec":Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;
    if-nez v1, :cond_0

    .line 300
    return-void

    .line 304
    :cond_0
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;->getAuthorities()[Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    iput-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->peerSupportedAuthorities:[Ljavax/security/auth/x500/X500Principal;

    .line 305
    return-void
.end method
