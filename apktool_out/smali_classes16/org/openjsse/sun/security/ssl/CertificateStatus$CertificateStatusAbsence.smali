.class final Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusAbsence;
.super Ljava/lang/Object;
.source "CertificateStatus.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeAbsence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CertificateStatusAbsence"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateStatus$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateStatus$1;

    .line 341
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusAbsence;-><init>()V

    return-void
.end method


# virtual methods
.method public absent(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 3
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 354
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-boolean v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->staplingActive:Z

    if-eqz v1, :cond_1

    .line 360
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl,handshake"

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Server did not send CertificateStatus, checking cert chain without status info."

    invoke-static {v2, v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :cond_0
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->deferredCerts:[Ljava/security/cert/X509Certificate;

    invoke-static {v0, v1}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;->checkServerCerts(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;[Ljava/security/cert/X509Certificate;)V

    .line 366
    :cond_1
    return-void
.end method
