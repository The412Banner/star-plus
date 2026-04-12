.class final Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsConsumer;
.super Ljava/lang/Object;
.source "EncryptedExtensions.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/EncryptedExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EncryptedExtensionsConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/EncryptedExtensions$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/EncryptedExtensions$1;

    .line 152
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsConsumer;-><init>()V

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

    .line 163
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 166
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeConsumers:Ljava/util/LinkedHashMap;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    iget-byte v2, v2, Lorg/openjsse/sun/security/ssl/SSLHandshake;->id:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v1, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;

    invoke-direct {v1, v0, p2}, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;-><init>(Lorg/openjsse/sun/security/ssl/HandshakeContext;Ljava/nio/ByteBuffer;)V

    .line 170
    .local v1, "eem":Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_0

    const-string v2, "ssl,handshake"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const-string v2, "Consuming EncryptedExtensions handshake message"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_0
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v3, Lorg/openjsse/sun/security/ssl/SSLHandshake;->ENCRYPTED_EXTENSIONS:Lorg/openjsse/sun/security/ssl/SSLHandshake;

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getEnabledExtensions(Lorg/openjsse/sun/security/ssl/SSLHandshake;)[Lorg/openjsse/sun/security/ssl/SSLExtension;

    move-result-object v2

    .line 180
    .local v2, "extTypes":[Lorg/openjsse/sun/security/ssl/SSLExtension;
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;->access$200(Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;)Lorg/openjsse/sun/security/ssl/SSLExtensions;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnLoad(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 185
    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;->access$200(Lorg/openjsse/sun/security/ssl/EncryptedExtensions$EncryptedExtensionsMessage;)Lorg/openjsse/sun/security/ssl/SSLExtensions;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/openjsse/sun/security/ssl/SSLExtensions;->consumeOnTrade(Lorg/openjsse/sun/security/ssl/HandshakeContext;[Lorg/openjsse/sun/security/ssl/SSLExtension;)V

    .line 191
    return-void
.end method
