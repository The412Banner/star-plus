.class public Lcom/winlator/cmod/inputcontrols/ExternalController;
.super Ljava/lang/Object;
.source "ExternalController.java"


# static fields
.field public static final IDX_BUTTON_A:B = 0x0t

.field public static final IDX_BUTTON_B:B = 0x1t

.field public static final IDX_BUTTON_L1:B = 0x4t

.field public static final IDX_BUTTON_L2:B = 0xat

.field public static final IDX_BUTTON_L3:B = 0x8t

.field public static final IDX_BUTTON_R1:B = 0x5t

.field public static final IDX_BUTTON_R2:B = 0xbt

.field public static final IDX_BUTTON_R3:B = 0x9t

.field public static final IDX_BUTTON_SELECT:B = 0x6t

.field public static final IDX_BUTTON_START:B = 0x7t

.field public static final IDX_BUTTON_X:B = 0x2t

.field public static final IDX_BUTTON_Y:B = 0x3t

.field public static final buttonMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activity:Lcom/winlator/cmod/XServerDisplayActivity;

.field private final controllerBindings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId:I

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field public final remappedState:Lcom/winlator/cmod/inputcontrols/GamepadState;

.field public final state:Lcom/winlator/cmod/inputcontrols/GamepadState;

.field private triggerLPressedViaButton:Z

.field private triggerRPressedViaButton:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/winlator/cmod/inputcontrols/ExternalController;->buttonMappings:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->deviceId:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Lcom/winlator/cmod/inputcontrols/GamepadState;

    invoke-direct {v0}, Lcom/winlator/cmod/inputcontrols/GamepadState;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    .line 40
    new-instance v0, Lcom/winlator/cmod/inputcontrols/GamepadState;

    invoke-direct {v0}, Lcom/winlator/cmod/inputcontrols/GamepadState;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->remappedState:Lcom/winlator/cmod/inputcontrols/GamepadState;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->triggerLPressedViaButton:Z

    .line 73
    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->triggerRPressedViaButton:Z

    return-void
.end method

