.class final Lorg/openjsse/sun/security/ssl/CertificateRequest;
.super Ljava/lang/Object;
.source "CertificateRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestConsumer;,
        Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestProducer;,
        Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;,
        Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestConsumer;,
        Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestProducer;,
        Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestMessage;,
        Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestConsumer;,
        Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestProducer;,
        Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestMessage;,
        Lorg/openjsse/sun/security/ssl/CertificateRequest$ClientCertificateType;
    }
.end annotation


# static fields
.field static final t10HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final t10HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final t12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final t12HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final t13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final t13HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestConsumer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateRequest$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest;->t10HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 54
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T10CertificateRequestProducer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateRequest$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest;->t10HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 57
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestConsumer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateRequest$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest;->t12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 59
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T12CertificateRequestProducer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateRequest$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest;->t12HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 62
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestConsumer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateRequest$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest;->t13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 64
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestProducer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateRequest$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateRequest;->t13HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
