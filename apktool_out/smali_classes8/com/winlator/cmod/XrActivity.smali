.class public Lcom/winlator/cmod/XrActivity;
.super Lcom/winlator/cmod/XServerDisplayActivity;
.source "XrActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/XrActivity$ControllerAxis;,
        Lcom/winlator/cmod/XrActivity$ControllerButton;
    }
.end annotation


# static fields
.field private static final chars:Landroid/view/KeyCharacterMap;

.field private static instance:Lcom/winlator/cmod/XrActivity;

.field private static isDeviceDetectionFinished:Z

.field private static isDeviceSupported:Z

.field private static isEnabled:Z

.field private static isImmersive:Z

.field private static isSBS:Z

.field private static final lastAxes:[F

.field private static final lastButtons:[Z

.field private static lastText:Ljava/lang/String;

.field private static mouseSpeed:F

.field private static final smoothedMouse:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/winlator/cmod/XrActivity;->isDeviceDetectionFinished:Z

    .line 46
    sput-boolean v0, Lcom/winlator/cmod/XrActivity;->isDeviceSupported:Z

    .line 47
    sput-boolean v0, Lcom/winlator/cmod/XrActivity;->isEnabled:Z

    .line 48
    sput-boolean v0, Lcom/winlator/cmod/XrActivity;->isImmersive:Z

    .line 49
    sput-boolean v0, Lcom/winlator/cmod/XrActivity;->isSBS:Z

    .line 50
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/XrActivity;->chars:Landroid/view/KeyCharacterMap;

    .line 51
    invoke-static {}, Lcom/winlator/cmod/XrActivity$ControllerAxis;->values()[Lcom/winlator/cmod/XrActivity$ControllerAxis;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [F

    sput-object v0, Lcom/winlator/cmod/XrActivity;->lastAxes:[F

    .line 52
    invoke-static {}, Lcom/winlator/cmod/XrActivity$ControllerButton;->values()[Lcom/winlator/cmod/XrActivity$ControllerButton;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    sput-object v0, Lcom/winlator/cmod/XrActivity;->lastButtons:[Z

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/winlator/cmod/XrActivity;->lastText:Ljava/lang/String;

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/winlator/cmod/XrActivity;->mouseSpeed:F

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/winlator/cmod/XrActivity;->smoothedMouse:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/winlator/cmod/XServerDisplayActivity;-><init>()V

    return-void
.end method

.method private static getAngleDiff(FF)F
    .locals 3
    .param p0, "oldAngle"    # F
    .param p1, "newAngle"    # F

    .line 289
    sub-float v0, p0, p1

    .line 290
    .local v0, "diff":F
    :goto_0
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    if-lez v1, :cond_0

    .line 291
    sub-float/2addr v0, v2

    goto :goto_0

    .line 293
    :cond_0
    :goto_1
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 294
    add-float/2addr v0, v2

    goto :goto_1

    .line 296
    :cond_1
    return v0
.end method

.method private static getButtonClicked([ZLcom/winlator/cmod/XrActivity$ControllerButton;)Z
    .locals 2
    .param p0, "buttons"    # [Z
    .param p1, "button"    # Lcom/winlator/cmod/XrActivity$ControllerButton;

    .line 300
    invoke-virtual {p1}, Lcom/winlator/cmod/XrActivity$ControllerButton;->ordinal()I

    move-result v0

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/winlator/cmod/XrActivity;->lastButtons:[Z

    invoke-virtual {p1}, Lcom/winlator/cmod/XrActivity$ControllerButton;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getImmersive()Z
    .locals 1

    .line 127
    sget-boolean v0, Lcom/winlator/cmod/XrActivity;->isImmersive:Z

    return v0
.end method

.method public static getInstance()Lcom/winlator/cmod/XrActivity;
    .locals 1

    .line 123
    sget-object v0, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    return-object v0
.end method

.method public static getSBS()Z
    .locals 1

    .line 131
    sget-boolean v0, Lcom/winlator/cmod/XrActivity;->isSBS:Z

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 135
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 136
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "use_xr"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/winlator/cmod/XrActivity;->isEnabled:Z

    .line 138
    :cond_0
    invoke-static {}, Lcom/winlator/cmod/XrActivity;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/winlator/cmod/XrActivity;->isEnabled:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupported()Z
    .locals 3

    .line 142
    sget-boolean v0, Lcom/winlator/cmod/XrActivity;->isDeviceDetectionFinished:Z

    if-nez v0, :cond_2

    .line 143
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "META"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 144
    sput-boolean v1, Lcom/winlator/cmod/XrActivity;->isDeviceSupported:Z

    .line 146
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "OCULUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 147
    sput-boolean v1, Lcom/winlator/cmod/XrActivity;->isDeviceSupported:Z

    .line 149
    :cond_1
    sput-boolean v1, Lcom/winlator/cmod/XrActivity;->isDeviceDetectionFinished:Z

    .line 151
    :cond_2
    sget-boolean v0, Lcom/winlator/cmod/XrActivity;->isDeviceSupported:Z

    return v0
.end method

.method static synthetic lambda$updateControllers$0()V
    .locals 2

    .line 261
    const/4 v0, 0x0

    sput-boolean v0, Lcom/winlator/cmod/XrActivity;->isSBS:Z

    .line 262
    sput-boolean v0, Lcom/winlator/cmod/XrActivity;->isImmersive:Z

    .line 263
    sget-object v0, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    invoke-direct {v0}, Lcom/winlator/cmod/XrActivity;->resetText()V

    .line 264
    sget-object v0, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    invoke-static {v0}, Lcom/winlator/cmod/core/AppUtils;->showKeyboard(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 265
    sget-object v0, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    const v1, 0x7f09017f

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/XrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 266
    return-void
.end method

.method private static mapKey(Lcom/winlator/cmod/XrActivity$ControllerButton;B)V
    .locals 3
    .param p0, "xrButton"    # Lcom/winlator/cmod/XrActivity$ControllerButton;
    .param p1, "xKeycode"    # B

    .line 304
    sget-object v0, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    invoke-virtual {v0}, Lcom/winlator/cmod/XrActivity;->getXServer()Lcom/winlator/cmod/xserver/XServer;

    move-result-object v0

    iget-object v0, v0, Lcom/winlator/cmod/xserver/XServer;->keyboard:Lcom/winlator/cmod/xserver/Keyboard;

    .line 305
    .local v0, "keyboard":Lcom/winlator/cmod/xserver/Keyboard;
    sget-object v1, Lcom/winlator/cmod/XrActivity;->lastButtons:[Z

    invoke-virtual {p0}, Lcom/winlator/cmod/XrActivity$ControllerButton;->ordinal()I

    move-result v2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 306
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/winlator/cmod/xserver/Keyboard;->setKeyPress(BI)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {v0, p1}, Lcom/winlator/cmod/xserver/Keyboard;->setKeyRelease(B)V

    .line 310
    :goto_0
    return-void
.end method

.method public static openIntent(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "containerId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/winlator/cmod/XrActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "container_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    if-eqz p2, :cond_0

    .line 159
    const-string v1, "shortcut_path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    :cond_0
    const/4 v1, 0x0

    .line 164
    .local v1, "mainDisplayId":I
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 167
    .local v2, "options":Landroid/app/ActivityOptions;
    const v3, 0x34008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 176
    return-void
.end method

.method private declared-synchronized resetText()V
    .locals 3

    monitor-enter p0

    .line 115
    const v0, 0x7f09017f

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/XrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 116
    .local v0, "text":Landroid/widget/EditText;
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 118
    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, " "

    invoke-interface {v1, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 119
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 114
    .end local v0    # "text":Landroid/widget/EditText;
    .end local p0    # "this":Lcom/winlator/cmod/XrActivity;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static sleep(I)V
    .locals 2
    .param p0, "ms"    # I

    .line 314
    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 318
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public static updateControllers()V
    .locals 33

    .line 180
    sget-object v0, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    invoke-virtual {v0}, Lcom/winlator/cmod/XrActivity;->getAxes()[F

    move-result-object v1

    .line 181
    .local v1, "axes":[F
    sget-object v0, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    invoke-virtual {v0}, Lcom/winlator/cmod/XrActivity;->getButtons()[Z

    move-result-object v2

    .line 182
    .local v2, "buttons":[Z
    sget-object v0, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    iget-object v0, v0, Lcom/winlator/cmod/XrActivity;->container:Lcom/winlator/cmod/container/Container;

    invoke-virtual {v0}, Lcom/winlator/cmod/container/Container;->getPrimaryController()I

    move-result v3

    .line 185
    .local v3, "primaryController":I
    if-nez v3, :cond_0

    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerAxis;->L_X:Lcom/winlator/cmod/XrActivity$ControllerAxis;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerAxis;->R_X:Lcom/winlator/cmod/XrActivity$ControllerAxis;

    :goto_0
    move-object v4, v0

    .line 186
    .local v4, "mouseAxisX":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    if-nez v3, :cond_1

    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerAxis;->L_Y:Lcom/winlator/cmod/XrActivity$ControllerAxis;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerAxis;->R_Y:Lcom/winlator/cmod/XrActivity$ControllerAxis;

    :goto_1
    move-object v5, v0

    .line 187
    .local v5, "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    if-nez v3, :cond_2

    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_GRIP:Lcom/winlator/cmod/XrActivity$ControllerButton;

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->R_GRIP:Lcom/winlator/cmod/XrActivity$ControllerButton;

    :goto_2
    move-object v6, v0

    .line 188
    .local v6, "primaryGrip":Lcom/winlator/cmod/XrActivity$ControllerButton;
    if-nez v3, :cond_3

    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_TRIGGER:Lcom/winlator/cmod/XrActivity$ControllerButton;

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->R_TRIGGER:Lcom/winlator/cmod/XrActivity$ControllerButton;

    :goto_3
    move-object v7, v0

    .line 189
    .local v7, "primaryTrigger":Lcom/winlator/cmod/XrActivity$ControllerButton;
    if-nez v3, :cond_4

    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_THUMBSTICK_UP:Lcom/winlator/cmod/XrActivity$ControllerButton;

    goto :goto_4

    :cond_4
    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->R_THUMBSTICK_UP:Lcom/winlator/cmod/XrActivity$ControllerButton;

    :goto_4
    move-object v8, v0

    .line 190
    .local v8, "primaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    if-nez v3, :cond_5

    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_THUMBSTICK_DOWN:Lcom/winlator/cmod/XrActivity$ControllerButton;

    goto :goto_5

    :cond_5
    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->R_THUMBSTICK_DOWN:Lcom/winlator/cmod/XrActivity$ControllerButton;

    :goto_5
    move-object v9, v0

    .line 191
    .local v9, "primaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    if-nez v3, :cond_6

    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_THUMBSTICK_LEFT:Lcom/winlator/cmod/XrActivity$ControllerButton;

    goto :goto_6

    :cond_6
    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->R_THUMBSTICK_LEFT:Lcom/winlator/cmod/XrActivity$ControllerButton;

    :goto_6
    move-object v10, v0

    .line 192
    .local v10, "primaryLeft":Lcom/winlator/cmod/XrActivity$ControllerButton;
    if-nez v3, :cond_7

    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_THUMBSTICK_RIGHT:Lcom/winlator/cmod/XrActivity$ControllerButton;

    goto :goto_7

    :cond_7
    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->R_THUMBSTICK_RIGHT:Lcom/winlator/cmod/XrActivity$ControllerButton;

    :goto_7
    move-object v11, v0

    .line 193
    .local v11, "primaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    if-nez v3, :cond_8

    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_THUMBSTICK_PRESS:Lcom/winlator/cmod/XrActivity$ControllerButton;

    goto :goto_8

    :cond_8
    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->R_THUMBSTICK_PRESS:Lcom/winlator/cmod/XrActivity$ControllerButton;

    :goto_8
    move-object v12, v0

    .line 194
    .local v12, "primaryPress":Lcom/winlator/cmod/XrActivity$ControllerButton;
    const/4 v0, 0x1

    if-ne v3, v0, :cond_9

    sget-object v13, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_GRIP:Lcom/winlator/cmod/XrActivity$ControllerButton;

    goto :goto_9

    :cond_9
    sget-object v13, Lcom/winlator/cmod/XrActivity$ControllerButton;->R_GRIP:Lcom/winlator/cmod/XrActivity$ControllerButton;

    .line 195
    .local v13, "secondaryGrip":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :goto_9
    if-ne v3, v0, :cond_a

    sget-object v14, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_TRIGGER:Lcom/winlator/cmod/XrActivity$ControllerButton;

    goto :goto_a

    :cond_a
    sget-object v14, Lcom/winlator/cmod/XrActivity$ControllerButton;->R_TRIGGER:Lcom/winlator/cmod/XrActivity$ControllerButton;

    .line 196
    .local v14, "secondaryTrigger":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :goto_a
    if-ne v3, v0, :cond_b

    sget-object v15, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_THUMBSTICK_UP:Lcom/winlator/cmod/XrActivity$ControllerButton;

    goto :goto_b

    :cond_b
    sget-object v15, Lcom/winlator/cmod/XrActivity$ControllerButton;->R_THUMBSTICK_UP:Lcom/winlator/cmod/XrActivity$ControllerButton;

    .line 197
    .local v15, "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :goto_b
    if-ne v3, v0, :cond_c

    sget-object v16, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_THUMBSTICK_DOWN:Lcom/winlator/cmod/XrActivity$ControllerButton;

    goto :goto_c

    :cond_c
    sget-object v16, Lcom/winlator/cmod/XrActivity$ControllerButton;->R_THUMBSTICK_DOWN:Lcom/winlator/cmod/XrActivity$ControllerButton;

    :goto_c
    move-object/from16 v17, v16

    .line 198
    .local v17, "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    if-ne v3, v0, :cond_d

    sget-object v16, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_THUMBSTICK_LEFT:Lcom/winlator/cmod/XrActivity$ControllerButton;

    goto :goto_d

    :cond_d
    sget-object v16, Lcom/winlator/cmod/XrActivity$ControllerButton;->R_THUMBSTICK_LEFT:Lcom/winlator/cmod/XrActivity$ControllerButton;

    :goto_d
    move-object/from16 v18, v16

    .line 199
    .local v18, "secondaryLeft":Lcom/winlator/cmod/XrActivity$ControllerButton;
    if-ne v3, v0, :cond_e

    sget-object v16, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_THUMBSTICK_RIGHT:Lcom/winlator/cmod/XrActivity$ControllerButton;

    goto :goto_e

    :cond_e
    sget-object v16, Lcom/winlator/cmod/XrActivity$ControllerButton;->R_THUMBSTICK_RIGHT:Lcom/winlator/cmod/XrActivity$ControllerButton;

    :goto_e
    move-object/from16 v19, v16

    .line 200
    .local v19, "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    if-ne v3, v0, :cond_f

    sget-object v16, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_THUMBSTICK_PRESS:Lcom/winlator/cmod/XrActivity$ControllerButton;

    goto :goto_f

    :cond_f
    sget-object v16, Lcom/winlator/cmod/XrActivity$ControllerButton;->R_THUMBSTICK_PRESS:Lcom/winlator/cmod/XrActivity$ControllerButton;

    :goto_f
    move-object/from16 v20, v16

    .line 202
    .local v20, "secondaryPress":Lcom/winlator/cmod/XrActivity$ControllerButton;
    sget-object v16, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    invoke-virtual/range {v16 .. v16}, Lcom/winlator/cmod/XrActivity;->getXServer()Lcom/winlator/cmod/xserver/XServer;

    move-result-object v0

    move/from16 v16, v3

    .end local v3    # "primaryController":I
    .local v16, "primaryController":I
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/winlator/cmod/xserver/XServer$Lockable;

    sget-object v22, Lcom/winlator/cmod/xserver/XServer$Lockable;->WINDOW_MANAGER:Lcom/winlator/cmod/xserver/XServer$Lockable;

    move-object/from16 v23, v15

    .end local v15    # "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v23, "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    const/4 v15, 0x0

    aput-object v22, v3, v15

    sget-object v22, Lcom/winlator/cmod/xserver/XServer$Lockable;->INPUT_DEVICE:Lcom/winlator/cmod/xserver/XServer$Lockable;

    const/16 v21, 0x1

    aput-object v22, v3, v21

    invoke-virtual {v0, v3}, Lcom/winlator/cmod/xserver/XServer;->lock([Lcom/winlator/cmod/xserver/XServer$Lockable;)Lcom/winlator/cmod/xserver/XLock;

    move-result-object v3

    .line 204
    .local v3, "lock":Lcom/winlator/cmod/xserver/XLock;
    const/high16 v0, 0x3f400000    # 0.75f

    .line 205
    .local v0, "f":F
    :try_start_0
    sget-object v22, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    invoke-virtual/range {v22 .. v22}, Lcom/winlator/cmod/XrActivity;->getXServer()Lcom/winlator/cmod/xserver/XServer;

    move-result-object v15

    iget-object v15, v15, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v15, v15, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    int-to-float v15, v15

    const/high16 v22, 0x41200000    # 10.0f

    mul-float v15, v15, v22

    .line 206
    .local v15, "meter2px":F
    invoke-virtual {v4}, Lcom/winlator/cmod/XrActivity$ControllerAxis;->ordinal()I

    move-result v22

    aget v22, v1, v22

    sget-object v25, Lcom/winlator/cmod/XrActivity;->lastAxes:[F

    invoke-virtual {v4}, Lcom/winlator/cmod/XrActivity$ControllerAxis;->ordinal()I

    move-result v26

    aget v25, v25, v26

    sub-float v22, v22, v25

    mul-float v22, v22, v15

    .line 207
    .local v22, "dx":F
    invoke-virtual {v5}, Lcom/winlator/cmod/XrActivity$ControllerAxis;->ordinal()I

    move-result v25

    aget v25, v1, v25

    sget-object v26, Lcom/winlator/cmod/XrActivity;->lastAxes:[F

    invoke-virtual {v5}, Lcom/winlator/cmod/XrActivity$ControllerAxis;->ordinal()I

    move-result v27

    aget v26, v26, v27

    sub-float v25, v25, v26

    mul-float v25, v25, v15

    .line 208
    .local v25, "dy":F
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    const/high16 v27, 0x43960000    # 300.0f

    cmpl-float v26, v26, v27

    if-gtz v26, :cond_10

    :try_start_1
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_11

    goto :goto_10

    .line 202
    .end local v0    # "f":F
    .end local v15    # "meter2px":F
    .end local v22    # "dx":F
    .end local v25    # "dy":F
    :catchall_0
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v27, v4

    move-object/from16 v29, v5

    move-object/from16 v15, v17

    move-object/from16 v5, v20

    move-object/from16 v3, v23

    move-object v4, v0

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    goto/16 :goto_18

    .line 209
    .restart local v0    # "f":F
    .restart local v15    # "meter2px":F
    .restart local v22    # "dx":F
    .restart local v25    # "dy":F
    :cond_10
    :goto_10
    const/16 v22, 0x0

    .line 210
    const/16 v25, 0x0

    .line 214
    :cond_11
    :try_start_2
    sget-object v26, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    move-object/from16 v27, v4

    .end local v4    # "mouseAxisX":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .local v27, "mouseAxisX":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    :try_start_3
    invoke-virtual/range {v26 .. v26}, Lcom/winlator/cmod/XrActivity;->getXServer()Lcom/winlator/cmod/xserver/XServer;

    move-result-object v4

    iget-object v4, v4, Lcom/winlator/cmod/xserver/XServer;->pointer:Lcom/winlator/cmod/xserver/Pointer;

    .line 215
    .local v4, "mouse":Lcom/winlator/cmod/xserver/Pointer;
    sget-boolean v26, Lcom/winlator/cmod/XrActivity;->isImmersive:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    const/high16 v28, 0x3f000000    # 0.5f

    if-eqz v26, :cond_13

    .line 216
    :try_start_4
    sget-object v26, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v29, v5

    .end local v5    # "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .local v29, "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    :try_start_5
    invoke-virtual/range {v26 .. v26}, Lcom/winlator/cmod/XrActivity;->getXServer()Lcom/winlator/cmod/xserver/XServer;

    move-result-object v5

    iget-object v5, v5, Lcom/winlator/cmod/xserver/XServer;->screenInfo:Lcom/winlator/cmod/xserver/ScreenInfo;

    iget-short v5, v5, Lcom/winlator/cmod/xserver/ScreenInfo;->width:S

    int-to-float v5, v5

    const v26, 0x3d4ccccd    # 0.05f

    mul-float v5, v5, v26

    div-float/2addr v5, v0

    .line 217
    .local v5, "angle2px":F
    sget-object v26, Lcom/winlator/cmod/XrActivity;->lastAxes:[F

    sget-object v30, Lcom/winlator/cmod/XrActivity$ControllerAxis;->HMD_YAW:Lcom/winlator/cmod/XrActivity$ControllerAxis;

    invoke-virtual/range {v30 .. v30}, Lcom/winlator/cmod/XrActivity$ControllerAxis;->ordinal()I

    move-result v30

    move/from16 v31, v15

    .end local v15    # "meter2px":F
    .local v31, "meter2px":F
    aget v15, v26, v30

    sget-object v26, Lcom/winlator/cmod/XrActivity$ControllerAxis;->HMD_YAW:Lcom/winlator/cmod/XrActivity$ControllerAxis;

    invoke-virtual/range {v26 .. v26}, Lcom/winlator/cmod/XrActivity$ControllerAxis;->ordinal()I

    move-result v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v30, v3

    .end local v3    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .local v30, "lock":Lcom/winlator/cmod/xserver/XLock;
    :try_start_6
    aget v3, v1, v26

    invoke-static {v15, v3}, Lcom/winlator/cmod/XrActivity;->getAngleDiff(FF)F

    move-result v3

    mul-float v22, v3, v5

    .line 218
    sget-object v3, Lcom/winlator/cmod/XrActivity;->lastAxes:[F

    sget-object v15, Lcom/winlator/cmod/XrActivity$ControllerAxis;->HMD_PITCH:Lcom/winlator/cmod/XrActivity$ControllerAxis;

    invoke-virtual {v15}, Lcom/winlator/cmod/XrActivity$ControllerAxis;->ordinal()I

    move-result v15

    aget v3, v3, v15

    sget-object v15, Lcom/winlator/cmod/XrActivity$ControllerAxis;->HMD_PITCH:Lcom/winlator/cmod/XrActivity$ControllerAxis;

    invoke-virtual {v15}, Lcom/winlator/cmod/XrActivity$ControllerAxis;->ordinal()I

    move-result v15

    aget v15, v1, v15

    invoke-static {v3, v15}, Lcom/winlator/cmod/XrActivity;->getAngleDiff(FF)F

    move-result v3

    mul-float/2addr v3, v5

    .line 219
    .end local v25    # "dy":F
    .local v3, "dy":F
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 220
    const/4 v3, 0x0

    move/from16 v25, v3

    goto :goto_11

    .line 219
    :cond_12
    move/from16 v25, v3

    .line 222
    .end local v3    # "dy":F
    .restart local v25    # "dy":F
    :goto_11
    sget-object v3, Lcom/winlator/cmod/XrActivity;->smoothedMouse:[F

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/Pointer;->getClampedX()S

    move-result v15

    int-to-float v15, v15

    add-float v15, v15, v28

    const/16 v24, 0x0

    aput v15, v3, v24

    .line 223
    sget-object v3, Lcom/winlator/cmod/XrActivity;->smoothedMouse:[F

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/Pointer;->getClampedY()S

    move-result v15

    int-to-float v15, v15

    add-float v15, v15, v28

    const/16 v21, 0x1

    aput v15, v3, v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_12

    .line 202
    .end local v0    # "f":F
    .end local v4    # "mouse":Lcom/winlator/cmod/xserver/Pointer;
    .end local v5    # "angle2px":F
    .end local v22    # "dx":F
    .end local v25    # "dy":F
    .end local v31    # "meter2px":F
    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object/from16 v15, v17

    move-object/from16 v5, v20

    move-object/from16 v3, v23

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    goto/16 :goto_18

    .end local v30    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .local v3, "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_2
    move-exception v0

    move-object/from16 v30, v3

    move-object v4, v0

    move-object/from16 v15, v17

    move-object/from16 v5, v20

    move-object/from16 v3, v23

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    .end local v3    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v30    # "lock":Lcom/winlator/cmod/xserver/XLock;
    goto/16 :goto_18

    .end local v29    # "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .end local v30    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v3    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .local v5, "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    :catchall_3
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v29, v5

    move-object v4, v0

    move-object/from16 v15, v17

    move-object/from16 v5, v20

    move-object/from16 v3, v23

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    .end local v3    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .end local v5    # "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .restart local v29    # "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .restart local v30    # "lock":Lcom/winlator/cmod/xserver/XLock;
    goto/16 :goto_18

    .line 215
    .end local v29    # "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .end local v30    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v0    # "f":F
    .restart local v3    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v4    # "mouse":Lcom/winlator/cmod/xserver/Pointer;
    .restart local v5    # "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .restart local v15    # "meter2px":F
    .restart local v22    # "dx":F
    .restart local v25    # "dy":F
    :cond_13
    move-object/from16 v30, v3

    move-object/from16 v29, v5

    move/from16 v31, v15

    .line 227
    .end local v3    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .end local v5    # "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .end local v15    # "meter2px":F
    .restart local v29    # "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .restart local v30    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .restart local v31    # "meter2px":F
    :goto_12
    :try_start_7
    sget v3, Lcom/winlator/cmod/XrActivity;->mouseSpeed:F

    mul-float v22, v22, v3

    .line 228
    sget v3, Lcom/winlator/cmod/XrActivity;->mouseSpeed:F

    mul-float v25, v25, v3

    .line 229
    sget-object v3, Lcom/winlator/cmod/XrActivity;->smoothedMouse:[F

    sget-object v5, Lcom/winlator/cmod/XrActivity;->smoothedMouse:[F

    const/4 v15, 0x0

    aget v5, v5, v15

    mul-float/2addr v5, v0

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/Pointer;->getClampedX()S

    move-result v15

    int-to-float v15, v15

    add-float v15, v15, v28

    add-float v15, v15, v22

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v32, v26, v0

    mul-float v15, v15, v32

    add-float/2addr v5, v15

    const/4 v15, 0x0

    aput v5, v3, v15

    .line 230
    sget-object v3, Lcom/winlator/cmod/XrActivity;->smoothedMouse:[F

    sget-object v5, Lcom/winlator/cmod/XrActivity;->smoothedMouse:[F

    const/4 v15, 0x1

    aget v5, v5, v15

    mul-float/2addr v5, v0

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/Pointer;->getClampedY()S

    move-result v15

    int-to-float v15, v15

    add-float v15, v15, v28

    sub-float v15, v15, v25

    sub-float v26, v26, v0

    mul-float v15, v15, v26

    add-float/2addr v5, v15

    const/4 v15, 0x1

    aput v5, v3, v15

    .line 233
    sget-boolean v3, Lcom/winlator/cmod/XrActivity;->isImmersive:Z

    if-eqz v3, :cond_14

    const/16 v3, 0x7d

    goto :goto_13

    :cond_14
    const/16 v3, 0x19

    .line 234
    .local v3, "snapturn":I
    :goto_13
    invoke-static {v2, v10}, Lcom/winlator/cmod/XrActivity;->getButtonClicked([ZLcom/winlator/cmod/XrActivity$ControllerButton;)Z

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    if-eqz v5, :cond_15

    .line 235
    :try_start_8
    sget-object v5, Lcom/winlator/cmod/XrActivity;->smoothedMouse:[F

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/Pointer;->getClampedX()S

    move-result v15

    sub-int/2addr v15, v3

    int-to-float v15, v15

    const/16 v24, 0x0

    aput v15, v5, v24
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 237
    :cond_15
    :try_start_9
    invoke-static {v2, v11}, Lcom/winlator/cmod/XrActivity;->getButtonClicked([ZLcom/winlator/cmod/XrActivity$ControllerButton;)Z

    move-result v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    if-eqz v5, :cond_16

    .line 238
    :try_start_a
    sget-object v5, Lcom/winlator/cmod/XrActivity;->smoothedMouse:[F

    invoke-virtual {v4}, Lcom/winlator/cmod/xserver/Pointer;->getClampedX()S

    move-result v15

    add-int/2addr v15, v3

    int-to-float v15, v15

    const/16 v24, 0x0

    aput v15, v5, v24
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 242
    :cond_16
    :try_start_b
    sget-object v5, Lcom/winlator/cmod/XrActivity;->smoothedMouse:[F

    const/4 v15, 0x0

    aget v5, v5, v15

    float-to-int v5, v5

    sget-object v15, Lcom/winlator/cmod/XrActivity;->smoothedMouse:[F

    const/16 v21, 0x1

    aget v15, v15, v21

    float-to-int v15, v15

    invoke-virtual {v4, v5, v15}, Lcom/winlator/cmod/xserver/Pointer;->setPosition(II)V

    .line 243
    sget-object v5, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_LEFT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v7}, Lcom/winlator/cmod/XrActivity$ControllerButton;->ordinal()I

    move-result v15

    aget-boolean v15, v2, v15

    invoke-virtual {v4, v5, v15}, Lcom/winlator/cmod/xserver/Pointer;->setButton(Lcom/winlator/cmod/xserver/Pointer$Button;Z)V

    .line 244
    sget-object v5, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_RIGHT:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v6}, Lcom/winlator/cmod/XrActivity$ControllerButton;->ordinal()I

    move-result v15

    aget-boolean v15, v2, v15

    invoke-virtual {v4, v5, v15}, Lcom/winlator/cmod/xserver/Pointer;->setButton(Lcom/winlator/cmod/xserver/Pointer$Button;Z)V

    .line 245
    sget-object v5, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_UP:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v8}, Lcom/winlator/cmod/XrActivity$ControllerButton;->ordinal()I

    move-result v15

    aget-boolean v15, v2, v15

    invoke-virtual {v4, v5, v15}, Lcom/winlator/cmod/xserver/Pointer;->setButton(Lcom/winlator/cmod/xserver/Pointer$Button;Z)V

    .line 246
    sget-object v5, Lcom/winlator/cmod/xserver/Pointer$Button;->BUTTON_SCROLL_DOWN:Lcom/winlator/cmod/xserver/Pointer$Button;

    invoke-virtual {v9}, Lcom/winlator/cmod/XrActivity$ControllerButton;->ordinal()I

    move-result v15

    aget-boolean v15, v2, v15

    invoke-virtual {v4, v5, v15}, Lcom/winlator/cmod/xserver/Pointer;->setButton(Lcom/winlator/cmod/xserver/Pointer$Button;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 249
    move-object/from16 v5, v20

    .end local v20    # "secondaryPress":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v5, "secondaryPress":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :try_start_c
    invoke-static {v2, v5}, Lcom/winlator/cmod/XrActivity;->getButtonClicked([ZLcom/winlator/cmod/XrActivity$ControllerButton;)Z

    move-result v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    if-eqz v15, :cond_1a

    .line 250
    :try_start_d
    invoke-virtual {v6}, Lcom/winlator/cmod/XrActivity$ControllerButton;->ordinal()I

    move-result v15

    aget-boolean v15, v2, v15

    if-eqz v15, :cond_18

    .line 251
    sget-boolean v15, Lcom/winlator/cmod/XrActivity;->isSBS:Z

    if-nez v15, :cond_17

    goto :goto_14

    :cond_17
    const/16 v21, 0x0

    :goto_14
    sput-boolean v21, Lcom/winlator/cmod/XrActivity;->isSBS:Z

    goto :goto_16

    .line 254
    :cond_18
    sget-boolean v15, Lcom/winlator/cmod/XrActivity;->isImmersive:Z

    if-nez v15, :cond_19

    goto :goto_15

    :cond_19
    const/16 v21, 0x0

    :goto_15
    sput-boolean v21, Lcom/winlator/cmod/XrActivity;->isImmersive:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_16

    .line 202
    .end local v0    # "f":F
    .end local v3    # "snapturn":I
    .end local v4    # "mouse":Lcom/winlator/cmod/xserver/Pointer;
    .end local v22    # "dx":F
    .end local v25    # "dy":F
    .end local v31    # "meter2px":F
    :catchall_4
    move-exception v0

    move-object v4, v0

    move-object/from16 v15, v17

    move-object/from16 v3, v23

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    goto/16 :goto_18

    .line 259
    .restart local v0    # "f":F
    .restart local v3    # "snapturn":I
    .restart local v4    # "mouse":Lcom/winlator/cmod/xserver/Pointer;
    .restart local v22    # "dx":F
    .restart local v25    # "dy":F
    .restart local v31    # "meter2px":F
    :cond_1a
    :goto_16
    :try_start_e
    invoke-static {v2, v12}, Lcom/winlator/cmod/XrActivity;->getButtonClicked([ZLcom/winlator/cmod/XrActivity$ControllerButton;)Z

    move-result v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    if-eqz v15, :cond_1b

    .line 260
    :try_start_f
    sget-object v15, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    move/from16 v20, v0

    .end local v0    # "f":F
    .local v20, "f":F
    new-instance v0, Lcom/winlator/cmod/XrActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/winlator/cmod/XrActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v15, v0}, Lcom/winlator/cmod/XrActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_17

    .line 259
    .end local v20    # "f":F
    .restart local v0    # "f":F
    :cond_1b
    move/from16 v20, v0

    .line 270
    .end local v0    # "f":F
    .restart local v20    # "f":F
    :goto_17
    :try_start_10
    sget-object v0, Lcom/winlator/cmod/XrActivity;->lastAxes:[F

    array-length v15, v1

    move/from16 v21, v3

    const/4 v3, 0x0

    .end local v3    # "snapturn":I
    .local v21, "snapturn":I
    invoke-static {v1, v3, v0, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    sget-object v0, Lcom/winlator/cmod/XrActivity;->lastButtons:[Z

    array-length v15, v2

    invoke-static {v2, v3, v0, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_MENU:Lcom/winlator/cmod/XrActivity$ControllerButton;

    sget-object v3, Lcom/winlator/cmod/xserver/XKeycode;->KEY_ESC:Lcom/winlator/cmod/xserver/XKeycode;

    iget-byte v3, v3, Lcom/winlator/cmod/xserver/XKeycode;->id:B

    invoke-static {v0, v3}, Lcom/winlator/cmod/XrActivity;->mapKey(Lcom/winlator/cmod/XrActivity$ControllerButton;B)V

    .line 275
    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->R_A:Lcom/winlator/cmod/XrActivity$ControllerButton;

    sget-object v3, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    iget-object v3, v3, Lcom/winlator/cmod/XrActivity;->container:Lcom/winlator/cmod/container/Container;

    sget-object v15, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_A:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    invoke-virtual {v3, v15}, Lcom/winlator/cmod/container/Container;->getControllerMapping(Lcom/winlator/cmod/container/Container$XrControllerMapping;)B

    move-result v3

    invoke-static {v0, v3}, Lcom/winlator/cmod/XrActivity;->mapKey(Lcom/winlator/cmod/XrActivity$ControllerButton;B)V

    .line 276
    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->R_B:Lcom/winlator/cmod/XrActivity$ControllerButton;

    sget-object v3, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    iget-object v3, v3, Lcom/winlator/cmod/XrActivity;->container:Lcom/winlator/cmod/container/Container;

    sget-object v15, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_B:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    invoke-virtual {v3, v15}, Lcom/winlator/cmod/container/Container;->getControllerMapping(Lcom/winlator/cmod/container/Container$XrControllerMapping;)B

    move-result v3

    invoke-static {v0, v3}, Lcom/winlator/cmod/XrActivity;->mapKey(Lcom/winlator/cmod/XrActivity$ControllerButton;B)V

    .line 277
    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_X:Lcom/winlator/cmod/XrActivity$ControllerButton;

    sget-object v3, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    iget-object v3, v3, Lcom/winlator/cmod/XrActivity;->container:Lcom/winlator/cmod/container/Container;

    sget-object v15, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_X:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    invoke-virtual {v3, v15}, Lcom/winlator/cmod/container/Container;->getControllerMapping(Lcom/winlator/cmod/container/Container$XrControllerMapping;)B

    move-result v3

    invoke-static {v0, v3}, Lcom/winlator/cmod/XrActivity;->mapKey(Lcom/winlator/cmod/XrActivity$ControllerButton;B)V

    .line 278
    sget-object v0, Lcom/winlator/cmod/XrActivity$ControllerButton;->L_Y:Lcom/winlator/cmod/XrActivity$ControllerButton;

    sget-object v3, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    iget-object v3, v3, Lcom/winlator/cmod/XrActivity;->container:Lcom/winlator/cmod/container/Container;

    sget-object v15, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_Y:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    invoke-virtual {v3, v15}, Lcom/winlator/cmod/container/Container;->getControllerMapping(Lcom/winlator/cmod/container/Container$XrControllerMapping;)B

    move-result v3

    invoke-static {v0, v3}, Lcom/winlator/cmod/XrActivity;->mapKey(Lcom/winlator/cmod/XrActivity$ControllerButton;B)V

    .line 279
    sget-object v0, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    iget-object v0, v0, Lcom/winlator/cmod/XrActivity;->container:Lcom/winlator/cmod/container/Container;

    sget-object v3, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_GRIP:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    invoke-virtual {v0, v3}, Lcom/winlator/cmod/container/Container;->getControllerMapping(Lcom/winlator/cmod/container/Container$XrControllerMapping;)B

    move-result v0

    invoke-static {v13, v0}, Lcom/winlator/cmod/XrActivity;->mapKey(Lcom/winlator/cmod/XrActivity$ControllerButton;B)V

    .line 280
    sget-object v0, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    iget-object v0, v0, Lcom/winlator/cmod/XrActivity;->container:Lcom/winlator/cmod/container/Container;

    sget-object v3, Lcom/winlator/cmod/container/Container$XrControllerMapping;->BUTTON_TRIGGER:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    invoke-virtual {v0, v3}, Lcom/winlator/cmod/container/Container;->getControllerMapping(Lcom/winlator/cmod/container/Container$XrControllerMapping;)B

    move-result v0

    invoke-static {v14, v0}, Lcom/winlator/cmod/XrActivity;->mapKey(Lcom/winlator/cmod/XrActivity$ControllerButton;B)V

    .line 281
    sget-object v0, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    iget-object v0, v0, Lcom/winlator/cmod/XrActivity;->container:Lcom/winlator/cmod/container/Container;

    sget-object v3, Lcom/winlator/cmod/container/Container$XrControllerMapping;->THUMBSTICK_UP:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    invoke-virtual {v0, v3}, Lcom/winlator/cmod/container/Container;->getControllerMapping(Lcom/winlator/cmod/container/Container$XrControllerMapping;)B

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    move-object/from16 v3, v23

    .end local v23    # "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v3, "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :try_start_11
    invoke-static {v3, v0}, Lcom/winlator/cmod/XrActivity;->mapKey(Lcom/winlator/cmod/XrActivity$ControllerButton;B)V

    .line 282
    sget-object v0, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    iget-object v0, v0, Lcom/winlator/cmod/XrActivity;->container:Lcom/winlator/cmod/container/Container;

    sget-object v15, Lcom/winlator/cmod/container/Container$XrControllerMapping;->THUMBSTICK_DOWN:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    invoke-virtual {v0, v15}, Lcom/winlator/cmod/container/Container;->getControllerMapping(Lcom/winlator/cmod/container/Container$XrControllerMapping;)B

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    move-object/from16 v15, v17

    .end local v17    # "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v15, "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :try_start_12
    invoke-static {v15, v0}, Lcom/winlator/cmod/XrActivity;->mapKey(Lcom/winlator/cmod/XrActivity$ControllerButton;B)V

    .line 283
    sget-object v0, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    iget-object v0, v0, Lcom/winlator/cmod/XrActivity;->container:Lcom/winlator/cmod/container/Container;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    move-object/from16 v17, v1

    .end local v1    # "axes":[F
    .local v17, "axes":[F
    :try_start_13
    sget-object v1, Lcom/winlator/cmod/container/Container$XrControllerMapping;->THUMBSTICK_LEFT:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/container/Container;->getControllerMapping(Lcom/winlator/cmod/container/Container$XrControllerMapping;)B

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move-object/from16 v1, v18

    .end local v18    # "secondaryLeft":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v1, "secondaryLeft":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :try_start_14
    invoke-static {v1, v0}, Lcom/winlator/cmod/XrActivity;->mapKey(Lcom/winlator/cmod/XrActivity$ControllerButton;B)V

    .line 284
    sget-object v0, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    iget-object v0, v0, Lcom/winlator/cmod/XrActivity;->container:Lcom/winlator/cmod/container/Container;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    move-object/from16 v18, v1

    .end local v1    # "secondaryLeft":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v18    # "secondaryLeft":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :try_start_15
    sget-object v1, Lcom/winlator/cmod/container/Container$XrControllerMapping;->THUMBSTICK_RIGHT:Lcom/winlator/cmod/container/Container$XrControllerMapping;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/container/Container;->getControllerMapping(Lcom/winlator/cmod/container/Container$XrControllerMapping;)B

    move-result v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    move-object/from16 v1, v19

    .end local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v1, "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :try_start_16
    invoke-static {v1, v0}, Lcom/winlator/cmod/XrActivity;->mapKey(Lcom/winlator/cmod/XrActivity$ControllerButton;B)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 285
    .end local v4    # "mouse":Lcom/winlator/cmod/xserver/Pointer;
    .end local v20    # "f":F
    .end local v21    # "snapturn":I
    .end local v22    # "dx":F
    .end local v25    # "dy":F
    .end local v31    # "meter2px":F
    if-eqz v30, :cond_1c

    invoke-interface/range {v30 .. v30}, Lcom/winlator/cmod/xserver/XLock;->close()V

    .line 286
    .end local v30    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :cond_1c
    return-void

    .line 202
    .restart local v30    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :catchall_5
    move-exception v0

    move-object v4, v0

    goto/16 :goto_18

    .end local v18    # "secondaryLeft":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v1, "secondaryLeft":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :catchall_6
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v1, v19

    move-object v4, v0

    .end local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v1, "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v18    # "secondaryLeft":Lcom/winlator/cmod/XrActivity$ControllerButton;
    goto/16 :goto_18

    .end local v1    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :catchall_7
    move-exception v0

    move-object/from16 v1, v19

    move-object v4, v0

    .end local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v1    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    goto/16 :goto_18

    .end local v17    # "axes":[F
    .local v1, "axes":[F
    .restart local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :catchall_8
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    move-object v4, v0

    .end local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v1, "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v17    # "axes":[F
    goto :goto_18

    .end local v15    # "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v1, "axes":[F
    .local v17, "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :catchall_9
    move-exception v0

    move-object/from16 v15, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    move-object v4, v0

    .end local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v1, "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v15    # "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v17, "axes":[F
    goto :goto_18

    .end local v3    # "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .end local v15    # "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v1, "axes":[F
    .local v17, "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v23    # "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :catchall_a
    move-exception v0

    move-object/from16 v15, v17

    move-object/from16 v3, v23

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    move-object v4, v0

    .end local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .end local v23    # "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v1, "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v3    # "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v15    # "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v17, "axes":[F
    goto :goto_18

    .end local v3    # "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .end local v5    # "secondaryPress":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .end local v15    # "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v1, "axes":[F
    .local v17, "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v20, "secondaryPress":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v23    # "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :catchall_b
    move-exception v0

    move-object/from16 v15, v17

    move-object/from16 v5, v20

    move-object/from16 v3, v23

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    move-object v4, v0

    .end local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .end local v20    # "secondaryPress":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .end local v23    # "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v1, "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v3    # "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v5    # "secondaryPress":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v15    # "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v17, "axes":[F
    goto :goto_18

    .end local v15    # "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .end local v29    # "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .end local v30    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .local v1, "axes":[F
    .local v3, "lock":Lcom/winlator/cmod/xserver/XLock;
    .local v5, "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .local v17, "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v20    # "secondaryPress":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v23    # "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :catchall_c
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v29, v5

    move-object/from16 v15, v17

    move-object/from16 v5, v20

    move-object/from16 v3, v23

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    move-object v4, v0

    .end local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .end local v20    # "secondaryPress":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .end local v23    # "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v1, "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v3, "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v5, "secondaryPress":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v15    # "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v17, "axes":[F
    .restart local v29    # "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .restart local v30    # "lock":Lcom/winlator/cmod/xserver/XLock;
    goto :goto_18

    .end local v15    # "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .end local v27    # "mouseAxisX":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .end local v29    # "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .end local v30    # "lock":Lcom/winlator/cmod/xserver/XLock;
    .local v1, "axes":[F
    .local v3, "lock":Lcom/winlator/cmod/xserver/XLock;
    .local v4, "mouseAxisX":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .local v5, "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .local v17, "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v20    # "secondaryPress":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v23    # "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :catchall_d
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v27, v4

    move-object/from16 v29, v5

    move-object/from16 v15, v17

    move-object/from16 v5, v20

    move-object/from16 v3, v23

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    move-object v4, v0

    .end local v4    # "mouseAxisX":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .end local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .end local v20    # "secondaryPress":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .end local v23    # "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v1, "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v3, "secondaryUp":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v5, "secondaryPress":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v15    # "secondaryDown":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .local v17, "axes":[F
    .restart local v27    # "mouseAxisX":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .restart local v29    # "mouseAxisY":Lcom/winlator/cmod/XrActivity$ControllerAxis;
    .restart local v30    # "lock":Lcom/winlator/cmod/xserver/XLock;
    :goto_18
    if-eqz v30, :cond_1d

    :try_start_17
    invoke-interface/range {v30 .. v30}, Lcom/winlator/cmod/xserver/XLock;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    move-object/from16 v19, v1

    goto :goto_19

    :catchall_e
    move-exception v0

    move-object/from16 v19, v1

    move-object v1, v0

    .end local v1    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_19

    .end local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v1    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :cond_1d
    move-object/from16 v19, v1

    .end local v1    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    .restart local v19    # "secondaryRight":Lcom/winlator/cmod/XrActivity$ControllerButton;
    :goto_19
    throw v4
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .param p1, "e"    # Landroid/text/Editable;

    monitor-enter p0

    .line 91
    :try_start_0
    sget-object v0, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    invoke-virtual {v0}, Lcom/winlator/cmod/XrActivity;->getXServer()Lcom/winlator/cmod/xserver/XServer;

    move-result-object v0

    .line 92
    .local v0, "server":Lcom/winlator/cmod/xserver/XServer;
    const v1, 0x7f09017f

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/XrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 93
    .local v1, "text":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Lcom/winlator/cmod/XrActivity;->lastText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x32

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v3, v4, :cond_1

    .line 95
    sput-object v2, Lcom/winlator/cmod/XrActivity;->lastText:Ljava/lang/String;

    .line 96
    sget-object v3, Lcom/winlator/cmod/XrActivity;->chars:Landroid/view/KeyCharacterMap;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    new-array v7, v7, [C

    aput-char v4, v7, v6

    invoke-virtual {v3, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 97
    .local v3, "events":[Landroid/view/KeyEvent;
    if-eqz v3, :cond_0

    .line 98
    array-length v4, v3

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    .line 99
    .local v7, "keyEvent":Landroid/view/KeyEvent;
    iget-object v8, v0, Lcom/winlator/cmod/xserver/XServer;->keyboard:Lcom/winlator/cmod/xserver/Keyboard;

    invoke-virtual {v8, v7}, Lcom/winlator/cmod/xserver/Keyboard;->onKeyEvent(Landroid/view/KeyEvent;)Z

    .line 100
    invoke-static {v5}, Lcom/winlator/cmod/XrActivity;->sleep(I)V

    .line 98
    .end local v7    # "keyEvent":Landroid/view/KeyEvent;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 103
    .end local v3    # "events":[Landroid/view/KeyEvent;
    .end local p0    # "this":Lcom/winlator/cmod/XrActivity;
    :cond_0
    goto :goto_1

    .line 104
    :cond_1
    sput-object v2, Lcom/winlator/cmod/XrActivity;->lastText:Ljava/lang/String;

    .line 105
    iget-object v3, v0, Lcom/winlator/cmod/xserver/XServer;->keyboard:Lcom/winlator/cmod/xserver/Keyboard;

    new-instance v4, Landroid/view/KeyEvent;

    const/16 v8, 0x43

    invoke-direct {v4, v6, v8}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/xserver/Keyboard;->onKeyEvent(Landroid/view/KeyEvent;)Z

    .line 106
    invoke-static {v5}, Lcom/winlator/cmod/XrActivity;->sleep(I)V

    .line 107
    iget-object v3, v0, Lcom/winlator/cmod/xserver/XServer;->keyboard:Lcom/winlator/cmod/xserver/Keyboard;

    new-instance v4, Landroid/view/KeyEvent;

    invoke-direct {v4, v7, v8}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/xserver/Keyboard;->onKeyEvent(Landroid/view/KeyEvent;)Z

    .line 109
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    invoke-direct {p0}, Lcom/winlator/cmod/XrActivity;->resetText()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_2
    monitor-exit p0

    return-void

    .line 90
    .end local v0    # "server":Lcom/winlator/cmod/xserver/XServer;
    .end local v1    # "text":Landroid/widget/EditText;
    .end local v2    # "s":Ljava/lang/String;
    .end local p1    # "e":Landroid/text/Editable;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 84
    return-void
.end method

.method public native beginFrame(ZZ)Z
.end method

.method public native bindFramebuffer()V
.end method

.method public native endFrame()V
.end method

.method public native getAxes()[F
.end method

.method public native getButtons()[Z
.end method

.method public native getHeight()I
.end method

.method public native getWidth()I
.end method

.method public native init()V
.end method

.method public declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    .line 79
    :try_start_0
    invoke-super {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->onDestroy()V

    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 78
    .end local p0    # "this":Lcom/winlator/cmod/XrActivity;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized onPause()V
    .locals 1

    monitor-enter p0

    .line 60
    const v0, 0x7f09017f

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/XrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 61
    .local v0, "text":Landroid/widget/EditText;
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    invoke-super {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 59
    .end local v0    # "text":Landroid/widget/EditText;
    .end local p0    # "this":Lcom/winlator/cmod/XrActivity;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .locals 3

    monitor-enter p0

    .line 67
    :try_start_0
    invoke-super {p0}, Lcom/winlator/cmod/XServerDisplayActivity;->onResume()V

    .line 68
    sput-object p0, Lcom/winlator/cmod/XrActivity;->instance:Lcom/winlator/cmod/XrActivity;

    .line 69
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cursor_speed"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/winlator/cmod/XrActivity;->mouseSpeed:F

    .line 71
    const v0, 0x7f09017f

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/XrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 72
    .local v0, "text":Landroid/widget/EditText;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 73
    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 74
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 66
    .end local v0    # "text":Landroid/widget/EditText;
    .end local p0    # "this":Lcom/winlator/cmod/XrActivity;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 87
    return-void
.end method
