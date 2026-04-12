.class public Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;
.super Lcom/winlator/cmod/xenvironment/EnvironmentComponent;
.source "VirGLRendererComponent.java"

# interfaces
.implements Lcom/winlator/cmod/xconnector/ConnectionHandler;
.implements Lcom/winlator/cmod/xconnector/RequestHandler;


# instance fields
.field private connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

.field private sharedEGLContextPtr:J

.field private final socketConfig:Lcom/winlator/cmod/xconnector/UnixSocketConfig;

.field private final xServer:Lcom/winlator/cmod/xserver/XServer;


# direct methods
.method public static synthetic $r8$lambda$moLWM7W5aj5TLH0XUJFVFoWgO98(Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->lambda$getSharedEGLContext$0(Ljava/lang/Thread;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-string v0, "virglrenderer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/xserver/XServer;Lcom/winlator/cmod/xconnector/UnixSocketConfig;)V
    .locals 0
    .param p1, "xServer"    # Lcom/winlator/cmod/xserver/XServer;
    .param p2, "socketConfig"    # Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    .line 30
    invoke-direct {p0}, Lcom/winlator/cmod/xenvironment/EnvironmentComponent;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->xServer:Lcom/winlator/cmod/xserver/XServer;

    .line 32
    iput-object p2, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->socketConfig:Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    .line 33
    return-void
.end method

.method private native destroyClient(J)V
.end method

.method private native destroyRenderer(J)V
.end method

.method private flushFrontbuffer(II)V
    .locals 7
    .param p1, "drawableId"    # I
    .param p2, "framebuffer"    # I

    .line 100
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/xserver/DrawableManager;->getDrawable(I)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v0

    .line 101
    .local v0, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    if-nez v0, :cond_0

    .line 102
    const-string v1, "VirGLRendererComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drawable not found for drawableId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 106
    :cond_0
    iget-object v1, v0, Lcom/winlator/cmod/xserver/Drawable;->renderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    if-nez p2, :cond_1

    .line 108
    :try_start_0
    const-string v2, "VirGLRendererComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Framebuffer is invalid for drawableId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    monitor-exit v1

    return-void

    .line 112
    :cond_1
    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Drawable;->getTexture()Lcom/winlator/cmod/renderer/Texture;

    move-result-object v2

    .line 113
    .local v2, "texture":Lcom/winlator/cmod/renderer/Texture;
    if-nez v2, :cond_2

    .line 114
    const-string v3, "VirGLRendererComponent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Texture is null for drawableId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 120
    :cond_2
    :try_start_1
    iget-short v3, v0, Lcom/winlator/cmod/xserver/Drawable;->width:S

    iget-short v4, v0, Lcom/winlator/cmod/xserver/Drawable;->height:S

    invoke-virtual {v2, p2, v3, v4}, Lcom/winlator/cmod/renderer/Texture;->copyFromFramebuffer(ISS)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    nop

    .line 125
    .end local v2    # "texture":Lcom/winlator/cmod/renderer/Texture;
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/Drawable;->getOnDrawListener()Ljava/lang/Runnable;

    move-result-object v1

    .line 128
    .local v1, "onDrawListener":Ljava/lang/Runnable;
    if-eqz v1, :cond_3

    .line 129
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 131
    :cond_3
    return-void

    .line 121
    .end local v1    # "onDrawListener":Ljava/lang/Runnable;
    .restart local v2    # "texture":Lcom/winlator/cmod/renderer/Texture;
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "VirGLRendererComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during framebuffer copy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    monitor-exit v1

    return-void

    .line 125
    .end local v2    # "texture":Lcom/winlator/cmod/renderer/Texture;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private native getCurrentEGLContextPtr()J
.end method

.method private getSharedEGLContext()J
    .locals 6

    .line 57
    iget-wide v0, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->sharedEGLContextPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->sharedEGLContextPtr:J

    return-wide v0

    .line 58
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 60
    .local v0, "thread":Ljava/lang/Thread;
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/XServer;->getRenderer()Lcom/winlator/cmod/renderer/GLRenderer;

    move-result-object v1

    .line 61
    .local v1, "renderer":Lcom/winlator/cmod/renderer/GLRenderer;
    iget-object v4, v1, Lcom/winlator/cmod/renderer/GLRenderer;->xServerView:Lcom/winlator/cmod/widget/XServerView;

    new-instance v5, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v0}, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;Ljava/lang/Thread;)V

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/widget/XServerView;->queueEvent(Ljava/lang/Runnable;)V

    .line 68
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 70
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .end local v1    # "renderer":Lcom/winlator/cmod/renderer/GLRenderer;
    nop

    .line 75
    iget-wide v1, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->sharedEGLContextPtr:J

    return-wide v1

    .line 70
    .restart local v1    # "renderer":Lcom/winlator/cmod/renderer/GLRenderer;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "thread":Ljava/lang/Thread;
    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 72
    .end local v1    # "renderer":Lcom/winlator/cmod/renderer/GLRenderer;
    .restart local v0    # "thread":Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    return-wide v2
