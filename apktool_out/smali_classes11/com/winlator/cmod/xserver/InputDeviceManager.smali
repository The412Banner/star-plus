.class public Lcom/winlator/cmod/xserver/InputDeviceManager;
.super Ljava/lang/Object;
.source "InputDeviceManager.java"

# interfaces
.implements Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;
.implements Lcom/winlator/cmod/xserver/Keyboard$OnKeyboardListener;
.implements Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;
.implements Lcom/winlator/cmod/xserver/XResourceManager$OnResourceLifecycleListener;


# static fields
.field private static final MOUSE_WHEEL_DELTA:B = 0x78t


# instance fields
.field private pointWindow:Lcom/winlator/cmod/xserver/Window;

.field private final xServer:Lcom/winlator/cmod/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/XServer;)V
    .locals 1
    .param p1, "xServer"    # Lcom/winlator/cmod/xserver/XServer;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    .line 23
    iget-object v0, p1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    iput-object v0, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    .line 24
    iget-object v0, p1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v0, p0}, Lcom/winlator/cmod/xserver/WindowManager;->addOnWindowModificationListener(Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;)V

    .line 25
    iget-object v0, p1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v0, p0}, Lcom/winlator/cmod/xserver/WindowManager;->addOnResourceLifecycleListener(Lcom/winlator/cmod/xserver/XResourceManager$OnResourceLifecycleListener;)V

    .line 26
    iget-object v0, p1, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v0, p0}, Lcom/winlator/cmod/xserver/Pointer;->addOnPointerMotionListener(Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;)V

    .line 27
    iget-object v0, p1, Lcom/winlator/cmod/xserver/XServer;->keyboard:Lcom/winlator/cmod/xserver/Keyboard;

    invoke-virtual {v0, p0}, Lcom/winlator/cmod/xserver/Keyboard;->addOnKeyboardListener(Lcom/winlator/cmod/xserver/Keyboard$OnKeyboardListener;)V

    .line 28
    return-void
.end method

.method private createPointerEventMask()Lcom/winlator/cmod/xserver/Bitmask;
    .locals 3

    .line 260
    new-instance v0, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-direct {v0}, Lcom/winlator/cmod/xserver/Bitmask;-><init>()V

    .line 261
    .local v0, "eventMask":Lcom/winlator/cmod/xserver/Bitmask;
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/Bitmask;->set(I)V

    .line 263
    iget-object v1, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Pointer;->getButtonMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v1

    .line 264
    .local v1, "buttonMask":Lcom/winlator/cmod/xserver/Bitmask;
    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Bitmask;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 265
    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/xserver/Bitmask;->set(I)V

    .line 267
    sget-object v2, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Pointer$Button;->flag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/Bitmask;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/xserver/Bitmask;->set(I)V

    .line 270
    :cond_0
    sget-object v2, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_MIDDLE:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Pointer$Button;->flag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/Bitmask;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/xserver/Bitmask;->set(I)V

    .line 273
    :cond_1
    sget-object v2, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Pointer$Button;->flag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/Bitmask;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/xserver/Bitmask;->set(I)V

    .line 276
    :cond_2
    sget-object v2, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Pointer$Button;->flag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/Bitmask;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/xserver/Bitmask;->set(I)V

    .line 279
    :cond_3
    sget-object v2, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Pointer$Button;->flag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/Bitmask;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 280
    const/16 v2, 0x1000

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/xserver/Bitmask;->set(I)V

    .line 283
    :cond_4
    return-object v0
.end method

