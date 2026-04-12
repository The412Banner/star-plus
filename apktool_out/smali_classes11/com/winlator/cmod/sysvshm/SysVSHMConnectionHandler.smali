.class public Lcom/winlator/cmod/sysvshm/SysVSHMConnectionHandler;
.super Ljava/lang/Object;
.source "SysVSHMConnectionHandler.java"

# interfaces
.implements Lcom/winlator/cmod/xconnector/ConnectionHandler;


# instance fields
.field private final sysVSharedMemory:Lcom/winlator/cmod/sysvshm/SysVSharedMemory;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/sysvshm/SysVSharedMemory;)V
    .locals 0
    .param p1, "sysVSharedMemory"    # Lcom/winlator/cmod/sysvshm/SysVSharedMemory;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/winlator/cmod/sysvshm/SysVSHMConnectionHandler;->sysVSharedMemory:Lcom/winlator/cmod/sysvshm/SysVSharedMemory;

    .line 11
    return-void
.end method


# virtual methods
.method public handleConnectionShutdown(Lcom/winlator/cmod/xconnector/Client;)V
    .locals 0
    .param p1, "client"    # Lcom/winlator/cmod/xconnector/Client;

    .line 20
    return-void
.end method

.method public handleNewConnection(Lcom/winlator/cmod/xconnector/Client;)V
    .locals 1
    .param p1, "client"    # Lcom/winlator/cmod/xconnector/Client;

    .line 15
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->createIOStreams()V

    .line 16
    iget-object v0, p0, Lcom/winlator/cmod/sysvshm/SysVSHMConnectionHandler;->sysVSharedMemory:Lcom/winlator/cmod/sysvshm/SysVSharedMemory;

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/xconnector/Client;->setTag(Ljava/lang/Object;)V

    .line 17
    return-void
.end method
