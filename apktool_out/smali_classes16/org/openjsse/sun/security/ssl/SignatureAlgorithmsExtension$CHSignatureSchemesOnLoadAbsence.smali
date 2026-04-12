.class final Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesOnLoadAbsence;
.super Ljava/lang/Object;
.source "SignatureAlgorithmsExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeAbsence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHSignatureSchemesOnLoadAbsence"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$1;

    .line 321
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SignatureAlgorithmsExtension$CHSignatureSchemesOnLoadAbsence;-><init>()V

    return-void
.end method


# virtual methods
.method public absent(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 333
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS13PlusSpec()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    return-void

    .line 334
    :cond_0
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->MISSING_EXTENSION:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "No mandatory signature_algorithms extension in the received CertificateRequest handshake message"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method
