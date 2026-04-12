.class final Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;
.super Ljava/lang/Object;
.source "CertSignAlgsExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CRCertSignatureSchemesUpdate;,
        Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CRCertSignatureSchemesConsumer;,
        Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CRCertSignatureSchemesProducer;,
        Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CHCertSignatureSchemesUpdate;,
        Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CHCertSignatureSchemesConsumer;,
        Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CHCertSignatureSchemesProducer;,
        Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CertSignatureSchemesStringizer;
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

    .line 41
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CHCertSignatureSchemesProducer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CHCertSignatureSchemesProducer;-><init>(Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;->chNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 43
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CHCertSignatureSchemesConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CHCertSignatureSchemesConsumer;-><init>(Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;->chOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 45
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CHCertSignatureSchemesUpdate;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CHCertSignatureSchemesUpdate;-><init>(Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;->chOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 48
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CRCertSignatureSchemesProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CRCertSignatureSchemesProducer;-><init>(Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;->crNetworkProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 50
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CRCertSignatureSchemesConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CRCertSignatureSchemesConsumer;-><init>(Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;->crOnLoadConsumer:Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;

    .line 52
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CRCertSignatureSchemesUpdate;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CRCertSignatureSchemesUpdate;-><init>(Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;->crOnTradeConsumer:Lorg/openjsse/sun/security/ssl/HandshakeConsumer;

    .line 55
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CertSignatureSchemesStringizer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$CertSignatureSchemesStringizer;-><init>(Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertSignAlgsExtension;->ssStringizer:Lorg/openjsse/sun/security/ssl/SSLStringizer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
