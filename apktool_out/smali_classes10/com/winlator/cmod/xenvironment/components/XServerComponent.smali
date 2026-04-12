.class public Lcom/winlator/cmod/xenvironment/components/XServerComponent;
.super Lcom/winlator/cmod/xenvironment/EnvironmentComponent;
.source "XServerComponent.java"


# instance fields
.field private connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

.field private final socketConfig:Lcom/winlator/cmod/xconnector/UnixSocketConfig;

.field private final xServer:Lcom/winlator/cmod/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/XServer;Lcom/winlator/cmod/xconnector/UnixSocketConfig;)V
    .locals 0
    .param p1, "xServer"    # Lcom/winlator/cmod/xserver/XServer;
    .param p2, "socketConfig"    # Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    .line 15
    invoke-direct {p0}, Lcom/winlator/cmod/xenvironment/EnvironmentComponent;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/components/XServerComponent;->xServer:Lcom/winlator/cmod/xserver/XServer;

    .line 17
    iput-object p2, p0, Lcom/winlator/cmod/xenvironment/components/XServerComponent;->socketConfig:Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    .line 18
    return-void
.end method


# virtual methods
.method public getXServer()Lcom/winlator/cmod/xserver/XServer;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/XServerComponent;->xServer:Lcom/winlator/cmod/xserver/XServer;

    return-object v0
.end method

.method public start()V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/XServerComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/components/XServerComponent;->socketConfig:Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    new-instance v2, Lcom/winlator/cmod/xserver/XClientConnectionHandler;

    iget-object v3, p0, Lcom/winlator/cmod/xenvironment/components/XServerComponent;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-direct {v2, v3}, Lcom/winlator/cmod/xserver/XClientConnectionHandler;-><init>(Lcom/winlator/cmod/xserver/XServer;)V

    new-instance v3, Lcom/winlator/cmod/xserver/XClientRequestHandler;

    invoke-direct {v3}, Lcom/winlator/cmod/xserver/XClientRequestHandler;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;-><init>(Lcom/winlator/cmod/xconnector/UnixSocketConfig;Lcom/winlator/cmod/xconnector/ConnectionHandler;Lcom/winlator/cmod/xconnector/RequestHandler;)V

    iput-object v0, p0, Lcom/winlator/cmod/xenvironment/components/XServerComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    .line 24
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/XServerComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->setInitialInputBufferCapacity(I)V

    .line 25
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/XServerComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->setCanReceiveAncillaryMessages(Z)V

    .line 26
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/XServerComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->start()V

    .line 27
    return-void
.end method

.method public stop()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/XServerComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/XServerComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->stop()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/xenvironment/components/XServerComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    .line 35
    :cond_0
    return-void
.end method
