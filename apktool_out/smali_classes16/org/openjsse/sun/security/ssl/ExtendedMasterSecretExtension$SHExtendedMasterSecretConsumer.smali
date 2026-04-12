.class final Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$SHExtendedMasterSecretConsumer;
.super Ljava/lang/Object;
.source "ExtendedMasterSecretExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SHExtendedMasterSecretConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$1;

    .line 303
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$SHExtendedMasterSecretConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 317
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_EXTENDED_MASTER_SECRET:Lorg/openjsse/sun/security/ssl/SSLExtension;

    .line 318
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;

    .line 319
    .local v1, "requstedSpec":Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;
    if-eqz v1, :cond_2

    .line 328
    :try_start_0
    new-instance v2, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;-><init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .local v2, "spec":Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;
    nop

    .line 333
    iget-boolean v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->isResumption:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-boolean v3, v3, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useExtendedMasterSecret:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->UNSUPPORTED_EXTENSION:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v5, "Server sent an unexpected extended_master_secret extension on session resumption"

    invoke-virtual {v3, v4, v5}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 341
    :cond_1
    :goto_0
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeExtensions:Ljava/util/Map;

    sget-object v4, Lorg/openjsse/sun/security/ssl/SSLExtension;->SH_EXTENDED_MASTER_SECRET:Lorg/openjsse/sun/security/ssl/SSLExtension;

    sget-object v5, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;->NOMINAL:Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    return-void

    .line 329
    .end local v2    # "spec":Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$ExtendedMasterSecretSpec;
    :catch_0
    move-exception v2

    .line 330
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v4, Lorg/openjsse/sun/security/ssl/Alert;->UNEXPECTED_MESSAGE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v3, v4, v2}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 320
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_2
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->UNSUPPORTED_EXTENSION:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v4, "Server sent the extended_master_secret extension improperly"

    invoke-virtual {v2, v3, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method
