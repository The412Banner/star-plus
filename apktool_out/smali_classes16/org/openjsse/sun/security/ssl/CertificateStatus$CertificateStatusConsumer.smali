.class final Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusConsumer;
.super Ljava/lang/Object;
.source "CertificateStatus.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CertificateStatusConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertificateStatus$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateStatus$1;

    .line 268
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 279
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    new-instance v1, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;

    invoke-direct {v1, v0, p2}, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 283
    .local v1, "cst":Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    const-string v2, "ssl,handshake"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    const-string v2, "Consuming server CertificateStatus handshake message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :cond_0
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/CertificateStatus$CertificateStatusMessage;->encodedResponses:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setStatusResponses(Ljava/util/List;)V

    .line 295
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->deferredCerts:[Ljava/security/cert/X509Certificate;

    invoke-static {v0, v2}, Lorg/openjsse/sun/security/ssl/CertificateMessage$T12CertificateConsumer;->checkServerCerts(Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;[Ljava/security/cert/X509Certificate;)V

    .line 299
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_STATUS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v3, v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    return-void
.end method
