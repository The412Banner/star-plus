.class public Lcom/winlator/cmod/alsaserver/ALSAClientConnectionHandler;
.super Ljava/lang/Object;
.source "ALSAClientConnectionHandler.java"

# interfaces
.implements Lcom/winlator/cmod/xconnector/ConnectionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleConnectionShutdown(Lcom/winlator/cmod/xconnector/Client;)V
    .locals 1
    .param p1, "client"    # Lcom/winlator/cmod/xconnector/Client;

    .line 15
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/alsaserver/ALSAClient;

    invoke-virtual {v0}, Lcom/winlator/cmod/alsaserver/ALSAClient;->release()V

    .line 16
    return-void
.end method

.method public handleNewConnection(Lcom/winlator/cmod/xconnector/Client;)V
    .locals 1
    .param p1, "client"    # Lcom/winlator/cmod/xconnector/Client;

    .line 9
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->createIOStreams()V

    .line 10
    new-instance v0, Lcom/winlator/cmod/alsaserver/ALSAClient;

    invoke-direct {v0}, Lcom/winlator/cmod/alsaserver/ALSAClient;-><init>()V

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/xconnector/Client;->setTag(Ljava/lang/Object;)V

    .line 11
    return-void
.end method
