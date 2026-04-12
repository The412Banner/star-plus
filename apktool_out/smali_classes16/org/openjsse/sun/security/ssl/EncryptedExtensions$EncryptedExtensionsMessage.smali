.class final Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "EncryptedExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/EncryptedExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EncryptedExtensionsMessage"
.end annotation


# instance fields
.field private final extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V
    .locals 1
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 52
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;-><init>(Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 53
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .param p2, "m"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 62
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 68
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 69
    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v0

    .line 71
    .local v0, "encryptedExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-direct {v1, p0, p2, v0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;-><init>(Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 72
    return-void

    .line 63
    .end local v0    # "encryptedExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_0
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v2, "Invalid EncryptedExtensions handshake message: no sufficient data"

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method

.method static synthetic access$200(Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;)Lorg/openjsse/sun/security/ssl/SSLExtensions;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;

    .line 46
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    return-object v0
.end method


# virtual methods
.method handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 76
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method messageLength()I
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->length()I

    move-result v0

    .line 82
    .local v0, "extLen":I
    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x2

    .line 85
    :cond_0
    return v0
.end method

.method send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "hos"    # Lorg/openjsse/sun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putInt16(I)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 96
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"EncryptedExtensions\": [\n{0}\n]"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 105
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 106
    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 109
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
