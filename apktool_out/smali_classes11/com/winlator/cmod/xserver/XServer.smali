.class public Lcom/winlator/cmod/xserver/XServer;
.super Ljava/lang/Object;
.source "XServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/xserver/XServer$Lockable;,
        Lcom/winlator/cmod/xserver/XServer$SingleXLock;,
        Lcom/winlator/cmod/xserver/XServer$MultiXLock;
    }
.end annotation


# static fields
.field public static final LATIN1_CHARSET:Ljava/nio/charset/Charset;

.field public static final VENDOR_NAME:Ljava/lang/String; = "Elbrus Technologies, LLC"

.field public static final VERSION:S = 0xbs


# instance fields
.field public final cursorLocker:Lcom/winlator/cmod/core/CursorLocker;

.field public final cursorManager:Lcom/winlator/cmod/xserver/CursorManager;

.field public final drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

.field public final extensions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/winlator/cmod/xserver/extensions/Extension;",
            ">;"
        }
    .end annotation
.end field

.field public final grabManager:Lcom/winlator/cmod/xserver/GrabManager;

.field private grabbingClient:Lcom/winlator/cmod/xserver/XClient;

.field public final graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

.field public final inputDeviceManager:Lcom/winlator/cmod/xserver/InputDeviceManager;

.field private isGrabbed:Z

.field public final keyboard:Lcom/winlator/cmod/xserver/Keyboard;

.field private final locks:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/winlator/cmod/xserver/XServer$Lockable;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field

.field public final pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

.field public final pointer:Lcom/winlator/cmod/xserver/Pointer;

.field private relativeMouseMovement:Z

.field private renderer:Lcom/winlator/cmod/renderer/GLRenderer;

.field public final resourceIDs:Lcom/winlator/cmod/xserver/ResourceIDs;

.field public final screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

.field public final selectionManager:Lcom/winlator/cmod/xserver/SelectionManager;

.field private shmSegmentManager:Lcom/winlator/cmod/xserver/SHMSegmentManager;

.field private simulateTouchScreen:Z

.field private winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