.method public static getButtonIdxByKeyCode(I)I
    .locals 1
    .param p0, "keyCode"    # I

    .line 516
    packed-switch p0, :pswitch_data_0

    .line 542
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 530
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 532
    :pswitch_2
    const/4 v0, 0x7

    return v0

    .line 536
    :pswitch_3
    const/16 v0, 0x9

    return v0

    .line 534
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 540
    :pswitch_5
    const/16 v0, 0xb

    return v0

    .line 538
    :pswitch_6
    const/16 v0, 0xa

    return v0

    .line 528
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 526
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 524
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 522
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 520
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 518
    :pswitch_c
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getButtonIdxByName(Ljava/lang/String;)I
    .locals 14
    .param p0, "name"    # Ljava/lang/String;

    .line 547
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xb

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "START"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "R3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "R2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "R1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_4
    const-string v0, "L3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_5
    const-string v0, "L2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_6
    const-string v0, "L1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_1

    :sswitch_7
    const-string v0, "Y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_1

    :sswitch_8
    const-string v0, "X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_1

    :sswitch_9
    const-string v0, "B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v11

    goto :goto_1

    :sswitch_a
    const-string v0, "A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v12

    goto :goto_1

    :sswitch_b
    const-string v0, "SELECT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :goto_0
    move v0, v13

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 573
    return v13

    .line 571
    :pswitch_0
    return v1

    .line 569
    :pswitch_1
    return v2

    .line 567
    :pswitch_2
    return v3

    .line 565
    :pswitch_3
    return v4

    .line 563
    :pswitch_4
    return v5

    .line 561
    :pswitch_5
    return v6

    .line 559
    :pswitch_6
    return v7

    .line 557
    :pswitch_7
    return v8

    .line 555
    :pswitch_8
    return v9

    .line 553
    :pswitch_9
    return v10

    .line 551
    :pswitch_a
    return v11

    .line 549
    :pswitch_b
    return v12

    :sswitch_data_0
    .sparse-switch
        -0x6e6dd704 -> :sswitch_b
        0x41 -> :sswitch_a
        0x42 -> :sswitch_9
        0x58 -> :sswitch_8
        0x59 -> :sswitch_7
        0x965 -> :sswitch_6
        0x966 -> :sswitch_5
        0x967 -> :sswitch_4
        0xa1f -> :sswitch_3
        0xa20 -> :sswitch_2
        0xa21 -> :sswitch_1
        0x4b8cc42 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getController(I)Lcom/winlator/cmod/inputcontrols/ExternalController;
    .locals 5
    .param p0, "deviceId"    # I

    .line 460
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 461
    .local v0, "deviceIds":[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 462
    aget v2, v0, v1

    if-eq v2, p0, :cond_0

    if-nez p0, :cond_1

    .line 463
    :cond_0
    aget v2, v0, v1

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 464
    .local v2, "device":Landroid/view/InputDevice;
    invoke-static {v2}, Lcom/winlator/cmod/inputcontrols/ExternalController;->isGameController(Landroid/view/InputDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 465
    new-instance v3, Lcom/winlator/cmod/inputcontrols/ExternalController;

    invoke-direct {v3}, Lcom/winlator/cmod/inputcontrols/ExternalController;-><init>()V

    .line 466
    .local v3, "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/inputcontrols/ExternalController;->setId(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/inputcontrols/ExternalController;->setName(Ljava/lang/String;)V

    .line 468
    aget v4, v0, v1

    iput v4, v3, Lcom/winlator/cmod/inputcontrols/ExternalController;->deviceId:I

    .line 469
    return-object v3

    .line 461
    .end local v2    # "device":Landroid/view/InputDevice;
    .end local v3    # "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 473
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getController(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/ExternalController;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .line 455
    invoke-static {}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getControllers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/inputcontrols/ExternalController;

    .local v1, "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .end local v1    # "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    :cond_0
    goto :goto_0

    .line 456
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getControllers()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/inputcontrols/ExternalController;",
            ">;"
        }
    .end annotation

    .line 440
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 441
    .local v0, "deviceIds":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v1, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/winlator/cmod/inputcontrols/ExternalController;>;"
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 443
    aget v3, v0, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 444
    .local v3, "device":Landroid/view/InputDevice;
    invoke-static {v3}, Lcom/winlator/cmod/inputcontrols/ExternalController;->isGameController(Landroid/view/InputDevice;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    new-instance v4, Lcom/winlator/cmod/inputcontrols/ExternalController;

    invoke-direct {v4}, Lcom/winlator/cmod/inputcontrols/ExternalController;-><init>()V

    .line 446
    .local v4, "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/inputcontrols/ExternalController;->setId(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winlator/cmod/inputcontrols/ExternalController;->setName(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    .end local v3    # "device":Landroid/view/InputDevice;
    .end local v4    # "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 451
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static isGameController(Landroid/view/InputDevice;)Z
    .locals 4
    .param p0, "device"    # Landroid/view/InputDevice;

    .line 477
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 478
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    .line 480
    .local v1, "sources":I
    invoke-virtual {p0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v2

    if-nez v2, :cond_2

    and-int/lit16 v2, v1, 0x401

    const/16 v3, 0x401

    if-eq v2, v3, :cond_1

    const v2, 0x1000010

    and-int v3, v1, v2

    if-ne v3, v2, :cond_2

    and-int/lit16 v2, v1, 0x2002

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isJoystickDevice(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 512
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x1000010

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processJoystickInput(Landroid/view/MotionEvent;I)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "historyPos"    # I

    .line 173
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v2

    iput v2, v0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLX:F

    .line 174
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2, p2}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v3

    iput v3, v0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLY:F

    .line 175
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    const/16 v3, 0xb

    invoke-virtual {p0, p1, v3, p2}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v3

    iput v3, v0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRX:F

    .line 176
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    const/16 v3, 0xe

    invoke-virtual {p0, p1, v3, p2}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v3

    iput v3, v0, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbRY:F

    .line 178
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 179
    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0, p2}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v0

    .line 180
    .local v0, "axisX":F
    const/16 v3, 0x10

    invoke-virtual {p0, p1, v3, p2}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getCenteredAxis(Landroid/view/MotionEvent;II)F

    move-result v3

    .line 182
    .local v3, "axisY":F
    iget-object v4, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget-object v4, v4, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v6, v3, v5

    const v7, 0x3e19999a    # 0.15f

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v6, v6, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLY:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    aput-boolean v6, v4, v1

    .line 183
    iget-object v4, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget-object v4, v4, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v8, v0, v6

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v8, v8, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLX:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v7

    if-gez v8, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, v1

    :goto_1
    aput-boolean v8, v4, v2

    .line 184
    iget-object v4, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget-object v4, v4, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    cmpl-float v6, v3, v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v6, v6, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLY:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    const/4 v8, 0x2

    aput-boolean v6, v4, v8

    .line 185
    iget-object v4, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget-object v4, v4, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    cmpl-float v5, v0, v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v5, v5, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    move v1, v2

    :cond_3
    const/4 v2, 0x3

    aput-boolean v1, v4, v2

    .line 187
    .end local v0    # "axisX":F
    .end local v3    # "axisY":F
    :cond_4
    return-void
.end method

.method private processTriggerButton(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 192
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/16 v0, 0x17

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 193
    .local v0, "l":F
    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    cmpl-float v2, v3, v2

    if-nez v2, :cond_1

    const/16 v1, 0x16

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 194
    .local v1, "r":F
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iput v0, v2, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerL:F

    .line 195
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iput v1, v2, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerR:F

    .line 196
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v6

    :goto_0
    const/16 v7, 0xa

    invoke-virtual {v2, v7, v4}, Lcom/winlator/cmod/inputcontrols/GamepadState;->setPressed(IZ)V

    .line 197
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    cmpl-float v3, v1, v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v5}, Lcom/winlator/cmod/inputcontrols/GamepadState;->setPressed(IZ)V

    .line 198
    return-void
.end method

.method private processXboxTriggerButton(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 209
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 210
    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    :goto_0
    nop

    .line 212
    .local v0, "l":F
    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_1

    .line 213
    const/16 v1, 0x16

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    goto :goto_1

    .line 214
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    :goto_1
    nop

    .line 217
    .local v1, "r":F
    cmpl-float v3, v0, v2

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/16 v7, 0xa

    if-lez v3, :cond_2

    .line 218
    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iput v5, v3, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerL:F

    .line 219
    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    invoke-virtual {v3, v7, v4}, Lcom/winlator/cmod/inputcontrols/GamepadState;->setPressed(IZ)V

    goto :goto_2

    .line 221
    :cond_2
    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iput v2, v3, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerL:F

    .line 222
    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    invoke-virtual {v3, v7, v6}, Lcom/winlator/cmod/inputcontrols/GamepadState;->setPressed(IZ)V

    .line 225
    :goto_2
    cmpl-float v3, v1, v2

    const/16 v7, 0xb

    if-lez v3, :cond_3

    .line 226
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iput v5, v2, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerR:F

    .line 227
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    invoke-virtual {v2, v7, v4}, Lcom/winlator/cmod/inputcontrols/GamepadState;->setPressed(IZ)V

    goto :goto_3

    .line 229
    :cond_3
    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iput v2, v3, Lcom/winlator/cmod/inputcontrols/GamepadState;->triggerR:F

    .line 230
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    invoke-virtual {v2, v7, v6}, Lcom/winlator/cmod/inputcontrols/GamepadState;->setPressed(IZ)V

    .line 232
    :goto_3
    return-void
.end method


# virtual methods
.method public addControllerBinding(Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;)V
    .locals 1
    .param p1, "controllerBinding"    # Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    .line 121
    invoke-virtual {p1}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 169
    instance-of v0, p1, Lcom/winlator/cmod/inputcontrols/ExternalController;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/winlator/cmod/inputcontrols/ExternalController;

    iget-object v0, v0, Lcom/winlator/cmod/inputcontrols/ExternalController;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getCenteredAxis(Landroid/view/MotionEvent;II)F
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "axis"    # I
    .param p3, "historyPos"    # I

    .line 486
    const/16 v0, 0xf

    const/4 v1, 0x0

    if-eq p2, v0, :cond_7

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    goto :goto_2

    .line 491
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 492
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v2

    .line 493
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    if-nez v2, :cond_1

    return v1

    .line 495
    :cond_1
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v3

    .line 496
    .local v3, "flat":F
    if-gez p3, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v4

    .line 498
    .local v4, "value":F
    :goto_0
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v3

    if-gtz v5, :cond_3

    return v1

    .line 500
    :cond_3
    if-eqz p2, :cond_5

    const/4 v5, 0x1

    if-eq p2, v5, :cond_5

    const/16 v5, 0xb

    if-eq p2, v5, :cond_5

    const/16 v5, 0xe

    if-ne p2, v5, :cond_4

    goto :goto_1

    .line 504
    :cond_4
    return v1

    .line 501
    :cond_5
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3e19999a    # 0.15f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_6

    move v1, v4

    :cond_6
    return v1

    .line 487
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    .end local v3    # "flat":F
    .end local v4    # "value":F
    :cond_7
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 488
    .local v0, "value":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_8

    move v1, v0

    :cond_8
    return v1
.end method

.method public getControllerBinding(I)Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    .locals 3
    .param p1, "keyCode"    # I

    .line 110
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    .line 111
    .local v1, "controllerBinding":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->getKeyCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    .line 112
    .end local v1    # "controllerBinding":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    :cond_0
    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getControllerBindingAt(I)Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    .locals 1
    .param p1, "index"    # I

    .line 117
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    return-object v0
.end method

.method public getControllerBindingCount()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDeviceId()I
    .locals 7

    .line 89
    iget v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->deviceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 90
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 91
    .local v3, "deviceId":I
    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 92
    .local v4, "device":Landroid/view/InputDevice;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    iput v3, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->deviceId:I

    .line 94
    goto :goto_1

    .line 90
    .end local v3    # "deviceId":I
    .end local v4    # "device":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_1
    :goto_1
    iget v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->deviceId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMappedButton(B)B
    .locals 3
    .param p1, "originalButton"    # B

    .line 139
    sget-object v0, Lcom/winlator/cmod/inputcontrols/ExternalController;->buttonMappings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 141
    .local v0, "mappedButton":B
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition(Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;)I
    .locals 1
    .param p1, "controllerBinding"    # Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    .line 125
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 8

    .line 102
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 103
    .local v4, "deviceId":I
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 104
    .local v5, "device":Landroid/view/InputDevice;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    return v0

    .line 102
    .end local v4    # "deviceId":I
    .end local v5    # "device":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    :cond_1
    return v2
.end method

.method public isXboxController()Z
    .locals 4

    .line 201
    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 202
    .local v0, "device":Landroid/view/InputDevice;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 203
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v2

    .line 204
    .local v2, "vendorId":I
    const/16 v3, 0x45e

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public removeControllerBinding(Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;)V
    .locals 1
    .param p1, "controllerBinding"    # Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    .line 129
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public setButtonMapping(BB)V
    .locals 3
    .param p1, "originalButton"    # B
    .param p2, "mappedButton"    # B

    .line 133
    sget-object v0, Lcom/winlator/cmod/inputcontrols/ExternalController;->buttonMappings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->id:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->name:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .line 151
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 152
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 153
    .local v1, "controllerJSONObject":Lorg/json/JSONObject;
    const-string v2, "id"

    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v2, "name"

    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 157
    .local v2, "controllerBindingsJSONArray":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->controllerBindings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    .local v4, "controllerBinding":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    invoke-virtual {v4}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 158
    .end local v4    # "controllerBinding":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    :cond_1
    const-string v3, "controllerBindings"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    return-object v1

    .line 162
    .end local v1    # "controllerJSONObject":Lorg/json/JSONObject;
    .end local v2    # "controllerBindingsJSONArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Lorg/json/JSONException;
    return-object v0
.end method

.method public updateStateFromKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 366
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 367
    .local v0, "pressed":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 368
    .local v3, "keyCode":I
    invoke-static {v3}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getButtonIdxByKeyCode(I)I

    move-result v4

    .line 369
    .local v4, "buttonIdx":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 370
    const/16 v1, 0xa

    if-ne v4, v1, :cond_1

    .line 371
    return v2

    .line 372
    :cond_1
    const/16 v1, 0xb

    if-ne v4, v1, :cond_2

    .line 373
    return v2

    .line 375
    :cond_2
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    invoke-virtual {v1, v4, v0}, Lcom/winlator/cmod/inputcontrols/GamepadState;->setPressed(IZ)V

    .line 376
    return v2

    .line 379
    :cond_3
    const v5, 0x3e19999a    # 0.15f

    packed-switch v3, :pswitch_data_0

    .line 393
    return v1

    .line 384
    :pswitch_0
    iget-object v6, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget-object v6, v6, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v7, v7, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLX:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v5, v7, v5

    if-gez v5, :cond_4

    move v1, v2

    :cond_4
    aput-boolean v1, v6, v2

    .line 385
    return v2

    .line 390
    :pswitch_1
    iget-object v6, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget-object v6, v6, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    if-eqz v0, :cond_5

    iget-object v7, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v7, v7, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLX:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v5, v7, v5

    if-gez v5, :cond_5

    move v1, v2

    :cond_5
    const/4 v5, 0x3

    aput-boolean v1, v6, v5

    .line 391
    return v2

    .line 387
    :pswitch_2
    iget-object v6, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget-object v6, v6, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    if-eqz v0, :cond_6

    iget-object v7, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v7, v7, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLY:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v5, v7, v5

    if-gez v5, :cond_6

    move v1, v2

    :cond_6
    const/4 v5, 0x2

    aput-boolean v1, v6, v5

    .line 388
    return v2

    .line 381
    :pswitch_3
    iget-object v6, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget-object v6, v6, Lcom/winlator/cmod/inputcontrols/GamepadState;->dpad:[Z

    if-eqz v0, :cond_7

    iget-object v7, p0, Lcom/winlator/cmod/inputcontrols/ExternalController;->state:Lcom/winlator/cmod/inputcontrols/GamepadState;

    iget v7, v7, Lcom/winlator/cmod/inputcontrols/GamepadState;->thumbLY:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v5, v7, v5

    if-gez v5, :cond_7

    move v5, v2

    goto :goto_1

    :cond_7
    move v5, v1

    :goto_1
    aput-boolean v5, v6, v1

    .line 382
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateStateFromMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 354
    invoke-static {p1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->isJoystickDevice(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-direct {p0, p1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->processTriggerButton(Landroid/view/MotionEvent;)V

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 357
    .local v0, "historySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->processJoystickInput(Landroid/view/MotionEvent;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    .end local v1    # "i":I
    :cond_0
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->processJoystickInput(Landroid/view/MotionEvent;I)V

    .line 359
    const/4 v1, 0x1

    return v1

    .line 361
    .end local v0    # "historySize":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
