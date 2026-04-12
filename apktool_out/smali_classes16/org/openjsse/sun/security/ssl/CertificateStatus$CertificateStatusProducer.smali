.class final Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusProducer;
.super Ljava/lang/Object;
.source "CertificateStatus.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CertificateStatusProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateStatus$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateStatus$1;

    .line 306
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusProducer;-><init>()V

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

    .line 317
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 321
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-boolean v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->staplingActive:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 322
    return-object v2

    .line 326
    :cond_0
    new-instance v1, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;

    invoke-direct {v1, v0}, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 327
    .local v1, "csm":Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_1

    const-string v3, "ssl,handshake"

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    const-string v3, "Produced server CertificateStatus handshake message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    :cond_1
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1, v3}, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 334
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 337
    return-object v2
.end method
