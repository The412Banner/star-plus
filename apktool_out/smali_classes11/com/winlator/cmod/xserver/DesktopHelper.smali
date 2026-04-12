.class public abstract Lcom/winlator/cmod/xserver/DesktopHelper;
.super Ljava/lang/Object;
.source "DesktopHelper.java"


# direct methods
.method static bridge synthetic -$$Nest$smsetFocusedWindow(Lcom/winlator/cmod/xserver/XServer;Lcom/winlator/cmod/xserver/Window;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/winlator/cmod/xserver/DesktopHelper;->setFocusedWindow(Lcom/winlator/cmod/xserver/XServer;Lcom/winlator/cmod/xserver/Window;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smupdateFocusedWindow(Lcom/winlator/cmod/xserver/XServer;)V
    .locals 0

    invoke-static {p0}, Lcom/winlator/cmod/xserver/DesktopHelper;->updateFocusedWindow(Lcom/winlator/cmod/xserver/XServer;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachTo(Lcom/winlator/cmod/xserver/XServer;)V
    .locals 2
    .param p0, "xServer"    # Lcom/winlator/cmod/xserver/XServer;

    .line 9
    invoke-static {p0}, Lcom/winlator/cmod/xserver/DesktopHelper;->setupXResources(Lcom/winlator/cmod/xserver/XServer;)V

    .line 11
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    new-instance v1, Lcom/winlator/cmod/xserver/DesktopHelper$1;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/xserver/DesktopHelper$1;-><init>(Lcom/winlator/cmod/xserver/XServer;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/Pointer;->addOnPointerMotionListener(Lcom/winlator/cmod/xserver/Pointer$OnPointerMotionListener;)V

    .line 18
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    new-instance v1, Lcom/winlator/cmod/xserver/DesktopHelper$2;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/xserver/DesktopHelper$2;-><init>(Lcom/winlator/cmod/xserver/XServer;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/xserver/WindowManager;->addOnWindowModificationListener(Lcom/winlator/cmod/xserver/WindowManager$OnWindowModificationListener;)V

    .line 24
    return-void
.end method

.method private static setFocusedWindow(Lcom/winlator/cmod/xserver/XServer;Lcom/winlator/cmod/xserver/Window;)V
    .locals 5
    .param p0, "xServer"    # Lcom/winlator/cmod/xserver/XServer;
    .param p1, "window"    # Lcom/winlator/cmod/xserver/Window;

    .line 40
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->isApplicationWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getParent()Lcom/winlator/cmod/xserver/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 42
    .local v0, "parentIsRoot":Z
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->POINTER_ROOT:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->PARENT:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    :goto_1
    invoke-virtual {v1, p1, v2}, Lcom/winlator/cmod/xserver/WindowManager;->setFocus(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;)V

    .line 43
    invoke-virtual {p0}, Lcom/winlator/cmod/xserver/XServer;->getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/winlator/cmod/xserver/Window;->getHandle()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/winlator/cmod/winhandler/WinHandler;->bringToFront(Ljava/lang/String;J)V

    .line 45
    .end local v0    # "parentIsRoot":Z
    :cond_2
    return-void
.end method

.method private static setupXResources(Lcom/winlator/cmod/xserver/XServer;)V
    .locals 11
    .param p0, "xServer"    # Lcom/winlator/cmod/xserver/XServer;

    .line 48
    const-string v0, "RESOURCE_MANAGER"

    invoke-static {v0}, Lcom/winlator/cmod/xserver/Atom;->getId(Ljava/lang/String;)I

    move-result v0

    .line 49
    .local v0, "atom":I
    const-string v1, "STRING"

    invoke-static {v1}, Lcom/winlator/cmod/xserver/Atom;->getId(Ljava/lang/String;)I

    move-result v7

    .line 51
    .local v7, "type":I
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v8, v1

    .line 52
    .local v8, "values":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "size"

    const-string v2, "20"

    invoke-virtual {v8, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "theme"

    const-string v2, "dmz"

    invoke-virtual {v8, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "theme_core"

    const-string v2, "true"

    invoke-virtual {v8, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    .line 57
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 58
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Xcursor"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 59
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 61
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 62
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 63
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 64
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/winlator/cmod/xserver/XServer;->LATIN1_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    .line 68
    .local v10, "data":[B
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v1, v1, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    sget-object v4, Lcom/winlator/cmod/xserver/Property$Format;->BYTE_ARRAY:Lcom/winlator/cmod/xserver/Property$Format;

    sget-object v5, Lcom/winlator/cmod/xserver/Property$Mode;->APPEND:Lcom/winlator/cmod/xserver/Property$Mode;

    move v2, v0

    move v3, v7

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/winlator/cmod/xserver/Window;->modifyProperty(IILcom/winlator/cmod/xserver/Property$Format;Lcom/winlator/cmod/xserver/Property$Mode;[B)Lcom/winlator/cmod/xserver/Property;

    .line 69
    return-void
.end method

.method private static updateFocusedWindow(Lcom/winlator/cmod/xserver/XServer;)V
    .locals 6
    .param p0, "xServer"    # Lcom/winlator/cmod/xserver/XServer;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    const/4 v1, 0x0

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v0

    .line 28
    .local v0, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/WindowManager;->getFocusedWindow()Lcom/winlator/cmod/xserver/Window;

    move-result-object v1

    .line 29
    .local v1, "focusedWindow":Lcom/winlator/cmod/xserver/Window;
    iget-object v2, p0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v3, p0, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/Pointer;->getClampedX()S

    move-result v3

    iget-object v4, p0, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/Pointer;->getClampedY()S

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/winlator/cmod/xserver/WindowManager;->findPointWindow(SS)Lcom/winlator/cmod/xserver/Window;

    move-result-object v2

    .line 30
    .local v2, "child":Lcom/winlator/cmod/xserver/Window;
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v3, v3, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    if-eq v1, v3, :cond_0

    .line 31
    iget-object v3, p0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v4, p0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v4, v4, Lcom/winlator/cmod/xserver/WindowManager;->rootWindow:Lcom/winlator/cmod/xserver/Window;

    sget-object v5, Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;->NONE:Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;

    invoke-virtual {v3, v4, v5}, Lcom/winlator/cmod/xserver/WindowManager;->setFocus(Lcom/winlator/cmod/xserver/Window;Lcom/winlator/cmod/xserver/WindowManager$FocusRevertTo;)V

    goto :goto_0

    .line 33
    :cond_0
    if-eqz v2, :cond_1

    if-eq v2, v1, :cond_1

    .line 34
    invoke-static {p0, v2}, Lcom/winlator/cmod/xserver/DesktopHelper;->setFocusedWindow(Lcom/winlator/cmod/xserver/XServer;Lcom/winlator/cmod/xserver/Window;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .end local v1    # "focusedWindow":Lcom/winlator/cmod/xserver/Window;
    .end local v2    # "child":Lcom/winlator/cmod/xserver/Window;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 37
    .end local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_2
    return-void

    .line 27
    .restart local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method
