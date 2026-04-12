.class final Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;
.super Ljavax/net/ssl/SSLServerSocket;
.source "SSLServerSocketImpl.java"


# instance fields
.field private final sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

.field private final sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;


# direct methods
.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;)V
    .locals 2
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocket;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 64
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Z)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    .line 65
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;II)V
    .locals 2
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "port"    # I
    .param p3, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p2, p3}, Ljavax/net/ssl/SSLServerSocket;-><init>(II)V

    .line 71
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 72
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Z)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    .line 73
    return-void
.end method

.method constructor <init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;IILjava/net/InetAddress;)V
    .locals 2
    .param p1, "sslContext"    # Lorg/openjsse/sun/security/ssl/SSLContextImpl;
    .param p2, "port"    # I
    .param p3, "backlog"    # I
    .param p4, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p2, p3, p4}, Ljavax/net/ssl/SSLServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 79
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 80
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Z)V

    iput-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    .line 81
    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    new-instance v0, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    iget-object v2, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    invoke-direct {v0, v1, v2}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;-><init>(Lorg/openjsse/sun/security/ssl/SSLContextImpl;Lorg/openjsse/sun/security/ssl/SSLConfiguration;)V

    .line 199
    .local v0, "s":Lorg/openjsse/sun/security/ssl/SSLSocketImpl;
    invoke-virtual {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->implAccept(Ljava/net/Socket;)V

    .line 200
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLSocketImpl;->doneConnect()V

    .line 201
    return-object v0
.end method

.method public declared-synchronized getEnableSessionCreation()Z
    .locals 1

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableSessionCreation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 182
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledCipherSuites:Ljava/util/List;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/CipherSuite;->namesOf(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 85
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->toStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 107
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getNeedClientAuth()Z
    .locals 2

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUIRED:Lorg/openjsse/sun/security/ssl/ClientAuthType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 128
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 187
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSupportedCipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/CipherSuite;->namesOf(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    .line 102
    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getSupportedProtocolVersions()Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->toStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getUseClientMode()Z
    .locals 1

    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 172
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getWantClientAuth()Z
    .locals 2

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUESTED:Lorg/openjsse/sun/security/ssl/ClientAuthType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 141
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setEnableSessionCreation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iput-boolean p1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enableSessionCreation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 176
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;
    .end local p1    # "flag":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 2
    .param p1, "suites"    # [Ljava/lang/String;

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    .line 91
    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/CipherSuite;->validValuesOf([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledCipherSuites:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 89
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;
    .end local p1    # "suites":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setEnabledProtocols([Ljava/lang/String;)V
    .locals 2
    .param p1, "protocols"    # [Ljava/lang/String;

    monitor-enter p0

    .line 112
    if-eqz p1, :cond_0

    .line 116
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    invoke-static {p1}, Lorg/openjsse/sun/security/ssl/ProtocolVersion;->namesOf([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 111
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;
    .end local p1    # "protocols":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 113
    .restart local p1    # "protocols":[Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocols cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    .end local p1    # "protocols":[Ljava/lang/String;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setNeedClientAuth(Z)V
    .locals 2
    .param p1, "need"    # Z

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    if-eqz p1, :cond_0

    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUIRED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    goto :goto_0

    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;
    :cond_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_NONE:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    :goto_0
    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 120
    .end local p1    # "need":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1
    .param p1, "params"    # Ljavax/net/ssl/SSLParameters;

    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    invoke-virtual {v0, p1}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 191
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;
    .end local p1    # "params":Ljavax/net/ssl/SSLParameters;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setUseClientMode(Z)V
    .locals 5
    .param p1, "useClientMode"    # Z

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-boolean v0, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->isClientMode:Z

    if-eq v0, p1, :cond_4

    .line 154
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    iget-object v1, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v1, v1, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDefaultProtocolVesions(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    if-nez p1, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    .line 157
    :goto_0
    invoke-virtual {v3, v4}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getDefaultProtocolVersions(Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledProtocols:Ljava/util/List;

    .line 160
    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;
    :cond_1
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v3, v3, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledCipherSuites:Ljava/util/List;

    invoke-virtual {v0, v3}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->isDefaultCipherSuiteList(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    iget-object v3, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslContext:Lorg/openjsse/sun/security/ssl/SSLContextImpl;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 163
    :goto_1
    invoke-virtual {v3, v1}, Lorg/openjsse/sun/security/ssl/SSLContextImpl;->getDefaultCipherSuites(Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->enabledCipherSuites:Ljava/util/List;

    .line 166
    :cond_3
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    invoke-virtual {v0}, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->toggleClientMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_4
    monitor-exit p0

    return-void

    .line 152
    .end local p1    # "useClientMode":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setWantClientAuth(Z)V
    .locals 2
    .param p1, "want"    # Z

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;->sslConfig:Lorg/openjsse/sun/security/ssl/SSLConfiguration;

    if-eqz p1, :cond_0

    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_REQUESTED:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    goto :goto_0

    .end local p0    # "this":Lorg/openjsse/sun/security/ssl/SSLServerSocketImpl;
    :cond_0
    sget-object v1, Lorg/openjsse/sun/security/ssl/ClientAuthType;->CLIENT_AUTH_NONE:Lorg/openjsse/sun/security/ssl/ClientAuthType;

    :goto_0
    iput-object v1, v0, Lorg/openjsse/sun/security/ssl/SSLConfiguration;->clientAuthType:Lorg/openjsse/sun/security/ssl/ClientAuthType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 133
    .end local p1    # "want":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SSL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljavax/net/ssl/SSLServerSocket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
