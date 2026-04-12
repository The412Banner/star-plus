.class final Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$CHExtendedMasterSecretAbsence;
.super Ljava/lang/Object;
.source "ExtendedMasterSecretExtension.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/HandshakeAbsence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHExtendedMasterSecretAbsence"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$1;

    .line 209
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/ExtendedMasterSecretExtension$CHExtendedMasterSecretAbsence;-><init>()V

    return-void
.end method


# virtual methods
.method public absent(Lorg/openjsse/sun/security/ssl/ConnectionContext;Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;)V
    .locals 5
    .param p1, "context"    # Lorg/openjsse/sun/security/ssl/ConnectionContext;
    .param p2, "message"    # Lorg/openjsse/sun/security/ssl/SSLHandshake$HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    move-object v0, p1

    check-cast v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;

    .line 217
    .local v0, "shc":Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_EXTENDED_MASTER_SECRET:Lorg/openjsse/sun/security/ssl/SSLExtension;

    invoke-virtual {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isAvailable(Lorg/openjsse/sun/security/ssl/SSLExtension;)Z

    move-result v1

    const-string v2, "ssl,handshake"

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->useExtendedMasterSecret:Z

    if-nez v1, :cond_0

    goto :goto_2

    .line 226
    :cond_0
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->negotiatedProtocol:Lorg/openjsse/sun/security/ssl/ProtocolVersion;

    invoke-virtual {v1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->useTLS10PlusSpec()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->allowLegacyMasterSecret:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    const-string v3, "Extended Master Secret extension is required"

    invoke-virtual {v1, v2, v3}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 238
    :cond_2
    :goto_0
    iget-boolean v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    if-eqz v1, :cond_5

    .line 239
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    iget-boolean v1, v1, Lorg/openjsse/sun/security/ssl/SSLSessionImpl;->useExtendedMasterSecret:Z

    const-string v4, "Missing Extended Master Secret extension on session resumption"

    if-nez v1, :cond_4

    .line 251
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->allowLegacyResumption:Z

    if-eqz v1, :cond_3

    .line 256
    iput-boolean v3, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->isResumption:Z

    .line 257
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->resumingSession:Lorg/openjsse/sun/security/ssl/SSLSessionImpl;

    .line 258
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_5

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 259
    const-string v1, "abort session resumption, missing Extended Master Secret extension"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 252
    :cond_3
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v2, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 244
    :cond_4
    iget-object v1, v0, Lorg/openjsse/sun/security/ssl/ServerHandshakeContext;->conContext:Lorg/openjsse/sun/security/ssl/TransportContext;

    sget-object v2, Lorg/openjsse/sun/security/ssl/Alert;->HANDSHAKE_FAILURE:Lorg/openjsse/sun/security/ssl/Alert;

    invoke-virtual {v1, v2, v4}, Lorg/openjsse/sun/security/ssl/TransportContext;->fatal(Lorg/openjsse/sun/security/ssl/Alert;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1

    .line 266
    :cond_5
    :goto_1
    return-void

    .line 219
    :cond_6
    :goto_2
    sget-boolean v1, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v1, :cond_7

    invoke-static {v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore unavailable extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->CH_EXTENDED_MASTER_SECRET:Lorg/openjsse/sun/security/ssl/SSLExtension;

    iget-object v2, v2, Lorg/openjsse/sun/security/ssl/SSLExtension;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :cond_7
    return-void
.end method
