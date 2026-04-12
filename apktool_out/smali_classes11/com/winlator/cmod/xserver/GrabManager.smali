.class public Lcom/winlator/cmod/xserver/GrabManager;
.super Ljava/lang/Object;
.source "GrabManager.java"

# interfaces
.implements Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;


# instance fields
.field private eventListener:Lcom/winlator/cmod/xserver/EventListener;

.field private ownerEvents:Z

.field private releaseWithButtons:Z

.field private window:Lcom/winlator/cmod/xserver/Window;

.field private final xServer:Lcom/winlator/cmod/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/XServer;)V
    .locals 1
    .param p1, "xServer"    # Lcom/winlator/cmod/xserver/XServer;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/winlator/cmod/xserver/GrabManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    .line 15
    iget-object v0, p1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v0, p0}, Lcom/winlator/cmod/xserver/WindowManager;->addOnWindowModificationListener(Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;)V

    .line 16
    return-void
.end method

.method private activatePointerGrab(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/EventListener;ZZ)V
    .locals 3
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "eventListener"    # Lcom/winlator/cmod/xserver/EventListener;
    .param p3, "ownerEvents"    # Z
    .param p4, "releaseWithButtons"    # Z

    .line 54
    iget-object v0, p0, Lcom/winlator/cmod/xserver/GrabManager;->window:Lcom/winlator/cmod/xserver/Window;

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/winlator/cmod/xserver/GrabManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->inputDeviceManager:Lcom/winlator/cmod/xserver/InputDeviceManager;

    iget-object v1, p0, Lcom/winlator/cmod/xserver/GrabManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->inputDeviceManager:Lcom/winlator/cmod/xserver/InputDeviceManager;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/InputDeviceManager;->getPointWindow()Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    sget-object v2, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;->GRAB:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    invoke-virtual {v0, v1, p1, v2}, Lcom/winlator/cmod/xserver/InputDeviceManager;->sendEnterLeaveNotify(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;)V

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/winlator/cmod/xserver/GrabManager;->window:Lcom/winlator/cmod/xserver/Window;

    .line 58
    iput-boolean p4, p0, Lcom/winlator/cmod/xserver/GrabManager;->releaseWithButtons:Z

    .line 59
    iput-boolean p3, p0, Lcom/winlator/cmod/xserver/GrabManager;->ownerEvents:Z

    .line 60
    iput-object p2, p0, Lcom/winlator/cmod/xserver/GrabManager;->eventListener:Lcom/winlator/cmod/xserver/EventListener;

    .line 61
    return-void
.end method


# virtual methods
.method public activatePointerGrab(Lcom/winlator/cmod/xserver/Window;)V
    .locals 3
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 68
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getButtonPressListener()Lcom/winlator/cmod/xserver/EventListener;

    move-result-object v0

    .line 69
    .local v0, "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/EventListener;->isInterestedIn(I)Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/winlator/cmod/xserver/GrabManager;->activatePointerGrab(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/EventListener;ZZ)V

    .line 70
    return-void
.end method

.method public activatePointerGrab(Lcom/winlator/cmod/xserver/Window;ZLcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xserver/XClient;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "ownerEvents"    # Z
    .param p3, "eventMask"    # Lcom/winlator/cmod/xserver/Bitmask;
    .param p4, "client"    # Lcom/winlator/cmod/xserver/XClient;

    .line 64
    new-instance v0, Lcom/winlator/cmod/xserver/EventListener;

    invoke-direct {v0, p4, p3}, Lcom/winlator/cmod/xserver/EventListener;-><init>(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xserver/Bitmask;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/winlator/cmod/xserver/GrabManager;->activatePointerGrab(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/EventListener;ZZ)V

    .line 65
    return-void
.end method

.method public deactivatePointerGrab()V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/winlator/cmod/xserver/GrabManager;->window:Lcom/winlator/cmod/xserver/Window;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/winlator/cmod/xserver/GrabManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->inputDeviceManager:Lcom/winlator/cmod/xserver/InputDeviceManager;

    iget-object v1, p0, Lcom/winlator/cmod/xserver/GrabManager;->window:Lcom/winlator/cmod/xserver/Window;

    iget-object v2, p0, Lcom/winlator/cmod/xserver/GrabManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->inputDeviceManager:Lcom/winlator/cmod/xserver/InputDeviceManager;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/InputDeviceManager;->getPointWindow()Lcom/winlator/cmod/xserver/Window;

    move-result-object v2

    sget-object v3, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;->UNGRAB:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/winlator/cmod/xserver/InputDeviceManager;->sendEnterLeaveNotify(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/xserver/GrabManager;->window:Lcom/winlator/cmod/xserver/Window;

    .line 49
    iput-object v0, p0, Lcom/winlator/cmod/xserver/GrabManager;->eventListener:Lcom/winlator/cmod/xserver/EventListener;

    .line 51
    :cond_0
    return-void
.end method

.method public getClient()Lcom/winlator/cmod/xserver/XClient;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/winlator/cmod/xserver/GrabManager;->eventListener:Lcom/winlator/cmod/xserver/EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/xserver/GrabManager;->eventListener:Lcom/winlator/cmod/xserver/EventListener;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/EventListener;->client:Lcom/winlator/cmod/xserver/XClient;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEventListener()Lcom/winlator/cmod/xserver/EventListener;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/winlator/cmod/xserver/GrabManager;->eventListener:Lcom/winlator/cmod/xserver/EventListener;

    return-object v0
.end method

.method public getWindow()Lcom/winlator/cmod/xserver/Window;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/winlator/cmod/xserver/GrabManager;->window:Lcom/winlator/cmod/xserver/Window;

    return-object v0
.end method

.method public isOwnerEvents()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/winlator/cmod/xserver/GrabManager;->ownerEvents:Z

    return v0
.end method

.method public isReleaseWithButtons()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/winlator/cmod/xserver/GrabManager;->releaseWithButtons:Z

    return v0
.end method

.method public onUnmapWindow(Lcom/winlator/cmod/xserver/Window;)V
    .locals 2
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 20
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getMapState()Lcom/winlator/cmod/xserver/Window$MapState;

    move-result-object v0

    sget-object v1, Lcom/winlator/cmod/xserver/Window$MapState;->VIEWABLE:Lcom/winlator/cmod/xserver/Window$MapState;

    if-eq v0, v1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/GrabManager;->deactivatePointerGrab()V

    .line 23
    :cond_0
    return-void
.end method