.end method

.method private native handleNewConnection(I)J
.end method

.method private native handleRequest(J)V
.end method

.method private killConnection(I)V
    .locals 2
    .param p1, "fd"    # I

    .line 52
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    invoke-virtual {v1, p1}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->getClient(I)Lcom/winlator/cmod/xconnector/Client;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->killConnection(Lcom/winlator/cmod/xconnector/Client;)V

    .line 53
    return-void
.end method

.method private synthetic lambda$getSharedEGLContext$0(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 62
    invoke-direct {p0}, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->getCurrentEGLContextPtr()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->sharedEGLContextPtr:J

    .line 64
    monitor-enter p1

    .line 65
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 66
    monitor-exit p1

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleConnectionShutdown(Lcom/winlator/cmod/xconnector/Client;)V
    .locals 2
    .param p1, "client"    # Lcom/winlator/cmod/xconnector/Client;

    .line 80
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 81
    .local v0, "clientPtr":J
    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->destroyClient(J)V

    .line 82
    return-void
.end method

.method public handleNewConnection(Lcom/winlator/cmod/xconnector/Client;)V
    .locals 3
    .param p1, "client"    # Lcom/winlator/cmod/xconnector/Client;

    .line 86
    invoke-direct {p0}, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->getSharedEGLContext()J

    .line 87
    iget-object v0, p1, Lcom/winlator/cmod/xconnector/Client;->clientSocket:Lcom/winlator/cmod/xconnector/ClientSocket;

    iget v0, v0, Lcom/winlator/cmod/xconnector/ClientSocket;->fd:I

    invoke-direct {p0, v0}, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->handleNewConnection(I)J

    move-result-wide v0

    .line 88
    .local v0, "clientPtr":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/winlator/cmod/xconnector/Client;->setTag(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public handleRequest(Lcom/winlator/cmod/xconnector/Client;)Z
    .locals 3
    .param p1, "client"    # Lcom/winlator/cmod/xconnector/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/Client;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 94
    .local v0, "clientPtr":J
    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->handleRequest(J)V

    .line 95
    const/4 v2, 0x1

    return v2
.end method

.method public start()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    new-instance v0, Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    iget-object v1, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->socketConfig:Lcom/winlator/cmod/xconnector/UnixSocketConfig;

    invoke-direct {v0, v1, p0, p0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;-><init>(Lcom/winlator/cmod/xconnector/UnixSocketConfig;Lcom/winlator/cmod/xconnector/ConnectionHandler;Lcom/winlator/cmod/xconnector/RequestHandler;)V

    iput-object v0, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    .line 39
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->start()V

    .line 40
    return-void
.end method

.method public stop()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    invoke-virtual {v0}, Lcom/winlator/cmod/xconnector/XConnectorEpoll;->stop()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/xenvironment/components/VirGLRendererComponent;->connector:Lcom/winlator/cmod/xconnector/XConnectorEpoll;

    .line 48
    :cond_0
    return-void
.end method
