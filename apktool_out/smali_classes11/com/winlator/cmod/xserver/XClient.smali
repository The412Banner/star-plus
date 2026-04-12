.class public Lcom/winlator/cmod/xserver/XClient;
.super Ljava/lang/Object;
.source "XClient.java"

# interfaces
.implements Lcom/winlator/cmod/xserver/XResourceManager$OnResourceLifecycleListener;


# instance fields
.field private authenticated:Z

.field private final eventListeners:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/winlator/cmod/xserver/Window;",
            "Lcom/winlator/cmod/xserver/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private initialLength:I

.field private final inputStream:Lcom/winlator/cmod/xconnector/XInputStream;

.field private final outputStream:Lcom/winlator/cmod/xconnector/XOutputStream;

.field private requestData:B

.field private requestLength:I

.field public final resourceIDBase:Ljava/lang/Integer;

.field private final resources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/xserver/XResource;",
            ">;"
        }
    .end annotation
.end field

.field private sequenceNumber:S

.field public final xServer:Lcom/winlator/cmod/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/XServer;Lcom/winlator/cmod/xconnector/XInputStream;Lcom/winlator/cmod/xconnector/XOutputStream;)V
    .locals 3
    .param p1, "xServer"    # Lcom/winlator/cmod/xserver/XServer;
    .param p2, "inputStream"    # Lcom/winlator/cmod/xconnector/XInputStream;
    .param p3, "outputStream"    # Lcom/winlator/cmod/xconnector/XOutputStream;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/xserver/XClient;->authenticated:Z

    .line 16
    iput-short v0, p0, Lcom/winlator/cmod/xserver/XClient;->sequenceNumber:S

    .line 22
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->resources:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    .line 27
    iput-object p2, p0, Lcom/winlator/cmod/xserver/XClient;->inputStream:Lcom/winlator/cmod/xconnector/XInputStream;

    .line 28
    iput-object p3, p0, Lcom/winlator/cmod/xserver/XClient;->outputStream:Lcom/winlator/cmod/xconnector/XOutputStream;

    .line 30
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/XServer;->lockAll()Lcom/winlator/cmod/xserver/XLock;

    move-result-object v0

    .line 31
    .local v0, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_0
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XServer;->resourceIDs:Lcom/winlator/cmod/xserver/ResourceIDs;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/ResourceIDs;->get()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->resourceIDBase:Ljava/lang/Integer;

    .line 32
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v1, p0}, Lcom/winlator/cmod/xserver/WindowManager;->addOnResourceLifecycleListener(Lcom/winlator/cmod/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 33
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual {v1, p0}, Lcom/winlator/cmod/xserver/PixmapManager;->addOnResourceLifecycleListener(Lcom/winlator/cmod/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 34
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    invoke-virtual {v1, p0}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->addOnResourceLifecycleListener(Lcom/winlator/cmod/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 35
    iget-object v1, p1, Lcom/winlator/cmod/xserver/XServer;->cursorManager:Lcom/winlator/cmod/xserver/CursorManager;

    invoke-virtual {v1, p0}, Lcom/winlator/cmod/xserver/CursorManager;->addOnResourceLifecycleListener(Lcom/winlator/cmod/xserver/XResourceManager$OnResourceLifecycleListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 37
    .end local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_0
    return-void

    .line 30
    .restart local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method


# virtual methods
.method public freeResources()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XServer;->lockAll()Lcom/winlator/cmod/xserver/XLock;

    move-result-object v0

    .line 76
    .local v0, "lock":Lcom/winlator/cmod/xserver/XLock;
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->resources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 77
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->resources:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->resources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/XResource;

    .line 78
    .local v1, "resource":Lcom/winlator/cmod/xserver/XResource;
    instance-of v2, v1, Lcom/winlator/cmod/xserver/Window;

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget v3, v1, Lcom/winlator/cmod/xserver/XResource;->id:I

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/WindowManager;->destroyWindow(I)V

    goto :goto_1

    .line 81
    :cond_0
    instance-of v2, v1, Lcom/winlator/cmod/xserver/Pixmap;

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    iget v3, v1, Lcom/winlator/cmod/xserver/XResource;->id:I

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/PixmapManager;->freePixmap(I)V

    goto :goto_1

    .line 84
    :cond_1
    instance-of v2, v1, Lcom/winlator/cmod/xserver/GraphicsContext;

    if-eqz v2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    iget v3, v1, Lcom/winlator/cmod/xserver/XResource;->id:I

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->freeGraphicsContext(I)V

    goto :goto_1

    .line 87
    :cond_2
    instance-of v2, v1, Lcom/winlator/cmod/xserver/Cursor;

    if-eqz v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->cursorManager:Lcom/winlator/cmod/xserver/CursorManager;

    iget v3, v1, Lcom/winlator/cmod/xserver/XResource;->id:I

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/CursorManager;->freeCursor(I)V

    .line 90
    .end local v1    # "resource":Lcom/winlator/cmod/xserver/XResource;
    :cond_3
    :goto_1
    goto :goto_0

    .line 92
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 93
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 94
    .local v1, "i":I
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v1}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winlator/cmod/xserver/Window;

    iget-object v3, p0, Lcom/winlator/cmod/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v1}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/xserver/EventListener;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/xserver/Window;->removeEventListener(Lcom/winlator/cmod/xserver/EventListener;)V

    .line 95
    .end local v1    # "i":I
    goto :goto_2

    .line 97
    :cond_5
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v1, p0}, Lcom/winlator/cmod/xserver/WindowManager;->removeOnResourceLifecycleListener(Lcom/winlator/cmod/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 98
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-virtual {v1, p0}, Lcom/winlator/cmod/xserver/PixmapManager;->removeOnResourceLifecycleListener(Lcom/winlator/cmod/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 99
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    invoke-virtual {v1, p0}, Lcom/winlator/cmod/xserver/GraphicsContextManager;->removeOnResourceLifecycleListener(Lcom/winlator/cmod/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 100
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->cursorManager:Lcom/winlator/cmod/xserver/CursorManager;

    invoke-virtual {v1, p0}, Lcom/winlator/cmod/xserver/CursorManager;->removeOnResourceLifecycleListener(Lcom/winlator/cmod/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 101
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->resourceIDs:Lcom/winlator/cmod/xserver/ResourceIDs;

    iget-object v2, p0, Lcom/winlator/cmod/xserver/XClient;->resourceIDBase:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/ResourceIDs;->free(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 103
    .end local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_6
    return-void

    .line 75
    .restart local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_7

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v1
.end method

.method public generateSequenceNumber()V
    .locals 1

    .line 106
    iget-short v0, p0, Lcom/winlator/cmod/xserver/XClient;->sequenceNumber:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/winlator/cmod/xserver/XClient;->sequenceNumber:S

    .line 107
    return-void
.end method

.method public getEventMaskForWindow(Lcom/winlator/cmod/xserver/Window;)Lcom/winlator/cmod/xserver/Bitmask;
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 148
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/EventListener;

    .line 149
    .local v0, "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/winlator/cmod/xserver/EventListener;->eventMask:Lcom/winlator/cmod/xserver/Bitmask;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-direct {v1}, Lcom/winlator/cmod/xserver/Bitmask;-><init>()V

    :goto_0
    return-object v1
.end method

.method public getInputStream()Lcom/winlator/cmod/xconnector/XInputStream;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->inputStream:Lcom/winlator/cmod/xconnector/XInputStream;

    return-object v0
.end method

.method public getOutputStream()Lcom/winlator/cmod/xconnector/XOutputStream;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->outputStream:Lcom/winlator/cmod/xconnector/XOutputStream;

    return-object v0
.end method

.method public getRemainingRequestLength()I
    .locals 2

    .line 131
    iget v0, p0, Lcom/winlator/cmod/xserver/XClient;->initialLength:I

    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->inputStream:Lcom/winlator/cmod/xconnector/XInputStream;

    invoke-virtual {v1}, Lcom/winlator/cmod/xconnector/XInputStream;->available()I

    move-result v1

    sub-int/2addr v0, v1

    .line 132
    .local v0, "actualLength":I
    iget v1, p0, Lcom/winlator/cmod/xserver/XClient;->requestLength:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public getRequestData()B
    .locals 1

    .line 123
    iget-byte v0, p0, Lcom/winlator/cmod/xserver/XClient;->requestData:B

    return v0
.end method

.method public getRequestLength()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/winlator/cmod/xserver/XClient;->requestLength:I

    return v0
.end method

.method public getSequenceNumber()S
    .locals 1

    .line 110
    iget-short v0, p0, Lcom/winlator/cmod/xserver/XClient;->sequenceNumber:S

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/winlator/cmod/xserver/XClient;->authenticated:Z

    return v0
.end method

.method public isInterestedIn(ILcom/winlator/cmod/xserver/Window;)Z
    .locals 2
    .param p1, "eventId"    # I
    .param p2, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 62
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/EventListener;

    .line 63
    .local v0, "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/xserver/EventListener;->isInterestedIn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isValidResourceId(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 159
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->resourceIDs:Lcom/winlator/cmod/xserver/ResourceIDs;

    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->resourceIDBase:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/winlator/cmod/xserver/ResourceIDs;->isInInterval(II)Z

    move-result v0

    return v0
.end method

.method public onFreeResource(Lcom/winlator/cmod/xserver/XResource;)V
    .locals 1
    .param p1, "resource"    # Lcom/winlator/cmod/xserver/XResource;

    .line 154
    instance-of v0, p1, Lcom/winlator/cmod/xserver/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->resources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public registerAsOwnerOfResource(Lcom/winlator/cmod/xserver/XResource;)V
    .locals 1
    .param p1, "resource"    # Lcom/winlator/cmod/xserver/XResource;

    .line 40
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->resources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public sendEvent(Lcom/winlator/cmod/xserver/events/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/winlator/cmod/xserver/events/Event;

    .line 54
    :try_start_0
    iget-short v0, p0, Lcom/winlator/cmod/xserver/XClient;->sequenceNumber:S

    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->outputStream:Lcom/winlator/cmod/xconnector/XOutputStream;

    invoke-virtual {p1, v0, v1}, Lcom/winlator/cmod/xserver/events/Event;->send(SLcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 59
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public setAuthenticated(Z)V
    .locals 0
    .param p1, "authenticated"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/winlator/cmod/xserver/XClient;->authenticated:Z

    .line 72
    return-void
.end method

.method public setEventListenerForWindow(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Bitmask;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "eventMask"    # Lcom/winlator/cmod/xserver/Bitmask;

    .line 44
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/EventListener;

    .line 45
    .local v0, "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/xserver/Window;->removeEventListener(Lcom/winlator/cmod/xserver/EventListener;)V

    .line 46
    :cond_0
    invoke-virtual {p2}, Lcom/winlator/cmod/xserver/Bitmask;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 47
    :cond_1
    new-instance v1, Lcom/winlator/cmod/xserver/EventListener;

    invoke-direct {v1, p0, p2}, Lcom/winlator/cmod/xserver/EventListener;-><init>(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xserver/Bitmask;)V

    move-object v0, v1

    .line 48
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XClient;->eventListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p1, v0}, Lcom/winlator/cmod/xserver/Window;->addEventListener(Lcom/winlator/cmod/xserver/EventListener;)V

    .line 50
    return-void
.end method

.method public setRequestData(B)V
    .locals 0
    .param p1, "requestData"    # B

    .line 127
    iput-byte p1, p0, Lcom/winlator/cmod/xserver/XClient;->requestData:B

    .line 128
    return-void
.end method

.method public setRequestLength(I)V
    .locals 1
    .param p1, "requestLength"    # I

    .line 118
    iput p1, p0, Lcom/winlator/cmod/xserver/XClient;->requestLength:I

    .line 119
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->inputStream:Lcom/winlator/cmod/xconnector/XInputStream;

    invoke-virtual {v0}, Lcom/winlator/cmod/xconnector/XInputStream;->available()I

    move-result v0

    iput v0, p0, Lcom/winlator/cmod/xserver/XClient;->initialLength:I

    .line 120
    return-void
.end method

.method public skipRequest()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XClient;->inputStream:Lcom/winlator/cmod/xconnector/XInputStream;

    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XClient;->getRemainingRequestLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xconnector/XInputStream;->skip(I)V

    .line 137
    return-void
.end method
