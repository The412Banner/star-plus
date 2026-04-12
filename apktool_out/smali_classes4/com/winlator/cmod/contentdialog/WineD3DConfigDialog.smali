.class public Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "WineD3DConfigDialog.java"


# static fields
.field public static DEFAULT_CONFIG:Ljava/lang/String;

.field public static csmtValues:[Ljava/lang/String;

.field public static offscreenRenderingModeValues:[Ljava/lang/String;

.field public static rendererValues:[Ljava/lang/String;

.field public static strictShaderMathValues:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    sget-object v0, Lcom/winlator/cmod/container/Container;->DEFAULT_DXWRAPPERCONFIG:Ljava/lang/String;

    sput-object v0, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->DEFAULT_CONFIG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Enabled"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "Disabled"

    aput-object v5, v1, v4

    sput-object v1, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->csmtValues:[Ljava/lang/String;

    .line 25
    new-array v1, v0, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    sput-object v1, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->strictShaderMathValues:[Ljava/lang/String;

    .line 26
    new-array v1, v0, [Ljava/lang/String;

    const-string v3, "fbo"

    aput-object v3, v1, v2

    const-string v3, "backbuffer"

    aput-object v3, v1, v4

    sput-object v1, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->offscreenRenderingModeValues:[Ljava/lang/String;

    .line 27
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "gl"

    aput-object v3, v1, v2

    const-string v2, "vulkan"

    aput-object v2, v1, v4

    const-string v2, "gdi"

    aput-object v2, v1, v0

    sput-object v1, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->rendererValues:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 24
    .param p1, "anchor"    # Landroid/view/View;

    .line 31
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00c8

    invoke-direct {v0, v1, v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->context:Landroid/content/Context;

    .line 33
    const v1, 0x7f08014b

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->setIcon(I)V

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WineD3D "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->context:Landroid/content/Context;

    const v3, 0x7f100064

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->setTitle(Ljava/lang/String;)V

    .line 36
    const v1, 0x7f0900e3

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 37
    .local v1, "sCSMT":Landroid/widget/Spinner;
    const v2, 0x7f0900e7

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/Spinner;

    .line 38
    .local v12, "sDDRAWrapper":Landroid/widget/Spinner;
    const v2, 0x7f0900f1

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/Spinner;

    .line 39
    .local v13, "sGPUName":Landroid/widget/Spinner;
    const v2, 0x7f090114

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/Spinner;

    .line 40
    .local v14, "sVideoMemorySize":Landroid/widget/Spinner;
    const v2, 0x7f09010c

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/Spinner;

    .line 41
    .local v15, "sStrictShaderMath":Landroid/widget/Spinner;
    const v2, 0x7f090102

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/Spinner;

    .line 42
    .local v11, "sOffscreenRenderingMode":Landroid/widget/Spinner;
    const v2, 0x7f090107

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Spinner;

    .line 44
    .local v10, "sRenderer":Landroid/widget/Spinner;
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, v0, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->context:Landroid/content/Context;

    sget-object v4, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->csmtValues:[Ljava/lang/String;

    const v5, 0x1090009

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object v9, v2

    .line 45
    .local v9, "csmtAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 47
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, v0, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->context:Landroid/content/Context;

    sget-object v4, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->strictShaderMathValues:[Ljava/lang/String;

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object v8, v2

    .line 48
    .local v8, "ssmAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v15, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 50
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, v0, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->context:Landroid/content/Context;

    sget-object v4, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->offscreenRenderingModeValues:[Ljava/lang/String;

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object v7, v2

    .line 51
    .local v7, "ormAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v11, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 53
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, v0, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->context:Landroid/content/Context;

    sget-object v4, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->rendererValues:[Ljava/lang/String;

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object v6, v2

    .line 54
    .local v6, "rendererAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v10, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 56
    invoke-direct {v0, v13}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->loadGPUNameSpinner(Landroid/widget/Spinner;)V

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->parseConfig(Ljava/lang/Object;)Lcom/winlator/cmod/core/KeyValueSet;

    move-result-object v5

    .line 60
    .local v5, "config":Lcom/winlator/cmod/core/KeyValueSet;
    const-string v2, "csmt"

    invoke-virtual {v5, v2}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 61
    const-string v2, "strict_shader_math"

    invoke-virtual {v5, v2}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v15, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 62
    const-string v2, "OffscreenRenderingMode"

    invoke-virtual {v5, v2}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 63
    const-string v2, "gpuName"

    invoke-virtual {v5, v2}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 64
    const-string v2, "ddrawrapper"

    invoke-virtual {v5, v2}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromIdentifier(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 65
    const-string v2, "renderer"

    invoke-virtual {v5, v2}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 66
    const-string v2, "videoMemorySize"

    invoke-virtual {v5, v2}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromNumber(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 68
    new-instance v4, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog$$ExternalSyntheticLambda0;

    move-object v2, v4

    move-object v3, v5

    move-object/from16 v16, v4

    move-object v4, v1

    move-object/from16 v17, v5

    .end local v5    # "config":Lcom/winlator/cmod/core/KeyValueSet;
    .local v17, "config":Lcom/winlator/cmod/core/KeyValueSet;
    move-object v5, v15

    move-object/from16 v18, v6

    .end local v6    # "rendererAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v18, "rendererAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object v6, v11

    move-object/from16 v19, v7

    .end local v7    # "ormAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v19, "ormAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object v7, v13

    move-object/from16 v20, v8

    .end local v8    # "ssmAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v20, "ssmAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object v8, v12

    move-object/from16 v21, v9

    .end local v9    # "csmtAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v21, "csmtAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object v9, v14

    move-object/from16 v22, v10

    .end local v10    # "sRenderer":Landroid/widget/Spinner;
    .local v22, "sRenderer":Landroid/widget/Spinner;
    move-object/from16 v23, v11

    .end local v11    # "sOffscreenRenderingMode":Landroid/widget/Spinner;
    .local v23, "sOffscreenRenderingMode":Landroid/widget/Spinner;
    move-object/from16 v11, p1

    invoke-direct/range {v2 .. v11}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/core/KeyValueSet;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;)V

    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public static getDeviceIdFromGPUName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gpuName"    # Ljava/lang/String;

    .line 105
    const-string v0, "gpu_cards.json"

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "gpuNameList":Ljava/lang/String;
    const-string v1, ""

    .line 108
    .local v1, "deviceId":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 110
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 111
    .local v4, "jobj":Lorg/json/JSONObject;
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    const-string v5, "deviceID"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 109
    .end local v4    # "jobj":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 116
    :catch_0
    move-exception v2

    .line 119
    :goto_1
    return-object v1
.end method

.method public static getVendorIdFromGPUName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gpuName"    # Ljava/lang/String;

    .line 123
    const-string v0, "gpu_cards.json"

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "gpuNameList":Ljava/lang/String;
    const-string v1, ""

    .line 126
    .local v1, "vendorId":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 127
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 128
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 129
    .local v4, "jobj":Lorg/json/JSONObject;
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    const-string v5, "vendorID"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 127
    .end local v4    # "jobj":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 134
    :catch_0
    move-exception v2

    .line 137
    :goto_1
    return-object v1
.end method

.method static synthetic lambda$new$0(Lcom/winlator/cmod/core/KeyValueSet;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 4
    .param p0, "config"    # Lcom/winlator/cmod/core/KeyValueSet;
    .param p1, "sCSMT"    # Landroid/widget/Spinner;
    .param p2, "sStrictShaderMath"    # Landroid/widget/Spinner;
    .param p3, "sOffscreenRenderingMode"    # Landroid/widget/Spinner;
    .param p4, "sGPUName"    # Landroid/widget/Spinner;
    .param p5, "sDDRAWrapper"    # Landroid/widget/Spinner;
    .param p6, "sVideoMemorySize"    # Landroid/widget/Spinner;
    .param p7, "sRenderer"    # Landroid/widget/Spinner;
    .param p8, "anchor"    # Landroid/view/View;

    .line 69
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "0"

    if-eqz v0, :cond_0

    const-string v0, "3"

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v3, "csmt"

    invoke-virtual {p0, v3, v0}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "1"

    :cond_1
    const-string v0, "strict_shader_math"

    invoke-virtual {p0, v0, v2}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OffscreenRenderingMode"

    invoke-virtual {p0, v1, v0}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gpuName"

    invoke-virtual {p0, v1, v0}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/StringUtils;->parseIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ddrawrapper"

    invoke-virtual {p0, v1, v0}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/StringUtils;->parseNumber(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoMemorySize"

    invoke-virtual {p0, v1, v0}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderer"

    invoke-virtual {p0, v1, v0}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lcom/winlator/cmod/core/KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method private loadGPUNameSpinner(Landroid/widget/Spinner;)V
    .locals 6
    .param p1, "spinner"    # Landroid/widget/Spinner;

    .line 87
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->context:Landroid/content/Context;

    const-string v1, "gpu_cards.json"

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "gpuNameList":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "jarray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 93
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 94
    .local v4, "jobj":Lorg/json/JSONObject;
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "gpuName":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    nop

    .end local v4    # "jobj":Lorg/json/JSONObject;
    .end local v5    # "gpuName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->context:Landroid/content/Context;

    const v5, 0x1090009

    invoke-direct {v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 98
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v2    # "jarray":Lorg/json/JSONArray;
    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    goto :goto_1

    .line 100
    :catch_0
    move-exception v2

    .line 102
    :goto_1
    return-void
.end method

.method public static parseConfig(Ljava/lang/Object;)Lcom/winlator/cmod/core/KeyValueSet;
    .locals 2
    .param p0, "config"    # Ljava/lang/Object;

    .line 82
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->DEFAULT_CONFIG:Ljava/lang/String;

    .line 83
    .local v0, "data":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/winlator/cmod/core/KeyValueSet;

    invoke-direct {v1, v0}, Lcom/winlator/cmod/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static setEnvVars(Landroid/content/Context;Lcom/winlator/cmod/core/KeyValueSet;Lcom/winlator/cmod/core/EnvVars;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/winlator/cmod/core/KeyValueSet;
    .param p2, "vars"    # Lcom/winlator/cmod/core/EnvVars;

    .line 141
    const-string v0, "gpuName"

    invoke-virtual {p1, v0}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->getDeviceIdFromGPUName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "deviceID":Ljava/lang/String;
    const-string v1, "vendorID"

    invoke-virtual {p1, v1}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/winlator/cmod/contentdialog/WineD3DConfigDialog;->getVendorIdFromGPUName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "vendorID":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "csmt=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "csmt"

    invoke-virtual {p1, v3}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",strict_shader_math=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "strict_shader_math"

    invoke-virtual {p1, v3}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",OffscreenRenderingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OffscreenRenderingMode"

    invoke-virtual {p1, v3}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",VideoMemorySize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "videoMemorySize"

    invoke-virtual {p1, v3}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",VideoPciDeviceID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",VideoPciVendorID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",renderer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "renderer"

    invoke-virtual {p1, v3}, Lcom/winlator/cmod/core/KeyValueSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "wined3dConfig":Ljava/lang/String;
    const-string v3, "WINE_D3D_CONFIG"

    invoke-virtual {p2, v3, v2}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    return-void
.end method
