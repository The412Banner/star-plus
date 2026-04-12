.class public Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
.super Ljava/lang/Object;
.source "ExternalControllerBinding.java"


# static fields
.field public static final AXIS_RZ_NEGATIVE:B = -0x7t

.field public static final AXIS_RZ_POSITIVE:B = -0x8t

.field public static final AXIS_X_NEGATIVE:B = -0x1t

.field public static final AXIS_X_POSITIVE:B = -0x2t

.field public static final AXIS_Y_NEGATIVE:B = -0x3t

.field public static final AXIS_Y_POSITIVE:B = -0x4t

.field public static final AXIS_Z_NEGATIVE:B = -0x5t

.field public static final AXIS_Z_POSITIVE:B = -0x6t


# instance fields
.field private binding:Lcom/winlator/cmod/inputcontrols/Binding;

.field private keyCode:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/winlator/cmod/inputcontrols/Binding;->NONE:Lcom/winlator/cmod/inputcontrols/Binding;

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->binding:Lcom/winlator/cmod/inputcontrols/Binding;

    return-void
.end method

.method public static getKeyCodeForAxis(IB)I
    .locals 1
    .param p0, "axis"    # I
    .param p1, "sign"    # B

    .line 78
    sparse-switch p0, :sswitch_data_0

    .line 92
    const/4 v0, 0x0

    return v0

    .line 90
    :sswitch_0
    if-lez p1, :cond_0

    const/16 v0, 0x14

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    :goto_0
    return v0

    .line 88
    :sswitch_1
    if-lez p1, :cond_1

    const/16 v0, 0x16

    goto :goto_1

    :cond_1
    const/16 v0, 0x15

    :goto_1
    return v0

    .line 86
    :sswitch_2
    if-lez p1, :cond_2

    const/4 v0, -0x8

    goto :goto_2

    :cond_2
    const/4 v0, -0x7

    :goto_2
    return v0

    .line 84
    :sswitch_3
    if-lez p1, :cond_3

    const/4 v0, -0x6

    goto :goto_3

    :cond_3
    const/4 v0, -0x5

    :goto_3
    return v0

    .line 82
    :sswitch_4
    if-lez p1, :cond_4

    const/4 v0, -0x4

    goto :goto_4

    :cond_4
    const/4 v0, -0x3

    :goto_4
    return v0

    .line 80
    :sswitch_5
    if-lez p1, :cond_5

    const/4 v0, -0x2

    goto :goto_5

    :cond_5
    const/4 v0, -0x1

    :goto_5
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_4
        0xb -> :sswitch_3
        0xe -> :sswitch_2
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getBinding()Lcom/winlator/cmod/inputcontrols/Binding;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->binding:Lcom/winlator/cmod/inputcontrols/Binding;

    return-object v0
.end method

.method public getKeyCode()I
    .locals 1

    .line 24
    iget-short v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->keyCode:S

    return v0
.end method

.method public setBinding(Lcom/winlator/cmod/inputcontrols/Binding;)V
    .locals 0
    .param p1, "binding"    # Lcom/winlator/cmod/inputcontrols/Binding;

    .line 36
    iput-object p1, p0, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->binding:Lcom/winlator/cmod/inputcontrols/Binding;

    .line 37
    return-void
.end method

.method public setKeyCode(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .line 28
    int-to-short v0, p1

    iput-short v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->keyCode:S

    .line 29
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 41
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v0, "controllerBindingJSONObject":Lorg/json/JSONObject;
    const-string v1, "keyCode"

    iget-short v2, p0, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->keyCode:S

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    const-string v1, "binding"

    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->binding:Lcom/winlator/cmod/inputcontrols/Binding;

    invoke-virtual {v2}, Lcom/winlator/cmod/inputcontrols/Binding;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-object v0

    .line 46
    .end local v0    # "controllerBindingJSONObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    iget-short v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->keyCode:S

    packed-switch v0, :pswitch_data_0

    .line 72
    iget-short v0, p0, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->keyCode:S

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEYCODE_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :pswitch_0
    const-string v0, "AXIS X-"

    return-object v0

    .line 58
    :pswitch_1
    const-string v0, "AXIS X+"

    return-object v0

    .line 60
    :pswitch_2
    const-string v0, "AXIS Y-"

    return-object v0

    .line 62
    :pswitch_3
    const-string v0, "AXIS Y+"

    return-object v0

    .line 64
    :pswitch_4
    const-string v0, "AXIS Z-"

    return-object v0

    .line 66
    :pswitch_5
    const-string v0, "AXIS Z+"

    return-object v0

    .line 68
    :pswitch_6
    const-string v0, "AXIS RZ-"

    return-object v0

    .line 70
    :pswitch_7
    const-string v0, "AXIS RZ+"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x8
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
