.class public Lcom/winlator/cmod/winhandler/WinHandler;
.super Ljava/lang/Object;
.source "WinHandler.java"


# static fields
.field private static final CLIENT_PORT:S = 0x1f0as

.field public static final DEFAULT_INPUT_TYPE:B = 0x4t

.field public static final FLAG_INPUT_TYPE_DINPUT:B = 0x8t

.field public static final FLAG_INPUT_TYPE_XINPUT:B = 0x4t

.field private static final MAX_CONTROLLERS:I = 0x4

.field private static final OSC_DEVICE_ID:I = -0x1

.field private static final SERVER_PORT:S = 0x1f0bs


# instance fields
.field private final actions:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final activity:Lcom/winlator/cmod/XServerDisplayActivity;

.field private final controllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/winlator/cmod/inputcontrols/ExternalController;",
            ">;"
        }
    .end annotation
.end field

.field private deviceToSlot:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fakeInputBasePath:Ljava/lang/String;

.field private final gamepadClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initReceived:Z

.field private final inputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private final inputManager:Landroid/hardware/input/InputManager;

.field private inputType:B

.field private localhost:Ljava/net/InetAddress;

.field private onGetProcessInfoListener:Lcom/winlator/cmod/winhandler/OnGetProcessInfoListener;

.field private preferences:Landroid/content/SharedPreferences;

.field private final receiveData:Ljava/nio/ByteBuffer;

.field private final receivePacket:Ljava/net/DatagramPacket;

.field private running:Z

.field private final sendData:Ljava/nio/ByteBuffer;

.field private final sendPacket:Ljava/net/DatagramPacket;

.field private socket:Ljava/net/DatagramSocket;

