.class final Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsProducer;
.super Ljava/lang/Object;
.source "EncryptedExtensions.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/EncryptedExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EncryptedExtensionsProducer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/EncryptedExtensions$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/EncryptedExtensions$1;

    .line 116
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsProducer;-><init>()V

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

    .line 127
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 129
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    new-instance v1, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;

    invoke-direct {v1, v0}, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 131
    .local v1, "eem":Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-object v4, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    .line 132
    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;Lorg/openjsse/sun/security/ssl/ProtocolVersion;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v2

    .line 135
    .local v2, "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;->access$200(Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;)Lorg/openjsse/sun/security/ssl/SSLExtensions;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->produce(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 136
    sget-boolean v3, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v3, :cond_0

    const-string v3, "ssl,handshake"

    invoke-static {v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const-string v3, "Produced EncryptedExtensions message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_0
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1, v3}, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;->write(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 142
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->handshakeOutput:Lorg/openjsse/sun/security/ssl/HandshakeOutStream;

    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->flush()V

    .line 145
    const/4 v3, 0x0

    return-object v3
.end method
