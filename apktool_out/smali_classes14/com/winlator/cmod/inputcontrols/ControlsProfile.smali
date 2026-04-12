.class public Lcom/winlator/cmod/inputcontrols/ControlsProfile;
.super Ljava/lang/Object;
.source "ControlsProfile.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/winlator/cmod/inputcontrols/ControlsProfile;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final controllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/inputcontrols/ExternalController;",
            ">;"
        }
    .end annotation
.end field

.field private controllersLoaded:Z

.field private cursorSpeed:F

.field private final elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/inputcontrols/ControlElement;",
            ">;"
        }
    .end annotation
.end field

.field private elementsLoaded:Z

.field private gamepadState:Lcom/winlator/cmod/inputcontrols/GamepadState;

.field public final id:I

.field private final immutableElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/winlator/cmod/inputcontrols/ControlElement;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private virtualGamepad:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->cursorSpeed:F

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    .line 26
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->immutableElements:Ljava/util/List;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->elementsLoaded:Z

    .line 28
    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllersLoaded:Z

    .line 29
    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->virtualGamepad:Z

    .line 34
    iput-object p1, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->context:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    .line 36
    return-void
.end method

.method public static getProfileFile(Landroid/content/Context;I)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 153
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/winlator/cmod/inputcontrols/InputControlsManager;->getProfilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controls-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".icp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addController(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/ExternalController;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getController(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/ExternalController;

    move-result-object v0

    .line 65
    .local v0, "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getController(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/ExternalController;

    move-result-object v2

    move-object v0, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllersLoaded:Z

    .line 67
    return-object v0
.end method

.method public addElement(Lcom/winlator/cmod/inputcontrols/ControlElement;)V
    .locals 1
    .param p1, "element"    # Lcom/winlator/cmod/inputcontrols/ControlElement;

    .line 157
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->elementsLoaded:Z

    .line 159
    return-void
.end method

