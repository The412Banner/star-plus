.class final Lorg/openjsse/sun/security/ssl/CertStatusExtension$CTCertStatusResponseConsumer;
.super Ljava/lang/Object;
.source "CertStatusExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLExtension$ExtensionConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/CertStatusExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CTCertStatusResponseConsumer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;

    .line 1175
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CTCertStatusResponseConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1185
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;

    .line 1190
    .local v0, "chc":Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;
    :try_start_0
    new-instance v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponseSpec;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2}, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponseSpec;-><init>(Ljava/nio/ByteBuffer;Lorg/openjsse/sun/security/ssl/CertStatusExtension$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    .local v1, "spec":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponseSpec;
    nop

    .line 1195
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isStaplingEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1197
    iput-boolean v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->staplingActive:Z

    .line 1206
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->isResumption:Z

    if-nez v2, :cond_0

    .line 1207
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 1208
    invoke-virtual {v3}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->getStatusResponses()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1209
    .local v2, "respList":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v3, v1, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponseSpec;->statusResponse:Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponse;->encodedResponse:[B

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    iget-object v3, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->handshakeSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->setStatusResponses(Ljava/util/List;)V

    .line 1211
    .end local v2    # "respList":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto :goto_0

    .line 1212
    :cond_0
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_1

    const-string v2, "ssl,handshake,verbose"

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1213
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Ignoring stapled data on resumed session"

    invoke-static {v3, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1217
    :cond_1
    :goto_0
    return-void

    .line 1200
    :cond_2
    return-void

    .line 1191
    .end local v1    # "spec":Lorg/openjsse/sun/security/ssl/CertStatusExtension$CertStatusResponseSpec;
    :catch_0
    move-exception v1

    .line 1192
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v2, v0, Lorg/openjsse/sun/security/ssl/ClientHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v3, Lorg/openjsse/sun/security/ssl/Alert;->DECODE_ERROR:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v2, v3, v1}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2
.end method
