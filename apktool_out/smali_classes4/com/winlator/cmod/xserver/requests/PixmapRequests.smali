.class public abstract Lcom/winlator/cmod/xserver/requests/PixmapRequests;
.super Ljava/lang/Object;
.source "PixmapRequests.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPixmap(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 9
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getRequestData()B

    move-result v0

    .line 15
    .local v0, "depth":B
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    .line 16
    .local v1, "pixmapId":I
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v2

    .line 17
    .local v2, "drawableId":I
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v3

    .line 18
    .local v3, "width":S
    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readShort()S

    move-result v4

    .line 20
    .local v4, "height":S
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/xserver/XClient;->isValidResourceId(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 22
    iget-object v5, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v5, v5, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-virtual {v5, v2}, Lcom/winlator/cmod/xserver/DrawableManager;->getDrawable(I)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v5

    .line 23
    .local v5, "drawable":Lcom/winlator/cmod/xserver/Drawable;
    if-eqz v5, :cond_2

    .line 25
    iget-object v6, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-virtual {v6, v1, v3, v4, v0}, Lcom/winlator/cmod/xserver/DrawableManager;->createDrawable(ISSB)Lcom/winlator/cmod/xserver/Drawable;

    move-result-object v6

    .line 26
    .local v6, "backingStore":Lcom/winlator/cmod/xserver/Drawable;
    if-eqz v6, :cond_1

    .line 27
    iget-object v7, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual {v7, v6}, Lcom/winlator/cmod/xserver/PixmapManager;->createPixmap(Lcom/winlator/cmod/xserver/Drawable;)Lcom/winlator/cmod/xserver/Pixmap;

    move-result-object v7

    .line 28
    .local v7, "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    if-eqz v7, :cond_0

    .line 29
    invoke-virtual {p0, v7}, Lcom/winlator/cmod/xserver/XClient;->registerAsOwnerOfResource(Lcom/winlator/cmod/xserver/XResource;)V

    .line 30
    return-void

    .line 28
    :cond_0
    new-instance v8, Lcom/winlator/cmod/xserver/errors/BadIdChoice;

    invoke-direct {v8, v1}, Lcom/winlator/cmod/xserver/errors/BadIdChoice;-><init>(I)V

    throw v8

    .line 26
    .end local v7    # "pixmap":Lcom/winlator/cmod/xserver/Pixmap;
    :cond_1
    new-instance v7, Lcom/winlator/cmod/xserver/errors/BadIdChoice;

    invoke-direct {v7, v1}, Lcom/winlator/cmod/xserver/errors/BadIdChoice;-><init>(I)V

    throw v7

    .line 23
    .end local v6    # "backingStore":Lcom/winlator/cmod/xserver/Drawable;
    :cond_2
    new-instance v6, Lcom/winlator/cmod/xserver/errors/BadDrawable;

    invoke-direct {v6, v2}, Lcom/winlator/cmod/xserver/errors/BadDrawable;-><init>(I)V

    throw v6

    .line 20
    .end local v5    # "drawable":Lcom/winlator/cmod/xserver/Drawable;
    :cond_3
    new-instance v5, Lcom/winlator/cmod/xserver/errors/BadIdChoice;

    invoke-direct {v5, v1}, Lcom/winlator/cmod/xserver/errors/BadIdChoice;-><init>(I)V

    throw v5
.end method

.method public static freePixmap(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 2
    .param p0, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p1, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p2, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winlator/cmod/xserver/errors/XRequestError;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual {p1}, Lcom/winlator/cmod/xconnector/XInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/PixmapManager;->freePixmap(I)V

    .line 34
    return-void
.end method
