.class final Lorg/openjsse/sun/security/ssl/CertificateStatus;
.super Ljava/lang/Object;
.source "CertificateStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusAbsence;,
        Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusProducer;,
        Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusConsumer;,
        Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;
    }
.end annotation


# static fields
.field static final handshakeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

.field static final handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

.field static final handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusConsumer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateStatus$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateStatus;->handshakeConsumer:Lorg/openjsse/sun/security/ssl/SSLConsumer;

    .line 77
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusProducer;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusProducer;-><init>(Lorg/openjsse/sun/security/ssl/CertificateStatus$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateStatus;->handshakeProducer:Lorg/openjsse/sun/security/ssl/HandshakeProducer;

    .line 79
    new-instance v0, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusAbsence;

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusAbsence;-><init>(Lorg/openjsse/sun/security/ssl/CertificateStatus$1;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/CertificateStatus;->handshakeAbsence:Lorg/openjsse/sun/security/ssl/HandshakeAbsence;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