.field private usedSlots:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private writers:[Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

.field private xinputDisabled:Z

.field private xinputDisabledInitialized:Z


# direct methods
.method public static synthetic $r8$lambda$1nYlfYbZ9ImdNOh51w7SB1rQftI(Lcom/winlator/cmod/winhandler/WinHandler;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/winhandler/WinHandler;->lambda$mouseEvent$5(IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$284UMzq5mN4ndsgUfPqqfZqxbmg(Lcom/winlator/cmod/winhandler/WinHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/winhandler/WinHandler;->lambda$start$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$6P0XTp79Q72Zmir54xO5Pkv0BXY(Lcom/winlator/cmod/winhandler/WinHandler;BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/winhandler/WinHandler;->lambda$keyboardEvent$6(BI)V

    return-void
.end method

.method public static synthetic $r8$lambda$CVOME_s-RHrOzpMH4h1A0fqx044(Lcom/winlator/cmod/winhandler/WinHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/winhandler/WinHandler;->lambda$exec$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IZtjtuRAt2V2BGB4xLKZ4a8dVpk(Lcom/winlator/cmod/winhandler/WinHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/winhandler/WinHandler;->lambda$startSendThread$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$LROSmA4RU8fbSMBTE23_VA-kAW8(Lcom/winlator/cmod/winhandler/WinHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/winhandler/WinHandler;->lambda$execWithDelay$10(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SHuAU_hAfDxvHJq0Ox_blaeY72A(Lcom/winlator/cmod/winhandler/WinHandler;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/winhandler/WinHandler;->lambda$bringToFront$7(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$f7_RZJffy7ODE4kgP6s8OOMZnaE(Lcom/winlator/cmod/winhandler/WinHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/winhandler/WinHandler;->lambda$listProcesses$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$iBULFf_rmNQa9AAohGO6lpEKIPk(Lcom/winlator/cmod/winhandler/WinHandler;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/winhandler/WinHandler;->lambda$setProcessAffinity$4(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$tKa8CljOKbeZd1veoOnRMHgUUpE(Lcom/winlator/cmod/winhandler/WinHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/winhandler/WinHandler;->lambda$killProcess$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uFqwVRjlRh-PJV6WNZ-jBVgtE-w(Lcom/winlator/cmod/winhandler/WinHandler;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/winhandler/WinHandler;->lambda$setProcessAffinity$3(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseSlot(Lcom/winlator/cmod/winhandler/WinHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/winhandler/WinHandler;->releaseSlot(I)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/XServerDisplayActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/winlator/cmod/XServerDisplayActivity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    .line 51
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    .line 52
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    .line 53
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->receivePacket:Ljava/net/DatagramPacket;

    .line 54
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->initReceived:Z

    .line 56
    iput-boolean v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->running:Z

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->controllers:Ljava/util/Map;

    .line 61
    const/4 v1, 0x4

    iput-byte v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->inputType:B

    .line 63
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->gamepadClients:Ljava/util/List;

    .line 69
    new-array v1, v1, [Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    iput-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->writers:[Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->deviceToSlot:Ljava/util/Map;

    .line 71
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->usedSlots:Ljava/util/Set;

    .line 75
    iput-boolean v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->xinputDisabledInitialized:Z

    .line 81
    iput-object p1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    .line 82
    const-string v0, "input"

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->inputManager:Landroid/hardware/input/InputManager;

    .line 83
    new-instance v0, Lcom/winlator/cmod/winhandler/WinHandler$1;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/winhandler/WinHandler$1;-><init>(Lcom/winlator/cmod/winhandler/WinHandler;)V

    iput-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->inputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 97
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->inputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->inputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 99
    invoke-virtual {p1}, Lcom/winlator/cmod/XServerDisplayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->preferences:Landroid/content/SharedPreferences;

    .line 100
    return-void
.end method

.method private addAction(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 266
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 269
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private assignSlot(I)I
    .locals 6
    .param p1, "deviceId"    # I

    .line 460
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->deviceToSlot:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 461
    .local v0, "existing":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 464
    :cond_0
    const/4 v1, 0x0

    .local v1, "slot":I
    :goto_0
    const/4 v2, 0x4

    const-string v3, "WinHandler"

    if-ge v1, v2, :cond_3

    .line 465
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->usedSlots:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 466
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->usedSlots:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->deviceToSlot:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->fakeInputBasePath:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->writers:[Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 469
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->writers:[Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    new-instance v4, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    iget-object v5, p0, Lcom/winlator/cmod/winhandler/WinHandler;->fakeInputBasePath:Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v1

    .line 470
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->writers:[Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->open()Z

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Assigned device "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to slot "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_1
    return v1

    .line 464
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v1    # "slot":I
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No slots available for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v1, -0x1

    return v1
.end method

.method private getController(I)Lcom/winlator/cmod/inputcontrols/ExternalController;
    .locals 3
    .param p1, "deviceId"    # I

    .line 528
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->controllers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->controllers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/inputcontrols/ExternalController;

    return-object v0

    .line 531
    :cond_0
    invoke-static {p1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getController(I)Lcom/winlator/cmod/inputcontrols/ExternalController;

    move-result-object v0

    .line 532
    .local v0, "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    if-eqz v0, :cond_1

    .line 533
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->controllers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_1
    return-object v0
.end method

.method private handleRequest(BI)V
    .locals 18
    .param p1, "requestCode"    # B
    .param p2, "port"    # I

    .line 312
    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 358
    :sswitch_0
    iget-object v0, v1, Lcom/winlator/cmod/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 359
    .local v0, "x":S
    iget-object v2, v1, Lcom/winlator/cmod/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 360
    .local v2, "y":S
    iget-object v3, v1, Lcom/winlator/cmod/winhandler/WinHandler;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v3}, Lcom/winlator/cmod/XServerDisplayActivity;->getXServer()Lcom/winlator/cmod/xserver/XServer;

    move-result-object v3

    .line 361
    .local v3, "xServer":Lcom/winlator/cmod/xserver/XServer;
    iget-object v4, v3, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v4, v0}, Lcom/winlator/cmod/xserver/Pointer;->setX(I)V

    .line 362
    iget-object v4, v3, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    invoke-virtual {v4, v2}, Lcom/winlator/cmod/xserver/Pointer;->setY(I)V

    .line 363
    iget-object v4, v1, Lcom/winlator/cmod/winhandler/WinHandler;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v4}, Lcom/winlator/cmod/XServerDisplayActivity;->getXServerView()Lcom/winlator/cmod/widget/XServerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/winlator/cmod/widget/XServerView;->requestRender()V

    .line 364
    goto/16 :goto_1

    .line 350
    .end local v0    # "x":S
    .end local v2    # "y":S
    .end local v3    # "xServer":Lcom/winlator/cmod/xserver/XServer;
    :sswitch_1
    goto/16 :goto_1

    .line 347
    :sswitch_2
    goto/16 :goto_1

    .line 328
    :sswitch_3
    iget-object v3, v1, Lcom/winlator/cmod/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/winlator/cmod/winhandler/OnGetProcessInfoListener;

    if-nez v3, :cond_0

    .line 329
    return-void

    .line 330
    :cond_0
    iget-object v3, v1, Lcom/winlator/cmod/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    iget-object v4, v1, Lcom/winlator/cmod/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 331
    iget-object v3, v1, Lcom/winlator/cmod/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 332
    .local v3, "numProcesses":I
    iget-object v4, v1, Lcom/winlator/cmod/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 333
    .local v4, "index":I
    iget-object v5, v1, Lcom/winlator/cmod/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 334
    .local v5, "pid":I
    iget-object v6, v1, Lcom/winlator/cmod/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v13

    .line 335
    .local v13, "memoryUsage":J
    iget-object v6, v1, Lcom/winlator/cmod/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    .line 336
    .local v15, "affinityMask":I
    iget-object v6, v1, Lcom/winlator/cmod/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    if-ne v6, v2, :cond_1

    move v12, v2

    goto :goto_0

    :cond_1
    move v12, v0

    .line 338
    .local v12, "wow64Process":Z
    :goto_0
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 339
    .local v0, "bytes":[B
    iget-object v2, v1, Lcom/winlator/cmod/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 340
    invoke-static {v0}, Lcom/winlator/cmod/core/StringUtils;->fromANSIString([B)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "name":Ljava/lang/String;
    iget-object v11, v1, Lcom/winlator/cmod/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/winlator/cmod/winhandler/OnGetProcessInfoListener;

    new-instance v9, Lcom/winlator/cmod/winhandler/ProcessInfo;

    move-object v6, v9

    move v7, v5

    move-object v8, v2

    move-object/from16 v16, v0

    move-object v0, v9

    .end local v0    # "bytes":[B
    .local v16, "bytes":[B
    move-wide v9, v13

    move-object/from16 v17, v2

    move-object v2, v11

    .end local v2    # "name":Ljava/lang/String;
    .local v17, "name":Ljava/lang/String;
    move v11, v15

    invoke-direct/range {v6 .. v12}, Lcom/winlator/cmod/winhandler/ProcessInfo;-><init>(ILjava/lang/String;JIZ)V

    invoke-interface {v2, v4, v3, v0}, Lcom/winlator/cmod/winhandler/OnGetProcessInfoListener;->onGetProcessInfo(IILcom/winlator/cmod/winhandler/ProcessInfo;)V

    .line 344
    goto :goto_1

    .line 314
    .end local v3    # "numProcesses":I
    .end local v4    # "index":I
    .end local v5    # "pid":I
    .end local v12    # "wow64Process":Z
    .end local v13    # "memoryUsage":J
    .end local v15    # "affinityMask":I
    .end local v16    # "bytes":[B
    .end local v17    # "name":Ljava/lang/String;
    :sswitch_4
    iput-boolean v2, v1, Lcom/winlator/cmod/winhandler/WinHandler;->initReceived:Z

    .line 316
    iget-object v2, v1, Lcom/winlator/cmod/winhandler/WinHandler;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v2}, Lcom/winlator/cmod/XServerDisplayActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v1, Lcom/winlator/cmod/winhandler/WinHandler;->preferences:Landroid/content/SharedPreferences;

    .line 318
    iget-boolean v2, v1, Lcom/winlator/cmod/winhandler/WinHandler;->xinputDisabledInitialized:Z

    if-nez v2, :cond_2

    .line 319
    iget-object v2, v1, Lcom/winlator/cmod/winhandler/WinHandler;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "xinput_toggle"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/winlator/cmod/winhandler/WinHandler;->xinputDisabled:Z

    .line 321
    :cond_2
    iget-object v2, v1, Lcom/winlator/cmod/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 322
    :try_start_0
    iget-object v0, v1, Lcom/winlator/cmod/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 323
    monitor-exit v2

    .line 324
    goto :goto_1

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 371
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x5 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private synthetic lambda$bringToFront$7(Ljava/lang/String;J)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "handle"    # J

    .line 248
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 252
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 255
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 256
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    nop

    .end local v0    # "bytes":[B
    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/nio/BufferOverflowException;
    invoke-virtual {v0}, Ljava/nio/BufferOverflowException;->printStackTrace()V

    .line 259
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 261
    .end local v0    # "e":Ljava/nio/BufferOverflowException;
    :goto_0
    const/16 v0, 0x1f0a

    invoke-direct {p0, v0}, Lcom/winlator/cmod/winhandler/WinHandler;->sendPacket(I)Z

    .line 262
    return-void
.end method

.method private synthetic lambda$exec$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 152
    .local v0, "filenameBytes":[B
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 154
    .local v1, "parametersBytes":[B
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 155
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 156
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 157
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 158
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 159
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 160
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 161
    const/16 v2, 0x1f0a

    invoke-direct {p0, v2}, Lcom/winlator/cmod/winhandler/WinHandler;->sendPacket(I)Z

    .line 162
    return-void
.end method

.method private synthetic lambda$execWithDelay$10(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 582
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/winhandler/WinHandler;->exec(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$keyboardEvent$6(BI)V
    .locals 2
    .param p1, "vkey"    # B
    .param p2, "flags"    # I

    .line 234
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 235
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 236
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 237
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 238
    const/16 v0, 0x1f0a

    invoke-direct {p0, v0}, Lcom/winlator/cmod/winhandler/WinHandler;->sendPacket(I)Z

    .line 239
    return-void
.end method

.method private synthetic lambda$killProcess$1(Ljava/lang/String;)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 168
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 170
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 171
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 172
    const/16 v1, 0x1f0a

    invoke-direct {p0, v1}, Lcom/winlator/cmod/winhandler/WinHandler;->sendPacket(I)Z

    .line 173
    return-void
.end method

.method private synthetic lambda$listProcesses$2()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 179
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 180
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 182
    const/16 v0, 0x1f0a

    invoke-direct {p0, v0}, Lcom/winlator/cmod/winhandler/WinHandler;->sendPacket(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/winlator/cmod/winhandler/OnGetProcessInfoListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/winlator/cmod/winhandler/OnGetProcessInfoListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v1, v2}, Lcom/winlator/cmod/winhandler/OnGetProcessInfoListener;->onGetProcessInfo(IILcom/winlator/cmod/winhandler/ProcessInfo;)V

    .line 185
    :cond_0
    return-void
.end method

.method private synthetic lambda$mouseEvent$5(IIII)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "wheelDelta"    # I

    .line 218
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 219
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 220
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 221
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 222
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    int-to-short v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 223
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    int-to-short v1, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 224
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    int-to-short v1, p4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 225
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 226
    const/16 v0, 0x1f0a

    invoke-direct {p0, v0}, Lcom/winlator/cmod/winhandler/WinHandler;->sendPacket(I)Z

    .line 227
    return-void
.end method

.method private synthetic lambda$setProcessAffinity$3(Ljava/lang/String;I)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "affinityMask"    # I

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 191
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 192
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 193
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x9

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 194
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 195
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 196
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v2, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 197
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 198
    const/16 v1, 0x1f0a

    invoke-direct {p0, v1}, Lcom/winlator/cmod/winhandler/WinHandler;->sendPacket(I)Z

    .line 199
    return-void
.end method

.method private synthetic lambda$setProcessAffinity$4(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "affinityMask"    # I

    .line 204
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 205
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 206
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 207
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 208
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 209
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 210
    const/16 v0, 0x1f0a

    invoke-direct {p0, v0}, Lcom/winlator/cmod/winhandler/WinHandler;->sendPacket(I)Z

    .line 211
    return-void
.end method

.method private synthetic lambda$start$9()V
    .locals 4

    .line 387
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    .line 388
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 389
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    move-object v3, v1

    check-cast v3, Ljava/net/InetAddress;

    const/16 v3, 0x1f0b

    invoke-direct {v2, v1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 391
    :goto_0
    iget-boolean v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->running:Z

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 394
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :try_start_1
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 396
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 397
    .local v1, "requestCode":B
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/winlator/cmod/winhandler/WinHandler;->handleRequest(BI)V

    .line 398
    .end local v1    # "requestCode":B
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 401
    :cond_0
    goto :goto_1

    .line 400
    :catch_0
    move-exception v0

    .line 402
    :goto_1
    return-void
.end method

.method private synthetic lambda$startSendThread$8()V
    .locals 2

    .line 284
    nop

    :goto_0
    iget-boolean v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->running:Z

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 286
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->initReceived:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 289
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    goto :goto_2

    .line 290
    :catch_0
    move-exception v1

    .line 292
    :goto_2
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 294
    :cond_1
    return-void
.end method

.method private releaseSlot(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .line 481
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->deviceToSlot:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 482
    .local v0, "slot":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 483
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->writers:[Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->writers:[Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->softRelease()V

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->usedSlots:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 490
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->controllers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disconnected (or OSC disabled). Slot soft-released: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WinHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_1
    return-void
.end method

.method private sendPacket(I)Z
    .locals 4
    .param p1, "port"    # I

    .line 104
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 105
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 106
    return v0

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    iget-object v3, p0, Lcom/winlator/cmod/winhandler/WinHandler;->localhost:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 108
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v2, p1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 109
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    iget-object v3, p0, Lcom/winlator/cmod/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    const/4 v0, 0x1

    return v0

    .line 111
    .end local v1    # "size":I
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method

.method private startSendThread()V
    .locals 2

    .line 283
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda10;-><init>(Lcom/winlator/cmod/winhandler/WinHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method


# virtual methods
.method public bringToFront(Ljava/lang/String;)V
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;

    .line 243
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/winlator/cmod/winhandler/WinHandler;->bringToFront(Ljava/lang/String;J)V

    .line 244
    return-void
.end method

.method public bringToFront(Ljava/lang/String;J)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "handle"    # J

    .line 247
    new-instance v0, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/winhandler/WinHandler;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/winlator/cmod/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method public closeFakeInputWriter()V
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->inputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->inputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->inputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->inputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 516
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 517
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->writers:[Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->writers:[Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->destroy()V

    .line 519
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->writers:[Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 516
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->deviceToSlot:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 523
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->usedSlots:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 524
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->controllers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 525
    return-void
.end method

.method public exec(Ljava/lang/String;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    return-void

    .line 129
    :cond_0
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 132
    .local v1, "firstQuote":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 133
    .local v0, "lastQuote":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "filename":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 135
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .local v3, "parameters":Ljava/lang/String;
    goto :goto_0

    .line 137
    .end local v3    # "parameters":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    .line 139
    .end local v0    # "lastQuote":I
    .end local v1    # "firstQuote":I
    .restart local v3    # "parameters":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 141
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "parameters":Ljava/lang/String;
    :cond_2
    const-string v0, " "

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "cmdList":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 143
    .restart local v2    # "filename":Ljava/lang/String;
    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 144
    aget-object v3, v0, v3

    .restart local v3    # "parameters":Ljava/lang/String;
    goto :goto_1

    .line 146
    .end local v3    # "parameters":Ljava/lang/String;
    :cond_3
    const-string v3, ""

    .line 150
    .end local v0    # "cmdList":[Ljava/lang/String;
    .restart local v3    # "parameters":Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, v2, v3}, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda8;-><init>(Lcom/winlator/cmod/winhandler/WinHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/winlator/cmod/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method

.method public execWithDelay(Ljava/lang/String;I)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "delaySeconds"    # I

    .line 578
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda9;-><init>(Lcom/winlator/cmod/winhandler/WinHandler;Ljava/lang/String;)V

    int-to-long v2, p2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 583
    return-void

    .line 579
    :cond_1
    :goto_0
    return-void
.end method

.method public getInputType()B
    .locals 1

    .line 570
    iget-byte v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->inputType:B

    return v0
.end method

.method public getOnGetProcessInfoListener()Lcom/winlator/cmod/winhandler/OnGetProcessInfoListener;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/winlator/cmod/winhandler/OnGetProcessInfoListener;

    return-object v0
.end method

.method public keyboardEvent(BI)V
    .locals 1
    .param p1, "vkey"    # B
    .param p2, "flags"    # I

    .line 231
    iget-boolean v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->initReceived:Z

    if-nez v0, :cond_0

    .line 232
    return-void

    .line 233
    :cond_0
    new-instance v0, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/winhandler/WinHandler;BI)V

    invoke-direct {p0, v0}, Lcom/winlator/cmod/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method

.method public killProcess(Ljava/lang/String;)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 166
    new-instance v0, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/winhandler/WinHandler;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/winlator/cmod/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public listProcesses()V
    .locals 1

    .line 177
    new-instance v0, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/winhandler/WinHandler;)V

    invoke-direct {p0, v0}, Lcom/winlator/cmod/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public mouseEvent(IIII)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "wheelDelta"    # I

    .line 215
    iget-boolean v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->initReceived:Z

    if-nez v0, :cond_0

    .line 216
    return-void

    .line 217
    :cond_0
    new-instance v0, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda1;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/winhandler/WinHandler;IIII)V

    invoke-direct {p0, v0}, Lcom/winlator/cmod/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/winlator/cmod/winhandler/WinHandler;->getController(I)Lcom/winlator/cmod/inputcontrols/ExternalController;

    move-result-object v1

    .line 542
    .local v1, "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    if-eqz v1, :cond_0

    .line 543
    invoke-virtual {v1, p1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->updateStateFromMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 544
    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/winhandler/WinHandler;->sendGamepadState(Lcom/winlator/cmod/inputcontrols/ExternalController;)V

    .line 547
    :cond_0
    return v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/winlator/cmod/winhandler/WinHandler;->getController(I)Lcom/winlator/cmod/inputcontrols/ExternalController;

    move-result-object v1

    .line 554
    .local v1, "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 555
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 557
    .local v2, "action":I
    if-nez v2, :cond_0

    .line 558
    invoke-virtual {v1, p1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->updateStateFromKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 559
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 560
    invoke-virtual {v1, p1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->updateStateFromKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 563
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 564
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/winhandler/WinHandler;->sendGamepadState(Lcom/winlator/cmod/inputcontrols/ExternalController;)V

    .line 566
    .end local v2    # "action":I
    :cond_2
    return v0
.end method

.method public sendGamepadState()V
    .locals 5

    .line 406
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->getInputControlsView()Lcom/winlator/cmod/widget/InputControlsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->getProfile()Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v0

    .line 407
    .local v0, "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    if-nez v0, :cond_0

    .line 408
    return-void

    .line 410
    :cond_0
    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getGamepadState()Lcom/winlator/cmod/inputcontrols/GamepadState;

    move-result-object v1

    .line 411
    .local v1, "gamepadState":Lcom/winlator/cmod/inputcontrols/GamepadState;
    invoke-virtual {v0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->isVirtualGamepad()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    .line 412
    invoke-virtual {v2}, Lcom/winlator/cmod/XServerDisplayActivity;->getInputControlsView()Lcom/winlator/cmod/widget/InputControlsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/winlator/cmod/widget/InputControlsView;->isShowTouchscreenControls()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 415
    .local v2, "useVirtualGamepad":Z
    :goto_0
    const/4 v3, -0x1

    if-eqz v2, :cond_3

    .line 416
    invoke-direct {p0, v3}, Lcom/winlator/cmod/winhandler/WinHandler;->assignSlot(I)I

    move-result v3

    .line 417
    .local v3, "slot":I
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/winlator/cmod/winhandler/WinHandler;->writers:[Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 418
    iget-object v4, p0, Lcom/winlator/cmod/winhandler/WinHandler;->writers:[Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeGamepadState(Lcom/winlator/cmod/inputcontrols/GamepadState;)V

    .line 420
    .end local v3    # "slot":I
    :cond_2
    goto :goto_1

    .line 421
    :cond_3
    invoke-direct {p0, v3}, Lcom/winlator/cmod/winhandler/WinHandler;->releaseSlot(I)V

    .line 425
    :goto_1
    return-void
.end method

.method public sendGamepadState(Lcom/winlator/cmod/inputcontrols/ExternalController;)V
    .locals 5
    .param p1, "controller"    # Lcom/winlator/cmod/inputcontrols/ExternalController;

    .line 428
    if-nez p1, :cond_0

    .line 429
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v0}, Lcom/winlator/cmod/XServerDisplayActivity;->getInputControlsView()Lcom/winlator/cmod/widget/InputControlsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/InputControlsView;->getProfile()Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    move-result-object v0

    .line 435
    .local v0, "profile":Lcom/winlator/cmod/inputcontrols/ControlsProfile;
    if-eqz v0, :cond_2

    .line 436
    invoke-virtual {p1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getController(I)Lcom/winlator/cmod/inputcontrols/ExternalController;

    move-result-object v1

    .line 437
    .local v1, "profileController":Lcom/winlator/cmod/inputcontrols/ExternalController;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getControllerBindingCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 441
    invoke-virtual {p1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getDeviceId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/winlator/cmod/winhandler/WinHandler;->assignSlot(I)I

    move-result v2

    .line 442
    .local v2, "slot":I
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/winlator/cmod/winhandler/WinHandler;->writers:[Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 443
    iget-object v3, p0, Lcom/winlator/cmod/winhandler/WinHandler;->writers:[Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    aget-object v3, v3, v2

    iget-object v4, p1, Lcom/winlator/cmod/inputcontrols/ExternalController;->remappedState:Lcom/winlator/cmod/inputcontrols/GamepadState;

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeGamepadState(Lcom/winlator/cmod/inputcontrols/GamepadState;)V

    .line 445
    :cond_1
    return-void

    .line 449
    .end local v1    # "profileController":Lcom/winlator/cmod/inputcontrols/ExternalController;
    .end local v2    # "slot":I
    :cond_2
    invoke-virtual {p1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getDeviceId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/winlator/cmod/winhandler/WinHandler;->assignSlot(I)I

    move-result v1

    .line 450
    .local v1, "slot":I
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->writers:[Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    .line 451
    iget-object v2, p0, Lcom/winlator/cmod/winhandler/WinHandler;->writers:[Lcom/winlator/cmod/inputcontrols/FakeInputWriter;

    aget-object v2, v2, v1

    iget-object v3, p1, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/inputcontrols/FakeInputWriter;->writeGamepadState(Lcom/winlator/cmod/inputcontrols/GamepadState;)V

    .line 453
    :cond_3
    return-void
.end method

.method public setFakeInputPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "fakeInputPath"    # Ljava/lang/String;

    .line 506
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    iput-object p1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->fakeInputBasePath:Ljava/lang/String;

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FakeInputWriter base path set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WinHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    return-void
.end method

.method public setInputType(B)V
    .locals 0
    .param p1, "inputType"    # B

    .line 574
    iput-byte p1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->inputType:B

    .line 575
    return-void
.end method

.method public setOnGetProcessInfoListener(Lcom/winlator/cmod/winhandler/OnGetProcessInfoListener;)V
    .locals 2
    .param p1, "onGetProcessInfoListener"    # Lcom/winlator/cmod/winhandler/OnGetProcessInfoListener;

    .line 277
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 278
    :try_start_0
    iput-object p1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/winlator/cmod/winhandler/OnGetProcessInfoListener;

    .line 279
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setProcessAffinity(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "affinityMask"    # I

    .line 203
    new-instance v0, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/winhandler/WinHandler;II)V

    invoke-direct {p0, v0}, Lcom/winlator/cmod/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public setProcessAffinity(Ljava/lang/String;I)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "affinityMask"    # I

    .line 189
    new-instance v0, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda7;-><init>(Lcom/winlator/cmod/winhandler/WinHandler;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/winlator/cmod/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method public setXInputDisabled(Z)V
    .locals 2
    .param p1, "disabled"    # Z

    .line 496
    iput-boolean p1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->xinputDisabled:Z

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->xinputDisabledInitialized:Z

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XInput Disabled set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->xinputDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WinHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void
.end method

.method public start()V
    .locals 2

    .line 375
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->localhost:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/net/UnknownHostException;
    :try_start_1
    const-string v1, "127.0.0.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->localhost:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 380
    goto :goto_0

    .line 379
    :catch_1
    move-exception v1

    .line 383
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->running:Z

    .line 384
    invoke-direct {p0}, Lcom/winlator/cmod/winhandler/WinHandler;->startSendThread()V

    .line 385
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/winhandler/WinHandler$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/cmod/winhandler/WinHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method

.method public stop()V
    .locals 2

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->running:Z

    .line 299
    invoke-virtual {p0}, Lcom/winlator/cmod/winhandler/WinHandler;->closeFakeInputWriter()V

    .line 301
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 308
    monitor-exit v0

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
