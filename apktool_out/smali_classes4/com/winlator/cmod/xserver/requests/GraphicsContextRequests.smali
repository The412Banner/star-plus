.class public abstract Lcom/winlator/cmod/xserver/requests/GraphicsContextRequests;
.super Ljava/lang/Object;
.source "GraphicsContextRequests.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeGC(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 4
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 44
    .local v0, "gcId":I
    new-instance v1, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/winlator/cmod/xserver/Bitmask;-><init>(I)V

    .line 45
    .local v1, "valueMask":Lcom/winlator/cmod/xserver/Bitmask;
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    invoke-virtual {v2, v0}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->getGraphicsContext(I)Lcom/winlator/cmod/xserver/GraphicsContext;

    move-result-object v2

    .line 46
    .local v2, "graphicsContext":Lcom/winlator/cmod/xserver/GraphicsContext;
    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Bitmask;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    invoke-virtual {v3, v2, v1, p1}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->updateGraphicsContext(Lcom/winlator/cmod/xserver/GraphicsContext;Lcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xconnector/XInputStream;)V

    .line 49
    :cond_0
    return-void

    .line 46
    :cond_1
    new-instance v3, Lcom/winlator/cmod/xserver/errors/BadGraphicsContext;

    invoke-direct {v3, v0}, Lcom/winlator/cmod/xserver/errors/BadGraphicsContext;-><init>(I)V

    throw v3
.end method

.method public static copyGC(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 6
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 33
    .local v0, "srcGCId":I
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 34
    .local v1, "dstGCId":I
    new-instance v2, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/winlator/cmod/xserver/Bitmask;-><init>(I)V

    .line 35
    .local v2, "valueMask":Lcom/winlator/cmod/xserver/Bitmask;
    iget-object v3, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    invoke-virtual {v3, v0}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->getGraphicsContext(I)Lcom/winlator/cmod/xserver/GraphicsContext;

    move-result-object v3

    .line 36
    .local v3, "srcGC":Lcom/winlator/cmod/xserver/GraphicsContext;
    iget-object v4, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    invoke-virtual {v4, v1}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->getGraphicsContext(I)Lcom/winlator/cmod/xserver/GraphicsContext;

    move-result-object v4

    .line 37
    .local v4, "dstGC":Lcom/winlator/cmod/xserver/GraphicsContext;
    if-eqz v3, :cond_2

    .line 38
    if-eqz v4, :cond_1

    .line 39
    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Bitmask;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v5, v5, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    invoke-virtual {v5, v3, v4, v2}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->copyGraphicsContext(Lcom/winlator/cmod/xserver/GraphicsContext;Lcom/winlator/cmod/xserver/GraphicsContext;Lcom/winlator/cmod/xserver/Bitmask;)V

    .line 40
    :cond_0
    return-void

    .line 38
    :cond_1
    new-instance v5, Lcom/winlator/cmod/xserver/errors/BadGraphicsContext;

    invoke-direct {v5, v1}, Lcom/winlator/cmod/xserver/errors/BadGraphicsContext;-><init>(I)V

    throw v5

    .line 37
    :cond_2
    new-instance v5, Lcom/winlator/cmod/xserver/errors/BadGraphicsContext;

    invoke-direct {v5, v0}, Lcom/winlator/cmod/xserver/errors/BadGraphicsContext;-><init>(I)V

    throw v5
.end method

.method public static createGC(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 6
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 16
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v0

    .line 17
    .local v0, "gcId":I
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 18
    .local v1, "drawableId":I
    new-instance v2, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/winlator/cmod/xserver/Bitmask;-><init>(I)V

    .line 20
    .local v2, "valueMask":Lcom/winlator/cmod/xserver/Bitmask;
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/XClient;->isValidResourceId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 22
    iget-object v3, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-virtual {v3, v1}, Lcom/winlator/cmod/xserver/DrawableManager;->getDrawable(I)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v3

    .line 23
    .local v3, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    if-eqz v3, :cond_2

    .line 24
    iget-object v4, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    invoke-virtual {v4, v0, v3}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->createGraphicsContext(ILcom/winlator/cmod/xserver/Drawable;)Lcom/winlator/cmod/xserver/GraphicsContext;

    move-result-object v4

    .line 25
    .local v4, "graphicsContext":Lcom/winlator/cmod/xserver/GraphicsContext;
    if-eqz v4, :cond_1

    .line 27
    invoke-virtual {p0, v4}, Lcom/winlator/cmod/xserver/XClient;->registerAsOwnerOfResource(Lcom/winlator/cmod/xserver/XResource;)V

    .line 28
    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Bitmask;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v5, v5, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    invoke-virtual {v5, v4, v2, p1}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->updateGraphicsContext(Lcom/winlator/cmod/xserver/GraphicsContext;Lcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xconnector/XInputStream;)V

    .line 29
    :cond_0
    return-void

    .line 25
    :cond_1
    new-instance v5, Lcom/winlator/cmod/xserver/errors/BadIdChoice;

    invoke-direct {v5, v0}, Lcom/winlator/cmod/xserver/errors/BadIdChoice;-><init>(I)V

    throw v5

    .line 23
    .end local v4    # "graphicsContext":Lcom/winlator/cmod/xserver/GraphicsContext;
    :cond_2
    new-instance v4, Lcom/winlator/cmod/xserver/errors/BadDrawable;

    invoke-direct {v4, v1}, Lcom/winlator/cmod/xserver/errors/BadDrawable;-><init>(I)V

    throw v4

    .line 20
    .end local v3    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    :cond_3
    new-instance v3, Lcom/winlator/cmod/xserver/errors/BadIdChoice;

    invoke-direct {v3, v0}, Lcom/winlator/cmod/xserver/errors/BadIdChoice;-><init>(I)V

    throw v3
.end method

.method public static freeGC(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 2
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->freeGraphicsContext(I)V

    .line 53
    return-void
.end method
