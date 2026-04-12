.class final Lorg/openjsse/sun/security/ssl/CertificateMessage;
.super Ljava/lang/Object;
.source "CertificateMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateConsumer;,
        Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateProducer;,
        Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateMessage;,
        Lorg/openjsse/sun/security/ssl/CertificateMessage$CertificateEntry;,
        Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;,
        Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateProducer;,
        Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateMessage;
    }
.end annotation


# static fields
.field static final t12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final t12HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

.field static final t13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final t13HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateMessage$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateMessage;->t12HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 68
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateProducer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateMessage$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateMessage;->t12HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 71
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateConsumer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateConsumer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateMessage$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateMessage;->t13HandshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 73
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T13CertificateProducer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateMessage$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateMessage;->t13HandshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