.method public compareTo(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)I
    .locals 2
    .param p1, "o"    # Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    .line 110
    iget v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    iget v1, p1, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lcom/winlator/cmod/inputcontrols/ControlsProfile;

    invoke-virtual {p0, p1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->compareTo(Lcom/winlator/cmod/inputcontrols/ControlsProfile;)I

    move-result p1

    return p1
.end method

.method public getController(I)Lcom/winlator/cmod/inputcontrols/ExternalController;
    .locals 5
    .param p1, "deviceId"    # I

    .line 82
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllersLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->loadControllers()Ljava/util/ArrayList;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/inputcontrols/ExternalController;

    .line 86
    .local v1, "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getDeviceId()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    .line 87
    .end local v1    # "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    :cond_1
    goto :goto_0

    .line 90
    :cond_2
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 91
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_4

    .line 92
    invoke-virtual {v0}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "descriptor":Ljava/lang/String;
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/winlator/cmod/inputcontrols/ExternalController;

    .line 94
    .local v3, "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    invoke-virtual {v3}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 95
    return-object v3

    .line 97
    .end local v3    # "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    :cond_3
    goto :goto_1

    .line 99
    .end local v1    # "descriptor":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public getController(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/ExternalController;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 76
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllersLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->loadControllers()Ljava/util/ArrayList;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winlator/cmod/inputcontrols/ExternalController;

    .local v1, "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    invoke-virtual {v1}, Lcom/winlator/cmod/inputcontrols/ExternalController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .end local v1    # "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    :cond_1
    goto :goto_0

    .line 78
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCursorSpeed()F
    .locals 1

    .line 47
    iget v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->cursorSpeed:F

    return v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/winlator/cmod/inputcontrols/ControlElement;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->immutableElements:Ljava/util/List;

    return-object v0
.end method

.method public getGamepadState()Lcom/winlator/cmod/inputcontrols/GamepadState;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->gamepadState:Lcom/winlator/cmod/inputcontrols/GamepadState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/winlator/cmod/inputcontrols/GamepadState;

    invoke-direct {v0}, Lcom/winlator/cmod/inputcontrols/GamepadState;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->gamepadState:Lcom/winlator/cmod/inputcontrols/GamepadState;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->gamepadState:Lcom/winlator/cmod/inputcontrols/GamepadState;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isElementsLoaded()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->elementsLoaded:Z

    return v0
.end method

.method public isTemplate()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->name:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isVirtualGamepad()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->virtualGamepad:Z

    return v0
.end method

.method public loadControllers()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/winlator/cmod/inputcontrols/ExternalController;",
            ">;"
        }
    .end annotation

    .line 175
    const-string v0, "controllers"

    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllersLoaded:Z

    .line 178
    iget-object v1, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->context:Landroid/content/Context;

    iget v2, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    invoke-static {v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    .line 179
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    return-object v0

    .line 182
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/winlator/cmod/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, "profileJSONObject":Lorg/json/JSONObject;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    return-object v0

    .line 184
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 185
    .local v0, "controllersJSONArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 186
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 187
    .local v4, "controllerJSONObject":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "id":Ljava/lang/String;
    new-instance v6, Lcom/winlator/cmod/inputcontrols/ExternalController;

    invoke-direct {v6}, Lcom/winlator/cmod/inputcontrols/ExternalController;-><init>()V

    .line 189
    .local v6, "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    invoke-virtual {v6, v5}, Lcom/winlator/cmod/inputcontrols/ExternalController;->setId(Ljava/lang/String;)V

    .line 190
    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/winlator/cmod/inputcontrols/ExternalController;->setName(Ljava/lang/String;)V

    .line 192
    const-string v7, "controllerBindings"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 193
    .local v7, "controllerBindingsJSONArray":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 194
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 195
    .local v9, "controllerBindingJSONObject":Lorg/json/JSONObject;
    new-instance v10, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;

    invoke-direct {v10}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;-><init>()V

    .line 196
    .local v10, "controllerBinding":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    const-string v11, "keyCode"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->setKeyCode(I)V

    .line 197
    const-string v11, "binding"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/winlator/cmod/inputcontrols/Binding;->fromString(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;->setBinding(Lcom/winlator/cmod/inputcontrols/Binding;)V

    .line 198
    invoke-virtual {v6, v10}, Lcom/winlator/cmod/inputcontrols/ExternalController;->addControllerBinding(Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;)V

    .line 193
    .end local v9    # "controllerBindingJSONObject":Lorg/json/JSONObject;
    .end local v10    # "controllerBinding":Lcom/winlator/cmod/inputcontrols/ExternalControllerBinding;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 200
    .end local v8    # "j":I
    :cond_2
    iget-object v8, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    nop

    .end local v4    # "controllerJSONObject":Lorg/json/JSONObject;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    .end local v7    # "controllerBindingsJSONArray":Lorg/json/JSONArray;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllersLoaded:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0    # "controllersJSONArray":Lorg/json/JSONArray;
    .end local v2    # "profileJSONObject":Lorg/json/JSONObject;
    goto :goto_2

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 207
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public loadElements(Lcom/winlator/cmod/widget/InputControlsView;)V
    .locals 14
    .param p1, "inputControlsView"    # Lcom/winlator/cmod/widget/InputControlsView;

    .line 211
    const-string v0, "orientation"

    const-string v1, "range"

    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 212
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->elementsLoaded:Z

    .line 213
    iput-boolean v2, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->virtualGamepad:Z

    .line 215
    iget-object v2, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->context:Landroid/content/Context;

    iget v3, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    invoke-static {v2, v3}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v2

    .line 216
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 219
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/winlator/cmod/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    .local v3, "profileJSONObject":Lorg/json/JSONObject;
    const-string v4, "elements"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 221
    .local v4, "elementsJSONArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_6

    .line 222
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 223
    .local v6, "elementJSONObject":Lorg/json/JSONObject;
    new-instance v8, Lcom/winlator/cmod/inputcontrols/ControlElement;

    invoke-direct {v8, p1}, Lcom/winlator/cmod/inputcontrols/ControlElement;-><init>(Lcom/winlator/cmod/widget/InputControlsView;)V

    .line 224
    .local v8, "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    const-string v9, "type"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->valueOf(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setType(Lcom/winlator/cmod/inputcontrols/ControlElement$Type;)V

    .line 225
    const-string v9, "shape"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;->valueOf(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setShape(Lcom/winlator/cmod/inputcontrols/ControlElement$Shape;)V

    .line 226
    const-string v9, "toggleSwitch"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setToggleSwitch(Z)V

    .line 227
    const-string v9, "x"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {p1}, Lcom/winlator/cmod/widget/InputControlsView;->getMaxWidth()I

    move-result v11

    int-to-double v11, v11

    mul-double/2addr v9, v11

    double-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setX(I)V

    .line 228
    const-string v9, "y"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {p1}, Lcom/winlator/cmod/widget/InputControlsView;->getMaxHeight()I

    move-result v11

    int-to-double v11, v11

    mul-double/2addr v9, v11

    double-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setY(I)V

    .line 229
    const-string v9, "scale"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setScale(F)V

    .line 230
    const-string v9, "text"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setText(Ljava/lang/String;)V

    .line 231
    const-string v9, "iconId"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setIconId(I)V

    .line 232
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/winlator/cmod/inputcontrols/ControlElement$Range;->valueOf(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/ControlElement$Range;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setRange(Lcom/winlator/cmod/inputcontrols/ControlElement$Range;)V

    .line 233
    :cond_1
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v8, v9}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setOrientation(B)V

    .line 235
    :cond_2
    const/4 v9, 0x1

    .line 236
    .local v9, "hasGamepadBinding":Z
    const-string v10, "bindings"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 237
    .local v10, "bindingsJSONArray":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_4

    .line 238
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/winlator/cmod/inputcontrols/Binding;->fromString(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v12

    .line 239
    .local v12, "binding":Lcom/winlator/cmod/inputcontrols/Binding;
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/winlator/cmod/inputcontrols/Binding;->fromString(Ljava/lang/String;)Lcom/winlator/cmod/inputcontrols/Binding;

    move-result-object v13

    invoke-virtual {v8, v11, v13}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setBindingAt(ILcom/winlator/cmod/inputcontrols/Binding;)V

    .line 240
    invoke-virtual {v12}, Lcom/winlator/cmod/inputcontrols/Binding;->isGamepad()Z

    move-result v13

    if-nez v13, :cond_3

    const/4 v9, 0x0

    .line 237
    .end local v12    # "binding":Lcom/winlator/cmod/inputcontrols/Binding;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 243
    .end local v11    # "j":I
    :cond_4
    iget-boolean v11, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->virtualGamepad:Z

    if-nez v11, :cond_5

    if-eqz v9, :cond_5

    iput-boolean v7, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->virtualGamepad:Z

    .line 244
    :cond_5
    iget-object v7, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    nop

    .end local v6    # "elementJSONObject":Lorg/json/JSONObject;
    .end local v8    # "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    .end local v9    # "hasGamepadBinding":Z
    .end local v10    # "bindingsJSONArray":Lorg/json/JSONArray;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 246
    .end local v5    # "i":I
    :cond_6
    iput-boolean v7, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->elementsLoaded:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v3    # "profileJSONObject":Lorg/json/JSONObject;
    .end local v4    # "elementsJSONArray":Lorg/json/JSONArray;
    goto :goto_2

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 251
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method public removeController(Lcom/winlator/cmod/inputcontrols/ExternalController;)V
    .locals 1
    .param p1, "controller"    # Lcom/winlator/cmod/inputcontrols/ExternalController;

    .line 71
    iget-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllersLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->loadControllers()Ljava/util/ArrayList;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public removeElement(Lcom/winlator/cmod/inputcontrols/ControlElement;)V
    .locals 1
    .param p1, "element"    # Lcom/winlator/cmod/inputcontrols/ControlElement;

    .line 162
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->elementsLoaded:Z

    .line 164
    return-void
.end method

.method public save()V
    .locals 8

    .line 118
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->context:Landroid/content/Context;

    iget v1, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    invoke-static {v0, v1}, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    .line 121
    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v1, "data":Lorg/json/JSONObject;
    const-string v2, "id"

    iget v3, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->id:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    const-string v2, "name"

    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v2, "cursorSpeed"

    iget v3, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->cursorSpeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 127
    .local v2, "elementsJSONArray":Lorg/json/JSONArray;
    iget-boolean v3, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->elementsLoaded:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "elements"

    if-nez v3, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/winlator/cmod/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 129
    .local v3, "profileJSONObject":Lorg/json/JSONObject;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move-object v2, v5

    .line 130
    .end local v3    # "profileJSONObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 131
    :cond_0
    iget-object v3, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/winlator/cmod/inputcontrols/ControlElement;

    .local v5, "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    invoke-virtual {v5}, Lcom/winlator/cmod/inputcontrols/ControlElement;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 132
    .end local v5    # "element":Lcom/winlator/cmod/inputcontrols/ControlElement;
    :cond_1
    :goto_1
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 135
    .local v3, "controllersJSONArray":Lorg/json/JSONArray;
    iget-boolean v4, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllersLoaded:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "controllers"

    if-nez v4, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/winlator/cmod/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    .local v4, "profileJSONObject":Lorg/json/JSONObject;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object v3, v6

    .line 138
    .end local v4    # "profileJSONObject":Lorg/json/JSONObject;
    :cond_2
    goto :goto_3

    .line 140
    :cond_3
    iget-object v4, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/winlator/cmod/inputcontrols/ExternalController;

    .line 141
    .local v6, "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    invoke-virtual {v6}, Lcom/winlator/cmod/inputcontrols/ExternalController;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v7

    .line 142
    .local v7, "controllerJSONObject":Lorg/json/JSONObject;
    if-eqz v7, :cond_4

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 143
    .end local v6    # "controller":Lcom/winlator/cmod/inputcontrols/ExternalController;
    .end local v7    # "controllerJSONObject":Lorg/json/JSONObject;
    :cond_4
    goto :goto_2

    .line 145
    :cond_5
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/winlator/cmod/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    nop

    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "elementsJSONArray":Lorg/json/JSONArray;
    .end local v3    # "controllersJSONArray":Lorg/json/JSONArray;
    goto :goto_4

    :catch_0
    move-exception v1

    .line 150
    :goto_4
    return-void
.end method

.method public setCursorSpeed(F)V
    .locals 0
    .param p1, "cursorSpeed"    # F

    .line 51
    iput p1, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->cursorSpeed:F

    .line 52
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/winlator/cmod/inputcontrols/ControlsProfile;->name:Ljava/lang/String;

    return-object v0
.end method
