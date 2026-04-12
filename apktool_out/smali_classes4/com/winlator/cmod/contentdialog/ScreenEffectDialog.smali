.class public Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "ScreenEffectDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenEffectDialog"


# instance fields
.field private final activity:Lcom/winlator/cmod/XServerDisplayActivity;

.field private final cbEnableCRTShader:Landroid/widget/CheckBox;

.field private final cbEnableFXAA:Landroid/widget/CheckBox;

.field private final cbEnableNTSCEffect:Landroid/widget/CheckBox;

.field private final cbEnableToonShader:Landroid/widget/CheckBox;

.field private final preferences:Landroid/content/SharedPreferences;

.field private final sProfile:Landroid/widget/Spinner;

.field private final sbBrightness:Lcom/winlator/cmod/widget/SeekBar;

.field private final sbContrast:Lcom/winlator/cmod/widget/SeekBar;

.field private final sbGamma:Lcom/winlator/cmod/widget/SeekBar;


# direct methods
.method public static synthetic $r8$lambda$2rBWsU0L_D_OulWTMtUlwgxWk8g(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$39XBlX3brBoPhuuytow-qRqalzE(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4qH-Vbz3_xYalVAsf0EpYj0l4_s(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->lambda$promptAddProfile$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MGjC2msjGHVzeiurecAjVW0WiMY(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->lambda$promptDeleteProfile$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aCz51vmaabJTcpSCa7n2zUgfCc0(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;Lcom/winlator/cmod/renderer/effects/ColorEffect;Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/renderer/effects/FXAAEffect;Lcom/winlator/cmod/renderer/effects/CRTEffect;Lcom/winlator/cmod/renderer/effects/ToonEffect;Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->lambda$new$4(Lcom/winlator/cmod/renderer/effects/ColorEffect;Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/renderer/effects/FXAAEffect;Lcom/winlator/cmod/renderer/effects/CRTEffect;Lcom/winlator/cmod/renderer/effects/ToonEffect;Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aDWsK55t5WiWsAh80lgYu9GmMSQ(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pFhXvTjyORK67FAJfqIAmTgZcoo(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;Lcom/winlator/cmod/renderer/effects/ColorEffect;Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/renderer/effects/FXAAEffect;Lcom/winlator/cmod/renderer/effects/CRTEffect;Lcom/winlator/cmod/renderer/effects/ToonEffect;Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->lambda$new$1(Lcom/winlator/cmod/renderer/effects/ColorEffect;Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/renderer/effects/FXAAEffect;Lcom/winlator/cmod/renderer/effects/CRTEffect;Lcom/winlator/cmod/renderer/effects/ToonEffect;Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetsProfile(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadProfile(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->loadProfile(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/winlator/cmod/XServerDisplayActivity;)V
    .locals 20
    .param p1, "activity"    # Lcom/winlator/cmod/XServerDisplayActivity;

    .line 49
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const v0, 0x7f0c00aa

    invoke-direct {v8, v9, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 50
    iput-object v9, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    .line 52
    invoke-static/range {p1 .. p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    .line 54
    iget-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "dark_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 56
    .local v10, "isDarkMode":Z
    const v0, 0x7f09008c

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    .line 57
    .local v11, "lblColorAdjustment":Landroid/widget/TextView;
    invoke-static {v11, v10}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 59
    const v0, 0x7f090105

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    .line 60
    const v0, 0x7f0900c6

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/widget/SeekBar;

    iput-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbBrightness:Lcom/winlator/cmod/widget/SeekBar;

    .line 61
    const v0, 0x7f0900c7

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/widget/SeekBar;

    iput-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbContrast:Lcom/winlator/cmod/widget/SeekBar;

    .line 62
    const v0, 0x7f0900c9

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/widget/SeekBar;

    iput-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbGamma:Lcom/winlator/cmod/widget/SeekBar;

    .line 63
    const v0, 0x7f09004f

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableFXAA:Landroid/widget/CheckBox;

    .line 64
    const v0, 0x7f09004c

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableCRTShader:Landroid/widget/CheckBox;

    .line 66
    const v0, 0x7f090054

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableToonShader:Landroid/widget/CheckBox;

    .line 67
    const v0, 0x7f090052

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableNTSCEffect:Landroid/widget/CheckBox;

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/XServerDisplayActivity;->getXServerView()Lcom/winlator/cmod/widget/XServerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winlator/cmod/widget/XServerView;->getRenderer()Lcom/winlator/cmod/renderer/GLRenderer;

    move-result-object v12

    .line 71
    .local v12, "renderer":Lcom/winlator/cmod/renderer/GLRenderer;
    const-string v0, "ScreenEffectDialog"

    if-nez v12, :cond_0

    .line 72
    const-string v1, "Renderer is null in ScreenEffectDialog initialization!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 76
    :cond_0
    invoke-virtual {v12}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v1

    const-class v3, Lcom/winlator/cmod/renderer/effects/ColorEffect;

    invoke-virtual {v1, v3}, Lcom/winlator/cmod/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/cmod/renderer/effects/Effect;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/winlator/cmod/renderer/effects/ColorEffect;

    .line 77
    .local v13, "colorEffect":Lcom/winlator/cmod/renderer/effects/ColorEffect;
    invoke-virtual {v12}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v1

    const-class v3, Lcom/winlator/cmod/renderer/effects/FXAAEffect;

    invoke-virtual {v1, v3}, Lcom/winlator/cmod/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/cmod/renderer/effects/Effect;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/winlator/cmod/renderer/effects/FXAAEffect;

    .line 78
    .local v14, "fxaaEffect":Lcom/winlator/cmod/renderer/effects/FXAAEffect;
    invoke-virtual {v12}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v1

    const-class v3, Lcom/winlator/cmod/renderer/effects/CRTEffect;

    invoke-virtual {v1, v3}, Lcom/winlator/cmod/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/cmod/renderer/effects/Effect;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/winlator/cmod/renderer/effects/CRTEffect;

    .line 79
    .local v15, "crtEffect":Lcom/winlator/cmod/renderer/effects/CRTEffect;
    invoke-virtual {v12}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v1

    const-class v3, Lcom/winlator/cmod/renderer/effects/ToonEffect;

    invoke-virtual {v1, v3}, Lcom/winlator/cmod/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/cmod/renderer/effects/Effect;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/winlator/cmod/renderer/effects/ToonEffect;

    .line 80
    .local v16, "toonEffect":Lcom/winlator/cmod/renderer/effects/ToonEffect;
    invoke-virtual {v12}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v1

    const-class v3, Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;

    invoke-virtual {v1, v3}, Lcom/winlator/cmod/renderer/EffectComposer;->getEffect(Ljava/lang/Class;)Lcom/winlator/cmod/renderer/effects/Effect;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;

    .line 82
    .local v17, "ntscEffect":Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;
    const-string v1, "ScreenEffectDialog initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eqz v13, :cond_1

    .line 85
    const-string v1, "ColorEffect found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbBrightness:Lcom/winlator/cmod/widget/SeekBar;

    invoke-virtual {v13}, Lcom/winlator/cmod/renderer/effects/ColorEffect;->getBrightness()F

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/SeekBar;->setValue(F)V

    .line 87
    iget-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbContrast:Lcom/winlator/cmod/widget/SeekBar;

    invoke-virtual {v13}, Lcom/winlator/cmod/renderer/effects/ColorEffect;->getContrast()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/SeekBar;->setValue(F)V

    .line 88
    iget-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbGamma:Lcom/winlator/cmod/widget/SeekBar;

    invoke-virtual {v13}, Lcom/winlator/cmod/renderer/effects/ColorEffect;->getGamma()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/SeekBar;->setValue(F)V

    goto :goto_0

    .line 90
    :cond_1
    const-string v1, "ColorEffect not found, resetting settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct/range {p0 .. p0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->resetSettings()V

    .line 94
    :goto_0
    iget-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableFXAA:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    if-eqz v14, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    iget-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableCRTShader:Landroid/widget/CheckBox;

    if-eqz v15, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    iget-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableToonShader:Landroid/widget/CheckBox;

    if-eqz v16, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    iget-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableNTSCEffect:Landroid/widget/CheckBox;

    if-eqz v17, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 99
    iget-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    invoke-virtual/range {p1 .. p1}, Lcom/winlator/cmod/XServerDisplayActivity;->getScreenEffectProfile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->loadProfileSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 101
    iget-object v0, v8, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    new-instance v1, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$1;

    invoke-direct {v1, v8}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$1;-><init>(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 113
    const v0, 0x7f09003d

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    .line 114
    .local v7, "resetButton":Landroid/widget/Button;
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    new-instance v0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, v8}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f090012

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v5, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda3;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v12

    move-object v4, v14

    move-object v9, v5

    move-object v5, v15

    move/from16 v18, v10

    move-object v10, v6

    .end local v10    # "isDarkMode":Z
    .local v18, "isDarkMode":Z
    move-object/from16 v6, v16

    move-object/from16 v19, v7

    .end local v7    # "resetButton":Landroid/widget/Button;
    .local v19, "resetButton":Landroid/widget/Button;
    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;Lcom/winlator/cmod/renderer/effects/ColorEffect;Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/renderer/effects/FXAAEffect;Lcom/winlator/cmod/renderer/effects/CRTEffect;Lcom/winlator/cmod/renderer/effects/ToonEffect;Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;)V

    invoke-virtual {v10, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f09000a

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, v8}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f09003b

    invoke-virtual {v8, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, v8}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v9, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda6;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;Lcom/winlator/cmod/renderer/effects/ColorEffect;Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/renderer/effects/FXAAEffect;Lcom/winlator/cmod/renderer/effects/CRTEffect;Lcom/winlator/cmod/renderer/effects/ToonEffect;Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;)V

    invoke-virtual {v8, v9}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method private addProfile(Ljava/lang/String;Landroid/widget/Spinner;)V
    .locals 6
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "sProfile"    # Landroid/widget/Spinner;

    .line 176
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v3, "screen_effect_profiles"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 177
    .local v0, "profiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, ":"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    .local v2, "profile":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "parts":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 180
    return-void

    .line 182
    .end local v2    # "profile":Ljava/lang/String;
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 183
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    invoke-direct {p0, p2, p1}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->loadProfileSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method private static applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "isDarkMode"    # Z

    .line 151
    if-eqz p1, :cond_0

    .line 153
    const-string v0, "#cccccc"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    const v0, 0x7f0600dd

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 157
    :cond_0
    const-string v0, "#bdbdbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    const v0, 0x7f0600dc

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 160
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 115
    invoke-direct {p0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->resetSettings()V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/winlator/cmod/renderer/effects/ColorEffect;Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/renderer/effects/FXAAEffect;Lcom/winlator/cmod/renderer/effects/CRTEffect;Lcom/winlator/cmod/renderer/effects/ToonEffect;Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;Landroid/view/View;)V
    .locals 2
    .param p1, "colorEffect"    # Lcom/winlator/cmod/renderer/effects/ColorEffect;
    .param p2, "renderer"    # Lcom/winlator/cmod/renderer/GLRenderer;
    .param p3, "fxaaEffect"    # Lcom/winlator/cmod/renderer/effects/FXAAEffect;
    .param p4, "crtEffect"    # Lcom/winlator/cmod/renderer/effects/CRTEffect;
    .param p5, "toonEffect"    # Lcom/winlator/cmod/renderer/effects/ToonEffect;
    .param p6, "ntscEffect"    # Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;
    .param p7, "v"    # Landroid/view/View;

    .line 118
    const-string v0, "BTConfirm clicked. Preparing to save profile and apply effects."

    const-string v1, "ScreenEffectDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    invoke-direct {p0, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->saveProfile(Landroid/widget/Spinner;)V

    .line 120
    const-string v0, "Profile saved."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "Calling applyEffects() directly."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual/range {p0 .. p6}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->applyEffects(Lcom/winlator/cmod/renderer/effects/ColorEffect;Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/renderer/effects/FXAAEffect;Lcom/winlator/cmod/renderer/effects/CRTEffect;Lcom/winlator/cmod/renderer/effects/ToonEffect;Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;)V

    .line 126
    const-string v0, "Effects applied. Dismissing dialog."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->dismiss()V

    .line 128
    const-string v0, "Dialog dismissed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 133
    invoke-direct {p0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->promptAddProfile()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 134
    invoke-direct {p0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->promptDeleteProfile()V

    return-void
.end method

.method private synthetic lambda$new$4(Lcom/winlator/cmod/renderer/effects/ColorEffect;Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/renderer/effects/FXAAEffect;Lcom/winlator/cmod/renderer/effects/CRTEffect;Lcom/winlator/cmod/renderer/effects/ToonEffect;Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;)V
    .locals 2
    .param p1, "colorEffect"    # Lcom/winlator/cmod/renderer/effects/ColorEffect;
    .param p2, "renderer"    # Lcom/winlator/cmod/renderer/GLRenderer;
    .param p3, "fxaaEffect"    # Lcom/winlator/cmod/renderer/effects/FXAAEffect;
    .param p4, "crtEffect"    # Lcom/winlator/cmod/renderer/effects/CRTEffect;
    .param p5, "toonEffect"    # Lcom/winlator/cmod/renderer/effects/ToonEffect;
    .param p6, "ntscEffect"    # Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;

    .line 137
    const-string v0, "OnConfirm callback triggered. Applying effects."

    const-string v1, "ScreenEffectDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual/range {p0 .. p6}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->applyEffects(Lcom/winlator/cmod/renderer/effects/ColorEffect;Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/renderer/effects/FXAAEffect;Lcom/winlator/cmod/renderer/effects/CRTEffect;Lcom/winlator/cmod/renderer/effects/ToonEffect;Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;)V

    .line 139
    const-string v0, "Effects applied from callback."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->dismiss()V

    .line 143
    const-string v0, "Dialog dismissed after callback."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method private synthetic lambda$promptAddProfile$5(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->addProfile(Ljava/lang/String;Landroid/widget/Spinner;)V

    return-void
.end method

.method private synthetic lambda$promptDeleteProfile$6(Ljava/lang/String;)V
    .locals 1
    .param p1, "selectedProfile"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->removeProfile(Ljava/lang/String;Landroid/widget/Spinner;)V

    return-void
.end method

.method static synthetic lambda$removeProfile$7(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "targetName"    # Ljava/lang/String;
    .param p1, "profile"    # Ljava/lang/String;

    .line 225
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadProfile(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v3, "screen_effect_profiles"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 207
    .local v0, "profiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    .local v2, "profile":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "parts":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    array-length v5, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    aget-object v5, v3, v6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 210
    new-instance v1, Lcom/winlator/cmod/core/KeyValueSet;

    aget-object v5, v3, v6

    invoke-direct {v1, v5}, Lcom/winlator/cmod/core/KeyValueSet;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "settings":Lcom/winlator/cmod/core/KeyValueSet;
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbBrightness:Lcom/winlator/cmod/widget/SeekBar;

    const-string v6, "brightness"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/winlator/cmod/core/KeyValueSet;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/winlator/cmod/widget/SeekBar;->setValue(F)V

    .line 212
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbContrast:Lcom/winlator/cmod/widget/SeekBar;

    const-string v6, "contrast"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v7}, Lcom/winlator/cmod/core/KeyValueSet;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/winlator/cmod/widget/SeekBar;->setValue(F)V

    .line 213
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbGamma:Lcom/winlator/cmod/widget/SeekBar;

    const-string v6, "gamma"

    invoke-virtual {v1, v6, v7}, Lcom/winlator/cmod/core/KeyValueSet;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/winlator/cmod/widget/SeekBar;->setValue(F)V

    .line 214
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableFXAA:Landroid/widget/CheckBox;

    const-string v6, "fxaa"

    invoke-virtual {v1, v6, v4}, Lcom/winlator/cmod/core/KeyValueSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 215
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableCRTShader:Landroid/widget/CheckBox;

    const-string v6, "crt_shader"

    invoke-virtual {v1, v6, v4}, Lcom/winlator/cmod/core/KeyValueSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 216
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableToonShader:Landroid/widget/CheckBox;

    const-string v6, "toon_shader"

    invoke-virtual {v1, v6, v4}, Lcom/winlator/cmod/core/KeyValueSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 217
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableNTSCEffect:Landroid/widget/CheckBox;

    const-string v6, "ntsc_effect"

    invoke-virtual {v1, v6, v4}, Lcom/winlator/cmod/core/KeyValueSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    return-void

    .line 220
    .end local v1    # "settings":Lcom/winlator/cmod/core/KeyValueSet;
    .end local v2    # "profile":Ljava/lang/String;
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 221
    :cond_1
    return-void
.end method

.method private loadProfileSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 9
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "selectedName"    # Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v3, "screen_effect_profiles"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 190
    .local v0, "profiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    const v4, 0x7f10007e

    invoke-virtual {v3, v4}, Lcom/winlator/cmod/XServerDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    const/4 v2, 0x0

    .local v2, "selectedPosition":I
    const/4 v3, 0x1

    .line 193
    .local v3, "position":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 194
    .local v5, "profile":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "parts":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v8, v6, v7

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    aget-object v7, v6, v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 197
    move v2, v3

    .line 199
    :cond_0
    nop

    .end local v5    # "profile":Ljava/lang/String;
    .end local v6    # "parts":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 200
    goto :goto_0

    .line 201
    :cond_1
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    const v6, 0x1090009

    invoke-direct {v4, v5, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 202
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 203
    return-void
.end method

.method private promptAddProfile()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    new-instance v1, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;)V

    const v2, 0x7f100090

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->prompt(Landroid/content/Context;ILjava/lang/String;Lcom/winlator/cmod/core/Callback;)V

    .line 164
    return-void
.end method

.method private promptDeleteProfile()V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "selectedProfile":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    new-instance v2, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;Ljava/lang/String;)V

    const v3, 0x7f1000a1

    invoke-static {v1, v3, v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 170
    .end local v0    # "selectedProfile":Ljava/lang/String;
    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    const v1, 0x7f100185

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 173
    :goto_0
    return-void
.end method

.method private removeProfile(Ljava/lang/String;Landroid/widget/Spinner;)V
    .locals 4
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "sProfile"    # Landroid/widget/Spinner;

    .line 224
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v3, "screen_effect_profiles"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 225
    .local v0, "profiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 226
    iget-object v1, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->loadProfileSpinner(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->resetSettings()V

    .line 229
    return-void
.end method

.method private resetSettings()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbBrightness:Lcom/winlator/cmod/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/SeekBar;->setValue(F)V

    .line 233
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbContrast:Lcom/winlator/cmod/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/SeekBar;->setValue(F)V

    .line 234
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbGamma:Lcom/winlator/cmod/widget/SeekBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/widget/SeekBar;->setValue(F)V

    .line 235
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableFXAA:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 236
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableCRTShader:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 237
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableToonShader:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 238
    iget-object v0, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableNTSCEffect:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 239
    return-void
.end method

.method private saveProfile(Landroid/widget/Spinner;)V
    .locals 10
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 242
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_2

    .line 243
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "selectedProfile":Ljava/lang/String;
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v4, "screen_effect_profiles"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 245
    .local v1, "oldProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 246
    .local v2, "newProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Lcom/winlator/cmod/core/KeyValueSet;

    invoke-direct {v3}, Lcom/winlator/cmod/core/KeyValueSet;-><init>()V

    .line 247
    .local v3, "settings":Lcom/winlator/cmod/core/KeyValueSet;
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbBrightness:Lcom/winlator/cmod/widget/SeekBar;

    invoke-virtual {v5}, Lcom/winlator/cmod/widget/SeekBar;->getValue()F

    move-result v5

    const-string v6, "brightness"

    invoke-virtual {v3, v6, v5}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;F)V

    .line 248
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbContrast:Lcom/winlator/cmod/widget/SeekBar;

    invoke-virtual {v5}, Lcom/winlator/cmod/widget/SeekBar;->getValue()F

    move-result v5

    const-string v6, "contrast"

    invoke-virtual {v3, v6, v5}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;F)V

    .line 249
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbGamma:Lcom/winlator/cmod/widget/SeekBar;

    invoke-virtual {v5}, Lcom/winlator/cmod/widget/SeekBar;->getValue()F

    move-result v5

    const-string v6, "gamma"

    invoke-virtual {v3, v6, v5}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;F)V

    .line 250
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableFXAA:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "fxaa"

    invoke-virtual {v3, v6, v5}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableCRTShader:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "crt_shader"

    invoke-virtual {v3, v6, v5}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableToonShader:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "toon_shader"

    invoke-virtual {v3, v6, v5}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableNTSCEffect:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "ntsc_effect"

    invoke-virtual {v3, v6, v5}, Lcom/winlator/cmod/core/KeyValueSet;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 256
    .local v6, "profile":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 257
    .local v8, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 258
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/winlator/cmod/core/KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 260
    :cond_0
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v6    # "profile":Ljava/lang/String;
    .end local v8    # "parts":[Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 263
    :cond_1
    iget-object v5, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 264
    iget-object v4, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->activity:Lcom/winlator/cmod/XServerDisplayActivity;

    invoke-virtual {v4, v0}, Lcom/winlator/cmod/XServerDisplayActivity;->setScreenEffectProfile(Ljava/lang/String;)V

    .line 266
    .end local v0    # "selectedProfile":Ljava/lang/String;
    .end local v1    # "oldProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "newProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "settings":Lcom/winlator/cmod/core/KeyValueSet;
    :cond_2
    return-void
.end method


# virtual methods
.method public applyEffects(Lcom/winlator/cmod/renderer/effects/ColorEffect;Lcom/winlator/cmod/renderer/GLRenderer;Lcom/winlator/cmod/renderer/effects/FXAAEffect;Lcom/winlator/cmod/renderer/effects/CRTEffect;Lcom/winlator/cmod/renderer/effects/ToonEffect;Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;)V
    .locals 16
    .param p1, "colorEffect"    # Lcom/winlator/cmod/renderer/effects/ColorEffect;
    .param p2, "renderer"    # Lcom/winlator/cmod/renderer/GLRenderer;
    .param p3, "fxaaEffect"    # Lcom/winlator/cmod/renderer/effects/FXAAEffect;
    .param p4, "crtEffect"    # Lcom/winlator/cmod/renderer/effects/CRTEffect;
    .param p5, "toonEffect"    # Lcom/winlator/cmod/renderer/effects/ToonEffect;
    .param p6, "ntscEffect"    # Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const-string v5, "applyEffects() called"

    const-string v6, "ScreenEffectDialog"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v5, v0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbBrightness:Lcom/winlator/cmod/widget/SeekBar;

    invoke-virtual {v5}, Lcom/winlator/cmod/widget/SeekBar;->getValue()F

    move-result v5

    .line 272
    .local v5, "brightness":F
    iget-object v7, v0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbContrast:Lcom/winlator/cmod/widget/SeekBar;

    invoke-virtual {v7}, Lcom/winlator/cmod/widget/SeekBar;->getValue()F

    move-result v7

    .line 273
    .local v7, "contrast":F
    iget-object v8, v0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sbGamma:Lcom/winlator/cmod/widget/SeekBar;

    invoke-virtual {v8}, Lcom/winlator/cmod/widget/SeekBar;->getValue()F

    move-result v8

    .line 274
    .local v8, "gamma":F
    iget-object v9, v0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableFXAA:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    .line 275
    .local v9, "enableFXAA":Z
    iget-object v10, v0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableCRTShader:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    .line 276
    .local v10, "enableCRTShader":Z
    iget-object v11, v0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableToonShader:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    .line 277
    .local v11, "enableToonShader":Z
    iget-object v12, v0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->cbEnableNTSCEffect:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    .line 279
    .local v12, "enableNTSCEffect":Z
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Settings - Brightness: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Contrast: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Gamma: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FXAA Enabled: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", CRT Shader Enabled: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-nez p1, :cond_0

    .line 284
    const-string v13, "ColorEffect is null, creating new instance."

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v13, Lcom/winlator/cmod/renderer/effects/ColorEffect;

    invoke-direct {v13}, Lcom/winlator/cmod/renderer/effects/ColorEffect;-><init>()V

    .end local p1    # "colorEffect":Lcom/winlator/cmod/renderer/effects/ColorEffect;
    .local v13, "colorEffect":Lcom/winlator/cmod/renderer/effects/ColorEffect;
    goto :goto_0

    .line 283
    .end local v13    # "colorEffect":Lcom/winlator/cmod/renderer/effects/ColorEffect;
    .restart local p1    # "colorEffect":Lcom/winlator/cmod/renderer/effects/ColorEffect;
    :cond_0
    move-object/from16 v13, p1

    .line 289
    .end local p1    # "colorEffect":Lcom/winlator/cmod/renderer/effects/ColorEffect;
    .restart local v13    # "colorEffect":Lcom/winlator/cmod/renderer/effects/ColorEffect;
    :goto_0
    if-nez p2, :cond_1

    .line 290
    const-string v14, "Renderer is null!"

    invoke-static {v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void

    .line 294
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v14

    if-nez v14, :cond_2

    .line 295
    const-string v14, "EffectComposer is null!"

    invoke-static {v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 300
    :cond_2
    const/4 v14, 0x0

    cmpl-float v15, v5, v14

    if-nez v15, :cond_3

    cmpl-float v14, v7, v14

    if-nez v14, :cond_3

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v8, v14

    if-nez v14, :cond_3

    .line 301
    const-string v14, "No adjustments are applied. Removing ColorEffect if it exists."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/winlator/cmod/renderer/EffectComposer;->removeEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    goto :goto_1

    .line 304
    :cond_3
    const-string v14, "Applying ColorEffect adjustments."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/high16 v14, 0x42c80000    # 100.0f

    div-float v15, v5, v14

    invoke-virtual {v13, v15}, Lcom/winlator/cmod/renderer/effects/ColorEffect;->setBrightness(F)V

    .line 306
    div-float v14, v7, v14

    invoke-virtual {v13, v14}, Lcom/winlator/cmod/renderer/effects/ColorEffect;->setContrast(F)V

    .line 307
    invoke-virtual {v13, v8}, Lcom/winlator/cmod/renderer/effects/ColorEffect;->setGamma(F)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/winlator/cmod/renderer/EffectComposer;->addEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    .line 309
    const-string v14, "ColorEffect added/updated."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_1
    if-eqz v9, :cond_5

    .line 314
    if-nez v1, :cond_4

    .line 315
    const-string v14, "FXAAEffect is null, creating and adding new instance."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v14, Lcom/winlator/cmod/renderer/effects/FXAAEffect;

    invoke-direct {v14}, Lcom/winlator/cmod/renderer/effects/FXAAEffect;-><init>()V

    move-object v1, v14

    .line 317
    .end local p3    # "fxaaEffect":Lcom/winlator/cmod/renderer/effects/FXAAEffect;
    .local v1, "fxaaEffect":Lcom/winlator/cmod/renderer/effects/FXAAEffect;
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v14

    invoke-virtual {v14, v1}, Lcom/winlator/cmod/renderer/EffectComposer;->addEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    goto :goto_2

    .line 319
    .end local v1    # "fxaaEffect":Lcom/winlator/cmod/renderer/effects/FXAAEffect;
    .restart local p3    # "fxaaEffect":Lcom/winlator/cmod/renderer/effects/FXAAEffect;
    :cond_4
    const-string v14, "FXAAEffect is already added."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 321
    :cond_5
    if-eqz v1, :cond_6

    .line 322
    const-string v14, "FXAA is disabled. Removing FXAAEffect."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v14

    invoke-virtual {v14, v1}, Lcom/winlator/cmod/renderer/EffectComposer;->removeEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    .line 327
    .end local p3    # "fxaaEffect":Lcom/winlator/cmod/renderer/effects/FXAAEffect;
    .restart local v1    # "fxaaEffect":Lcom/winlator/cmod/renderer/effects/FXAAEffect;
    :cond_6
    :goto_2
    if-eqz v10, :cond_8

    .line 328
    if-nez v2, :cond_7

    .line 329
    const-string v14, "CRTEffect is null, creating and adding new instance."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v14, Lcom/winlator/cmod/renderer/effects/CRTEffect;

    invoke-direct {v14}, Lcom/winlator/cmod/renderer/effects/CRTEffect;-><init>()V

    move-object v2, v14

    .line 331
    .end local p4    # "crtEffect":Lcom/winlator/cmod/renderer/effects/CRTEffect;
    .local v2, "crtEffect":Lcom/winlator/cmod/renderer/effects/CRTEffect;
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/winlator/cmod/renderer/EffectComposer;->addEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    goto :goto_3

    .line 333
    .end local v2    # "crtEffect":Lcom/winlator/cmod/renderer/effects/CRTEffect;
    .restart local p4    # "crtEffect":Lcom/winlator/cmod/renderer/effects/CRTEffect;
    :cond_7
    const-string v14, "CRTEffect is already added."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 335
    :cond_8
    if-eqz v2, :cond_9

    .line 336
    const-string v14, "CRT Shader is disabled. Removing CRTEffect."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/winlator/cmod/renderer/EffectComposer;->removeEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    .line 342
    .end local p4    # "crtEffect":Lcom/winlator/cmod/renderer/effects/CRTEffect;
    .restart local v2    # "crtEffect":Lcom/winlator/cmod/renderer/effects/CRTEffect;
    :cond_9
    :goto_3
    if-eqz v11, :cond_b

    .line 343
    if-nez v3, :cond_a

    .line 344
    const-string v14, "ToonEffect is null, creating and adding new instance."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v14, Lcom/winlator/cmod/renderer/effects/ToonEffect;

    invoke-direct {v14}, Lcom/winlator/cmod/renderer/effects/ToonEffect;-><init>()V

    move-object v3, v14

    .line 346
    .end local p5    # "toonEffect":Lcom/winlator/cmod/renderer/effects/ToonEffect;
    .local v3, "toonEffect":Lcom/winlator/cmod/renderer/effects/ToonEffect;
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/winlator/cmod/renderer/EffectComposer;->addEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    goto :goto_4

    .line 348
    .end local v3    # "toonEffect":Lcom/winlator/cmod/renderer/effects/ToonEffect;
    .restart local p5    # "toonEffect":Lcom/winlator/cmod/renderer/effects/ToonEffect;
    :cond_a
    const-string v14, "ToonEffect is already added."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 350
    :cond_b
    if-eqz v3, :cond_c

    .line 351
    const-string v14, "Toon Shader is disabled. Removing ToonEffect."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/winlator/cmod/renderer/EffectComposer;->removeEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    .line 357
    .end local p5    # "toonEffect":Lcom/winlator/cmod/renderer/effects/ToonEffect;
    .restart local v3    # "toonEffect":Lcom/winlator/cmod/renderer/effects/ToonEffect;
    :cond_c
    :goto_4
    if-eqz v12, :cond_e

    .line 358
    if-nez v4, :cond_d

    .line 359
    const-string v14, "NTSCCombinedEffect is null, creating and adding new instance."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v14, Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;

    invoke-direct {v14}, Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;-><init>()V

    move-object v4, v14

    .line 361
    .end local p6    # "ntscEffect":Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;
    .local v4, "ntscEffect":Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/winlator/cmod/renderer/EffectComposer;->addEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    goto :goto_5

    .line 363
    .end local v4    # "ntscEffect":Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;
    .restart local p6    # "ntscEffect":Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;
    :cond_d
    const-string v14, "NTSCCombinedEffect is already added."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 365
    :cond_e
    if-eqz v4, :cond_f

    .line 366
    const-string v14, "NTSC Effect is disabled. Removing NTSCCombinedEffect."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual/range {p2 .. p2}, Lcom/winlator/cmod/renderer/GLRenderer;->getEffectComposer()Lcom/winlator/cmod/renderer/EffectComposer;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/winlator/cmod/renderer/EffectComposer;->removeEffect(Lcom/winlator/cmod/renderer/effects/Effect;)V

    .line 382
    .end local p6    # "ntscEffect":Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;
    .restart local v4    # "ntscEffect":Lcom/winlator/cmod/renderer/effects/NTSCCombinedEffect;
    :cond_f
    :goto_5
    iget-object v14, v0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->sProfile:Landroid/widget/Spinner;

    invoke-direct {v0, v14}, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->saveProfile(Landroid/widget/Spinner;)V

    .line 383
    const-string v14, "Profile saved after applying effects."

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method public setOnConfirmCallback(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "confirmCallback"    # Ljava/lang/Runnable;

    .line 387
    const-string v0, "ScreenEffectDialog"

    const-string v1, "Setting OnConfirm callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iput-object p1, p0, Lcom/winlator/cmod/contentdialog/ScreenEffectDialog;->onConfirmCallback:Ljava/lang/Runnable;

    .line 389
    return-void
.end method
