.class final Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;
.super Ljava/lang/Object;
.source "CertificateAuthorityExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CRCertificateAuthoritiesUpdate;,
        Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CRCertificateAuthoritiesConsumer;,
        Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CRCertificateAuthoritiesProducer;,
        Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesUpdate;,
        Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesConsumer;,
        Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesProducer;,
        Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesStringizer;,
        Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesSpec;
    }
.end annotation


# static fields
.field static final chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final chOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

.field static final crNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final crOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

.field static final crOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

.field static final ssStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesProducer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 52
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesConsumer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 54
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesUpdate;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CHCertificateAuthoritiesUpdate;-><init>(Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;->chOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 57
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CRCertificateAuthoritiesProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CRCertificateAuthoritiesProducer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;->crNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 59
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CRCertificateAuthoritiesConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CRCertificateAuthoritiesConsumer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;->crOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 61
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CRCertificateAuthoritiesUpdate;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CRCertificateAuthoritiesUpdate;-><init>(Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;->crOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 64
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$CertificateAuthoritiesStringizer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateAuthorityExtension;->ssStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
