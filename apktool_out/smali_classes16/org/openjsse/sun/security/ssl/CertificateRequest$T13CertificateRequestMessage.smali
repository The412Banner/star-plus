.class final Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;
.super Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
.source "CertificateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertificateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "T13CertificateRequestMessage"
.end annotation


# instance fields
.field private final extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

.field private final requestContext:[B


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V
    .locals 1
    .param p1, "handshakeContext"    # Lorg/openjsse/sun/security/ssl/HandshakeContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 792
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;->requestContext:[B

    .line 793
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-direct {v0, p0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;-><init>(Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 794
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

    .line 798
    invoke-direct {p0, p1}, Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;)V

    .line 804
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 809
    invoke-static {p2}, Lorg/openjsse/sun/security/ssl/Record;->getBytes8(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;->requestContext:[B

    .line 811
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 816
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v1, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    .line 817
    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v0

    .line 819
    .local v0, "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    new-instance v1, Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-direct {v1, p0, p2, v0}, Lorg/openjsse/sun/security/ssl/SSLExtensions;-><init>(Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    iput-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 820
    return-void

    .line 812
    .end local v0    # "enabledExtensions":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    :cond_0
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v2, "Invalid CertificateRequest handshake message: no sufficient extensions data"

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 805
    :cond_1
    iget-object v0, p1, Lorg/openjsse/sun/security/ssl/HandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v1, Lorg/openjsse/sun/security/ssl/Alert;->ILLEGAL_PARAMETER:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v2, "Invalid CertificateRequest handshake message: no sufficient data"

    invoke-virtual {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method

.method static synthetic access$1000(Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;)[B
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;

    .line 784
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;->requestContext:[B

    return-object v0
.end method

.method static synthetic access$900(Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;)Lorg/openjsse/sun/security/ssl/SSLExtensions;
    .locals 1
    .param p0, "x0"    # Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;

    .line 784
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    return-object v0
.end method


# virtual methods
.method handshakeType()Lorg/openjsse/sun/security/ssl/SSLHandshake;
    .locals 1

    .line 824
    sget-object v0, Lorg/openjsse/sun/security/ssl/SSLHandshake;->CERTIFICATE_REQUEST:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    return-object v0
.end method

.method messageLength()I
    .locals 2

    .line 830
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;->requestContext:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->length()I

    move-result v1

    add-int/2addr v0, v1

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

    .line 835
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;->requestContext:[B

    invoke-virtual {p1, v0}, Lorg/openjsse/sun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 838
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->send(Lorg/openjsse/sun/security/ssl/HandshakeOutStream;)V

    .line 839
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 843
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "\"CertificateRequest\": \'{\'\n  \"certificate_request_context\": \"{0}\",\n  \"extensions\": [\n{1}\n  ]\n\'}\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 851
    .local v0, "messageFormat":Ljava/text/MessageFormat;
    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;->requestContext:[B

    .line 852
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/CertificateRequest$T13CertificateRequestMessage;->extensions:Lorg/openjsse/sun/security/ssl/SSLExtensions;

    .line 853
    invoke-virtual {v2}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/Utilities;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 856
    .local v1, "messageFields":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
