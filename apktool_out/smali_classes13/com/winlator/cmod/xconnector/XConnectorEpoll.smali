.class public Lcom/winlator/cmod/xconnector/XConnectorEpoll;
.super Ljava/lang/Object;
.source "XConnectorEpoll.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private canReceiveAncillaryMessages:Z

.field private final connectedClients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/winlator/cmod/xconnector/Client;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionHandler:Lcom/winlator/cmod/xconnector/ConnectionHandler;

.field private final epollFd:I

.field private epollThread:Ljava/lang/Thread;

.field private initialInputBufferCapacity:I

.field private initialOutputBufferCapacity:I

.field private multithreadedClients:Z

.field private final requestHandler:Lcom/winlator/cmod/xconnector/RequestHandler;

.field private running:Z

.field private final serverFd:I

.field private final shutdownFd:I


# direct methods
.method public static synthetic $r8$lambda$jvMsehrlIjOcK8XKxa2UR4bdjnY(Lcom/winlator/cmod/xconnector/XConnectorEpoll;Lcom/winlator/cmod/xconnector/Client;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->lambda$handleNewConnection$0(Lcom/winlator/cmod/xconnector/Client;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/xconnector/UnixSocketConfig;Lcom/winlator/cmod/xconnector/ConnectionHandler;Lcom/winlator/cmod/xconnector/RequestHandler;)V
    .locals 2
    .param p1, "socketConfig"    # Lcom/winlator/cmod/xconnector/UnixSocketConfig;
    .param p2, "connectionHandler"    # Lcom/winlator/cmod/xconnector/ConnectionHandler;
    .param p3, "requestHandler"    # Lcom/winlator/cmod/xconnector/RequestHandler;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->running:Z

    .line 18
    iput-boolean v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->multithreadedClients:Z

    .line 19
    iput-boolean v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->canReceiveAncillaryMessages:Z

    .line 20
    const/16 v0, 0x1000

    iput v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->initialInputBufferCapacity:I

    .line 21
    iput v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->initialOutputBufferCapacity:I

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->connectedClients:Landroid/util/SparseArray;

    .line 29
    iput-object p2, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->connectionHandler:Lcom/winlator/cmod/xconnector/ConnectionHandler;

    .line 30
    iput-object p3, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->requestHandler:Lcom/winlator/cmod/xconnector/RequestHandler;

    .line 32
    iget-object v0, p1, Lcom/winlator/cmod/xconnector/UnixSocketConfig;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->createAFUnixSocket(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->serverFd:I

    .line 33
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->serverFd:I

    if-ltz v0, :cond_3

    .line 37
    invoke-direct {p0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->createEpollFd()I

    move-result v0

    iput v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollFd:I

    .line 38
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollFd:I

    if-ltz v0, :cond_2

    .line 43
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollFd:I

    iget v1, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->serverFd:I

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->addFdToEpoll(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-direct {p0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->createEventFd()I

    move-result v0

    iput v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->shutdownFd:I

    .line 50
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollFd:I

    iget v1, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->shutdownFd:I

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->addFdToEpoll(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollThread:Ljava/lang/Thread;

    .line 58
    return-void

    .line 51
    :cond_0
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->serverFd:I

    invoke-static {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 52
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->shutdownFd:I

    invoke-static {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 53
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollFd:I

    invoke-static {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to add shutdown fd to epoll."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->serverFd:I

    invoke-static {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 45
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollFd:I

    invoke-static {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to add server fd to epoll."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_2
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->serverFd:I

    invoke-static {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to create epoll fd."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to create an AF_UNIX socket."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native addFdToEpoll(II)Z
.end method

.method public static native closeFd(I)V
.end method

.method private native createAFUnixSocket(Ljava/lang/String;)I
.end method

.method private native createEpollFd()I
.end method

.method private native createEventFd()I
.end method

.method private native doEpollIndefinitely(IIZ)Z
.end method

.method private handleExistingConnection(I)V
    .locals 4
    .param p1, "fd"    # I

    .line 104
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->connectedClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xconnector/Client;

    .line 105
    .local v0, "client":Lcom/winlator/cmod/xconnector/Client;
    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {v0}, Lcom/winlator/cmod/xconnector/Client;->getInputStream()Lcom/winlator/cmod/xconnector/XInputStream;

    move-result-object v1

    .line 109
    .local v1, "inputStream":Lcom/winlator/cmod/xconnector/XInputStream;
    if-eqz v1, :cond_3

    .line 110
    :try_start_0
    iget-boolean v2, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->canReceiveAncillaryMessages:Z

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xconnector/XInputStream;->readMoreData(Z)I

    move-result v2

    if-lez v2, :cond_2

    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, "activePosition":I
    :goto_0
    iget-boolean v3, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->running:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->requestHandler:Lcom/winlator/cmod/xconnector/RequestHandler;

    invoke-interface {v3, v0}, Lcom/winlator/cmod/xconnector/RequestHandler;->handleRequest(Lcom/winlator/cmod/xconnector/Client;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/winlator/cmod/xconnector/XInputStream;->getActivePosition()I

    move-result v3

    move v2, v3

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xconnector/XInputStream;->setActivePosition(I)V

    .line 114
    .end local v2    # "activePosition":I
    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->killConnection(Lcom/winlator/cmod/xconnector/Client;)V

    goto :goto_1

    .line 117
    :cond_3
    iget-object v2, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->requestHandler:Lcom/winlator/cmod/xconnector/RequestHandler;

    invoke-interface {v2, v0}, Lcom/winlator/cmod/xconnector/RequestHandler;->handleRequest(Lcom/winlator/cmod/xconnector/Client;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    goto :goto_2

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->killConnection(Lcom/winlator/cmod/xconnector/Client;)V

    .line 122
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method private handleNewConnection(I)V
    .locals 3
    .param p1, "fd"    # I

    .line 88
    new-instance v0, Lcom/winlator/cmod/xconnector/Client;

    new-instance v1, Lcom/winlator/cmod/xconnector/ClientSocket;

    invoke-direct {v1, p1}, Lcom/winlator/cmod/xconnector/ClientSocket;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lcom/winlator/cmod/xconnector/Client;-><init>(Lcom/winlator/cmod/xconnector/XConnectorEpoll;Lcom/winlator/cmod/xconnector/ClientSocket;)V

    .line 89
    .local v0, "client":Lcom/winlator/cmod/xconnector/Client;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/winlator/cmod/xconnector/Client;->connected:Z

    .line 90
    iget-boolean v1, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->multithreadedClients:Z

    if-eqz v1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->createEventFd()I

    move-result v1

    iput v1, v0, Lcom/winlator/cmod/xconnector/Client;->shutdownFd:I

    .line 92
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/winlator/cmod/xconnector/XConnectorEpoll$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/xconnector/XConnectorEpoll;Lcom/winlator/cmod/xconnector/Client;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/winlator/cmod/xconnector/Client;->pollThread:Ljava/lang/Thread;

    .line 96
    iget-object v1, v0, Lcom/winlator/cmod/xconnector/Client;->pollThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->connectionHandler:Lcom/winlator/cmod/xconnector/ConnectionHandler;

    invoke-interface {v1, v0}, Lcom/winlator/cmod/xconnector/ConnectionHandler;->handleNewConnection(Lcom/winlator/cmod/xconnector/Client;)V

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->connectedClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    return-void
.end method

.method private synthetic lambda$handleNewConnection$0(Lcom/winlator/cmod/xconnector/Client;)V
    .locals 2
    .param p1, "client"    # Lcom/winlator/cmod/xconnector/Client;

    .line 93
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->connectionHandler:Lcom/winlator/cmod/xconnector/ConnectionHandler;

    invoke-interface {v0, p1}, Lcom/winlator/cmod/xconnector/ConnectionHandler;->handleNewConnection(Lcom/winlator/cmod/xconnector/Client;)V

    .line 94
    :goto_0
    iget-boolean v0, p1, Lcom/winlator/cmod/xconnector/Client;->connected:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/winlator/cmod/xconnector/Client;->clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;

    iget v0, v0, Lcom/winlator/cmod/xconnector/ClientSocket;->fd:I

    iget v1, p1, Lcom/winlator/cmod/xconnector/Client;->shutdownFd:I

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->waitForSocketRead(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method private native removeFdFromEpoll(II)V
.end method

.method private requestShutdown()V
    .locals 4

    .line 198
    const/16 v0, 0x8

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 199
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    .line 200
    new-instance v1, Lcom/winlator/cmod/xconnector/ClientSocket;

    iget v2, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->shutdownFd:I

    invoke-direct {v1, v2}, Lcom/winlator/cmod/xconnector/ClientSocket;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/winlator/cmod/xconnector/ClientSocket;->write(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "data":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 203
    return-void
.end method

.method private shutdown()V
    .locals 2

    .line 152
    nop

    :goto_0
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->connectedClients:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->connectedClients:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->connectedClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xconnector/Client;

    .line 154
    .local v0, "client":Lcom/winlator/cmod/xconnector/Client;
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->killConnection(Lcom/winlator/cmod/xconnector/Client;)V

    .line 155
    .end local v0    # "client":Lcom/winlator/cmod/xconnector/Client;
    goto :goto_0

    .line 157
    :cond_0
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollFd:I

    iget v1, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->serverFd:I

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->removeFdFromEpoll(II)V

    .line 158
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollFd:I

    iget v1, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->shutdownFd:I

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->removeFdFromEpoll(II)V

    .line 159
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->serverFd:I

    invoke-static {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 160
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->shutdownFd:I

    invoke-static {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 161
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollFd:I

    invoke-static {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 162
    return-void
.end method

.method private native waitForSocketRead(II)Z
.end method


# virtual methods
.method public getClient(I)Lcom/winlator/cmod/xconnector/Client;
    .locals 1
    .param p1, "fd"    # I

    .line 125
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->connectedClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xconnector/Client;

    return-object v0
.end method

.method public getInitialInputBufferCapacity()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->initialInputBufferCapacity:I

    return v0
.end method

.method public getInitialOutputBufferCapacity()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->initialOutputBufferCapacity:I

    return v0
.end method

.method public isCanReceiveAncillaryMessages()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->canReceiveAncillaryMessages:Z

    return v0
.end method

.method public isMultithreadedClients()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->multithreadedClients:Z

    return v0
.end method

.method public killConnection(Lcom/winlator/cmod/xconnector/Client;)V
    .locals 2
    .param p1, "client"    # Lcom/winlator/cmod/xconnector/Client;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/winlator/cmod/xconnector/Client;->connected:Z

    .line 130
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->connectionHandler:Lcom/winlator/cmod/xconnector/ConnectionHandler;

    invoke-interface {v0, p1}, Lcom/winlator/cmod/xconnector/ConnectionHandler;->handleConnectionShutdown(Lcom/winlator/cmod/xconnector/Client;)V

    .line 131
    iget-boolean v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->multithreadedClients:Z

    if-eqz v0, :cond_2

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p1, Lcom/winlator/cmod/xconnector/Client;->pollThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_1

    .line 133
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->requestShutdown()V

    .line 135
    :goto_0
    iget-object v0, p1, Lcom/winlator/cmod/xconnector/Client;->pollThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p1, Lcom/winlator/cmod/xconnector/Client;->pollThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 139
    :catch_0
    move-exception v0

    :goto_1
    goto :goto_0

    .line 142
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/winlator/cmod/xconnector/Client;->pollThread:Ljava/lang/Thread;

    .line 144
    :cond_1
    iget v0, p1, Lcom/winlator/cmod/xconnector/Client;->shutdownFd:I

    invoke-static {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    goto :goto_2

    .line 146
    :cond_2
    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollFd:I

    iget-object v1, p1, Lcom/winlator/cmod/xconnector/Client;->clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;

    iget v1, v1, Lcom/winlator/cmod/xconnector/ClientSocket;->fd:I

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->removeFdFromEpoll(II)V

    .line 147
    :goto_2
    iget-object v0, p1, Lcom/winlator/cmod/xconnector/Client;->clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;

    iget v0, v0, Lcom/winlator/cmod/xconnector/ClientSocket;->fd:I

    invoke-static {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->closeFd(I)V

    .line 148
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->connectedClients:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/winlator/cmod/xconnector/Client;->clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;

    iget v1, v1, Lcom/winlator/cmod/xconnector/ClientSocket;->fd:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 149
    return-void
.end method

.method public run()V
    .locals 3

    .line 82
    :goto_0
    iget-boolean v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->running:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollFd:I

    iget v1, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->serverFd:I

    iget-boolean v2, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->multithreadedClients:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->doEpollIndefinitely(IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->shutdown()V

    .line 84
    return-void
.end method

.method public setCanReceiveAncillaryMessages(Z)V
    .locals 0
    .param p1, "canReceiveAncillaryMessages"    # Z

    .line 193
    iput-boolean p1, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->canReceiveAncillaryMessages:Z

    .line 194
    return-void
.end method

.method public setInitialInputBufferCapacity(I)V
    .locals 0
    .param p1, "initialInputBufferCapacity"    # I

    .line 169
    iput p1, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->initialInputBufferCapacity:I

    .line 170
    return-void
.end method

.method public setInitialOutputBufferCapacity(I)V
    .locals 0
    .param p1, "initialOutputBufferCapacity"    # I

    .line 177
    iput p1, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->initialOutputBufferCapacity:I

    .line 178
    return-void
.end method

.method public setMultithreadedClients(Z)V
    .locals 0
    .param p1, "multithreadedClients"    # Z

    .line 185
    iput-boolean p1, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->multithreadedClients:Z

    .line 186
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    .line 61
    :try_start_0
    iget-boolean v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->running:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->running:Z

    .line 63
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 61
    .end local p0    # "this":Lcom/winlator/cmod/xconnector/XConnectorEpoll;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 67
    :try_start_0
    iget-boolean v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->running:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->running:Z

    .line 69
    invoke-direct {p0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->requestShutdown()V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    goto :goto_0

    .end local p0    # "this":Lcom/winlator/cmod/xconnector/XConnectorEpoll;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->epollThread:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 67
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
