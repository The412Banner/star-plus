.class public Lcom/winlator/cmod/xenvironment/components/ALSAServerComponent;
.super Lcom/winlator/cmod/xenvironment/EnvironmentComponent;
.source "ALSAServerComponent.java"


# instance fields
.field private connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

.field private final socketConfig:Lcom/winlator/cmod/xconnector/UnixSocketConfig;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xconnector/UnixSocketConfig;)V
    .locals 0
    .param p1, "socketConfig"    # Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    .line 13
    invoke-direct {p0}, Lcom/winlator/cmod/xenvironment/EnvironmentComponent;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/components/ALSAServerComponent;->socketConfig:Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    .line 15
    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/ALSAServerComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/components/ALSAServerComponent;->socketConfig:Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    new-instance v2, Lcom/winlator/cmod/alsaserver/ALSAClientConnectionHandler;

    invoke-direct {v2}, Lcom/winlator/cmod/alsaserver/ALSAClientConnectionHandler;-><init>()V

    new-instance v3, Lcom/winlator/cmod/alsaserver/ALSARequestHandler;

    invoke-direct {v3}, Lcom/winlator/cmod/alsaserver/ALSARequestHandler;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;-><init>(Lcom/winlator/cmod/xconnector/UnixSocketConfig;Lcom/winlator/cmod/xconnector/ConnectionHandler;Lcom/winlator/cmod/xconnector/RequestHandler;)V

    iput-object v0, p0, Lcom/winlator/cmod/xenvironment/components/ALSAServerComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    .line 21
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/ALSAServerComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->setMultithreadedClients(Z)V

    .line 22
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/ALSAServerComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->start()V

    .line 23
    return-void
.end method

.method public stop()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/ALSAServerComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/ALSAServerComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->stop()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/xenvironment/components/ALSAServerComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    .line 31
    :cond_0
    return-void
.end method
