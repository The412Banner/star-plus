.class public Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;
.super Lcom/winlator/cmod/contentdialog/ContentDialog;
.source "FEXCoreEditPresetDialog.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private isDarkMode:Z

.field private onConfirmCallback:Ljava/lang/Runnable;

.field private final preset:Lcom/winlator/cmod/fexcore/FEXCorePreset;

.field private final readonly:Z


# direct methods
.method public static synthetic $r8$lambda$TfDXFanJ77ejuC5Nwx1yO-D8gHY(Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->lambda$new$0(Landroid/widget/EditText;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y-KJh2YKNVT1QYqDM3qWc2ol7Ns(Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->lambda$loadEnvVarsList$1(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "presetId"    # Ljava/lang/String;

    .line 41
    const v0, 0x7f0c0028

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 42
    iput-object p1, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->context:Landroid/content/Context;

    .line 43
    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getPreset(Landroid/content/Context;Ljava/lang/String;)Lcom/winlator/cmod/fexcore/FEXCorePreset;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->preset:Lcom/winlator/cmod/fexcore/FEXCorePreset;

    .line 44
    iget-object v0, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->preset:Lcom/winlator/cmod/fexcore/FEXCorePreset;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->preset:Lcom/winlator/cmod/fexcore/FEXCorePreset;

    invoke-virtual {v0}, Lcom/winlator/cmod/fexcore/FEXCorePreset;->isCustom()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->readonly:Z

    .line 45
    const-string v0, "fexcore_preset"

    invoke-static {p1, v0}, Lcom/winlator/cmod/core/StringUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->setTitle(Ljava/lang/String;)V

    .line 46
    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->setIcon(I)V

    .line 49
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "dark_mode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->isDarkMode:Z

    .line 52
    const v2, 0x7f09013e

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 53
    .local v2, "environmentVariablesLabel":Landroid/widget/TextView;
    iget-boolean v3, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->isDarkMode:Z

    invoke-static {v2, v3}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 55
    const v3, 0x7f09007a

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 56
    .local v3, "etName":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {p1}, Lcom/winlator/cmod/core/AppUtils;->getPreferredDialogWidth(Landroid/content/Context;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    iget-boolean v4, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->readonly:Z

    xor-int/2addr v1, v4

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 58
    iget-object v1, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->preset:Lcom/winlator/cmod/fexcore/FEXCorePreset;

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->preset:Lcom/winlator/cmod/fexcore/FEXCorePreset;

    iget-object v1, v1, Lcom/winlator/cmod/fexcore/FEXCorePreset;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 61
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1001fb

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getNextPresetId(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_2
    invoke-direct {p0, v3}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->applyDarkThemeToEditText(Landroid/widget/EditText;)V

    .line 65
    invoke-direct {p0}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->loadEnvVarsList()V

    .line 67
    new-instance v1, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v3, p1}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;Landroid/widget/EditText;Landroid/content/Context;)V

    invoke-super {p0, v1}, Lcom/winlator/cmod/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method private applyDarkThemeToEditText(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 173
    iget-boolean v0, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->isDarkMode:Z

    const v1, -0x777778

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 175
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 176
    const v0, 0x7f0800fd

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_0

    .line 178
    :cond_0
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 179
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 180
    const v0, 0x7f0800fc

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 182
    :goto_0
    return-void
.end method

.method private static applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "isDarkMode"    # Z

    .line 161
    if-eqz p1, :cond_0

    .line 163
    const-string v0, "#cccccc"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 167
    :cond_0
    const-string v0, "#bdbdbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    const v0, 0x7f0600dc

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 170
    :goto_0
    return-void
.end method

.method private getEnvVars()Lcom/winlator/cmod/core/EnvVars;
    .locals 12

    .line 82
    new-instance v0, Lcom/winlator/cmod/core/EnvVars;

    invoke-direct {v0}, Lcom/winlator/cmod/core/EnvVars;-><init>()V

    .line 83
    .local v0, "envVars":Lcom/winlator/cmod/core/EnvVars;
    const v1, 0x7f090096

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 84
    .local v1, "parent":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 86
    .local v3, "child":Landroid/view/View;
    const v4, 0x7f09017c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "name":Ljava/lang/String;
    const v5, 0x7f09011c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 89
    .local v5, "spinner":Landroid/widget/Spinner;
    const v6, 0x7f09017d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ToggleButton;

    .line 90
    .local v6, "toggleButton":Landroid/widget/ToggleButton;
    const v7, 0x7f090081

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 91
    .local v7, "edt":Landroid/widget/EditText;
    invoke-virtual {v6}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v8, :cond_0

    move v8, v10

    goto :goto_1

    :cond_0
    move v8, v9

    .line 92
    .local v8, "toggleSwitch":Z
    :goto_1
    invoke-virtual {v7}, Landroid/widget/EditText;->getVisibility()I

    move-result v11

    if-nez v11, :cond_1

    move v9, v10

    .line 95
    .local v9, "editText":Z
    :cond_1
    if-eqz v9, :cond_2

    .line 96
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "value":Ljava/lang/String;
    goto :goto_3

    .line 97
    .end local v10    # "value":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_4

    .line 98
    invoke-virtual {v6}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "1"

    goto :goto_2

    :cond_3
    const-string v10, "0"

    .restart local v10    # "value":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 100
    .end local v10    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 102
    .restart local v10    # "value":Ljava/lang/String;
    :goto_3
    invoke-virtual {v0, v4, v10}, Lcom/winlator/cmod/core/EnvVars;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "spinner":Landroid/widget/Spinner;
    .end local v6    # "toggleButton":Landroid/widget/ToggleButton;
    .end local v7    # "edt":Landroid/widget/EditText;
    .end local v8    # "toggleSwitch":Z
    .end local v9    # "editText":Z
    .end local v10    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "i":I
    :cond_5
    return-object v0
.end method

.method private synthetic lambda$loadEnvVarsList$1(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 121
    const-string v0, "FEX_"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "suffix":Ljava/lang/String;
    iget-object v1, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fexcore_env_var_help__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/winlator/cmod/core/StringUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->context:Landroid/content/Context;

    invoke-static {v2, p2, v1}, Lcom/winlator/cmod/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 3
    .param p1, "etName"    # Landroid/widget/EditText;
    .param p2, "context"    # Landroid/content/Context;

    .line 68
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 70
    :cond_0
    const-string v1, "[,\\|]+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->preset:Lcom/winlator/cmod/fexcore/FEXCorePreset;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->preset:Lcom/winlator/cmod/fexcore/FEXCorePreset;

    iget-object v1, v1, Lcom/winlator/cmod/fexcore/FEXCorePreset;->id:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->getEnvVars()Lcom/winlator/cmod/core/EnvVars;

    move-result-object v2

    invoke-static {p2, v1, v0, v2}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->editPreset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/winlator/cmod/core/EnvVars;)V

    .line 72
    iget-object v1, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->onConfirmCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->onConfirmCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 73
    :cond_2
    return-void
.end method

.method private loadEnvVarsList()V
    .locals 17

    .line 109
    move-object/from16 v1, p0

    const v0, 0x7f090096

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 110
    .local v0, "parent":Landroid/widget/LinearLayout;
    iget-object v2, v1, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 111
    .local v2, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, v1, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->context:Landroid/content/Context;

    const-string v5, "fexcore_env_vars.json"

    invoke-static {v4, v5}, Lcom/winlator/cmod/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 112
    .local v3, "data":Lorg/json/JSONArray;
    iget-object v4, v1, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->preset:Lcom/winlator/cmod/fexcore/FEXCorePreset;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->context:Landroid/content/Context;

    iget-object v5, v1, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->preset:Lcom/winlator/cmod/fexcore/FEXCorePreset;

    iget-object v5, v5, Lcom/winlator/cmod/fexcore/FEXCorePreset;->id:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/winlator/cmod/fexcore/FEXCorePresetManager;->getEnvVars(Landroid/content/Context;Ljava/lang/String;)Lcom/winlator/cmod/core/EnvVars;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 114
    .local v4, "envVars":Lcom/winlator/cmod/core/EnvVars;
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 115
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 116
    .local v6, "item":Lorg/json/JSONObject;
    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "name":Ljava/lang/String;
    const v8, 0x7f0c0029

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 118
    .local v8, "child":Landroid/view/View;
    const v10, 0x7f09017c

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const v10, 0x7f090026

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v11, v1, v7}, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v10, 0x7f09011c

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    .line 127
    .local v10, "spinner":Landroid/widget/Spinner;
    const v11, 0x7f09017d

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ToggleButton;

    .line 128
    .local v11, "toggleButton":Landroid/widget/ToggleButton;
    const v12, 0x7f090081

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 129
    .local v12, "editText":Landroid/widget/EditText;
    const-string v13, "values"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-static {v13}, Lcom/winlator/cmod/core/ArrayUtils;->toStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v13

    .line 130
    .local v13, "values":[Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4, v7}, Lcom/winlator/cmod/core/EnvVars;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v4, v7}, Lcom/winlator/cmod/core/EnvVars;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_1
    const-string v14, "defaultValue"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 132
    .local v14, "value":Ljava/lang/String;
    :goto_2
    const-string v15, "toggleSwitch"

    invoke-virtual {v6, v15, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const/high16 v9, 0x3f000000    # 0.5f

    const/16 v16, 0x1

    if-eqz v15, :cond_3

    .line 133
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 134
    iget-boolean v15, v1, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->readonly:Z

    if-nez v15, :cond_2

    move/from16 v15, v16

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    :goto_3
    invoke-virtual {v11, v15}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 135
    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v11, v15}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 136
    iget-boolean v15, v1, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->readonly:Z

    if-eqz v15, :cond_8

    invoke-virtual {v11, v9}, Landroid/widget/ToggleButton;->setAlpha(F)V

    goto :goto_6

    .line 138
    :cond_3
    const-string v15, "editText"

    const/4 v9, 0x0

    invoke-virtual {v6, v15, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 139
    invoke-virtual {v12, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 140
    iget-boolean v9, v1, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->readonly:Z

    if-nez v9, :cond_4

    move/from16 v9, v16

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v12, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 141
    invoke-virtual {v12, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-boolean v9, v1, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->readonly:Z

    if-eqz v9, :cond_8

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v12, v9}, Landroid/widget/EditText;->setAlpha(F)V

    goto :goto_6

    .line 145
    :cond_5
    iget-boolean v9, v1, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->isDarkMode:Z

    if-eqz v9, :cond_6

    const v9, 0x7f0800f3

    goto :goto_5

    :cond_6
    const v9, 0x7f0800f2

    :goto_5
    invoke-virtual {v10, v9}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 146
    const/4 v9, 0x0

    invoke-virtual {v10, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 147
    iget-boolean v15, v1, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->readonly:Z

    if-nez v15, :cond_7

    move/from16 v9, v16

    :cond_7
    invoke-virtual {v10, v9}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 148
    new-instance v9, Landroid/widget/ArrayAdapter;

    iget-object v15, v1, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->context:Landroid/content/Context;

    const v1, 0x1090009

    invoke-direct {v9, v15, v1, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v10, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 149
    invoke-static {v10, v14}, Lcom/winlator/cmod/core/AppUtils;->setSpinnerSelectionFromValue(Landroid/widget/Spinner;Ljava/lang/String;)Z

    .line 152
    :cond_8
    :goto_6
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v6    # "item":Lorg/json/JSONObject;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "child":Landroid/view/View;
    .end local v10    # "spinner":Landroid/widget/Spinner;
    .end local v11    # "toggleButton":Landroid/widget/ToggleButton;
    .end local v12    # "editText":Landroid/widget/EditText;
    .end local v13    # "values":[Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1

    .end local v0    # "parent":Landroid/widget/LinearLayout;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "data":Lorg/json/JSONArray;
    .end local v4    # "envVars":Lcom/winlator/cmod/core/EnvVars;
    .end local v5    # "i":I
    :cond_9
    goto :goto_7

    .line 155
    :catch_0
    move-exception v0

    :goto_7
    nop

    .line 156
    return-void
.end method


# virtual methods
.method public setOnConfirmCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onConfirmCallback"    # Ljava/lang/Runnable;

    .line 78
    iput-object p1, p0, Lcom/winlator/cmod/fexcore/FEXCoreEditPresetDialog;->onConfirmCallback:Ljava/lang/Runnable;

    .line 79
    return-void
.end method