.field public final windowManager:Lcom/winlator/cmod/xserver/WindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetlocks(Lcom/winlator/cmod/xserver/XServer;)Ljava/util/EnumMap;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/xserver/XServer;->locks:Ljava/util/EnumMap;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "latin1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/xserver/XServer;->LATIN1_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/xserver/ScreenInfo;)V
    .locals 6
    .param p1, "screenInfo"    # Lcom/winlator/cmod/xserver/ScreenInfo;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->extensions:Landroid/util/SparseArray;

    .line 27
    new-instance v0, Lcom/winlator/cmod/xserver/ResourceIDs;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/winlator/cmod/xserver/ResourceIDs;-><init>(I)V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->resourceIDs:Lcom/winlator/cmod/xserver/ResourceIDs;

    .line 28
    new-instance v0, Lcom/winlator/cmod/xserver/GraphicsContextManager;

    invoke-direct {v0}, Lcom/winlator/cmod/xserver/GraphicsContextManager;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->graphicsContextManager:Lcom/winlator/cmod/xserver/GraphicsContextManager;

    .line 33
    invoke-static {p0}, Lcom/winlator/cmod/xserver/Keyboard;->createKeyboard(Lcom/winlator/cmod/xserver/XServer;)Lcom/winlator/cmod/xserver/Keyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->keyboard:Lcom/winlator/cmod/xserver/Keyboard;

    .line 34
    new-instance v0, Lcom/winlator/cmod/xserver/Pointer;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/xserver/Pointer;-><init>(Lcom/winlator/cmod/xserver/XServer;)V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    .line 41
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/winlator/cmod/xserver/XServer$Lockable;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->locks:Ljava/util/EnumMap;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/xserver/XServer;->relativeMouseMovement:Z

    .line 43
    iput-boolean v0, p0, Lcom/winlator/cmod/xserver/XServer;->simulateTouchScreen:Z

    .line 44
    iput-boolean v0, p0, Lcom/winlator/cmod/xserver/XServer;->isGrabbed:Z

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->grabbingClient:Lcom/winlator/cmod/xserver/XClient;

    .line 48
    iput-object p1, p0, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    .line 49
    new-instance v1, Lcom/winlator/cmod/core/CursorLocker;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/core/CursorLocker;-><init>(Lcom/winlator/cmod/xserver/XServer;)V

    iput-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->cursorLocker:Lcom/winlator/cmod/core/CursorLocker;

    .line 50
    invoke-static {}, Lcom/winlator/cmod/xserver/XServer$Lockable;->values()[Lcom/winlator/cmod/xserver/XServer$Lockable;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .local v3, "lockable":Lcom/winlator/cmod/xserver/XServer$Lockable;
    iget-object v4, p0, Lcom/winlator/cmod/xserver/XServer;->locks:Ljava/util/EnumMap;

    new-instance v5, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v3    # "lockable":Lcom/winlator/cmod/xserver/XServer$Lockable;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lcom/winlator/cmod/xserver/PixmapManager;

    invoke-direct {v0}, Lcom/winlator/cmod/xserver/PixmapManager;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->pixmapManager:Lcom/winlator/cmod/xserver/PixmapManager;

    .line 53
    new-instance v0, Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/xserver/DrawableManager;-><init>(Lcom/winlator/cmod/xserver/XServer;)V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    .line 54
    new-instance v0, Lcom/winlator/cmod/xserver/CursorManager;

    iget-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-direct {v0, v1}, Lcom/winlator/cmod/xserver/CursorManager;-><init>(Lcom/winlator/cmod/xserver/DrawableManager;)V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->cursorManager:Lcom/winlator/cmod/xserver/CursorManager;

    .line 55
    new-instance v0, Lcom/winlator/cmod/xserver/WindowManager;

    iget-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->drawableManager:Lcom/winlator/cmod/xserver/DrawableManager;

    invoke-direct {v0, p1, v1}, Lcom/winlator/cmod/xserver/WindowManager;-><init>(Lcom/winlator/cmod/xserver/ScreenInfo;Lcom/winlator/cmod/xserver/DrawableManager;)V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    .line 56
    new-instance v0, Lcom/winlator/cmod/xserver/SelectionManager;

    iget-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->windowManager:Lcom/winlator/cmod/xserver/WindowManager;

    invoke-direct {v0, v1}, Lcom/winlator/cmod/xserver/SelectionManager;-><init>(Lcom/winlator/cmod/xserver/WindowManager;)V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->selectionManager:Lcom/winlator/cmod/xserver/SelectionManager;

    .line 57
    new-instance v0, Lcom/winlator/cmod/xserver/InputDeviceManager;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/xserver/InputDeviceManager;-><init>(Lcom/winlator/cmod/xserver/XServer;)V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->inputDeviceManager:Lcom/winlator/cmod/xserver/InputDeviceManager;

    .line 58
    new-instance v0, Lcom/winlator/cmod/xserver/GrabManager;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/xserver/GrabManager;-><init>(Lcom/winlator/cmod/xserver/XServer;)V

    iput-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->grabManager:Lcom/winlator/cmod/xserver/GrabManager;

    .line 60
    invoke-static {p0}, Lcom/winlator/cmod/xserver/DesktopHelper;->attachTo(Lcom/winlator/cmod/xserver/XServer;)V

    .line 61
    invoke-direct {p0}, Lcom/winlator/cmod/xserver/XServer;->setupExtensions()V

    .line 62
    return-void
.end method

.method private setupExtensions()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->extensions:Landroid/util/SparseArray;

    new-instance v1, Lcom/winlator/cmod/xserver/extensions/BigReqExtension;

    invoke-direct {v1}, Lcom/winlator/cmod/xserver/extensions/BigReqExtension;-><init>()V

    const/16 v2, -0x64

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->extensions:Landroid/util/SparseArray;

    new-instance v1, Lcom/winlator/cmod/xserver/extensions/MITSHMExtension;

    invoke-direct {v1}, Lcom/winlator/cmod/xserver/extensions/MITSHMExtension;-><init>()V

    const/16 v2, -0x65

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->extensions:Landroid/util/SparseArray;

    new-instance v1, Lcom/winlator/cmod/xserver/extensions/DRI3Extension;

    invoke-direct {v1}, Lcom/winlator/cmod/xserver/extensions/DRI3Extension;-><init>()V

    const/16 v2, -0x66

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->extensions:Landroid/util/SparseArray;

    new-instance v1, Lcom/winlator/cmod/xserver/extensions/PresentExtension;

    invoke-direct {v1}, Lcom/winlator/cmod/xserver/extensions/PresentExtension;-><init>()V

    const/16 v2, -0x67

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->extensions:Landroid/util/SparseArray;

    new-instance v1, Lcom/winlator/cmod/xserver/extensions/SyncExtension;

    invoke-direct {v1}, Lcom/winlator/cmod/xserver/extensions/SyncExtension;-><init>()V

    const/16 v2, -0x68

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    return-void
.end method


# virtual methods
.method public getExtension(I)Lcom/winlator/cmod/xserver/extensions/Extension;
    .locals 1
    .param p1, "opcode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/winlator/cmod/xserver/extensions/Extension;",
            ">(I)TT;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->extensions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/xserver/extensions/Extension;

    return-object v0
.end method

.method public getExtensionByName(Ljava/lang/String;)Lcom/winlator/cmod/xserver/extensions/Extension;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->extensions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->extensions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/xserver/extensions/Extension;

    .line 148
    .local v1, "extension":Lcom/winlator/cmod/xserver/extensions/Extension;
    invoke-interface {v1}, Lcom/winlator/cmod/xserver/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 146
    .end local v1    # "extension":Lcom/winlator/cmod/xserver/extensions/Extension;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderer()Lcom/winlator/cmod/renderer/GLRenderer;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    return-object v0
.end method

.method public getSHMSegmentManager()Lcom/winlator/cmod/xserver/SHMSegmentManager;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->shmSegmentManager:Lcom/winlator/cmod/xserver/SHMSegmentManager;

    return-object v0
.end method

.method public getWinHandler()Lcom/winlator/cmod/winhandler/WinHandler;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    return-object v0
.end method

.method public injectKeyPress(Lcom/winlator/cmod/xserver/XKeycode;)V
    .locals 1
    .param p1, "xKeycode"    # Lcom/winlator/cmod/xserver/XKeycode;

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/winlator/cmod/xserver/XServer;->injectKeyPress(Lcom/winlator/cmod/xserver/XKeycode;I)V

    .line 179
    return-void
.end method

.method public injectKeyPress(Lcom/winlator/cmod/xserver/XKeycode;I)V
    .locals 3
    .param p1, "xKeycode"    # Lcom/winlator/cmod/xserver/XKeycode;
    .param p2, "keysym"    # I

    .line 182
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

    .line 183
    .local v0, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->keyboard:Lcom/winlator/cmod/xserver/Keyboard;

    iget-byte v2, p1, Lcom/winlator/cmod/xserver/XKeycode;->id:B

    invoke-virtual {v1, v2, p2}, Lcom/winlator/cmod/xserver/Keyboard;->setKeyPress(BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 185
    .end local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_0
    return-void

    .line 182
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

.method public injectKeyRelease(Lcom/winlator/cmod/xserver/XKeycode;)V
    .locals 3
    .param p1, "xKeycode"    # Lcom/winlator/cmod/xserver/XKeycode;

    .line 188
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

    .line 189
    .local v0, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->keyboard:Lcom/winlator/cmod/xserver/Keyboard;

    iget-byte v2, p1, Lcom/winlator/cmod/xserver/XKeycode;->id:B

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/xserver/Keyboard;->setKeyRelease(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 191
    .end local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_0
    return-void

    .line 188
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

.method public injectPointerButtonPress(Lcom/winlator/cmod/xserver/Pointer$Button;)V
    .locals 3
    .param p1, "buttonCode"    # Lcom/winlator/cmod/xserver/Pointer$Button;

    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    const/4 v1, 0x0

    sget-object v2, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v2, v0, v1

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v0

    .line 167
    .local v0, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v1, p1, v2}, Lcom/winlator/cmod/xserver/Pointer;->setButton(Lcom/winlator/cmod/xserver/Pointer$Button;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 169
    .end local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_0
    return-void

    .line 166
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

.method public injectPointerButtonRelease(Lcom/winlator/cmod/xserver/Pointer$Button;)V
    .locals 4
    .param p1, "buttonCode"    # Lcom/winlator/cmod/xserver/Pointer$Button;

    .line 172
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v1, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v3, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    aput-object v3, v0, v1

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v0

    .line 173
    .local v0, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v1, p1, v2}, Lcom/winlator/cmod/xserver/Pointer;->setButton(Lcom/winlator/cmod/xserver/Pointer$Button;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 175
    .end local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_0
    return-void

    .line 172
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

.method public injectPointerMove(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 154
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

    .line 155
    .local v0, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v1, p1, p2}, Lcom/winlator/cmod/xserver/Pointer;->setPosition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 157
    .end local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_0
    return-void

    .line 154
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

.method public injectPointerMoveDelta(II)V
    .locals 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 160
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

    .line 161
    .local v0, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    iget-object v2, p0, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v2}, Lcom/winlator/cmod/xserver/Pointer;->getX()S

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v3}, Lcom/winlator/cmod/xserver/Pointer;->getY()S

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/winlator/cmod/xserver/Pointer;->setPosition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 163
    .end local v0    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_0
    return-void

    .line 160
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

.method public declared-synchronized isGrabbedBy(Lcom/winlator/cmod/xserver/XClient;)Z
    .locals 1
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;

    monitor-enter p0

    .line 211
    :try_start_0
    iget-boolean v0, p0, Lcom/winlator/cmod/xserver/XServer;->isGrabbed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->grabbingClient:Lcom/winlator/cmod/xserver/XClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/winlator/cmod/xserver/XServer;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 211
    .end local p1    # "client":Lcom/winlator/cmod/xserver/XClient;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isRelativeMouseMovement()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/winlator/cmod/xserver/XServer;->relativeMouseMovement:Z

    return v0
.end method

.method public isSimulateTouchScreen()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/winlator/cmod/xserver/XServer;->simulateTouchScreen:Z

    return v0
.end method

.method public lock(Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;
    .locals 2
    .param p1, "lockable"    # Lcom/winlator/cmod/xserver/XServer$Lockable;

    .line 134
    new-instance v0, Lcom/winlator/cmod/xserver/XServer$SingleXLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/winlator/cmod/xserver/XServer$SingleXLock;-><init>(Lcom/winlator/cmod/xserver/XServer;Lcom/winlator/cmod/xserver/XServer$Lockable;Lcom/winlator/cmod/xserver/XServer-IA;)V

    return-object v0
.end method

.method public varargs lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;
    .locals 2
    .param p1, "lockables"    # [Lcom/winlator/cmod/xserver/XServer$Lockable;

    .line 138
    new-instance v0, Lcom/winlator/cmod/xserver/XServer$MultiXLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/winlator/cmod/xserver/XServer$MultiXLock;-><init>(Lcom/winlator/cmod/xserver/XServer;[Lcom/winlator/cmod/xserver/XServer$Lockable;Lcom/winlator/cmod/xserver/XServer-IA;)V

    return-object v0
.end method

.method public lockAll()Lcom/winlator/cmod/xserver/XLock;
    .locals 3

    .line 142
    new-instance v0, Lcom/winlator/cmod/xserver/XServer$MultiXLock;

    invoke-static {}, Lcom/winlator/cmod/xserver/XServer$Lockable;->values()[Lcom/winlator/cmod/xserver/XServer$Lockable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/winlator/cmod/xserver/XServer$MultiXLock;-><init>(Lcom/winlator/cmod/xserver/XServer;[Lcom/winlator/cmod/xserver/XServer$Lockable;Lcom/winlator/cmod/xserver/XServer-IA;)V

    return-object v0
.end method

.method public declared-synchronized setGrabbed(ZLcom/winlator/cmod/xserver/XClient;)V
    .locals 0
    .param p1, "grabbed"    # Z
    .param p2, "client"    # Lcom/winlator/cmod/xserver/XClient;

    monitor-enter p0

    .line 206
    :try_start_0
    iput-boolean p1, p0, Lcom/winlator/cmod/xserver/XServer;->isGrabbed:Z

    .line 207
    iput-object p2, p0, Lcom/winlator/cmod/xserver/XServer;->grabbingClient:Lcom/winlator/cmod/xserver/XClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 205
    .end local p0    # "this":Lcom/winlator/cmod/xserver/XServer;
    .end local p1    # "grabbed":Z
    .end local p2    # "client":Lcom/winlator/cmod/xserver/XClient;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setRelativeMouseMovement(Z)V
    .locals 2
    .param p1, "relativeMouseMovement"    # Z

    .line 69
    iget-object v0, p0, Lcom/winlator/cmod/xserver/XServer;->cursorLocker:Lcom/winlator/cmod/core/CursorLocker;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/core/CursorLocker;->setEnabled(Z)V

    .line 70
    iput-boolean p1, p0, Lcom/winlator/cmod/xserver/XServer;->relativeMouseMovement:Z

    .line 71
    return-void
.end method

.method public setRenderer(Lcom/winlator/cmod/renderer/GLRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/winlator/cmod/renderer/GLRenderer;

    .line 84
    iput-object p1, p0, Lcom/winlator/cmod/xserver/XServer;->renderer:Lcom/winlator/cmod/renderer/GLRenderer;

    .line 85
    return-void
.end method

.method public setSHMSegmentManager(Lcom/winlator/cmod/xserver/SHMSegmentManager;)V
    .locals 0
    .param p1, "shmSegmentManager"    # Lcom/winlator/cmod/xserver/SHMSegmentManager;

    .line 100
    iput-object p1, p0, Lcom/winlator/cmod/xserver/XServer;->shmSegmentManager:Lcom/winlator/cmod/xserver/SHMSegmentManager;

    .line 101
    return-void
.end method

.method public setSimulateTouchScreen(Z)V
    .locals 0
    .param p1, "simulateTouchScreen"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/winlator/cmod/xserver/XServer;->simulateTouchScreen:Z

    .line 77
    return-void
.end method

.method public setWinHandler(Lcom/winlator/cmod/winhandler/WinHandler;)V
    .locals 0
    .param p1, "winHandler"    # Lcom/winlator/cmod/winhandler/WinHandler;

    .line 92
    iput-object p1, p0, Lcom/winlator/cmod/xserver/XServer;->winHandler:Lcom/winlator/cmod/winhandler/WinHandler;

    .line 93
    return-void
.end method