.method private sendEvent(Lcom/winlator/cmod/xserver/Window;ILcom/winlator/cmod/xserver/events/Event;)V
    .locals 3
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "eventId"    # I
    .param p3, "event"    # Lcom/winlator/cmod/xserver/events/Event;

    .line 70
    iget-object v0, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/GrabManager;->getWindow()Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    .line 71
    .local v0, "grabWindow":Lcom/winlator/cmod/xserver/Window;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/WindowAttributes;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    iget-object v1, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/GrabManager;->getEventListener()Lcom/winlator/cmod/xserver/EventListener;

    move-result-object v1

    .line 73
    .local v1, "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    iget-object v2, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/GrabManager;->isOwnerEvents()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 74
    iget-object v2, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/GrabManager;->getClient()Lcom/winlator/cmod/xserver/XClient;

    move-result-object v2

    invoke-virtual {p1, p2, p3, v2}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;Lcom/winlator/cmod/xserver/XClient;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v1, p2}, Lcom/winlator/cmod/xserver/EventListener;->isInterestedIn(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {v1, p3}, Lcom/winlator/cmod/xserver/EventListener;->sendEvent(Lcom/winlator/cmod/xserver/events/Event;)V

    .line 79
    .end local v1    # "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    :cond_1
    :goto_0
    goto :goto_1

    .line 80
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/WindowAttributes;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {p1, p2, p3}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 83
    :cond_3
    :goto_1
    return-void
.end method

.method private sendEvent(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xserver/events/Event;)V
    .locals 3
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "eventMask"    # Lcom/winlator/cmod/xserver/Bitmask;
    .param p3, "event"    # Lcom/winlator/cmod/xserver/events/Event;

    .line 86
    iget-object v0, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/GrabManager;->getWindow()Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    .line 87
    .local v0, "grabWindow":Lcom/winlator/cmod/xserver/Window;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/WindowAttributes;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/GrabManager;->getEventListener()Lcom/winlator/cmod/xserver/EventListener;

    move-result-object v1

    .line 89
    .local v1, "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    iget-object v2, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/GrabManager;->isOwnerEvents()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 90
    iget-object v2, v1, Lcom/winlator/cmod/xserver/EventListener;->client:Lcom/winlator/cmod/xserver/XClient;

    invoke-virtual {p1, p2, p3, v2}, Lcom/winlator/cmod/xserver/Window;->sendEvent(Lcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xserver/events/Event;Lcom/winlator/cmod/xserver/XClient;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v1, p2}, Lcom/winlator/cmod/xserver/EventListener;->isInterestedIn(Lcom/winlator/cmod/xserver/Bitmask;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v1, p3}, Lcom/winlator/cmod/xserver/EventListener;->sendEvent(Lcom/winlator/cmod/xserver/events/Event;)V

    .line 95
    .end local v1    # "eventListener":Lcom/winlator/cmod/xserver/EventListener;
    :cond_1
    :goto_0
    goto :goto_1

    .line 96
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/WindowAttributes;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {p1, p2, p3}, Lcom/winlator/cmod/xserver/Window;->sendEvent(Lcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xserver/events/Event;)V

    .line 99
    :cond_3
    :goto_1
    return-void
.end method

.method private updatePointWindow()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v1, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Pointer;->getClampedX()S

    move-result v1

    iget-object v2, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Pointer;->getClampedY()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/winlator/cmod/xserver/WindowManager;->findPointWindow(SS)Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    .line 62
    .local v0, "pointWindow":Lcom/winlator/cmod/xserver/Window;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    :goto_0
    iput-object v1, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    .line 63
    return-void
.end method


# virtual methods
.method public getKeyButMask()Lcom/winlator/cmod/xserver/Bitmask;
    .locals 2

    .line 287
    new-instance v0, Lcom/winlator/cmod/xserver/Bitmask;

    invoke-direct {v0}, Lcom/winlator/cmod/xserver/Bitmask;-><init>()V

    .line 288
    .local v0, "keyButMask":Lcom/winlator/cmod/xserver/Bitmask;
    iget-object v1, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Pointer;->getButtonMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/Bitmask;->join(Lcom/winlator/cmod/xserver/Bitmask;)V

    .line 289
    iget-object v1, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->keyboard:Lcom/winlator/cmod/xserver/Keyboard;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Keyboard;->getModifiersMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/Bitmask;->join(Lcom/winlator/cmod/xserver/Bitmask;)V

    .line 290
    return-object v0
.end method

.method public getPointWindow()Lcom/winlator/cmod/xserver/Window;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    return-object v0
.end method

.method public onChangeWindowZOrder(Lcom/winlator/cmod/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 42
    invoke-direct {p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;->updatePointWindow()V

    .line 43
    return-void
.end method

.method public onCreateResource(Lcom/winlator/cmod/xserver/XResource;)V
    .locals 0
    .param p1, "resource"    # Lcom/winlator/cmod/xserver/XResource;

    .line 52
    invoke-direct {p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;->updatePointWindow()V

    .line 53
    return-void
.end method

.method public onFreeResource(Lcom/winlator/cmod/xserver/XResource;)V
    .locals 0
    .param p1, "resource"    # Lcom/winlator/cmod/xserver/XResource;

    .line 57
    invoke-direct {p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;->updatePointWindow()V

    .line 58
    return-void
.end method

.method public onKeyPress(BI)V
    .locals 21
    .param p1, "keycode"    # B
    .param p2, "keysym"    # I

    .line 202
    move-object/from16 v0, p0

    move/from16 v11, p1

    move/from16 v12, p2

    iget-object v1, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/WindowManager;->getFocusedWindow()Lcom/winlator/cmod/xserver/Window;

    move-result-object v13

    .line 203
    .local v13, "focusedWindow":Lcom/winlator/cmod/xserver/Window;
    if-nez v13, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;->updatePointWindow()V

    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "eventWindow":Lcom/winlator/cmod/xserver/Window;
    const/4 v2, 0x0

    .line 208
    .local v2, "child":Lcom/winlator/cmod/xserver/Window;
    iget-object v3, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v13, v3}, Lcom/winlator/cmod/xserver/Window;->isAncestorOf(Lcom/winlator/cmod/xserver/Window;)Z

    move-result v3

    const/4 v14, 0x1

    if-eqz v3, :cond_2

    .line 209
    iget-object v3, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v3, v14, v13}, Lcom/winlator/cmod/xserver/Window;->getAncestorWithEventId(ILcom/winlator/cmod/xserver/Window;)Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 210
    iget-object v3, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v1, v3}, Lcom/winlator/cmod/xserver/Window;->isAncestorOf(Lcom/winlator/cmod/xserver/Window;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    move-object v15, v2

    goto :goto_1

    .line 208
    :cond_2
    move-object v15, v2

    .line 212
    .end local v2    # "child":Lcom/winlator/cmod/xserver/Window;
    .local v15, "child":Lcom/winlator/cmod/xserver/Window;
    :goto_1
    if-nez v1, :cond_4

    .line 213
    invoke-virtual {v13, v14}, Lcom/winlator/cmod/xserver/Window;->hasEventListenerFor(I)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 214
    :cond_3
    move-object v1, v13

    move-object v10, v1

    goto :goto_2

    .line 212
    :cond_4
    move-object v10, v1

    .line 217
    .end local v1    # "eventWindow":Lcom/winlator/cmod/xserver/Window;
    .local v10, "eventWindow":Lcom/winlator/cmod/xserver/Window;
    :goto_2
    iget-object v1, v10, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/WindowAttributes;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    .line 219
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;->getKeyButMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v16

    .line 220
    .local v16, "keyButMask":Lcom/winlator/cmod/xserver/Bitmask;
    iget-object v1, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Pointer;->getX()S

    move-result v9

    .line 221
    .local v9, "x":S
    iget-object v1, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Pointer;->getY()S

    move-result v8

    .line 222
    .local v8, "y":S
    invoke-virtual {v10, v9, v8}, Lcom/winlator/cmod/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v17

    .line 224
    .local v17, "localPoint":[S
    if-eqz v12, :cond_6

    iget-object v1, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->keyboard:Lcom/winlator/cmod/xserver/Keyboard;

    invoke-virtual {v1, v11, v12}, Lcom/winlator/cmod/xserver/Keyboard;->hasKeysym(BI)Z

    move-result v1

    if-nez v1, :cond_6

    .line 225
    iget-object v1, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->keyboard:Lcom/winlator/cmod/xserver/Keyboard;

    invoke-virtual {v1, v11, v12, v12}, Lcom/winlator/cmod/xserver/Keyboard;->setKeysyms(BII)V

    .line 226
    new-instance v1, Lcom/winlator/cmod/xserver/events/MappingNotify;

    sget-object v2, Lcom/winlator/cmod/xserver/events/MappingNotify$Request;->KEYBOARD:Lcom/winlator/cmod/xserver/events/MappingNotify$Request;

    invoke-direct {v1, v2, v11, v14}, Lcom/winlator/cmod/xserver/events/MappingNotify;-><init>(Lcom/winlator/cmod/xserver/events/MappingNotify$Request;BI)V

    invoke-virtual {v10, v1}, Lcom/winlator/cmod/xserver/Window;->sendEvent(Lcom/winlator/cmod/xserver/events/Event;)V

    .line 229
    :cond_6
    new-instance v7, Lcom/winlator/cmod/xserver/events/KeyPress;

    iget-object v1, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v3, v1, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    const/4 v1, 0x0

    aget-short v18, v17, v1

    aget-short v19, v17, v14

    move-object v1, v7

    move/from16 v2, p1

    move-object v4, v10

    move-object v5, v15

    move v6, v9

    move-object v0, v7

    move v7, v8

    move/from16 v20, v8

    .end local v8    # "y":S
    .local v20, "y":S
    move/from16 v8, v18

    move/from16 v18, v9

    .end local v9    # "x":S
    .local v18, "x":S
    move/from16 v9, v19

    move-object v11, v10

    .end local v10    # "eventWindow":Lcom/winlator/cmod/xserver/Window;
    .local v11, "eventWindow":Lcom/winlator/cmod/xserver/Window;
    move-object/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/winlator/cmod/xserver/events/KeyPress;-><init>(BLcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;SSSSLcom/winlator/cmod/xserver/Bitmask;)V

    invoke-virtual {v11, v14, v0}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 230
    return-void
.end method

.method public onKeyRelease(B)V
    .locals 19
    .param p1, "keycode"    # B

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/WindowManager;->getFocusedWindow()Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 235
    .local v1, "focusedWindow":Lcom/winlator/cmod/xserver/Window;
    if-nez v1, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;->updatePointWindow()V

    .line 238
    const/4 v2, 0x0

    .line 239
    .local v2, "eventWindow":Lcom/winlator/cmod/xserver/Window;
    const/4 v3, 0x0

    .line 240
    .local v3, "child":Lcom/winlator/cmod/xserver/Window;
    iget-object v4, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v1, v4}, Lcom/winlator/cmod/xserver/Window;->isAncestorOf(Lcom/winlator/cmod/xserver/Window;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    .line 241
    iget-object v4, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v4, v5, v1}, Lcom/winlator/cmod/xserver/Window;->getAncestorWithEventId(ILcom/winlator/cmod/xserver/Window;)Lcom/winlator/cmod/xserver/Window;

    move-result-object v2

    .line 242
    iget-object v4, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/xserver/Window;->isAncestorOf(Lcom/winlator/cmod/xserver/Window;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move-object v3, v4

    .line 244
    :cond_2
    if-nez v2, :cond_4

    .line 245
    invoke-virtual {v1, v5}, Lcom/winlator/cmod/xserver/Window;->hasEventListenerFor(I)Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    .line 246
    :cond_3
    move-object v2, v1

    .line 249
    :cond_4
    iget-object v4, v2, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/WindowAttributes;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    return-void

    .line 251
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;->getKeyButMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v4

    .line 252
    .local v4, "keyButMask":Lcom/winlator/cmod/xserver/Bitmask;
    iget-object v6, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v6}, Lcom/winlator/cmod/xserver/Pointer;->getX()S

    move-result v15

    .line 253
    .local v15, "x":S
    iget-object v6, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v6}, Lcom/winlator/cmod/xserver/Pointer;->getY()S

    move-result v14

    .line 254
    .local v14, "y":S
    invoke-virtual {v2, v15, v14}, Lcom/winlator/cmod/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v16

    .line 256
    .local v16, "localPoint":[S
    new-instance v13, Lcom/winlator/cmod/xserver/events/KeyRelease;

    iget-object v6, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v8, v6, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    const/4 v6, 0x0

    aget-short v17, v16, v6

    const/4 v6, 0x1

    aget-short v18, v16, v6

    move-object v6, v13

    move/from16 v7, p1

    move-object v9, v2

    move-object v10, v3

    move v11, v15

    move v12, v14

    move-object v0, v13

    move/from16 v13, v17

    move/from16 v17, v14

    .end local v14    # "y":S
    .local v17, "y":S
    move/from16 v14, v18

    move/from16 v18, v15

    .end local v15    # "x":S
    .local v18, "x":S
    move-object v15, v4

    invoke-direct/range {v6 .. v15}, Lcom/winlator/cmod/xserver/events/KeyRelease;-><init>(BLcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;SSSSLcom/winlator/cmod/xserver/Bitmask;)V

    invoke-virtual {v2, v5, v0}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 257
    return-void
.end method

.method public onMapWindow(Lcom/winlator/cmod/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 32
    invoke-direct {p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;->updatePointWindow()V

    .line 33
    return-void
.end method

.method public onPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V
    .locals 19
    .param p1, "button"    # Lcom/winlator/cmod/xserver/Pointer$Button;

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v2

    .line 131
    .local v2, "winHandler":Lcom/winlator/cmod/winhandler/WinHandler;
    sget-object v5, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/winlator/cmod/xserver/Pointer$Button;

    if-ne v1, v5, :cond_0

    const/16 v5, 0x78

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/winlator/cmod/xserver/Pointer$Button;

    if-ne v1, v5, :cond_1

    const/16 v5, -0x78

    goto :goto_0

    :cond_1
    move v5, v4

    .line 132
    .local v5, "wheelDelta":I
    :goto_0
    invoke-static {v1, v3}, Lcom/winlator/cmod/winhandler/MouseEventFlags;->getFlagFor(Lcom/winlator/cmod/xserver/Pointer$Button;Z)I

    move-result v3

    invoke-virtual {v2, v3, v4, v4, v5}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    .line 133
    .end local v2    # "winHandler":Lcom/winlator/cmod/winhandler/WinHandler;
    .end local v5    # "wheelDelta":I
    goto/16 :goto_2

    .line 135
    :cond_2
    iget-object v2, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/GrabManager;->getWindow()Lcom/winlator/cmod/xserver/Window;

    move-result-object v2

    .line 136
    .local v2, "grabWindow":Lcom/winlator/cmod/xserver/Window;
    const/4 v5, 0x4

    if-nez v2, :cond_3

    .line 137
    iget-object v6, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v6, v5}, Lcom/winlator/cmod/xserver/Window;->getAncestorWithEventId(I)Lcom/winlator/cmod/xserver/Window;

    move-result-object v2

    .line 138
    if-eqz v2, :cond_3

    iget-object v6, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v6, v2}, Lcom/winlator/cmod/xserver/GrabManager;->activatePointerGrab(Lcom/winlator/cmod/xserver/Window;)V

    .line 141
    :cond_3
    if-eqz v2, :cond_5

    iget-object v6, v2, Lcom/winlator/cmod/xserver/Window;->attributes:Lcom/winlator/cmod/xserver/WindowAttributes;

    invoke-virtual {v6}, Lcom/winlator/cmod/xserver/WindowAttributes;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 142
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;->createPointerEventMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v6

    .line 143
    .local v6, "eventMask":Lcom/winlator/cmod/xserver/Bitmask;
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xserver/Pointer$Button;->flag()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/winlator/cmod/xserver/Bitmask;->unset(I)V

    .line 145
    iget-object v7, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v7}, Lcom/winlator/cmod/xserver/Pointer;->getX()S

    move-result v15

    .line 146
    .local v15, "x":S
    iget-object v7, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v7}, Lcom/winlator/cmod/xserver/Pointer;->getY()S

    move-result v14

    .line 147
    .local v14, "y":S
    invoke-virtual {v2, v15, v14}, Lcom/winlator/cmod/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v17

    .line 149
    .local v17, "localPoint":[S
    iget-object v7, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v2, v7}, Lcom/winlator/cmod/xserver/Window;->isAncestorOf(Lcom/winlator/cmod/xserver/Window;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    move-object v11, v7

    .line 150
    .local v11, "child":Lcom/winlator/cmod/xserver/Window;
    new-instance v13, Lcom/winlator/cmod/xserver/events/ButtonPress;

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xserver/Pointer$Button;->code()B

    move-result v8

    iget-object v7, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v7, v7, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v9, v7, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    aget-short v4, v17, v4

    aget-short v3, v17, v3

    move-object v7, v13

    move-object v10, v2

    move v12, v15

    move-object v0, v13

    move v13, v14

    move/from16 v18, v14

    .end local v14    # "y":S
    .local v18, "y":S
    move v14, v4

    move v4, v15

    .end local v15    # "x":S
    .local v4, "x":S
    move v15, v3

    move-object/from16 v16, v6

    invoke-direct/range {v7 .. v16}, Lcom/winlator/cmod/xserver/events/ButtonPress;-><init>(BLcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;SSSSLcom/winlator/cmod/xserver/Bitmask;)V

    invoke-virtual {v2, v5, v0}, Lcom/winlator/cmod/xserver/Window;->sendEvent(ILcom/winlator/cmod/xserver/events/Event;)V

    .line 153
    .end local v2    # "grabWindow":Lcom/winlator/cmod/xserver/Window;
    .end local v4    # "x":S
    .end local v6    # "eventMask":Lcom/winlator/cmod/xserver/Bitmask;
    .end local v11    # "child":Lcom/winlator/cmod/xserver/Window;
    .end local v17    # "localPoint":[S
    .end local v18    # "y":S
    :cond_5
    :goto_2
    return-void
.end method

.method public onPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V
    .locals 20
    .param p1, "button"    # Lcom/winlator/cmod/xserver/Pointer$Button;

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/XServer;->isRelativeMouseMovement()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v1

    .line 159
    .local v1, "winHandler":Lcom/winlator/cmod/winhandler/WinHandler;
    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lcom/winlator/cmod/winhandler/MouseEventFlags;->getFlagFor(Lcom/winlator/cmod/xserver/Pointer$Button;Z)I

    move-result v4

    invoke-virtual {v1, v4, v2, v2, v2}, Lcom/winlator/cmod/winhandler/WinHandler;->mouseEvent(IIII)V

    .line 160
    .end local v1    # "winHandler":Lcom/winlator/cmod/winhandler/WinHandler;
    goto/16 :goto_3

    .line 162
    :cond_0
    move-object/from16 v3, p1

    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;->createPointerEventMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v1

    .line 163
    .local v1, "eventMask":Lcom/winlator/cmod/xserver/Bitmask;
    iget-object v4, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/GrabManager;->getWindow()Lcom/winlator/cmod/xserver/Window;

    move-result-object v4

    .line 164
    .local v4, "grabWindow":Lcom/winlator/cmod/xserver/Window;
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v6, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v6}, Lcom/winlator/cmod/xserver/GrabManager;->isOwnerEvents()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v6, v5

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v6, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v6, v1}, Lcom/winlator/cmod/xserver/Window;->getAncestorWithEventMask(Lcom/winlator/cmod/xserver/Bitmask;)Lcom/winlator/cmod/xserver/Window;

    move-result-object v6

    :goto_1
    move-object v15, v6

    .line 166
    .local v15, "window":Lcom/winlator/cmod/xserver/Window;
    if-nez v4, :cond_3

    if-eqz v15, :cond_6

    .line 167
    :cond_3
    if-eqz v15, :cond_4

    move-object v6, v15

    goto :goto_2

    :cond_4
    move-object v6, v4

    :goto_2
    move-object v14, v6

    .line 169
    .local v14, "eventWindow":Lcom/winlator/cmod/xserver/Window;
    iget-object v6, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v6}, Lcom/winlator/cmod/xserver/Pointer;->getX()S

    move-result v13

    .line 170
    .local v13, "x":S
    iget-object v6, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v6}, Lcom/winlator/cmod/xserver/Pointer;->getY()S

    move-result v12

    .line 171
    .local v12, "y":S
    invoke-virtual {v14, v13, v12}, Lcom/winlator/cmod/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v16

    .line 173
    .local v16, "localPoint":[S
    iget-object v6, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v14, v6}, Lcom/winlator/cmod/xserver/Window;->isAncestorOf(Lcom/winlator/cmod/xserver/Window;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v5, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    :cond_5
    move-object v9, v5

    .line 174
    .local v9, "child":Lcom/winlator/cmod/xserver/Window;
    new-instance v17, Lcom/winlator/cmod/xserver/events/ButtonRelease;

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/xserver/Pointer$Button;->code()B

    move-result v6

    iget-object v5, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v5, v5, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v7, v5, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    aget-short v2, v16, v2

    const/4 v5, 0x1

    aget-short v18, v16, v5

    move-object/from16 v5, v17

    move-object v8, v14

    move v10, v13

    move v11, v12

    move/from16 v19, v12

    .end local v12    # "y":S
    .local v19, "y":S
    move v12, v2

    move v2, v13

    .end local v13    # "x":S
    .local v2, "x":S
    move/from16 v13, v18

    move-object/from16 v18, v14

    .end local v14    # "eventWindow":Lcom/winlator/cmod/xserver/Window;
    .local v18, "eventWindow":Lcom/winlator/cmod/xserver/Window;
    move-object v14, v1

    invoke-direct/range {v5 .. v14}, Lcom/winlator/cmod/xserver/events/ButtonRelease;-><init>(BLcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;SSSSLcom/winlator/cmod/xserver/Bitmask;)V

    .line 175
    .local v5, "buttonRelease":Lcom/winlator/cmod/xserver/events/ButtonRelease;
    invoke-direct {v0, v15, v1, v5}, Lcom/winlator/cmod/xserver/InputDeviceManager;->sendEvent(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xserver/events/Event;)V

    .line 178
    .end local v2    # "x":S
    .end local v5    # "buttonRelease":Lcom/winlator/cmod/xserver/events/ButtonRelease;
    .end local v9    # "child":Lcom/winlator/cmod/xserver/Window;
    .end local v16    # "localPoint":[S
    .end local v18    # "eventWindow":Lcom/winlator/cmod/xserver/Window;
    .end local v19    # "y":S
    :cond_6
    iget-object v2, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Pointer;->getButtonMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Bitmask;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/GrabManager;->isReleaseWithButtons()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 179
    iget-object v2, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/GrabManager;->deactivatePointerGrab()V

    .line 182
    .end local v1    # "eventMask":Lcom/winlator/cmod/xserver/Bitmask;
    .end local v4    # "grabWindow":Lcom/winlator/cmod/xserver/Window;
    .end local v15    # "window":Lcom/winlator/cmod/xserver/Window;
    :cond_7
    :goto_3
    return-void
.end method

.method public onPointerMove(SS)V
    .locals 19
    .param p1, "x"    # S
    .param p2, "y"    # S

    .line 186
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;->updatePointWindow()V

    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;->createPointerEventMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v1

    .line 188
    .local v1, "eventMask":Lcom/winlator/cmod/xserver/Bitmask;
    iget-object v2, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v2, v2, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/GrabManager;->getWindow()Lcom/winlator/cmod/xserver/Window;

    move-result-object v2

    .line 189
    .local v2, "grabWindow":Lcom/winlator/cmod/xserver/Window;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/GrabManager;->isOwnerEvents()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v4, v1}, Lcom/winlator/cmod/xserver/Window;->getAncestorWithEventMask(Lcom/winlator/cmod/xserver/Bitmask;)Lcom/winlator/cmod/xserver/Window;

    move-result-object v4

    .line 191
    .local v4, "window":Lcom/winlator/cmod/xserver/Window;
    :goto_1
    if-nez v2, :cond_2

    if-eqz v4, :cond_5

    .line 192
    :cond_2
    if-eqz v4, :cond_3

    move-object v5, v4

    goto :goto_2

    :cond_3
    move-object v5, v2

    .line 193
    .local v5, "eventWindow":Lcom/winlator/cmod/xserver/Window;
    :goto_2
    move/from16 v15, p1

    move/from16 v14, p2

    invoke-virtual {v5, v15, v14}, Lcom/winlator/cmod/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v16

    .line 195
    .local v16, "localPoint":[S
    iget-object v6, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    invoke-virtual {v5, v6}, Lcom/winlator/cmod/xserver/Window;->isAncestorOf(Lcom/winlator/cmod/xserver/Window;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v3, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->pointWindow:Lcom/winlator/cmod/xserver/Window;

    :cond_4
    move-object v10, v3

    .line 196
    .local v10, "child":Lcom/winlator/cmod/xserver/Window;
    new-instance v3, Lcom/winlator/cmod/xserver/events/MotionNotify;

    iget-object v6, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v6, v6, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v8, v6, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    const/4 v6, 0x0

    aget-short v13, v16, v6

    const/4 v6, 0x1

    aget-short v17, v16, v6

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;->getKeyButMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v18

    const/4 v7, 0x0

    move-object v6, v3

    move-object v9, v5

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v14, v17

    move-object/from16 v15, v18

    invoke-direct/range {v6 .. v15}, Lcom/winlator/cmod/xserver/events/MotionNotify;-><init>(ZLcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;SSSSLcom/winlator/cmod/xserver/Bitmask;)V

    invoke-direct {v0, v4, v1, v3}, Lcom/winlator/cmod/xserver/InputDeviceManager;->sendEvent(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xserver/events/Event;)V

    .line 198
    .end local v5    # "eventWindow":Lcom/winlator/cmod/xserver/Window;
    .end local v10    # "child":Lcom/winlator/cmod/xserver/Window;
    .end local v16    # "localPoint":[S
    :cond_5
    return-void
.end method

.method public onUnmapWindow(Lcom/winlator/cmod/xserver/Window;)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 37
    invoke-direct {p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;->updatePointWindow()V

    .line 38
    return-void
.end method

.method public onUpdateWindowGeometry(Lcom/winlator/cmod/xserver/Window;Z)V
    .locals 0
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "resized"    # Z

    .line 47
    invoke-direct {p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;->updatePointWindow()V

    .line 48
    return-void
.end method

.method public sendEnterLeaveNotify(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;)V
    .locals 26
    .param p1, "windowA"    # Lcom/winlator/cmod/xserver/Window;
    .param p2, "windowB"    # Lcom/winlator/cmod/xserver/Window;
    .param p3, "mode"    # Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    if-ne v13, v14, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v1, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Pointer;->getX()S

    move-result v15

    .line 104
    .local v15, "x":S
    iget-object v1, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/Pointer;->getY()S

    move-result v12

    .line 106
    .local v12, "y":S
    invoke-virtual {v13, v15, v12}, Lcom/winlator/cmod/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v16

    .line 107
    .local v16, "localPointA":[S
    invoke-virtual {v14, v15, v12}, Lcom/winlator/cmod/xserver/Window;->rootPointToLocal(SS)[S

    move-result-object v17

    .line 109
    .local v17, "localPointB":[S
    iget-object v1, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/WindowManager;->getFocusedWindow()Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/winlator/cmod/xserver/Window;->isAncestorOf(Lcom/winlator/cmod/xserver/Window;)Z

    move-result v18

    .line 110
    .local v18, "sameScreenAndFocus":Z
    sget-object v1, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->NONLINEAR:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    .line 111
    .local v1, "detailA":Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;
    sget-object v2, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->NONLINEAR:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    .line 113
    .local v2, "detailB":Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;
    invoke-virtual/range {p1 .. p2}, Lcom/winlator/cmod/xserver/Window;->isAncestorOf(Lcom/winlator/cmod/xserver/Window;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    sget-object v1, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->ANCESTOR:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    .line 115
    sget-object v2, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->INFERIOR:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v14, v13}, Lcom/winlator/cmod/xserver/Window;->isAncestorOf(Lcom/winlator/cmod/xserver/Window;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    sget-object v2, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->ANCESTOR:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    .line 119
    sget-object v1, Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;->INFERIOR:Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    goto :goto_0

    .line 117
    :cond_2
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 122
    .end local v1    # "detailA":Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;
    .end local v2    # "detailB":Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;
    .local v19, "detailA":Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;
    .local v20, "detailB":Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;->getKeyButMask()Lcom/winlator/cmod/xserver/Bitmask;

    move-result-object v21

    .line 123
    .local v21, "keyButMask":Lcom/winlator/cmod/xserver/Bitmask;
    new-instance v11, Lcom/winlator/cmod/xserver/events/LeaveNotify;

    iget-object v1, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v3, v1, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    const/16 v22, 0x0

    aget-short v8, v16, v22

    const/16 v23, 0x1

    aget-short v9, v16, v23

    const/4 v5, 0x0

    move-object v1, v11

    move-object/from16 v2, v19

    move-object/from16 v4, p1

    move v6, v15

    move v7, v12

    move-object/from16 v10, v21

    move-object/from16 v24, v11

    move-object/from16 v11, p3

    move/from16 v25, v12

    .end local v12    # "y":S
    .local v25, "y":S
    move/from16 v12, v18

    invoke-direct/range {v1 .. v12}, Lcom/winlator/cmod/xserver/events/LeaveNotify;-><init>(Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;SSSSLcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;Z)V

    const/16 v1, 0x20

    move-object/from16 v2, v24

    invoke-direct {v0, v13, v1, v2}, Lcom/winlator/cmod/xserver/InputDeviceManager;->sendEvent(Lcom/winlator/cmod/xserver/Window;ILcom/winlator/cmod/xserver/events/Event;)V

    .line 124
    new-instance v12, Lcom/winlator/cmod/xserver/events/EnterNotify;

    iget-object v1, v0, Lcom/winlator/cmod/xserver/InputDeviceManager;->xServer:Lcom/winlator/cmod/xserver/XServer;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v3, v1, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    aget-short v8, v17, v22

    aget-short v9, v17, v23

    move-object v1, v12

    move-object/from16 v2, v20

    move-object/from16 v4, p2

    move/from16 v7, v25

    move-object v13, v12

    move/from16 v12, v18

    invoke-direct/range {v1 .. v12}, Lcom/winlator/cmod/xserver/events/EnterNotify;-><init>(Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Detail;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/Window;SSSSLcom/winlator/cmod/xserver/Bitmask;Lcom/winlator/cmod/xserver/events/PointerWindowEvent$Mode;Z)V

    const/16 v1, 0x10

    invoke-direct {v0, v14, v1, v13}, Lcom/winlator/cmod/xserver/InputDeviceManager;->sendEvent(Lcom/winlator/cmod/xserver/Window;ILcom/winlator/cmod/xserver/events/Event;)V

    .line 125
    return-void
.end method
