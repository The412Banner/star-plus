.class public Lcom/winlator/cmod/xserver/XClientConnectionHandler;
.super Ljava/lang/Object;
.source "XClientConnectionHandler.java"

# interfaces
.implements Lcom/winlator/cmod/xconnector/ConnectionHandler;


# instance fields
.field private final xServer:Lcom/winlator/cmod/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/XServer;)V
    .locals 0
    .param p1, "xServer"    # Lcom/winlator/cmod/xserver/XServer;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/winlator/cmod/xserver/XClientConnectionHandler;->xServer:Lcom/winlator/cmod/xserver/XServer;

    .line 11
    return-void
.end method


# virtual methods
.method public handleConnectionShutdown(Lcom/winlator/cmod/xconnector/Client;)V
    .locals 1
    .param p1, "client"    # Lcom/winlator/cmod/xconnector/Client;

    .line 21
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/XClient;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XClient;->freeResources()V

    .line 22
    return-void
.end method

.method public handleNewConnection(Lcom/winlator/cmod/xconnector/Client;)V
    .locals 4
    .param p1, "client"    # Lcom/winlator/cmod/xconnector/Client;

    .line 15
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->createIOStreams()V

    .line 16
    new-instance v0, Lcom/winlator/cmod/xserver/XClient;

    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClientConnectionHandler;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->getInputStream()Lcom/winlator/cmod/xconnector/XInputStream;

    move-result-object v2

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->getOutputStream()Lcom/winlator/cmod/xconnector/XOutputStream;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/winlator/cmod/xserver/XClient;-><init>(Lcom/winlator/cmod/xserver/XServer;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/xconnector/Client;->setTag(Ljava/lang/Object;)V

    .line 17
    return-void
.end method
